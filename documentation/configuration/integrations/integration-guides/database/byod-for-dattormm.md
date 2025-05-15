# BYOD for options generators

{% hint style="warning" %}
For the BYOD integration to function correctly with your RMM, it is essential that the **`Database Config Name`** is set exactly as **`Rewst Cache - Database`**. Failure to do so will result in caching issues, affecting data retrieval performance.
{% endhint %}

RMM customers occasionally face challenges with the speed at which data is returned from RMM's APIs. One efficient workaround is to leverage the Bring Your Own Database (BYOD) integration.&#x20;

Integrating BYOD with RMM aims to streamline data retrieval and bypass potential lags or slow responses. With BYOD in place, RMM's options generation workflows are optimized, leading to improved performance and reduced wait times.&#x20;

This document provides specialized steps for integrating BYOD with RMM to address these speed issues.

### Set up the BYOD integration&#x20;

{% hint style="success" %}
If you're integrating with an existing database, you can skip to the section of this document titled Integration.
{% endhint %}

### Requirements

To ensure the BYOD integration works seamlessly, there are a few requirements that need configuring on your end:

1. **Database Setup via Powershell:** You will initially be required to run the database setup Powershell script. Ensure that you're running this script with Powershell 7.
2. **Password and Script Output:** During the setup, you'll be prompted to create a password for the DB account designated for the integration. Make sure to safely store this password. Additionally, retaining all of the script's output will be crucial for subsequent steps, so ensure it's accessible.

<details>

<summary>Bring Your Own Database Script</summary>

{% code overflow="wrap" %}
```powershell
### Script created by Adam Willford of the Rewst ROC ###
### Updated Sep-2023 to add DTU license option by Lucretia Richmond and James Rood of the Rewst ROC ###

### For any assistance, please contact the ROC team on roc@rewst.io, or via the-kewp in Slack or Discord ###

### Require PS7 - mostly because otherwise the logo doesn't look good...

#Requires -Version 7.0

### Check if the module required is installed and if not, install it ###

if (!(Get-Module -ListAvailable Az.SQL)) {
    Install-Module Az.SQL -Confirm:$false -Force
}

if (!(Get-Module -ListAvailable Az.Resources)) {
    Install-Module Az.Resources -Confirm:$false -Force
}

Import-Module Az.Sql
Import-Module Az.Resources

### Create a cool logo, of course ###

$Logo = @'
██████  ███████ ██        ██ ███████ ████████ 
██  ██  ██    ██       ██ ██        ██    
██████  █████   ██   █  ██  ███████    ██    
██  ██ ██     ██ ███ ██     ██    ██    
██   ██ ███████  ███  ███  ███████     ██    
                                           
'@

Write-Output $Logo
Write-Host 'Rewst ROC - Connecting to Azure' -ForegroundColor Cyan
Write-Host 'Requesting Information from end user' -ForegroundColor Cyan

### All the variables required for the script.  Note these are all prompt based, so no need to amend the script ###

$userEnteredSubscriptionId = $(Write-Host "Please enter your subscription ID:" -ForegroundColor Green -NoNewLine; Read-Host)
$userEnteredCompanyName = $(Write-Host "Please enter your Company Name:" -ForegroundColor Green -NoNewLine; Read-Host)
$userEnteredResourceGroupName = $(Write-Host "Enter a unique new Resource Group name:" -ForegroundColor Green -NoNewLine; Read-Host)
$userEnteredResourceGroupName = $userEnteredResourceGroupName -replace '[^a-zA-Z0-9-]',''
$userEnteredLocation = $(Write-Host "Enter the datacenter location to store the database.  Note for 'US East' you would enter 'eastus'. Locations can be seen here: https://learn.microsoft.com/en-us/azure/availability-zones/az-overview:" -ForegroundColor Green -NoNewLine; Read-Host)
$userLicenseChoice = $(Write-Host "Which licensing option would you like? Enter 1 for vCore or 2 for DTU (default is vCore):" -ForegroundColor Green -NoNewLine; Read-Host)
# $userEnteredServerName = $(Write-Host "Please enter the SQL Server Name required (a-z, 0-9 and '-' only):" -ForegroundColor Green -NoNewLine; Read-Host)
$userEnteredAdminUsername = $(Write-Host "Please enter the SQL Administrator Username:" -ForegroundColor Green -NoNewLine; Read-Host)
$userEnteredAdminPassword = $(Write-Host "Please enter the SQL Administrator password. (This is the last one, promise):" -ForegroundColor Green -NoNewLine; Read-Host -AsSecureString)
[pscredential]$credObject = New-Object System.Management.Automation.PSCredential ($userEnteredAdminUsername, $userEnteredAdminPassword)

### Connect to the Azure instance based on the provided information ###

Connect-AzAccount -Subscription $userEnteredSubscriptionId | Out-Null

### Create the Resource Group ###

try {
    Write-Host "Creating resource group..." -ForegroundColor Cyan
    New-AzResourceGroup -Name $userEnteredResourceGroupName -Location $userEnteredLocation -Tag @{Owner = "Rewst-ROC" } | Out-Null
    Start-Sleep 15
    Write-Host "Successfully created resource group $userEnteredResourceGroupName" -ForegroundColor Blue
} catch {
    Write-Error "There was an error creating the resource group.  The error, if supplied, was:  $($_.Exception.Message)"
    exit
}

### If the resource group exists, crack on ###
if (Get-AzResourceGroup -Name $userEnteredResourceGroupName) {
    ### Create the SQL Server ###
    try {
        $SQLServerCreationInformation = @{
            ResourceGroupName           = $userEnteredResourceGroupName
            ServerName                  = "$($userEnteredCompanyName.ToLower().trim())-database" -replace '[^a-zA-Z0-9-]',''
            Location                    = $userEnteredLocation
            SqlAdministratorCredentials = $credObject
        }
        Write-Host "Creating primary server...(Note this may take several minutes, because Microsoft)" -ForegroundColor Cyan
        New-AzSqlServer @SQLServerCreationInformation | Out-Null
        Write-Host "Successfully created SQL Server - $($SQLServerCreationInformation.ServerName)" -ForegroundColor Blue
    } catch {
        Write-Error "There was an error creating the SQL Server $(($SQLServerCreationInformation.ServerName))  The error, if supplied, was:  $($_.Exception.Message)"
        exit
    }

    ### Create a firewall rule to only allow connections in from Rewst ###

    try {
        $SQLServerFirewallRule = @{
            ResourceGroupName = $userEnteredResourceGroupName
            ServerName        = $SQLServerCreationInformation.ServerName
            FirewallRuleName  = 'Rewst - Allowed IPs'
            StartIpAddress    = '3.139.170.31'
            EndIpAddress      = '3.139.170.31'
        }
        Write-host "Configuring server firewall rule..." -ForegroundColor Cyan
        New-AzSqlServerFirewallRule @SQLServerFirewallRule | Out-Null
        Write-Host "Successfully created Firewall Rule - $($SQLServerFirewallRule.ServerName)" -ForegroundColor Blue
    } catch {
        Write-Error "There was an error creating the firewall rule $(($SQLServerFirewallRule.FirewallRuleName)).  The error, if supplied, was:  $($_.Exception.Message)"
        exit
    }

    ### Create the actual database on the newly created server ###
    
    try {
        switch ($userLicenseChoice) {
            2 {
                $SQLServerDatabaseInformation = @{
                    ResourceGroupName  = $userEnteredResourceGroupName
                    ServerName         = $SQLServerCreationInformation.ServerName
                    DatabaseName       = 'Rewst-Database'
                    Edition            = 'Standard'
                    RequestedServiceObjectiveName = 'S3'
                }
            }
            Default {
                $SQLServerDatabaseInformation = @{
                    ResourceGroupName  = $userEnteredResourceGroupName
                    ServerName         = $SQLServerCreationInformation.ServerName
                    DatabaseName       = 'Rewst-Database'
                    Edition            = 'GeneralPurpose'
                    ComputeModel      = 'Serverless'
                    ComputeGeneration = 'Gen5'
                    vCore              = 2
                    MinimumCapacity    = 2
                    AutoPauseDelayInMinutes = 60
                }
            }
        }
        Write-host "Creating a Standard DTU database..." -ForegroundColor Cyan
        New-AzSqlDatabase @SQLServerDatabaseInformation | Out-Null
        Write-Host "Successfully created Database - $($SQLServerDatabaseInformation.ServerName)" -ForegroundColor Blue
    } catch {
        Write-Error "There was an error creating the database $($SQLServerDatabaseInformation.DatabaseName) on $($SQLServerDatabaseInformation.ServerName).  The error, if supplied, was:  $($_.Exception.Message)"
        exit

    }
} else {
    Write-Error "The Resource Group - $($userEnteredResourceGroupName) was not found and therefore we cannot continue."
    exit
}

### Output User Information ###

Write-Host "Congratulations, you can now go and configure the database in the Rewst integration itself.  The following details will be required:" -ForegroundColor Cyan
Write-Host '--------------------------------------------------------' -ForegroundColor White
Write-Host "Database Config Name: Rewst Cache - Database" -ForegroundColor Green
Write-Host "Database Type: MSSQL" -ForegroundColor Green
Write-Host "Hostname: $($SQLServerDatabaseInformation.ServerName).database.windows.net" -ForegroundColor Green
Write-Host "Port: 1433" -ForegroundColor Green
Write-Host "Username: $userEnteredAdminUsername" -ForegroundColor Green
Write-Host "Password: [Entered During Prompt Phase, we don't want to show it here for obvious reasons]" -ForegroundColor Green
Write-Host "Database Name: $($SQLServerDatabaseInformation.DatabaseName)" -ForegroundColor Green
Write-Host '--------------------------------------------------------' -ForegroundColor White
```
{% endcode %}

</details>

### Set up steps in Rewst

Once you've set up the database and have the necessary credentials, follow the below steps to configure a new integration:

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `SQL Database`.
3. Complete the form with the details you created from the script.
4. Click **Save Configuration**.

#### Post-integration steps specific to Rewst workflows

Following the database setup, you must attach the _\[Rewst Master v2] BYOD: Insert Data_ into Database workflow as a completion listener to the on-prem workflows. If you are missing this workflow, please reach out to the ROC.&#x20;

1. Navigate to **Automation > Workflows.**
2. Search for `[Rewst Master v2] BYOD: Insert Data into Database` .
3. Click **⋮** .
4. Select **On Completion**.
5. Click **Run this workflow when...**
6. Click <img src="../../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.35.44 AM.png" alt="" data-size="line">.
7. Select the following settings:
   * **Workflow:** \[Rewst Master v2] On-Prem: Get all AD OUs
   * **Trigger On Statuses:** succeded
   * **Integration Override:** SQL Database
   * **Enabled:** On

<figure><img src="../../../../../.gitbook/assets/Screenshot 2024-05-09 at 9.36.50 AM.png" alt=""><figcaption></figcaption></figure>

8. Click **Submit**.
9. Repeat steps 6-8 with the following workflows
   * \[Rewst] List AD User’s Group Memberships&#x20;
   * \[Rewst Master v2] On-Prem: Get All Groups-Actual&#x20;
   * \[Rewst Master v3] M365: List Mail-Enabled Users-Actual&#x20;
   * \[Rewst] List AD Users-Actual - Rewst
   * \[Rewst Master] Get On-Prem Exchange Email Domains - Actual - (optional)
   * \[Rewst Master] Get On-Prem Exchange Databases - Actual - (optional)
   * \[Rewst Master] Get On-Prem Exchange Shared Mailbox - Actual  - (optional)
   * \[Rewst Master] Get On-Prem Exchange Servers - Actual  - (optional)

<figure><img src="../../../../../.gitbook/assets/Screenshot 2024-05-09 at 9.57.21 AM (1).png" alt=""><figcaption></figcaption></figure>



{% hint style="warning" %}
The \[Rewst Master v2] BYOD: Insert Data into Database workflow might not be automatically available to you. It's often necessary to consult with The ROC for specific sync operations. When in doubt, [reach out](../../../../../contact-resources.md)!
{% endhint %}
