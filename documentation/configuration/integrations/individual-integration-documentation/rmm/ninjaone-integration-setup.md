# NinjaOne integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the NinjaOne integration do?

Our NinjaOne integration provides users with a powerful combination of documentation, remote monitoring, and management capabilities. Seamlessly access and manage NinjaRMM within Rewst, monitor and troubleshoot devices, deploy software, and perform remote tasks more effectively. Use this integration to centralize your IT documentation and RMM workflows, ensuring a comprehensive and streamlined approach to IT management within the Rewst platform.

### Why use the NinjaOne integration?

* Device monitoring and management
* Execute scripts on endpoints
* Deploy software to devices

## Set up the NinjaOne Integration

### Set up steps in NinjaOne

1. Navigate to **Administration > Library > Automation**.
2. Click **Add**, then **New Script**.
3. Add the following script:
   1. Name: Rewst (Windows)
   2. Language: Powershell
   3. OS: Windows
   4. Architecture: All
   5. Paste the code below into the script box

{% hint style="info" %}
Your Rewst Base URL will vary depending on which Rewst instance you are on. You must update the $rewst\_base\_url property in the script below to match your Rewst Instance. You can identify which instance you are on by the URL you use to access Rewst. Please use the following table as a guide to identify your Rewst Base URL
{% endhint %}

| Rewst URL       | Base URL           |
| --------------- | ------------------ |
| app.rewst.io    | engine.rewst.io    |
| app.eu.rewst.io | engine.eu.rewst.io |
| app.rewst.eu    | engine.rewst.eu    |
| app.rewst.asia  | engine.rewst.asia  |

```powershell
Param(
    [Parameter(Mandatory=$true)]
    [string]$script_content_path,
    [Parameter(Mandatory=$true)]
    [string]$results_postdata_path
)

$rewst_base_url = "https://INSERTBASEURLHERE/webhooks/custom/action"
$script_content_url = "$rewst_base_url/$script_content_path"
$post_url = "$rewst_base_url/$results_postdata_path"



# Download Script Content from Rewst

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object System.Net.WebClient
$wc.Encoding = [System.Text.Encoding]::UTF8
$commands = ($wc.DownloadString($script_content_url))

# Execute Script Content

iex $commands
```

<figure><img src="../../../../../.gitbook/assets/image (36) (1).png" alt=""><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the NinjaOne integration.\
   \
   ![](<../../../../../.gitbook/assets/image (35) (1).png>)
3. Click on the integration tile to launch setup.
4.  Choose your Region from the **Region Instance** drop-down selector.\
    \


    <figure><img src="../../../../../.gitbook/assets/image (37) (1).png" alt=""><figcaption></figcaption></figure>
5. Authorize OAuth into NinjaOne, via Microsoft. You should see your customer show up at the bottom. You may need to click **Refresh Options** for customers to populate.
6. Click **Save**.

## Test the Integration

Once you’ve [mapped your customers](https://docs.rewst.help/documentation/integrations/general/organization-mapping#what-is-organization-mapping), test the integration by following the steps below.

1. Navigate to **Automations > Workflows**.
2. Click **Create**.
3. Name your workflow, and click **Submit**.
4. Drag a Ninja action onto your workflow builder canvas. In this example, we use **List Contacts**.\
   \
   ![](<../../../../../.gitbook/assets/image (38) (1).png>)
5. Click <img src="../../../../../.gitbook/assets/Screenshot 2025-02-21 at 11.13.39 AM (1).png" alt="" data-size="line"> to add a trigger. In the relevant fields, choose or enter the following settings:
   1. **Name** your trigger
   2. **Trigger Type**: **Core - Always Pass**
   3. **Integration Overrides**: **NinjaRMM**
   4. **Enable** the trigger for all or some of your managed organizations, depending on your setup and preference
6.  Click **Submit**.\
    \


    <figure><img src="../../../../../.gitbook/assets/image (39) (1).png" alt=""><figcaption></figcaption></figure>
7. Click **Test**, and select a company to run the action for. Test a handful of companies to ensure the integration is working.

## Crates related to the NinjaOne integration

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>Sync NinjaRMM Device Counts to Gradient Synthesize</strong></td><td><a href="../../../../../.gitbook/assets/Screenshot 2025-03-14 at 11.32.49 AM.png">Screenshot 2025-03-14 at 11.32.49 AM.png</a></td></tr><tr><td><strong>Just in Time Admin Access</strong></td><td><a href="../../../../../.gitbook/assets/Just in time admin access (2).png">Just in time admin access (2).png</a></td></tr><tr><td><strong>Agent Smith: Device Provisioning, and Agent Smith Service Provisioning</strong></td><td><a href="../../../../../.gitbook/assets/Screenshot 2025-03-14 at 11.34.06 AM.png">Screenshot 2025-03-14 at 11.34.06 AM.png</a></td></tr><tr><td><strong>Ad-Hoc Install/Uninstall Software via Chocolatey</strong></td><td><a href="../../../../../.gitbook/assets/Screenshot 2025-02-27 at 3.37.42 PM (1).png">Screenshot 2025-02-27 at 3.37.42 PM (1).png</a></td></tr><tr><td><strong>Windows 11 Compatibility Checker</strong></td><td><a href="../../../../../.gitbook/assets/Screenshot 2025-03-14 at 11.34.17 AM.png">Screenshot 2025-03-14 at 11.34.17 AM.png</a></td></tr><tr><td><strong>Bulk Move Users to Specified OU</strong></td><td><a href="../../../../../.gitbook/assets/Screenshot 2025-03-14 at 11.34.29 AM.png">Screenshot 2025-03-14 at 11.34.29 AM.png</a></td></tr></tbody></table>

## Troubleshoot the NinjaOne integration

### All List component actions fail.

If any list action is failing, ensure that you have added the script in previous instructions, into NinjaOne.

{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}



## NinjaOne actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

NinjaOne's own API documentation can be found [here](https://app.ninjarmm.com/apidocs-beta/core-resources).

| Action Name                                                  | Description                                                                                                                                      | Endpoint Related to Action |
| ------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------- |
| Approve/Reject Devices                                       | Approve or reject devices that are waiting for approval                                                                                          | /devices                   |
| Cancel Maintenance                                           | Cancel pending or active maintenance for device                                                                                                  | /device                    |
| Change Organization Policy Mappings                          | Update policy assignment for node role(s). Returns list of affected device IDs                                                                   | /organization              |
| Control Windows Service                                      | Start/Stop/Restart Windows Service on a device                                                                                                   | /device                    |
| Create Location For Organization                             | Creates new location for organization                                                                                                            | /organization              |
| Create New Organization                                      | Creates new organization with optional list of locations and policy mappings. Template organization ID can be specified to copy various settings | /organizations             |
| Create Ticket                                                | Creates a ticket                                                                                                                                 | /ticketing                 |
| Device Alerts (Triggered Conditions) by Device               | Returns list of active alerts (triggered conditions) for device                                                                                  | /device                    |
| Device Currently Running (Active) Jobs by Device             | Returns currently running jobs for device                                                                                                        | /device                    |
| Generate Installer                                           | Generates and returns URL for installer for specified organization/location                                                                      | /organization              |
| Generic API Request                                          | Generic action for making authenticated requests against the NinjaRMM API                                                                        |                            |
| Get Attachment by ID                                         | Returns attachment (image, document)                                                                                                             | /related-items             |
| Get Device Activities                                        | Returns activity log for device                                                                                                                  | /device                    |
| Get Device Details                                           | Returns device details                                                                                                                           | /device                    |
| Get Device Link                                              | Returns link to device                                                                                                                           | /device                    |
| Get Last Logged on User for Device                           | Returns username that was last to login to device                                                                                                | /device                    |
| Get Organization Information                                 | Returns organization details (policy mappings, locations)                                                                                        | /organization              |
| Get OS Update Installation Report by Device                  | Returns patch installation history records (successful and failed) for device                                                                    | /device                    |
| Get Software Update History by Device                        | Returns 3rd party software patch installation history records for device (successful and failed)                                                 | /device                    |
| Last Logged on User Report                                   | Returns usernames and logon times                                                                                                                | /queries                   |
| List Active Alerts (Triggered Conditions)                    | Returns list of active alerts/triggered conditions                                                                                               | /alerts                    |
| List Active Jobs                                             | Returns list of running jobs                                                                                                                     | /jobs                      |
| List Activities                                              | Returns activity log in reverse chronological order                                                                                              | /activities                |
| List All Device Custom Fields                                | Returns list of all custom fields                                                                                                                | /device-custom-fields      |
| List Antivirus Status by Device                              | Returns list of statues of antivirus software installed on devices                                                                               | /queries                   |
| List Antivirus Threats                                       | Returns list of antivirus threats                                                                                                                | /queries                   |
| List Boards                                                  | Get list of boards                                                                                                                               | /ticketing                 |
| List Computer Systems                                        | Returns computer systems information for devices                                                                                                 | /queries                   |
| List Contacts                                                | Get list of contacts                                                                                                                             | /ticketing                 |
| List Custom Fields                                           | Returns Custom Fields report                                                                                                                     | /queries                   |
| List Custom Fields for Device                                | Returns list of applicable management options                                                                                                    | /device                    |
| List Custom Fields with Details                              | Returns Custom Fields report with additional information about each field                                                                        | /queries                   |
| List Device Roles                                            | Returns list of device roles                                                                                                                     | /roles                     |
| List Devices                                                 | Returns list of devices (basic node information)                                                                                                 | /devices                   |
| List Devices (Detailed)                                      | Returns list of devices with additional information                                                                                              | /devices-detailed          |
| List Disk Drives                                             | Returns list of physical disks                                                                                                                   | /queries                   |
| List Disk Drives by Device                                   | Returns device disks' details                                                                                                                    | /device                    |
| List Disk Volumes                                            | Returns list of disk volumes                                                                                                                     | /queries                   |
| List Group Members’ Devices                                  | Returns list of device identifiers that match group criteria                                                                                     | /group                     |
| List Groups (Saved Searches)                                 | Returns list of groups                                                                                                                           | /groups                    |
| List Health Status by Device                                 | Returns list of device health summary records                                                                                                    | /queries                   |
| List Installed Software by Device                            | Returns list of software installed on device                                                                                                     | /device                    |
| List Locations                                               | Returns flat list of all locations for all organizations                                                                                         | /locations                 |
| List Operating Systems by Device                             | Returns operating systems' for devices                                                                                                           | /queries                   |
| List Organization Devices                                    | Returns list of devices for organization                                                                                                         | /organization              |
| List Organization Documents                                  | Returns organization documents                                                                                                                   | /organization              |
| List Organizational Locations                                | Returns list of locations for organization                                                                                                       | /organization              |
| List Organizations                                           | Returns list of organizations (Brief mode)                                                                                                       | /organization              |
| List Organizations with Locations and Policies               | Returns list of organizations with locations and policy mappings                                                                                 | /organization              |
| List OS Patches by Device                                    | Returns list of pending/rejected/approved OS patches for device                                                                                  | /device                    |
| List OS Update Installations                                 | Returns patch installation history records (successful and failed)                                                                               | /queries                   |
| List Pending, Failed and Rejected 3rd Party Software Patches | Returns list of 3rd party Software patches for which there were no installation attempts                                                         | /device                    |
| List Policies                                                | Returns list of policies                                                                                                                         | /policies                  |
| List Processors                                              | Returns list of processors                                                                                                                       | /queries                   |
| List Processors by Device                                    | Returns list of device Processor details                                                                                                         | /device                    |
| List RAID Controllers                                        | Returns list of RAID controllers                                                                                                                 | /queries                   |
| List RAID Drives                                             | Returns list of drives connected to RAID controllers                                                                                             | /queries                   |
| List Scheduled Tasks                                         | Returns list of registered scheduled tasks                                                                                                       | /tasks                     |
| List Scripting Options by Device                             | Returns scripting options (built-in actions, custom scripts) available for device                                                                | /device                    |
| List Software Inventory                                      | Returns list software installed on devices                                                                                                       | /queries                   |
| List Software Update History                                 | Returns 3rd party software patch installation history records (successful and failed)                                                            | /device                    |
| List Storage Volumes by Device                               | Returns device volumes' details                                                                                                                  | /device                    |
| List Supported 3rd Party Software                            | Returns available software products (3rd party patching)                                                                                         | /software-products         |
| List Ticket Forms                                            | Get list of ticket forms                                                                                                                         | /ticketing                 |
| List Ticket Log Entries                                      | Get list of ticket log entries                                                                                                                   | /ticketing                 |
| List Tickets for Board                                       | Get list of tickets by Board identifier                                                                                                          | /ticketing                 |
| List Uninstalled OS Patches                                  | Returns list of OS patches for which there were no installation attempts                                                                         | /queries                   |
| List Users                                                   | Returns list of users                                                                                                                            | /users                     |
| List Users for Organization                                  | Returns list of end-users for organization                                                                                                       | /organization              |
| List Windows Services                                        | Returns list of Windows Services and their statuses                                                                                              | /device                    |
| List Windows Services by Device                              | Returns list of Windows Services and their statuses                                                                                              | /queries                   |
| Modify Ticket                                                | Modify a ticket on a board                                                                                                                       | /ticketing                 |
| Modify Windows Service Configuration                         | Configures Windows Service startup settings                                                                                                      | /device                    |
| Pending, Failed and Rejected Software Patches for Device     | Returns list of 3rd party Software patches for a device (for which there were no installation attempts)                                          | /device                    |
| Reboot Device                                                | Sends a command to restart the computer                                                                                                          | /device                    |
| Remove Webhook API Channel                                   | Creates or updates PSA configuration based on client                                                                                             | /webhook                   |
| Reset Alert/Condition                                        | Resets alert/condition by UID                                                                                                                    | /alert                     |
| Reset Alert/Condition and Provide Custom Data for Activity   | Resets alert/condition by UID                                                                                                                    | /alert                     |
| Run Script or Built in Action                                | Run script or built-in action on a device                                                                                                        | /device                    |
| Schedule Maintenance                                         | Schedule maintenance window for device                                                                                                           | /device                    |
| Search for Devices                                           | Returns list of entities matching search term                                                                                                    | /devices                   |
| Update API Webhook Configuration                             | Creates or updates Webhook configuration for current application/client                                                                          | /webhook                   |
| Update Device Information                                    | Change device friendly name, user data, etc.                                                                                                     | /device                    |
| Update Field Values                                          | Update device's custom field values                                                                                                              | /organization              |
| Update Location                                              | Change location name, address, description, custom data                                                                                          | /organization              |
| Update Organization                                          | Change organization name, description and policy mappings                                                                                        | /organization              |
