---
layout:
  title:
    visible: true
  description:
    visible: false
  tableOfContents:
    visible: true
  outline:
    visible: true
  pagination:
    visible: true
---

# N-able N-sight integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the N-able N-sight integration do?

Our N-able N-sight integration enables automation of device and customer management. Use the new N-able REST API within Rewst workflows to interact with devices and access customer information.

## Set up the N-able N-sight integration

### Set up steps in N-able N-sight

1. Navigate to your dashboard for N-able N-sight
2. Navigate to **Toolbar > Settings > General Settings > API**.\
   ![](<../../../../../.gitbook/assets/Nsight final.png>)
3. Click **Generate** to generate an API token.
4. Copy the API token.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `N-able N-sight` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-02-03 at 3.08.43 PM.png>)
3. Click on the integration tile to launch the configuration setup page.

<figure><img src="../../../../../.gitbook/assets/Screenshot 2025-02-03 at 3.40.37 PM.png" alt=""><figcaption></figcaption></figure>

4. Enter your copied API key into the **API Key** field.
5. Fill in the **Server** field with the base URL of your N-able N-sight environment.
   1. For reference, the following are the base URLs for N-able N-sight environments:
      * Americas: www.am.remote.management
      * Asia: wwwasia.system-monitor.com
      * Australia: www.system-monitor.com
      * Europe: wwweurope1.systemmonitor.eu.com
      * France (FR): wwwfrance.systemmonitor.eu.com
      * France1: wwwfrance1.systemmonitor.eu.com
      * Germany: wwwgermany1.systemmonitor.eu.com
      * Ireland: wwwireland.systemmonitor.eu.com
      * Poland: wwwpoland1.systemmonitor.eu.com
      * United Kingdom: www.systemmonitor.co.uk
      * United States: www.systemmonitor.us
   2. You can also use a custom URL if you have a custom N-able N-sight environment.
6. Click **Save Configuration**.
7. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;



{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## N-able N-sight actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

N-sight's up-to-date API documentation on their Data Extraction API can be found [here](https://documentation.n-able.com/remote-management/userguide/Content/data_extraction_api.htm).

| Category                   | Action                                                                                                                                              | Description                                                                                                               |
| -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| **Active Directory Users** | [List Active Directory Users](https://documentation.n-able.com/remote-management/userguide/Content/list_active_directory_users.htm)                 | Retrieves a list of Active Directory users for the specified device.                                                      |
| **Antivirus Update Check** | [List Supported Antivirus Products](https://documentation.n-able.com/remote-management/userguide/Content/api_list_supported_av.htm)                 | Retrieves a list of supported antivirus products.                                                                         |
|                            | [List Antivirus Definitions](https://documentation.n-able.com/remote-management/userguide/Content/api_list_av_definitions.htm)                      | Lists the most recent definition versions and date released for a given AV product.                                       |
|                            | [Get Antivirus Definition Release Date](https://documentation.n-able.com/remote-management/userguide/Content/api_av_release_date.htm)               | Returns the date and time a definition was released.                                                                      |
|                            | [List AV History](https://documentation.n-able.com/remote-management/userguide/Content/api_list_av_history.htm)                                     | Retrieves the history of Antivirus Update Checks for a specified device for the last 60 days.                             |
| **Asset Tracking**         | [List Hardware](https://documentation.n-able.com/remote-management/userguide/Content/listing_hardware_.htm)                                         | Lists all hardware for the given asset.                                                                                   |
|                            | [List Software](https://documentation.n-able.com/remote-management/userguide/Content/listing_software_.htm)                                         | Lists software sectioned by type for the given asset.                                                                     |
|                            | [List License Groups](https://documentation.n-able.com/remote-management/userguide/Content/listing_license_groups_.htm)                             | Retrieves a list of license groups.                                                                                       |
|                            | [List License Group Items](https://documentation.n-able.com/remote-management/userguide/Content/listing_license_group_items_.htm)                   | Retrieves a list of items within a specific license group.                                                                |
|                            | [List Client License Count](https://documentation.n-able.com/remote-management/userguide/Content/listing_client_license_count_.htm)                 | Retrieves the license count for a specified client.                                                                       |
|                            | [List Licensed Software](https://documentation.n-able.com/remote-management/userguide/Content/listing_licensed_software_.htm)                       | Lists licensed software for a given asset.                                                                                |
|                            | [List Device Asset Details](https://documentation.n-able.com/remote-management/userguide/Content/listing_device_asset_details.htm)                  | Lists device asset details identified by deviceid.                                                                        |
| **Backup Checks**          | [List Backup History](https://documentation.n-able.com/remote-management/userguide/Content/list_backup_history.htm)                                 | Lists status of Backup Checks on a device for the last 60 days.                                                           |
| **Backup Recovery**        | [List Backup & Recovery Selection Size](https://documentation.n-able.com/remote-management/userguide/Content/api_mob.htm)                           | Retrieves the Backup & Recovery selection size for a specified device, month, and year.                                   |
|                            | [List Mobile Sessions](https://documentation.n-able.com/remote-management/userguide/Content/api_list_mob_sessions.htm)                              | Lists all Backup & Recovery sessions for a device.                                                                        |
| **Checks**                 | [List Checks](https://documentation.n-able.com/remote-management/userguide/Content/listing_checks_.htm)                                             | Lists all checks for a device identified by the deviceid parameter.                                                       |
|                            | [List Failing Checks](https://documentation.n-able.com/remote-management/userguide/Content/listing_failing_checks.htm)                              | Lists all failing checks across all clients.                                                                              |
|                            | [List Check Configuration](https://documentation.n-able.com/remote-management/userguide/Content/listing_check_configuration.htm)                    | Lists configuration for a given check.                                                                                    |
|                            | [Get Formatted Check Output](https://documentation.n-able.com/remote-management/userguide/Content/getting_formatted_check_output.htm)               | Returns formatted result of a check (error or otherwise).                                                                 |
|                            | [List Outages](https://documentation.n-able.com/remote-management/userguide/Content/listing_outages.htm)                                            | Returns a list of outages which are either still open or were closed in the last 61 days.                                 |
|                            | [List Performance History](https://documentation.n-able.com/remote-management/userguide/Content/listing_performance_history.htm)                    | Obtains data relating to all Performance and Bandwidth Monitoring Checks running on the specified device.                 |
|                            | [List Drive Space History](https://documentation.n-able.com/remote-management/userguide/Content/list_drive_space_history.htm)                       | Returns the daily, weekly, or monthly disk space usage information for a device.                                          |
|                            | [List Exchange Storage History](https://documentation.n-able.com/remote-management/userguide/Content/list_exchange_storage_history.htm)             | Returns the daily, weekly, or monthly Exchange Store Size information for a device.                                       |
|                            | [Clear a Check](https://documentation.n-able.com/remote-management/userguide/Content/clear_check.htm)                                               | Clears the status of a specified check.                                                                                   |
|                            | [Add a Check Note](https://documentation.n-able.com/remote-management/userguide/Content/add_check_note.htm)                                         | Adds a public or private note to a specified check.                                                                       |
|                            | [List Templates](https://documentation.n-able.com/remote-management/userguide/Content/list_templates.htm)                                           | Lists all templates for servers or workstations for the account.                                                          |
| **Clients**                | [List Clients](https://documentation.n-able.com/remote-management/userguide/Content/listing_clients_.htm)                                           | Lists all clients. Optionally, specify device type.                                                                       |
|                            | [Add Client](https://documentation.n-able.com/remote-management/userguide/Content/add_client.htm)                                                   | Creates a new client.                                                                                                     |
| **Devices**                | [List Servers](https://documentation.n-able.com/remote-management/userguide/Content/listing_servers.htm)                                            | Lists all server monitoring devices for site.                                                                             |
|                            | [List Workstations](https://documentation.n-able.com/remote-management/userguide/Content/listing_workstations_.htm)                                 | Lists all workstation monitoring devices for site.                                                                        |
|                            | [List Devices At Client](https://documentation.n-able.com/remote-management/userguide/Content/listing_devices_at_client_.htm)                       | Lists all devices of specified type for a client.                                                                         |
|                            | [List Device Monitoring Details](https://documentation.n-able.com/remote-management/userguide/Content/listing_device_monitoring_deta.htm)           | Lists all monitoring information for the device (server or workstation) identified by the deviceid.                       |
| **Generic Request**        | [N-sight API Request](https://documentation.n-able.com/remote-management/userguide/Content/api_generic_request.htm)                                 | Generic action for making authenticated requests against the N-able N-sight API.                                          |
| **Managed Antivirus**      | [Quarantine List](https://documentation.n-able.com/remote-management/userguide/Content/managed_antivirus_quarantine_l.htm)                          | Lists Managed Antivirus quarantined threats on the specified device.                                                      |
|                            | [Quarantine Release](https://documentation.n-able.com/remote-management/userguide/Content/api_mav_quar_release.htm)                                 | Releases threats from the Managed Antivirus quarantine on the specified device.                                           |
|                            | [Quarantine Remove](https://documentation.n-able.com/remote-management/userguide/Content/api_mav_quar_remove.htm)                                   | Deletes threats from the Managed Antivirus quarantine on the specified device.                                            |
|                            | [Start Scan](https://documentation.n-able.com/remote-management/userguide/Content/start_scan.htm)                                                   | Starts a Managed Antivirus scan on the specified device.                                                                  |
|                            | [Pause Scan](https://documentation.n-able.com/remote-management/userguide/Content/pause_scan.htm)                                                   | Pauses a Managed Antivirus scan on the specified device.                                                                  |
|                            | [Resume Scan](https://documentation.n-able.com/remote-management/userguide/Content/resume_scan.htm)                                                 | Resumes a Managed Antivirus scan on the specified device.                                                                 |
|                            | [Scan Cancel](https://documentation.n-able.com/remote-management/userguide/Content/managed_antivirus_scan_cancel.htm)                               | Cancels a Managed Antivirus scan on the specified device.                                                                 |
|                            | [Device List - Managed Antivirus](https://documentation.n-able.com/remote-management/userguide/Content/device_list___managed_antiviru.htm)          | Retrieves the list of devices with Managed Antivirus installed.                                                           |
|                            | [List Managed Antivirus Scans](https://documentation.n-able.com/remote-management/userguide/Content/api_list_mav_scans.htm)                         | Returns a list of Managed Antivirus (MAV) scans for a specified device.                                                   |
|                            | [List Managed Antivirus Threats](https://documentation.n-able.com/remote-management/userguide/Content/api_mav_list_threats.htm)                     | Lists the most recently found occurrence of each different threat found on a device scanned with Managed Antivirus (MAV). |
|                            | [List Managed Antivirus Quarantine](https://documentation.n-able.com/remote-management/userguide/Content/api_mav_list_quarantine.htm)               | Lists the contents of Managed Antivirus (MAV) quarantine.                                                                 |
|                            | [Update Definitions File - Bitdefender Engine](https://documentation.n-able.com/remote-management/userguide/Content/api_mav_definitions_update.htm) | Updates Managed Antivirus (Bitdefender Engine) definitions on the specified device.                                       |
| **Patch Management**       | [List All Patches for Device](https://documentation.n-able.com/remote-management/userguide/Content/list_all_patches_for_device.htm)                 | Lists all software patches for the specified device.                                                                      |
|                            | [Approve Patch](https://documentation.n-able.com/remote-management/userguide/Content/approve_patch.htm)                                             | Approves software patches for the specified device.                                                                       |
|                            | [Do Nothing with Patch](https://documentation.n-able.com/remote-management/userguide/Content/do_nothing_with_patch.htm)                             | Sets software patches to 'do nothing' for the specified device.                                                           |
|                            | [Ignore Patch](https://documentation.n-able.com/remote-management/userguide/Content/ignore_patch.htm)                                               | Sets software patches to 'ignore' for the specified device.                                                               |
|                            | [Inherit Patch](https://documentation.n-able.com/remote-management/userguide/Content/inherit_patch.htm)                                             | Sets specific software patches to 'inherit' for the specified device.                                                     |
|                            | [Reprocess Patch](https://documentation.n-able.com/remote-management/userguide/Content/reprocess_patch.htm)                                         | Reprocesses software patches for the specified device.                                                                    |
|                            | [Retry Patch](https://documentation.n-able.com/remote-management/userguide/Content/retrypatch.htm)                                                  | Retries software patches for the specified device.                                                                        |
| **Settings**               | [List Wallchart Settings](https://documentation.n-able.com/remote-management/userguide/Content/list_wallchart_settings_.htm)                        | Lists general Wall Chart settings for the account, 0 (off) and 1 (on) for each.                                           |
|                            | [List General Settings](https://documentation.n-able.com/remote-management/userguide/Content/list_general_settings_.htm)                            | Lists general settings for the account.                                                                                   |
| **Sites**                  | [List Sites](https://documentation.n-able.com/remote-management/userguide/Content/listing_sites.htm)                                                | Lists all sites for a client.                                                                                             |
|                            | [Add Site](https://documentation.n-able.com/remote-management/userguide/Content/add_site.htm)                                                       | Creates a new site.                                                                                                       |
| **Task Run**               | [Run Task Now](https://documentation.n-able.com/remote-management/userguide/Content/run_task_now.htm)                                               | Executes an Automated Task immediately on the specified device.                                                           |
