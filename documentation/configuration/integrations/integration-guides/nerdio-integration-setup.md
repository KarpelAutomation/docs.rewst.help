# Nerdio integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Nerdo integration do?

The Nerdio Integration offers Rewst customers a seamless way to extend their cloud management capabilities. By integrating Nerdio with your existing systems, you gain access to a comprehensive suite of tools designed to simplify the deployment, management, and optimization of cloud resources.

## Why use the Nerdio integration?

* **Account provisioning and management**: Automate the creation and maintenance of accounts, ensuring efficient service delivery.
* **Resource optimization**: Utilize tools like Cost Estimator and Reservations to manage and optimize cloud expenses.
* **Desktop and app management**: Configure and manage desktop images and app role assignments with ease.
* **Data protection**: Leverage backup and recovery vault features to ensure your clients' data is secure and recoverable.
* **Network configuration**: Manage complex network setups and host pools, ensuring reliable and secure connectivity.
* **Custom solutions**: Utilize generic requests and scripted actions to tailor solutions to specific client needs.

## **Set up the Nerdio integration**

### Set up steps in Nerdio

1. Log in to the **Nerdio Manager for MSP** web page.&#x20;
2. Navigate to to **Settings** > **Integrations.**
3. Click **show** next to `Credentials` under the **REST API** header.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-01 at 3.46.38 PM.png>)
4. Copy the information that appears in the dialog in a secure location. You'll need it to complete setup steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Nerdio` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-01 at 3.36.36 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. &#x20;Under **Parameters**, enter the information copied from Nerdio into its relevant field:
   1. Client ID
   2. Client Secret - referred to as Secret by Nerdio
   3. OAuth 2.0 Token
   4. Scope
   5. Tenant ID
   6. Enter the **Base URL** specific to your Nerdio Manager page. For example, `web-admin-portal-xxxxxx.azurewebsites.net`.
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Nerdio Integration:

* [**Account Provisioning**](nerdio-integration-setup.md#account-provisioning)
* [**Accounts**](nerdio-integration-setup.md#accounts)
* [**App Role Assignments**](nerdio-integration-setup.md#app-role-assignments)
* [**Backup**](nerdio-integration-setup.md#backup)
* [**Cost Estimator**](nerdio-integration-setup.md#cost-estimator)
* [**Desktop Image**](nerdio-integration-setup.md#desktop-image)
* [**Directories**](nerdio-integration-setup.md#directories)
* [**Fs Logix Configs**](nerdio-integration-setup.md#fs-logix-configs)
* [**Generic Request**](nerdio-integration-setup.md#generic-request)
* [**Host**](nerdio-integration-setup.md#host)
* [**Host Pool**](nerdio-integration-setup.md#host-pool)
* [**Invoices**](nerdio-integration-setup.md#invoices)
* [**Job**](nerdio-integration-setup.md#job)
* [**Networks**](nerdio-integration-setup.md#networks)
* [**Recovery Vault**](nerdio-integration-setup.md#recovery-vault)
* [**Reservations**](nerdio-integration-setup.md#reservations)
* [**Resource Group**](nerdio-integration-setup.md#resource-group)
* [**Scripted Actions**](nerdio-integration-setup.md#scripted-actions)
* [**Secure Variables**](nerdio-integration-setup.md#secure-variables)
* [**Storage Azure Files**](nerdio-integration-setup.md#storage-azure-files)
* [**Test**](nerdio-integration-setup.md#test)
* [**Timezones**](nerdio-integration-setup.md#timezones)
* [**Usages**](nerdio-integration-setup.md#usages)
* [**User Sessions**](nerdio-integration-setup.md#user-sessions)
* [**Workspace**](nerdio-integration-setup.md#workspace)

***

## Endpoint details

### Account Provisioning

## Link Tenant 1

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accountprovisioning/linkTenant`

Step 1. Execute LinkTenant provision step, sync job

## Link Tenant 2

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accountprovisioning/linkNetwork`

Step 2. Start Azure configuration step

## Link Tenant 3

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accountprovisioning/connectToExistingAd`

Step 3. Start Connect to existing AD step (add job).

## Link Tenant 4

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accountprovisioning/createNewAzureAdds`

Step 4. Start Create new Azure DS step (add job)

## Link Tenant 5

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accountprovisioning/configureFileStorage`

Step 5. Start Configure file storage step (add job)

### Accounts

## List Accounts

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts`

Get list of accounts.

### App Role Assignments

## Unassign App Role

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/app-role-assignments`

Unassign App Role from Principals

## List Assigned Principals

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/app-role-assignments`

List all Assigned Principals

## Assign App Role

<mark style="color:green;">`POST`</mark> `<example-domain>.com/app-role-assignments`

Assign App Role to Principals

## Update App Role

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/app-role-assignments`

Update App Role for Principal

## List App Roles

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/app-role-assignments/roles`

List all app roles

### Backup

## List all protected items

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/backup/protectedItems`

Get all protected Items

## Get Recovery points of protected item

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/backup/recoveryPoints`

Get the recovery points of protected items

## Enable Backup

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/backup/enable`

Enable Backup

## Restore Resource

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/backup/restore`

Restore Resource to chosen recovery point

## Disable Resource

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/backup/disable`

Disable Resource. The resource will be removed from the backup policy and will no longer be backed up. You will be able to restore from any recovery points available so far.

## Disable Backup Date

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/backup/deleteBackupData`

Delete Backup Date. The resource will be removed from the backup vault. You will not be able to restore this resource.

## Backup Resource

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/backup`

Backup Resource. Execute backup of current resource

### Cost Estimator

## Get Estimate by Id

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/costestimator/{id}`

Get the saved estimate by ID

## List Saved Estimates

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/costestimator/list`

List all Saved Estimates

### Desktop Image

## Delete Desktop Image

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/{subscriptionId}/{resourceGroup}/{name}`

Delete desktop image

## Get Desktop Image

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/{subscriptionId}/{resourceGroup}/{name}`

Get desktop image in detail

## Remove&#x20;

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/{subscriptionId}/{resourceGroup}/{name}/power-off-and-set-as-image-configuration`

Remove 'set as image schedule configuration

## List Desktop Images

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image`

List all desktop images in detail

## List Changes to Image

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/{subscriptionId}/{resourceGroup}/{name}/change-log`

List all changed made to the desktop image

## Open RDP Access

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/{subscriptionId}/{resourceGroup}/{name}/open-rdp`

Open RDP Access

## Create Desktop Image From Azure Library

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/create-from-library`

Create desktop image from azure library

## Create Desktop Image From Azure VM

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/create-from-vm`

Create desktop image from azure VM

## Clone Desktop Image

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/{subscriptionId}/{resourceGroup}/{name}/clone`

Clone desktop image

## Run Scripted Actions on Desktop Image

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/{subscriptionId}/{resourceGroup}/{name}/run-script`

Run scripted actions on desktop image

## Power Off Desktop Image

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/desktop-image/{subscriptionId}/{resourceGroup}/{name}/stop`

Power off current desktop image

### Directories

## List all directories

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/directories`

List all directories

## List directories by Account

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/directories`

List directories by Account

### Fs Logix Configs

## List FSLogix configs

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/fslogix`

List all existing FSLogix configs

### Generic Request

## Nerdio API Request

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/<url_path>`

Generic action for making authenticated requests against the Nerdio API

### Host

## Remove Host

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}`

Remove chosen host

## List All Hosts

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts`

List all hosts of the host pool

## Create Host

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts`

Create host

## Start Host

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/start`

Power on chosen host

## Stop Host

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/start`

Power off chosen host

## Restart Host

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/restart`

Restart chosen host

## Allow Host

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/allowsessions`

Activate / Deactivate chosen host

## Reimage Host

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/reimage`

Reimage chosen host

## Assign User to Host

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/assignUser`

Assign, Unassign, or Reassign user chosen host

## Run Scripted Action on Host

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/run-script`

Run Scripted Action on Host

### Host Pool

## Remove Host Pool

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}`

Remove chosen host pool

## Remove Autoscale Pause

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/auto-scale-pause`

Remove autoscale pause for host pool

## Pause Autoscale

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/auto-scale-pause`

Pause autoscale for host pool

## Delete All Hosts

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/delete-bulk`

Delete all hosts in the pool

## Remove Job Schedule Configuration

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/schedule-configuration/{jobType}`

Remove Job Schedule Configuration

## List Host Pools

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool`

List all host pools in the account

## Create Host Pool

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool`

Create Host Pool

## Get Host Pool Autoscale Config

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/autoscale-configuration`

Get the host pool current autoscale configuration

## Update Host Pool Autoscale Config

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/autoscale-configuration`

Update the host pool current autoscale configuration

## Get Host Pool Autoscale Settings

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/autoscale-settings`

Get the host pool current autoscale settings

## Update Host Pool Autoscale Settings

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/autoscale-settings`

Update the host pool current autoscale settings

## Get Host Pool AD

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/active-directory`

Get the host pool current AD

## Update Host Pool AD

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/active-directory`

Update the host pool current AD

## Get Host Pool Properties

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/avd`

Get the host pool current properties

## Update Host Pool Properties

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/avd`

Update the host pool current properties

## Get Host Pool VM Deployment Settings

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/vm-deployment`

Get the host pool current VM deployment settings

## Update Host Pool VM Deployment Settings

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/vm-deployment`

Update the host pool current VM deployment Settings

## Get Host Pool FSLogix Config

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/fslogix`

Get the host pool current FSLogix Config

## Update Host Pool FXLogix Config

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/fslogix`

Update the host pool current FXLogix Config

## Get Host Pool Session Timeouts

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/session-timeouts`

Get the host pool current Session Timeouts

## Update Host Pool Session Timeouts

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/session-timeouts`

Update the host pool current Session Timeouts

## List Host Pool Tags

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/tags`

List the host pool current tags

## Update Host Pool Tags

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/tags`

Update the host pool current tags

## List Users Assigned to Host Pool

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/assigned-users`

List the users assigned to the current host pool

## Assign User to Host Pool

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/assign`

Assign user to host pool

## Unassign User to Host Pool

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/unassign`

Unassign user to host pool

## Clone Host Pool

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/clone`

Clone the chosen host pool

## Power Off Host Pools

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/stop-bulk`

Power off all hosts in the pool

## Power On Host Pools

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/start-bulk`

Power on all hosts in the pool

## Restart Host Pools

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/restart-bulk`

Restart all hosts in the pool

## Reimage Host Pools

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/reimage`

Resize or reimage all hosts in the pool

## Toggle Host Pools

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/allowsessions`

Activeate / Deactivate all hosts in the pool

## Run Script on Host Pools

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/run-script-bulk`

Run script on all hosts in the pool

## Toggle Autoscale for Host Pool

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/auto-scale-enable`

Toggle Autoscale for host pool with current configuratoins

## Set Host Pool Capacity Extender Properties

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/capacity-extender-properties`

Set host pool capacity extender properties

## Log Off All Users

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/logoff`

Log off all users from host pool

## Disconnect All Users

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/disconnect`

Disonnect all users from host pool

## Send Message

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/send-message`

Send message to all sessions for host pool

### Invoices

## List Invoices

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/invoices`

List all invoices

## Get Invoice

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/invoices/{id}`

Get invoice details

### Job

## Get Job

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/job/{jobId}`

Get job information by Id

## List Tasks

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/job/{jobId}/tasks`

List all tasks of job by job id

## Restart Job

<mark style="color:green;">`POST`</mark> `<example-domain>.com/job/restart/{jobId}`

Restart job

### Networks

## List Managed Networks

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/networks`

List managed networks by account

## List All Available Networks

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/networks/all`

List all available networks by account

## Link Existing Network

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/networks/link`

Link existing network

### Recovery Vault

## Delete Policy from Vault

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/policy`

Delete policy from vault

## Get Policy Data

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/policy`

Get policy data

## List Managed Vaults

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault`

List all managed Vaults

## Create New Vaults

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault`

Create new vault

## List All Vaults

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/allvaults`

Get all managed Vaults

## List All Policies in Vault

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/policies`

Get all policies in the Vault

## Get Region Information

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/regionpolicyinfo/{subscriptionId}/{region}`

Get information about region protection by policies

## Link to Vault

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/link/vault`

Link to existing vault

## Unlink Vault

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/unlink/vault`

Unink vault

## Create Policy

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/createorupdate/policy`

Create New Policy

## Assign Policy to Resource

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/recovery-vault/assignpoliciestoresources`

Assign policy o resources

### Reservations

## Delete Reservation

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/reservations/{reservationId}`

Delete reservation by Id

## Get Reservation

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/reservations/{reservationId}`

Get reservation by Id

## Update Reservation

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/reservations/{reservationId}`

Update existing reservation by Id

## List Reservations

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/reservations`

List all reservation

## Add Reservations

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/reservations`

Add new reservation

## List Resource Names

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/reservations/{reservationId}/resources`

List all resource names associated to reservation

### Resource Group

## Unlink Resource Group

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/resource-group/linked`

Unlink Azure resource group

## Link Resource Group

<mark style="color:green;">`POST`</mark> `<example-domain>.com/resource-group/linked`

Link Azure resource group

## Unlink Resource Group by Account

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/resource-group/linked`

Unlink Azure resource group

## Link Resource Group by Id

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/resource-group/linked`

Link Azure resource group by id

## List Managed Resource Groups

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/resource-group`

List all managed resource groups

## List Managed Resource Groups by Account

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/resource-group`

List all managed resource groups by account

## Set Resource Group as Default

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/resource-group/setDefault`

Set Azure resource group as default

## Set Resource Group as Default by Account

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/resource-group/setDefault`

Set Azure resource group as default by account

### Scripted Actions

## Delete MSP Scripted Action

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/scripted-actions/{id}`

Delete MSP scripted Action

## Update MSP Scripted Action

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/scripted-actions/{id}`

Update MSP scripted Action

## Delete Azure MSP Scripted Action Schedule Configuration

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/scripted-actions/{id}/schedule`

Delete Azure MSP Scripted Action Schedule Configuration

## Get Azure MSP Scripted Action Schedule Configuration

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/scripted-actions/{id}/schedule`

Get azure runbook msp scripted action schedule configuration

## Schedule Azure MSP Scripted Action

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/scripted-actions/{id}/schedule`

Schedule Azure runbook msp scripted action execution in Automation account

## Delete Account Scripted Action

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/scripted-actions/{id}`

Delete Account Scripted Action

## Update Account scripted Action

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/scripted-actions/{id}`

Update account scripted action

## Delete Azure runbook Account Scripted Action Schedule Configuration

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/scripted-actions/{id}/schedule`

Delete Azure runbook account scripted action schedule confirmation

## Get Azure runbook Account Scripted Action Schedule Configuration

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/scripted-actions/{id}/schedule`

Get Azure runbook Account Scripted Action Schedule Configuration

## Schedule Azure runbook Account Scripted Action Execution in Automation Account

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/scripted-actions/{id}/schedule`

Schedule Azure runbook Account Scripted Action in Automation Account

## List MSP Scripted Actions

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/scripted-actions`

List all msp scripted actions

## Create MSP Scripted Action

<mark style="color:green;">`POST`</mark> `<example-domain>.com/scripted-actions`

Create MSP Scripted Action

## List MSP Scripted Actions by Account

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/scripted-actions`

List all msp scripted actions by account

## Create Account Scripted Action

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/scripted-actions`

Create account Scripted Action

## Run Azure runbook MSP Scripted Action in Automation Account

<mark style="color:green;">`POST`</mark> `<example-domain>.com/scripted-actions/{id}/execution`

Run Azure runbook MSP Scripted Action in Automation Account

## Run Azure runbook MSP Scripted Action in Automation Account by Account

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/scripted-actions/{id}/execution`

Run Azure runbook MSP Scripted Action in Automation Account by account

### Secure Variables

## Delete MSP Secure Variable

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/secure-variables`

Delete msp secure variable

## List MSP Secure Variables

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/secure-variables`

List all MSP secure variables

## Create MSP Secure Variable

<mark style="color:green;">`POST`</mark> `<example-domain>.com/secure-variables`

Create MSP secure variable

## Update MSP Secure Variable

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/secure-variables`

Update MSP secure variable

## Delete Account Secure Variable

<mark style="color:red;">`DELETE`</mark> `<example-domain>.com/accounts/{accountId}/secure-variables`

Delete account secure variable

## List Account Secure Variables

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/secure-variables`

List all account secure variables

## Create Account Secure Variable

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/secure-variables`

Create Account secure variable

## Update Account Secure Variable

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/secure-variables`

Update account secure variable

### Storage Azure Files

## Get Azure Files Autoscale

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/storage/azure-files/{subscriptionId}/{resourceGroup}/{storageAccountName}/{shareName}/auto-scale`

Get Azure Files Autoscale

## Update Azure Files Autoscale

<mark style="color:orange;">`PUT`</mark> `<example-domain>.com/accounts/{accountId}/storage/azure-files/{subscriptionId}/{resourceGroup}/{storageAccountName}/{shareName}/auto-scale`

Update Azure Files Autoscale

## Toggle Azure Files Autoscale

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/storage/azure-files/{subscriptionId}/{resourceGroup}/{storageAccountName}/{shareName}/auto-scale/enabled/{isEnabled}`

Enable/Disable Azure Files Autoscale

### Test

## Test

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/test`

Test

### Timezones

## List Timezones ids

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/timezones`

List out the timezones

### Usages

## List Usages

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/usages`

List Usages

## List Usages by Account

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/usages`

List Usages by Account

### User Sessions

## List Host Pool User Sessions

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/sessions`

List all host pool user sessions

## List workspace user sessions

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}/sessions`

List all host pool user sessions

## Perform Logoff Action for Host Pool User Session

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/session/{sessionId}/action/logoff`

Perform logoff actoin for host pool user session

## Perform Disconnect Action for Host Pool User Session

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/session/{sessionId}/action/disconnect`

Perform disconnect action for host pool user session

## Send Message for Host Pool User Session

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/host-pool/{subscriptionId}/{resourceGroup}/{poolName}/hosts/{hostName}/session/{sessionId}/action/send-message`

Send Message action for host pool user session

### Workspace

## List Workspaces

<mark style="color:blue;">`GET`</mark> `<example-domain>.com/accounts/{accountId}/workspace`

List available workspaces

## Create Workspace

<mark style="color:green;">`POST`</mark> `<example-domain>.com/accounts/{accountId}/workspace`

Create workspace for provided account
