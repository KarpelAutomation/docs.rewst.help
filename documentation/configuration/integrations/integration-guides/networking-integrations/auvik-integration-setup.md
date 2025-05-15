# Auvik integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Auvik integration do?

Our Auvik integration enables the automation of network management and monitoring. Use the Auvik API within Rewst workflows to perform actions such as listing alerts, network device discovery, mapping, and configuration backups.

## Why use the Auvik integration?

<details>

<summary>Alert Management</summary>

* Interacting with alerts in a smart way (e.g. suppression, threading, etc.)
* Alerting when credentials are needed or when device type changes
* Alerting on new device creation and assigning SNMP credentials

</details>

<details>

<summary>Device Management</summary>

* Pulling device information (IP, hostname, serial, MAC address)
* Detecting mapping errors

</details>

<details>

<summary>User Management</summary>

* List Tenants
* Get Tenant

</details>

<details>

<summary>Existing Integration Enhancements</summary>

* Automatically creating tenant accounts when created in other systems (e.g. part of deployment with RMM)
* Improving the integration between IT Glue and Auvik
* Enhancing the ability to track billable items in PSA
* Integrating with custom company statuses and sites

</details>

## Set up the Auvik integration

### Set up steps in Auvik

Auvik's own instructions for how to invite and manage a new user invitation can be seen [here](https://support.auvik.com/hc/en-us/articles/204696564-How-do-I-manage-invitations-for-new-users).&#x20;

1. Navigate to **ADMIN > Manage Users** in the side navigation bar.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-06 at 11.09.34 AM.png>)
2. Click **Invite Users.**&#x20;
3. Enter the email address you would like to use for the user.
4. Check the **All** box under **User Roles on Site**.
5. Click **Send**.
6. Log into that email in a separate tab and accept the email invite sent from Auvik.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_15-17-10.png" alt=""><figcaption></figcaption></figure>

5. Locate this new user in the **Users** table. Check the checkbox to its left.
6. Click **Authorize**.
7. Click to expand the the **Roles** drop-down selector.
8. Select the role **API Access Only**.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_15-19-10.png" alt=""><figcaption></figcaption></figure>

10. Click **Save**.
11. Examine the URL of your browser while in Auvik. Note the region, designated by the country code and number directly after the first period in the URL. Save this for later use in Rewst.
12. Log out of your Admin Auvik Account and continue below.

{% hint style="info" %}
You can find the the Auvik documentation instructions [here](https://support.auvik.com/hc/en-us/articles/204696564-How-do-I-manage-invitations-for-new-users-) to invite and activate a new user for Rewst to use.
{% endhint %}

#### Generate an API Key

1. Sign in as your new user.
2. Click the profile button at the very bottom of the left sidebar.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_15-20-58.png" alt=""><figcaption></figcaption></figure>

3. Find the API Key submenu in the bottom right.
4. Copy the domain prefix. Store this information somewhere secure. You'll need it for further steps in Rewst.
5. Click **Generate** and copy the generated key. Store this information somewhere secure. You'll need it for further steps in Rewst.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_15-21-34.png" alt=""><figcaption></figcaption></figure>

6. Click **Save**.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Auvik` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-06 at 11.24.15 AM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from Auvik into its relevant field, or chose the relevant choice from its drop-down selector:
   1. **API Secret**
   2. **API Username**
   3. **Default Tenant Prefix**
   4. **Region**
5. Click **Save Configuration.**
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

### Integration form

<table><thead><tr><th width="235.66590389016017">Field Name</th><th>Description</th></tr></thead><tbody><tr><td>Region</td><td>To locate the region, log into your Auvik dashboard and look at the URL in your browser’s address bar.<br>E.g. us1, us2, us3, us4, eu1, eu2, au1, ca1</td></tr><tr><td>API Username</td><td>API Username for the integrations account on Auvik</td></tr><tr><td>API Secret</td><td>API Key for the integrations account for Auvik</td></tr><tr><td>Default Tenant Prefix</td><td>Allows us to query your subtenants automatically by using this tenant as the root-level</td></tr></tbody></table>

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category                | Action                                     | Description                                                                                                                           |
| ----------------------- | ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------- |
| **Alert**               | List Alerts Info                           | Pulls collected information about alerts triggered by Auvik and filter the results by severity and warning.                           |
| **Alert**               | Get Alert's Info                           | Retrieves collected information of a specific alert triggered by Auvik.                                                               |
| **Alert**               | Dismiss An Alert                           | Use the Dismiss Alert API to dismiss a specific alert that Auvik has triggered                                                        |
| **Component**           | List Components Info                       | Pulls collected information about various device components Auvik has discovered.                                                     |
| **Component**           | Get Component's Info                       | Pulls collected information about a specific device component discovered by Auvik.                                                    |
| **Configuration**       | List Device Configurations                 | Pulls all device configurations with the client IDs for the clients specified.                                                        |
| **Configuration**       | Get Device Configuration                   | Retrieve a single device configuration                                                                                                |
| **Credentials**         | Test Action                                | Check if a user's credentials are correct before making a call to an endpoint.                                                        |
| **Device**              | List Devices Info                          | Retrieves collected data about various devices discovered by Auvik.                                                                   |
| **Device**              | Get Device's Info                          | Pull collected information about a specific device.                                                                                   |
| **Device**              | List Devices Details                       | Pull extra collected information about devices discovered by Auvik.                                                                   |
| **Device**              | Get Device's Details                       | Allows you to access extra collected information about a specific device.                                                             |
| **Device**              | List Devices Extended Details              | Allows users to access device-specific information for a given device by providing their client IDs.                                  |
| **Device**              | Get Device's Extended Details              | Get a device's specific extended information                                                                                          |
| **Device**              | List Devices Warranty Info                 | Pulls collected warranty information about devices discovered by Auvik.                                                               |
| **Device**              | Get Device's Warranty Info                 | Pulls warranty information about a specific device based on its ID.                                                                   |
| **Device**              | List Devices Lifecycle Info                | Pulls collected lifecycle information about multiple devices.                                                                         |
| **Device**              | Get Device's Lifecycle Info                | Pulls collected lifecycle information about a single device.                                                                          |
| **Entity**              | List Entity Notes                          | Retrieves multiple entity notes associated with a specified client ID(s).                                                             |
| **Entity**              | Get Entity Note                            | Retrieves information about a specific entity note using the entity note ID.                                                          |
| **Entity**              | List Entity Audits                         | Pull information about multiple entity audits of clients                                                                              |
| **Entity**              | Get Entity Audit                           | Provides information about a specific audit entry by using the audit entry ID.                                                        |
| **Generic Request**     | Auvik API Request                          | Generic action for making authenticated requests against the Auvik API                                                                |
| **Interface**           | List Interfaces Info                       | Pull collected information about device interfaces                                                                                    |
| **Interface**           | Get Interfaces Info                        | Pull information about a specific device interface                                                                                    |
| **Network**             | List Networks Info                         | Pulls collected information about networks                                                                                            |
| **Network**             | Get Network's Info                         | Pulls information about a specific network                                                                                            |
| **Network**             | List Networks Details                      | Retrieves extra collected information about networks for a specified client                                                           |
| **Network**             | Get Network's Details                      | Accesses extra collected information about a specific network                                                                         |
| **Snmp Poller**         | List SNMP Poller Settings                  | Retrieves a list of SNMP Poller Settings                                                                                              |
| **Snmp Poller**         | Get Single SNMP Poller Setting             | Pulls information about a specific SNMP Poller Setting in Auvik.                                                                      |
| **Snmp Poller**         | List SNMP Poller Setting's Devices         | Retrieves a list of devices associated with a specified SNMP Poller Setting ID.                                                       |
| **Snmp Poller History** | List String SNMP Poller Setting's History  | Retrieves the historical values for a specified SNMP Poller Setting ID within a specified date range and reporting interval.          |
| **Snmp Poller History** | List Numeric SNMP Poller Setting's History | Retrieves the list of historical values for a specified SNMP Poller Setting ID.                                                       |
| **Statistics**          | List Device Statistics                     | Retrieves detailed device statistics for a specific time range.                                                                       |
| **Statistics**          | List Device Availability Statistics        | Retrieves detailed availability statistics of a client's devices for a given time range.                                              |
| **Statistics**          | List Service Statistics                    | Retrieves detailed service statistics for a given time range.                                                                         |
| **Statistics**          | List Interface Statistics                  | Retrieves detailed statistics of a client's interfaces for a specified time range.                                                    |
| **Statistics**          | List Component Statistics                  | Retrieves detailed statistics of a client's (and children's, if applicable) components for a given time range.                        |
| **Statistics**          | List OID Statistics                        | Retrieves the last recorded value of a monitored device OID.                                                                          |
| **Tenants**             | List Tenants                               | Retrieves access details about multiple multi-clients and clients associated with a specified Auvik user account.                     |
| **Tenants**             | List Tenants Detail                        | Retrieves details for multiple multi-clients and clients associated with a main Auvik account.                                        |
| **Tenants**             | Get Single Tenant Detail                   | Retrieves detailed information about a specific multi-client or client associated with an Auvik account.                              |
| **Usage**               | Get Client Usage                           | Use the Read Client Usage API to pull a summary of a client's (and client's children if a multi-client) usage for a given time range. |
| **Usage**               | Get Device Usage                           | Use the Read Device Usage API to pull a summary of a client's (and client's children if a multi-client) usage for a given time range. |
