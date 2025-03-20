---
description: Become familiar with the actions available to use with your Addigy integration
---

# Actions & Endpoints

## Actions & Endpoints

### Introduction

The Addigy Integration with Rewst delivers a robust set of actions and endpoints for interacting with Addigy. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Addigy Integration:

* [**Apps And Books**](actions-and-endpoints.md#apps-and-books)
* [**Automatic Device Enrollment**](actions-and-endpoints.md#automatic-device-enrollment)
* [**Autotask**](actions-and-endpoints.md#autotask)
* [**Azure Conditional Access**](actions-and-endpoints.md#azure-conditional-access)
* [**Benchmark**](actions-and-endpoints.md#benchmark)
* [**Billing**](actions-and-endpoints.md#billing)
* [**Child Organizations**](actions-and-endpoints.md#child-organizations)
* [**Commands**](actions-and-endpoints.md#commands)
* [**Community**](actions-and-endpoints.md#community)
* [**Compliance Rule**](actions-and-endpoints.md#compliance-rule)
* [**Configurations**](actions-and-endpoints.md#configurations)
* [**Connectwise**](actions-and-endpoints.md#connectwise)
* [**Device Compliance Status**](actions-and-endpoints.md#device-compliance-status)
* [**Device Script Assignments**](actions-and-endpoints.md#device-script-assignments)
* [**Devices**](actions-and-endpoints.md#devices)
* [**Facts**](actions-and-endpoints.md#facts)
* [**Files**](actions-and-endpoints.md#files)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Installed Apps**](actions-and-endpoints.md#installed-apps)
* [**Maintenance**](actions-and-endpoints.md#maintenance)
* [**Malwarebytes Oneview**](actions-and-endpoints.md#malwarebytes-oneview)
* [**Managed Apps Configurations**](actions-and-endpoints.md#managed-apps-configurations)
* [**Mdm Commands**](actions-and-endpoints.md#mdm-commands)
* [**Mdm Configuration Profiles**](actions-and-endpoints.md#mdm-configuration-profiles)
* [**Mdm Devices**](actions-and-endpoints.md#mdm-devices)
* [**Mdm Enrollment**](actions-and-endpoints.md#mdm-enrollment)
* [**Mdm Installed Certificates**](actions-and-endpoints.md#mdm-installed-certificates)
* [**Mdm Profile Deployment**](actions-and-endpoints.md#mdm-profile-deployment)
* [**Mdm Profiles**](actions-and-endpoints.md#mdm-profiles)
* [**Mdm Profiles Policies**](actions-and-endpoints.md#mdm-profiles-policies)
* [**Monitoring**](actions-and-endpoints.md#monitoring)
* [**Office Updates**](actions-and-endpoints.md#office-updates)
* [**Os Users**](actions-and-endpoints.md#os-users)
* [**Policies**](actions-and-endpoints.md#policies)
* [**Policy Rules**](actions-and-endpoints.md#policy-rules)
* [**Public Beta Features**](actions-and-endpoints.md#public-beta-features)
* [**Reports**](actions-and-endpoints.md#reports)
* [**Script**](actions-and-endpoints.md#script)
* [**Self Service Configuration**](actions-and-endpoints.md#self-service-configuration)
* [**Self Service Location Assets**](actions-and-endpoints.md#self-service-location-assets)
* [**Smart Software**](actions-and-endpoints.md#smart-software)
* [**Static Fields**](actions-and-endpoints.md#static-fields)
* [**System Events**](actions-and-endpoints.md#system-events)
* [**System Updates (Mdm)**](actions-and-endpoints.md#system-updates-mdm)
* [**Users**](actions-and-endpoints.md#users)
* [**Variables**](actions-and-endpoints.md#variables)

### Actions

#### Apps And Books

## List Of Apps And Books Tokens Assigned To Policies

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/apps-and-books/tokens/policies/query`

Get a list of apps and books tokens assigned to policies.

#### Automatic Device Enrollment

## List Ade Tokens Assigned To Policies

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/ade/tokens/policies/query`

Get a list of ade tokens assigned to policies.

#### Autotask

## List Autotask Accounts

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/autotask/accounts`

Get Autotask account.

## Get Autotask Account

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/autotask/accounts/{account_id}`

Get Autotask account.

## Sync Policy Devices With Autotask Configurations

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/autotask/policy/device/sync`

Sync policy devices with Autotask configurations. \*\*Permission Required\*: \*Edit Integration.

#### Azure Conditional Access

## Get Azure Conditional Access All Accounts Metadata

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/integrations/azure-ca/accounts/metadata/query`

Get Azure Conditional Access all accounts metadata.

#### Benchmark

## Update A Benchmark Asset

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/o/{organization_id}/benchmarks`

Update a benchmark asset. \*\*Permission Required\*: \*Edit Benchmark.

## Create A Benchmark Asset

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/benchmarks`

Create a benchmark asset. \*\*Permission Required\*: \*Create Benchmark.

## Delete A Benchmark Asset

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/benchmarks`

Delete a benchmark asset.\*\*Permission Required\*: \*Delete Benchmark.

## Assign A Benchmark To A Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/policy/assets/benchmarks`

Assign a benchmark to a policy. \*\*Permission Required: Edit Policy Benchmarks.

## Remove A Benchmark From Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/policy/assets/benchmarks`

Remove a benchmark from a policy. \*\*Permission Required: Edit Policy Benchmarks.

## List Benchmark Assets

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/benchmarks/query`

Get a list of benchmark assets for an organization. \*\*Permission Required\*: \*View Benchmarks.

#### Billing

## Get Billing Account

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/billing/account`

Get billing account for a given organization.

## Get Billing Data

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/billing/data`

Get billing data for a given child organization.

## Get Billing Invoices

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/billing/invoices`

Get billing invoices for a given organization.

#### Child Organizations

## List Child Organizations

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/children/query`

Get a list of child organizations belonging to the provided organization

#### Commands

## Run Devices Command

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/devices/commands/run`

Run devices command.

## Get Command Output

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/devices/{agent_id}/commands/{action_id}/output`

Get command output.

#### Community

## Report Community Fact Or Command

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/community/report`

Report a community fact or command to Addigy for review.

#### Compliance Rule

## Update A Compliance Rule

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/o/{organization_id}/compliance-rules`

Update a compliance rule. \*\*Permission Required\*: \*Edit Benchmark.

## Create A Compliance Rule

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/compliance-rules`

Create a compliance rule. \*\*Permission Required\*: \*Create Benchmark.

## Delete A Compliance Rule

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/compliance-rules`

Delete a compliance rule.\*\*Permission Required\*: \*Delete Benchmark.

## Get Compliance Rules Using A Script

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/compliance-rules/scripts`

Get compliance rules using script. \*\*Permission Required: View Benchmarks.

## List Compliance Rules

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/compliance-rules/query`

Get a list of compliance rules for an organization. \*\*Permission Required\*: \*View Benchmarks.

## Get A Compliance Rule Usage

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/oa/compliance-rules/usage`

Get a compliance rule usage. \*\*Permission Required\*: \*View Benchmarks.

#### Configurations

## List API Key Permissions

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/configuration/permissions`

Get API key permissions

#### Connectwise

## List Connect Wise Accounts

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/connectwise/accounts`

Get ConnectWise account.

## Get Ticketing Account

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/connectwise/accounts/{account_id}`

Get ticketing account.

## Sync Policy Devices With Connect Wise Configurations

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/connectwise/policy/device/sync`

Sync policy devices with ConnectWise configurations. \*\*Permission Required\*: \*Edit Integration.

#### Device Compliance Status

## Get Device Compliance Statuses Per Benchmark

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/device/compliance/benchmark/status`

Get device compliance statuses per benchmark. \*\*Permission Required\*: \*View devices.

## List Devices Compliance Status

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/devices/compliance/status/query`

Get devices compliance status. \*\*Permission Required: View Devices.

#### Device Script Assignments

## List Device Script Assignments

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/device-script-assignments`

Get Device Script Assignments available for the organization.

## Creates A Device Script Assignment

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/device-script-assignments`

Creates a device script assignment in the organization.

## Deletes A Device Script Assignment

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/device-script-assignments`

Deletes a device script assignment from the organization.

#### Devices

## Universal Search Devices

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/devices`

Allow to query for a set of devices based on a value that pertains to one of their device facts. \*\*Permission Required\*: \*View Devices.

## Removes A Device

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/devices/{sn}`

Removes a device from Addigy \*\*Permission Required: Delete Devices. \*\*Note: This endpoint is not meant to be used by bulk removal operations.

#### Facts

## List Custom Facts

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/facts/custom`

List all custom facts for the organization.

## Update Custom Facts

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/facts/custom`

Update a custom fact.

## Create Custom Facts

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/facts/custom`

Create a custom fact.

## Delete Custom Facts

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/facts/custom`

Delete a custom fact.

## Assign Custom Fact To Policies

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/facts/custom/policy`

Assign Custom Facts to policies.

## Unassign A Custom Fact From A Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/facts/custom/policy`

Unassign a custom fact from a policy.

## List Of Custom Facts Filtered By ID Or Name

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/facts/custom/query`

Get a list of Custom Facts filtered by id or name for an organization.

#### Files

## List Organization Files

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/files/query`

Get a list of files for an organization. \*\*Permission Required: View Files.

#### Generic Request

## Addigy API Request

<mark style="color:blue;">`GET`</mark> `api.addigy.com/<url_path>`

Include /v2/ for Addigy API v2 usage, generic action for making authenticated requests against the Addigy API

#### Installed Apps

## Query Installed Apps From A Device (Via Mdm)

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/installed-apps/mdm/query`

Query installed apps from a device providing some agent IDs. \*\*Permission Required: View Devices.

#### Maintenance

## Update Maintenance Item

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/maintenance`

Update a maintenance item. \*\*Permission Required\*: \*Edit Catalog Maintenance.

## Create Maintenance Item

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/maintenance`

Create a maintenance item. \*\*Permission Required\*: \*Create Catalog Maintenance.

## Delete Maintenance Item

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/maintenance`

Delete a maintenance item.\*\*Permission Required\*: \*Delete Catalog Maintenance.

## Assign Polices To A Maintenance Item

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/maintenance/policy`

Assign polices to a maintenance item. \*\*Permission Required: Edit Policy Maintenance.

## Unassign A Maintenance Item From Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/maintenance/policy`

Unassign a maintenance item from policy. \*\*Permission Required\*: \*Edit Policy Maintenance.

## List Maintenance Items

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/maintenance/query`

Get a list of maintenance items for an organization.

#### Malwarebytes Oneview

## Enable Malware Bytes One View Integration. Create New Account

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/mbov`

Enable MalwareBytes OneView integration. Create new account.

## Disable Malware Bytes One View Integration

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/mbov`

Disable MalwareBytes OneView integration.

## Get Malware Bytes One View Account Status

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/mbov/account/status`

Get MalwareBytes OneView account status

## Get Malware Bytes One View Account Catalog Usage

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/mbov/account/usage`

Get MalwareBytes OneView account catalog usage

## Get Malware Bytes One View Sites

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/integrations/mbov/sites`

Get MalwareBytes OneView sites

## Get Malware Bytes One View Policy Sites

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/policy/mbov-sites`

Get MalwareBytes OneView policy sites.

## Assign A Malware Bytes One View Site To A Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/policy/mbov-sites`

Assign a MalwareBytes OneView site to a policy.

## Remove A Malware Bytes One View Site From Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/policy/mbov-sites`

Remove a MalwareBytes OneView site from policy.

#### Managed Apps Configurations

## Gets Managed App Configuration For Apps & Books Applications

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/managed-app-configurations`

Gets managed app configuration for Apps & Books applications.

## Requests To Create Managed App Configuration For Apps & Books Applications

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/managed-app-configurations`

Requests to create managed app configuration for Apps & Books applications.

## Requests To Delete Managed App Configuration For Apps & Books Applications

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/managed-app-configurations`

Requests to delete managed app configuration for Apps & Books applications.

## Requests To Assign Managed App Configuration To Apple Application

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/managed-app-configurations/assign`

Requests to assign managed app configuration to Apple application.

## Gets Managed App Configurations For A Location

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/managed-app-configurations/search`

Gets managed app configurations for a location.

#### Mdm Commands

## Clear Passcode

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/mdm/commands/device-passcode`

This command allows the server to delete a user that has an active account on the device.Please provide the device agent ID or the device UUID

## Delete Device User

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/mdm/commands/device-user`

This command allows the server to delete a user that has an active account on the device.Please provide the device agent ID or the device UUID

## List Mdm Device Users

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/commands/device-users/query`

Returns a list of known users that were given to Addigy via the Request User List command. Please provide the device agent ID or the device uuid

## Lock Mdm Device

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/commands/device/lock`

This command locks the device. The device will be unusable until the passcode is entered.Please provide the device agent ID or the device UUID

## Disable Lost Mode

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/commands/device/lost-mode/disable`

This command allows the server to put the device in MDM lost mode, with a message, phone number, and footnote text. A message or phone number must be provided.Please provide the device agent ID or the device UUID

## Enable Lost Mode

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/commands/device/lost-mode/enable`

This command allows the server to put the device in MDM lost mode, with a message, phone number, and footnote text. A message or phone number must be provided.Please provide the device agent ID or the device UUID

## Get Device Location

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/commands/device/lost-mode/location`

Allows the server to ask the device to report its location if it is in MDM lost mode. Please provide the device agent ID or the device UUID.

## Restart Mdm Device

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/commands/device/restart`

Description coming soon...

#### Mdm Configuration Profiles

## Get Mdm Configuration Profile Definition

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/configurations/definition/{addigy_payload_type}`

Addigy payload type of MDM profile

## Get Mdm Configuration Profile Definitions

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/configurations/definitions`

Get MDM configuration profile definitions

## Get Policy Profiles By Addigy Payload Type

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/configurations/policy/profiles`

Get policy profiles by Addigy payload type

## Creates An Mdm Profile

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/configurations/profile`

Creates an MDM profile.Permission Required\*: \*Create MDM Profiles.Requirements: The payload must be a valid MDM payload. We do not support profiles with multiple payloads at this time. Use payload\_display\_name, payload\_type, payload\_priority, and the required payload keys as outlined in the Apple Documentation for the payload that you are trying to create. Payload: This is what each field represents within the payload and which are the allowed values for the request.payload\_display\_name - represents the name of the payload to be created,payload\_type - represents the type of payload as defined in the Apple Documentation, such as com.apple.airplay,payload\_priority - represents the priority order in which the profile will be sent to the device, once the policy runs, default value is 9 (Facts: 2, Self Service: 2, Splashtop: 5, MS Office Update: 10, Software: 10, OS Users: 10, System Update: 20).For more information about Addigy's API Supported MDM payloads, please visit \[Addigy's API Supported MDM Payloads]\(https:support.addigy.comhcen-usarticles29982135947411)

## Assign Policies To Manifest Based Mdm Configuration Profile

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/configurations/profile/policies`

Assign policies to manifest-based MDM configuration profile

## Unassign An Mdm Profile From Policies

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/mdm/configurations/profile/policies`

Unassign an MDM profile from policies

## Get Manifest Based Mdm Configuration Profile

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/configurations/profile/{payload_group_id}`

Get manifest-based MDM configuration profile

## Delete Manifest Based Mdm Configuration Profile

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/mdm/configurations/profile/{payload_group_id}`

Delete manifest-based MDM configuration profile

## Get Manifest Based Mdm Configuration Profiles

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/configurations/profiles`

Get manifest-based MDM configuration profiles

## Update A Manifest Based Mdm Configuration Profile

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/mdm/configurations/profiles/stage`

Update a manifest-based MDM configuration profile

## Confirm Changes To Manifest Based Mdm Configuration Profile

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/configurations/profiles/stage`

Confirm changes to manifest-based MDM configuration profile

## Query Mdm Payload Information

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/mdm/payloads/query`

Query MDM Payload information and assignments

#### Mdm Devices

## Get Mdm Device Details

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/devices/{device_uuid}`

Get MDM device details including enrollment profile, APN certificate and last response.

## Test Mdm Response

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/devices/{device_uuid}/test`

Test MDM response.

#### Mdm Enrollment

## Install Mdm Enrollment Profile

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/mdm/enrollment/profile/install`

Install MDM enrollment profile via mdm if available or via agent for macOS devices

#### Mdm Installed Certificates

## List Of Mdm Installed Certificates

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/certificates/query`

Paginated request that returns list of installed certificates by mdm devices. \*\*Permission Required\*: \*View Devices

#### Mdm Profile Deployment

## Deploy Profile To List Of Devices

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/devices/profile/deploy`

Deploys profile to list of devices andor managed users. It is an atomic request meaning that if one error is encountered no profile will be deployed to any of the devices andor managed users.Permission Required: View Devices, Execute commands

#### Mdm Profiles

## List Mdm Profiles

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/mdm/profiles`

Description coming soon...

#### Mdm Profiles Policies

## List Mdm Profiles Assigned To Policies

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/mdm/profiles/policies`

Get MDM profiles assigned to policies

#### Monitoring

## Update A Monitoring Item

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/monitoring`

Update a monitoring item. \*\*Permission Required\*: \*Edit Custom Monitoring.

## Create A Monitoring Item

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/monitoring`

Create a monitoring item. \*\*Permission Required\*: \*Create Custom Monitoring.

## Delete A Monitoring Item

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/monitoring`

Delete a monitoring item.\*\*Permission Required\*: \*Delete Custom Monitoring.

## Assign Monitoring Item To Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/monitoring/policy`

Assign monitoring item to policy. \*\*Permission Required: Edit Policy Monitoring.

## Unassign A Monitoring Item From Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/monitoring/policy`

Unassign a monitoring item from policy. \*\*Permission Required\*: \*Edit Policy Monitoring.

## List Monitoring Items

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/monitoring/query`

Get a list of monitoring items for an organization.

## List Of Received Alerts

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/oa/monitoring/received-alerts`

Query list of received alerts

#### Office Updates

## Assign Office Update Asset To Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/policies/{policy_id}/office-updates/{asset_id}`

Assign office asset to policy. \*\*Permission Required: Edit Policy Instruction.

## Remove Office Update From A Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/policies/{policy_id}/office-updates/{asset_id}`

Remove office update from a policy. \*\*Permission Required: Edit Policy Instruction.

#### Os Users

## Assigns OS User Asset To A Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/policies/{policy_id}/os-users/{asset_id}`

Assigns an OS user asset to a policy. \*\*Permission Required: Edit Policy Instructions.

## Unassigns OS User Asset From A Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/policies/{policy_id}/os-users/{asset_id}`

Unassigns an OS user asset from a policy. \*\*Permission Required\*: \*Edit Policy Instructions.

#### Policies

## Update A Policy

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/o/{organization_id}/policies`

Update a policy. \*\*Permission Required\*: \*Edit Policy.

## Create A Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/policies`

Create a policy. \*\*Permission Required\*: \*Create Policy.

## Delete A Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/policies`

Delete a policy. \*\*Permission Required\*: \*Delete Policy.

## Update A Policy Parent

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/o/{organization_id}/policies/parent`

Update a policy parent. \*\*Permission Required\*: \*Edit Policy.

## Delete A Policy Parent

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/policies/parent`

Delete a policy parent. \*\*Permission Required\*: \*Edit Policy.

## Get Policy Info

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/policies/query`

Query an organization for all policies or filter to get specific policy info

#### Policy Rules

## Get Policy Assignment Rule

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/policies/rule`

Get policy assignment rule. \*\*Permission Required: .Automatic Policy Assignments

## Add Assignment Rule To Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/policies/rule`

Add assignment rule to policy. \*\*Permission Required: Automatic Policy Assignments.

## Remove Assignment Rule From Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/policies/rule`

Remove assignment rule from policy. \*\*Permission Required: Automatic Policy Assignments.

## List Policy Assignment Rules

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/policies/rules`

Get policy assignment rules. \*\*Permission Required: .Automatic Policy Assignments

#### Public Beta Features

## Get Public Beta Features

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/feature-betas`

Get all Beta Features available for the organization. \*\*Permission Required\*: \*Toggle Feature Betas.

## Enables A Beta Feature In The Organization

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/feature-betas/organizations`

Enables a Beta Feature in the organization. \*\*Permission Required\*: \*Toggle Feature Betas.

## Disables A Beta Feature From The Organization

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/feature-betas/organizations`

Disables the Beta Features from the organization. \*\*Permission Required\*: \*Toggle Feature Betas.

#### Reports

## Request Report

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/reports`

Request a report. Only one report of each type can be requested at a time.

## Get A Report

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/oa/reports`

Get a report.

## List Available Reports

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/oa/reports/available`

Get a list of available reports.

## List Report Statuses

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/reports/status/query`

Get report statuses.

#### Script

## Delete Script

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/scripts`

Delete a script. \*\*Permission Required\*: \*Delete Predefined Commands.

#### Self Service Configuration

## Create Self Service Configuration

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/self-service-configurations`

Creates a new self service configuration in the organization. \*\*Permission Required\*: \*Create Instruction.

#### Self Service Location Assets

## List Of Available Assets For The Provided Location ID (Token ID)

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/policies/self_service/location/assets/query`

Description coming soon...

#### Smart Software

## Assigns A Smart Software Item To A Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/policies/{policy_id}/smart-software/{asset_id}`

Assigns a Smart Software Item to a Policy given the Policy ID and Smart Software Item ID. Permission Required: Edit Policy Instructions.

## Unassigns A Smart Software Item From A Policy

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/policies/{policy_id}/smart-software/{asset_id}`

Unassigns a Smart Software Item from a Policy given the Policy ID and Smart Software Item ID. Permission Required: Edit Policy Instructions.

## Create A New Smart Software

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/smart-software`

Creates a new smart software Permission Required: Create Instruction.

## List Of Smart Software Items

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/smart-software/query`

Gets a list of smart software items available for the given organization.Items returned can be filtered based on query parameters from the request.To query for the versions of a software, provide the identifier of the software in the query.

## Gets A Smart Software Item

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/smart-software/{id}`

Gets a smart software item by ID.

## Creates A New Version Of A Smart Software

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/smart-software/{id}/new-version`

Creates a new version of a smart software Permission Required: Create Instruction.

#### Static Fields

## List Static Fields

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/static-fields`

Gets a list of all static fields available for the organization. \*\*Permission Required\*: \*View Devices.

## Updates An Existing Static Field

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/static-fields`

Updates the name of an existing static field in the organization. \*\*Permission Required\*: \*View Devices.

## Creates Static Fields

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/static-fields`

Creates a new static field in the organization. \*\*Permission Required\*: \*View Devices.

## Removes A Static Field

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/static-fields`

Removes the static field from the organization. \*\*Permission Required\*: \*View Devices.

## List Static Fields Assigned To Devices

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/static-fields/value`

Gets a list of all static fields assigned to devices for the organization. \*\*Permission Required\*: \*View Devices.

## Assign A Static Field To Device(S)

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/static-fields/value`

Assign static field values to device(s) in the organization. \*\*Permission Required\*: \*View Devices.

#### System Events

## List System Events

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/events/query`

Allows listing system events with highlighting. \*\*Permission Required\*: \*View System Events.

## Search System Events

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-events/search`

Allow to search system events. \*\*Permission Required: View System Events.

#### System Updates (Mdm)

## Gets Available System Updates Reported For A Device

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/system-updates/available`

Gets available system updates reported for a device.Permission Required\*: \*View Device List.

## Requests Available System Updates For A Device Via Mdm Command

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-updates/available`

Requests available system updates for a device via MDM command.Permission Required\*: \*View Device List, Execute Predefined Commands.

## Gets Available System Updates Reported For A Device, With Their Current Installation Statuses

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/system-updates/available/status`

Gets available system updates reported for a device, with their current installation statuses.Permission Required\*: \*View Device List, Execute Predefined Commands.

## Gets Installed System Updates Reported For A Device

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/system-updates/installed/device/report`

Gets installed system updates reported for a device.Permission Required\*: \*\[View System Updates Settings, View Device List].

## Requests To Send Installed System Updates Reported For Policy Devices To User Email

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-updates/installed/organization/report/email`

Requests to send installed system updates reported for policy devices to user email.\*\*Permission Required\*: \*View System Updates Settings.

## Requests To Schedule System Updates (On Demand) For Devices Via Mdm Command

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-updates/on-demand/device-uuids`

Requests to schedule system updates (on-demand) for devices via MDM command.Permission Required\*: \*\[View System Updates Settings, Create System Updates Settings]\[MDM System Updates Only] System Updates commands are scheduled to be sent daily at 2AM UTC, but you can send them now to the device(s) on this list. Please note that your organization must have a monthly paid plan to use this feature.

## Requests To Schedule System Updates (On Demand) For Policy Devices Via Mdm Command

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-updates/on-demand/policy-id`

Requests to schedule system updates (on-demand) for policy devices via MDM command.Permission Required\*: \*\[View System Updates Settings, Create System Updates Settings]\[MDM System Updates Only] System Updates commands are scheduled to be sent daily at 2AM UTC, but you can send them now to the device(s) in this policy. Please note that your organization must have a monthly paid plan to use this feature.

## Requests A System Updates Scan For A Device Via Mdm Command

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-updates/scan`

Requests a system updates scan for a device via MDM command.Permission Required\*: \*View Device List, Execute Predefined Commands.

## Requests The Schedule Of System Updates Via Mdm Command

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-updates/schedule`

Requests the schedule of system updates via MDM command.Permission Required\*: \*View Device List, Execute Predefined Commands.

## Gets System Updates Settings For A Policy

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/system-updates/settings`

Gets system updates settings for a policy.Permission Required\*: \*View System Updates Settings.

## Requests To Create Or Update System Updates Settings For A Policy

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-updates/settings`

Requests to create or update system updates settings for a policy.Permission Required\*: \*Create System Updates Settings.Requirements: The MDM update command only works with macOS 12+, iOS 9+, iPadOS 13+, or tvOS 12+. Devices must be in supervised mode. Unsupervised devices will not receive the update command.Minor Updates and Patches: Use version values to control which major, minor or patch updates are sent. Addigy will strictly follow your rules. Version values follow the major.minor.patch standard.For example: 12.0.99 will allow patches, but not the minor update to 12.1, 12.9.9 will not allow 12.9.91.System Updates Settings: This is what each of the more specialized fields represents within the system updates settings for each os and which are the allowed values for the request.install\_action - represents the install action when sending the schedule os command to the device: 1.Default (all OS) 2.InstallForceRestart (macOS Only) 3.InstallLater (macOS Only),max\_user\_deferrals - represents how many times the user can defer the updates, this is an optional parameter and it only works when 'Install Action' is 'InstallLater' and for minor os updates,resend\_update\_command\_hour - The time in hours needed to re-send an os update command if the last command status is older than this value. Currently, the default value is 24 hours and the valid values ranges from 1 hour up to 24,days\_after\_release, hours\_after\_release and minutes\_after\_release (DDM updates only): The number of days, hours and minutes to force an update installation via DDM, after the update is released.Schedule (excludes updates via DDM): System Updates commands are scheduled to be sent daily at 2AM UTC, but you can schedule them to run on the device's time and which days of the week. The schedule is optional, if you would like to continue to use the default daily schedule, just set the schedule. enabled field to false. However, if you would like to opt in to use the schedule, just set the schedule.enabled field to true and fill all fields since they are required as part of the schedule request. Please note that your organization must have a monthly paid plan to use this feature.This is what each field represents and what are the allowed values for the schedule request:enabled - represents if the schedule is enabled or disabled (true or false),week\_days - represents days of the week \["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],starting\_time - represents the schedule starting time (hours: 0-23h, min: 0 or 30),cut\_off\_time - represents last time within the maintenance window to send updates commands to the devices (min: 30, 45, 60),maintenance\_window - represents how long do the schedule runs for in 2x hour intervals (hours: 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24).For more information about System Updates please visit \[System Updates via MDM]\(https:support.addigy.comhcen-usarticles10073419654931)

## Gets Current System Updates Statuses Reported For A Device

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/system-updates/status`

Gets current system updates statuses reported for a device.Permission Required\*: \*View Device List, Execute Predefined Commands.

## Requests System Updates Statuses For A Device Via Mdm Command

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/system-updates/status`

Requests system updates statuses for a device via MDM command.Permission Required\*: \*View Device List, Execute Predefined Commands.

#### Users

## List Organization Users

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/users/query`

Query for organization users. \*\*Permission Required\*: \*View Users.

## Update A User

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/users`

Update a user. \*\*Permission Required\*: \*Edit User.

## Create User

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/users`

Create a user. \*\*Permission Required\*: \*Create User.

## Deletes A User From The Organization

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/users`

Deletes a user from the organization. \*\*Permission Required\*: \*Remove User.

#### Variables

## Update A Variable

<mark style="color:orange;">`PUT`</mark> `api.addigy.com/v2/o/{organization_id}/variables`

Update a variable. \*\*Permission Required\*: \*Edit Variable.

## Create A Variable

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/variables`

Create a variable. \*\*Permission Required\*: \*Create Variable.

## Delete A Variable

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/variables`

Delete a variable.\*\*Permission Required\*: \*Delete Variable.

## Get Policy Variable Value

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/variables/policies`

Get policy variable value. \*\*Permission Required\*: \*Edit Policy.

## Assign Policy Value To A Variable

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/o/{organization_id}/variables/policies`

Assign policy value to a variable. \*\*Permission Required: Edit Policy.

## Remove Policy Value From A Variable

<mark style="color:red;">`DELETE`</mark> `api.addigy.com/v2/o/{organization_id}/variables/policies`

Remove policy value from a variable. \*\*Permission Required: Edit Policy.

## Get Variable Usage

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/variables/usage`

Get variable usage. \*\*Permission Required\*: \*View Variable.

## Get Variable Value

<mark style="color:blue;">`GET`</mark> `api.addigy.com/v2/o/{organization_id}/variables/value`

Get variable value.\*\*Permission Required\*: \*View Variable.

## List Variables for Organization

<mark style="color:green;">`POST`</mark> `api.addigy.com/v2/oa/variables/query`

Get a list of variables for an organization. \*\*Permission Required\*: \*View Variables.
