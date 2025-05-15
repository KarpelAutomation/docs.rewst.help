# Acronis integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Acronis integration do?

Our Acronis integration enables automation of data protection services. Use the Acronis API within Rewst workflows for tenant management, user and device oversight, scheduling backups, and optimizing storage across various environments.&#x20;

### Why use the Acronis integration?

<details>

<summary>Alert management</summary>

* Get lists of open alerts, match those to mapped devices, and trigger remediation operations. For example:
  1. Get a list of all open alerts (or alerts since a specific datetime) and filter for alerts of type Backup Failed
  2. Use your RMM to restart the agent
  3. Create a ticket in your PSA
* Look at the last backup date for a device, if that was more than _x_ days ago, and trigger the remediation
* Disregard alerts for workstations that are offline
* Automate the troubleshooting of common cyber protect agent issues

</details>

<details>

<summary>Resource management</summary>

* Apply or revoke protection plans
* Run specific policies within a plan
* Get protection statuses per device

</details>

<details>

<summary>Account management</summary>

* Create customers, users, etc.
* Manage user quotas

</details>

## Set up the integration

### Setup steps in Acronis

1. Log in to the Acronis Cyber Protect Cloud portal.
2.  Navigate to **Settings > API clients > Create API client**.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-04-03 at 9.56.11 AM.png" alt=""><figcaption></figcaption></figure>
3. Enter a name for the API client. Choose something that will let you know this relates to Rewst.
4. Click **Next**.
5. Copy the **Client ID**, **Secret**, and **Data center URL** that appear in the dialog. Note that once you close the dialog by clicking **Done**, there will be no way to go back and view this information. The API client is created with the Active status by default.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the `Acronis` integration.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-04-03 at 10.07.49 AM.png>)
3. Click on the integration tile to launch the configuration setup page.&#x20;
4. Under **Parameters**:
   1. Enter the Client ID you copied from Acronis into the **Client ID** field.
   2. Enter the client secret copied from Acronis into the **Client Secret** field.
   3. Choose your region from the **Region** drop-down selector.
   4.  Optionally choose to filter your tenants in the **Tenants - Filter by Kind** field.\
       \


       <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-04-03 at 10.04.30 AM.png" alt=""><figcaption></figcaption></figure>
5. Click **Save Configuration.**
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

## Test the integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

Acronis' own documentation can be found [here](https://www.acronis.com/en-us/support/documentation/AcronisCyberCloud/index.html#managing-api-clients.html).

| Category                             | Action                                             | Description                                                                               |
| ------------------------------------ | -------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| **Abgw Storages**                    | Unregister Storage                                 | Removes registered storage from a user's account.                                         |
| **Activities**                       | List Activities                                    | Retrieve a list of activities with specific criteria.                                     |
| **Agent Registration Tokens**        | Create Registration Token                          | Description coming soon...                                                                |
| **Agent Registration Tokens**        | Delete Registration Token                          | Remove device registration identification for push notifications.                         |
| **Agent Registration Tokens**        | Get Registration Token                             | Description coming soon...                                                                |
| **Agent Registration Tokens**        | List Registration Tokens                           | Retrieve list of registration tokens.                                                     |
| **Agents**                           | Get Agent                                          | Description coming soon...                                                                |
| **Agents**                           | Get Agent Configuration Information                | Description coming soon...                                                                |
| **Agents**                           | Get Agents Update Configuration                    | Retrieve updated configuration data for agents.                                           |
| **Agents**                           | Get Registered Storage Nodes                       | Retrieve list of registered storage nodes in the network. (For on-premises installations) |
| **Agents**                           | Get The Agents Update References                   | Retrieve agent references from the database.                                              |
| **Agents**                           | List Tenant Agents                                 | Description coming soon...                                                                |
| **Agents**                           | Trigger Updating All Agents In The System          | Description coming soon...                                                                |
| **Agents**                           | Update Tenant Agent Configuration                  | Description coming soon...                                                                |
| **Alert Types**                      | Create An Alerts Type                              | Endpoint to create a new type of alert.                                                   |
| **Alert Types**                      | Retrieve Registered Alert Types                    | Description coming soon...                                                                |
| **Alerts**                           | Delete Alert(s)                                    | Description coming soon...                                                                |
| **Alerts**                           | Get Alert                                          | Description coming soon...                                                                |
| **Alerts**                           | Get Alerts Sync                                    | Retrieve synchronized alerts.                                                             |
| **Alerts**                           | Get Stats Of Alerts                                | Retrieve statistical data about system alerts.                                            |
| **Alerts**                           | List Alerts                                        | Get list of filtered alerts based on specified criteria.                                  |
| **Antimalware Scan Stats**           | Get Anti-Malware Scan Stats                        | Get statistics about antimalware scan results.                                            |
| **Archives**                         | Delete Archives                                    | Permanently removes stored data.                                                          |
| **Archives**                         | List Archive Backups                               | Retrieve previous versions of data backups.                                               |
| **Archives**                         | List Archives                                      | Retrieve historical records or past versions of data.                                     |
| **Backed Up Resources**              | List Backed Up Resources                           | Retrieve previously stored resources.                                                     |
| **Backups**                          | Delete Backups                                     | Delete all backup files.                                                                  |
| **Backups**                          | List Backups                                       | Retrieve saved copies of data or system configurations.                                   |
| **Basiс Platform Info**              | Get Platform Components Versions                   | Get current versions of the platform components.                                          |
| **Basiс Platform Info**              | List Editions                                      | Get all available editions.                                                               |
| **Basiс Platform Info**              | List Tenant Offering Items                         | Description coming soon...                                                                |
| **Branding**                         | Disable Custom Branding                            | Remove user-defined branding options.                                                     |
| **Branding**                         | Enable Custom Branding                             | API endpoint for setting custom branding across an application or platform.               |
| **Branding**                         | Retrieve Brand Information For A Specific Tenant   | Description coming soon...                                                                |
| **Branding**                         | Retrieve Tenant's Brand Logo Image                 | Description coming soon...                                                                |
| **Branding**                         | Update Tenant Branding Properties                  | Modify visual appearance of tenant's account.                                             |
| **Contacts**                         | Create Contact                                     | Add Partner Tenant's Contact Information To The System                                    |
| **Contacts**                         | Get Contact                                        | Description coming soon...                                                                |
| **Contacts**                         | Retrieve Contacts For A Specified Partner Tenant   | Description coming soon...                                                                |
| **Generic Request**                  | Acronis API Request                                | Generic action for making authenticated requests against the Acronis API                  |
| **Health Check**                     | Health Check                                       | Endpoint to verify service availability and status.                                       |
| **Legal Documents**                  | Initiate A Signature Process For Legal Documents   | Description coming soon...                                                                |
| **Legal Documents**                  | Retrieve User's Legal Documents                    | Description coming soon...                                                                |
| **Locations And Storage Management** | Get Location                                       | Description coming soon...                                                                |
| **Locations And Storage Management** | Get Locations by Tenant                            | Description coming soon...                                                                |
| **Locations And Storage Management** | List Locations                                     | Description coming soon...                                                                |
| **Locations And Storage Management** | List Storage Options                               | Description coming soon...                                                                |
| **Locations And Storage Management** | List Storage Options by Tenant                     | Description coming soon...                                                                |
| **Locations And Storage Management** | Get Storage Option                                 | Description coming soon...                                                                |
| **Reports Management**               | Delete Report                                      | Description coming soon...                                                                |
| **Reports Management**               | Get Report                                         | Retrieve information about a specific report.                                             |
| **Reports Management**               | List Tenant Reports                                | Description coming soon...                                                                |
| **Reports Management**               | Update Scheduled Report                            | Description coming soon...                                                                |
| **Search**                           | Text Search                                        | Description coming soon...                                                                |
| **Search Index Size Stats**          | Get Archive Search Size Statistics                 | Description coming soon...                                                                |
| **Stats**                            | Get Archive Stats                                  | Get data on past activity or usage.                                                       |
| **Storage Dirs**                     | Get Storage Folders                                | Get all folders stored in storage.                                                        |
| **Storage Dirs**                     | Retrieve Sub Folders Within A Given Directory Path | Retrieve sub-folders within a given directory path.                                       |
| **Storage Usage Stats**              | Get Storage Usage Stats                            | Retrieve data about storage space utilization.                                            |
| **Sync**                             | Get Archives Sync Info                             | Retrieve synchronization data related to archives.                                        |
| **Sync**                             | Get Backups Sync Info                              | Retrieve Information on Backup Synchronization.                                           |
| **Sync**                             | List Vault Sync Information                        | Get synchronization information for Vaults.                                               |
| **Tasks**                            | List Tasks                                         | Retrieve a customized list of tasks.                                                      |
| **Tenants**                          | Create Tenant                                      | Create a new partner tenant                                                               |
| **Tenants**                          | Delete Tenant                                      | Remove a partner's associated tenant from database.                                       |
| **Tenants**                          | Enable MFA for tenant                              | Enable two-factor authentication for user's partner account.                              |
| **Tenants**                          | Get A Tenant Usage                                 | Retrieve data on a tenant's resource consumption.                                         |
| **Tenants**                          | Get Tenant                                         | Description coming soon...                                                                |
| **Tenants**                          | Get Tenant MFA Status                              | Description coming soon...                                                                |
| **Tenants**                          | Get Tenant's Brand Information                     | Description coming soon...                                                                |
| **Tenants**                          | Get Tenant Logo                                    | Retrieve Tenant Brand Logo Image                                                          |
| **Tenants**                          | Get Tenant Pricing                                 | Description coming soon...                                                                |
| **Tenants**                          | List Legal Documents For Tenant                    | Retrieve Legal Document Information For A Tenant's Account                                |
| **Tenants**                          | List Subtenants                                    | Description coming soon...                                                                |
| **Tenants**                          | List Tenant Application Roles                      | Description coming soon...                                                                |
| **Tenants**                          | List Tenant Children                               | Description coming soon...                                                                |
| **Tenants**                          | List Tenant Client UUIDs                           | Retrieves UUIDs of Clients For A Tenant                                                   |
| **Tenants**                          | List Tenant Offering Items                         | Description coming soon...                                                                |
| **Tenants**                          | List Tenant Users' UUIDs                           | Retrieve user data for a specific tenant in the system.                                   |
| **Tenants**                          | List Tenants                                       | Description coming soon...                                                                |
| **Tenants**                          | Update Tenant                                      | Updates a new partner tenant's fields                                                     |
| **Tenants**                          | Update Tenant Pricing                              | Description coming soon...                                                                |
| **Users**                            | Create User                                        | Description coming soon...                                                                |
| **Users**                            | Delete A User                                      | Remove user data permanently.                                                             |
| **Users**                            | Get A User's Access Policies                       | Retrieve authorized user roles.                                                           |
| **Users**                            | Get User                                           | Retrieve information about a specific user.                                               |
| **Users**                            | List Tenant Application Roles                      | Description coming soon...                                                                |
| **Users**                            | List Users                                         | Description coming soon...                                                                |
| **Users**                            | Send Activation Email to User                      | Description coming soon...                                                                |
| **Users**                            | Update User                                        | Description coming soon...                                                                |
| **Users**                            | List Tenant's Offered Items                        | Description coming soon...                                                                |
| **Users**                            | Update Tenant's Products                           | Description coming soon...                                                                |
| **Vaults**                           | Complete Or Attach Vault                           | Create or attach a secure storage vault.                                                  |
| **Vaults**                           | Delete Vault                                       | Removes a secure storage container and its contents.                                      |
| **Vaults**                           | Get Vault                                          | Retrieve secure data from protected storage.                                              |
| **Vaults**                           | Get Vault Agents                                   | Retrieve information about deployed Vault Agents.                                         |
| **Vaults**                           | Get Vault Archive Backup                           | Retrieve backups of Vault archive.                                                        |
| **Vaults**                           | Get Vault Configuration                            | Retrieve configuration settings for Vault.                                                |
| **Vaults**                           | Get Vault Statistics                               | Retrieve usage data for your Vault storage.                                               |
| **Vaults**                           | List Vault Archive Backups                         | Retrieve archives of Vault backups.                                                       |
| **Vaults**                           | List Vault Archives                                | Retrieve stored data backups from Vault.                                                  |
| **Vaults**                           | List Vaults                                        | Retrieve users' stored items credentials from secure data repository.                     |
