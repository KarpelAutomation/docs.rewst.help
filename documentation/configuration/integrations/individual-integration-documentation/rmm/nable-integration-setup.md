# N-able N-central integration

{% hint style="warning" %}
**N-central Required Version**

The new REST API endpoints are only available on N-central with a version of 2023.9 or above. Contact your N-able Representative to be upgraded where applicable.

&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the N-able N-central integration do?

Our N-able N-central integration allows MSPs to seamlessly interact with N-central's powerful RMM capabilities through Rewst, facilitating device management, task automation, and efficient operational workflows.

### Integration use cases

* Automatically synchronize device and customer data with your Rewst workflows.
* Execute and manage scheduled tasks directly from Rewst.
* Run automated Powershell scripts remotely to maintain and configure devices.

## Integration prerequisites

* N-able N-central version 2023.9 or above
* A dedicated API user created in N-able N-central
* A JSON web token from N-able N-central
* Powershell scripts configured for API access in N-able N-central
* Defined organization variables in Rewst

## Set up the N-able N-central integration

Set up steps in N-able N-central

1. Navigate to **Administration > User Management > Users**.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-31 at 19.03.55@2x.jpg>)
2. Click **Create User** to create a new user specifically for API access. Name the user something that will easily identify its purpose.
3. Assign appropriate permissions required for your automations On the **Access Groups and Roles** tabs.
   1. **Roles**: Create a role under **user management > roles** for a full API user. Name it administrator and set all the properties to manage. A reference sheet can be found here under [N-able API user permissions](https://documentation.n-able.com/N-central/userguide/Content/User_Management/Role%20Based%20Permissions/role_based_permissions_API_user.htm).
   2. **Access Groups**: Set this to **All**.
4. Click the **User Details** tab. Click **User Information**.
5. Check **MFA Not Required** to on.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-03-31 at 10.54.36 AM.png>)
6. Click into the **API Access** tab.
7. Check **API Only User** to on.
8. Click **Save**.
9. Click **Generate JSON Web Token**.
10. Securely copy the generated API key. You’ll need this information for the next setup steps in Rewst.

<figure><img src="../../../../../.gitbook/assets/CleanShot 2025-03-31 at 19.06.38@2x.jpg" alt=""><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `N-able N-central` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-31 at 19.12.59.jpg>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from N-able N-central into its relevant field:
   1. **API Key:** The JSON Web Token generated on the API user you created
   2. **Base URL:** The base URL of your N-able N-central environment, e.g `rewst.n-able.com` if different from the resource server hostname
5. Click **Save Configuration**.&#x20;
6. Rewst will do a quick validation of your input.Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;



### Run Powershell via RMM - Script setup

To run Powershell on devices via the RMM, you must create the script in your N-able repository and enable its access for use over the API, as per N-able security policies.

1. Navigate to **Configuration > Scheduled Tasks > Script/Software Repository** in N-able.
2. Click **Add > Scripting**.
3. Name the script **Rewst (Powershell)**.
4. Enter a script description.
5. Download and upload the provided PS1 file.
6. Enable **API Access** for the script.
7. Note the **Repository ID**.
8.  In Rewst, create an organization variable named **nable\_rewst\_powershell\_script\_id** with the Repository ID as its value.

    Update your Powershell script's `$rewst_base_url` variable to match your Rewst Instance URL:

| Rewst URL        | Base URL            |
| ---------------- | ------------------- |
| app.rewst.io     | engine.rewst.io     |
| app.pdx.rewst.io | engine.pdx.rewst.io |
| app.eu.rewst.io  | engine.eu.rewst.io  |
| app.rewst.eu     | engine.rewst.eu     |
| app.rewst.asia   | engine.rewst.asia   |

{% file src="../../../../../.gitbook/assets/run-nable-powershell (2).ps1" %}

{% hint style="info" %}
The ORG Var is only currently required as there is no way to search for a script with the existing API Endpoints
{% endhint %}

{% hint style="info" %}
Once imported, you must update your script's $rewst\_base\_url variable. Your Rewst Base URL will vary depending on which Rewst instance you are on. You must update the $rewst\_base\_url property in the script below to match your Rewst Instance. You can identify which instance you are on by the URL you use to access Rewst. Please use the following table as a guide to identify your Rewst Base URL
{% endhint %}

## Test the integration

1. Navigate to **Automation > Workflows** in Rewst.
2. Create a new workflow and name it with something short and descriptive, such as `Test N-able Integration`.
3. Add the action **List Agents** to the workflow builder canvas, by dragging it from the left pane.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-31 at 19.28.49.jpg>)
4. Add a trigger to your test workflow by clicking <img src="../../../../../.gitbook/assets/Screenshot 2025-02-21 at 11.13.39 AM (2).png" alt="" data-size="line">. Name your trigger whatever you’d like.
5. Click into the trigger’s settings.
6. Toggle **Enabled** to on.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-31 at 19.29.17.jpg>)
7. Set the Trigger Type to **Core - Always Pass**.
8. Click ![](<../../../../../.gitbook/assets/Screenshot 2025-03-13 at 6.14.27 PM (1) (1).png>) next to **Integration Overrides**. Add **N-able N-central** as your integration override.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-31 at 19.29.51.jpg>)
9. In the **Activate Trigger To Run For** section, keep **Selected Organization** toggled on. Toggle **All current and future managed organizations** on, or choose just one or individually selected organizations from the **Organizations** drop-down selector.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-31 at 19.30.35.jpg>)
10. Click **Submit** to save your trigger.
11. Click **Publish** to save your changes.
12. Click Test to run your workflow. Note that this will bring up a drop-down selector to choosing organizations.
13. Select your MSP level.
14. Click **Test** and confirm that the execution finishes without errors.\
    \


    <figure><img src="../../../../../.gitbook/assets/CleanShot 2025-03-31 at 19.31.20.jpg" alt=""><figcaption></figcaption></figure>
15. If the test for your MSP is successful, do the same test again. At this point in your steps, select a client organization instead, and ensure that it finishes with no errors.

## Crates related to the N-able N-central integration

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td><strong>Run Powershell script on Selected Devices</strong></td><td><a href="../../../../../.gitbook/assets/Run Powershell Script on Selected Devices.png">Run Powershell Script on Selected Devices.png</a></td><td></td></tr><tr><td><strong>Agent Smith: Device Provisioning [Install First/ Install Second]</strong></td><td><a href="../../../../../.gitbook/assets/Agent Smith Device Provisioning 1.png">Agent Smith Device Provisioning 1.png</a></td><td><a href="../../../../agent-smith/agent-smith-configuration-overview.md">agent-smith-configuration-overview.md</a></td></tr><tr><td><strong>Just in Time Admin Access</strong></td><td><a href="../../../../../.gitbook/assets/Just in time admin access (3).png">Just in time admin access (3).png</a></td><td><a href="../../../../crates/existing-crate-documentation/just-in-time-admin-access-crate.md">just-in-time-admin-access-crate.md</a></td></tr><tr><td><strong>Ad-Hoc Install/ Uninstall Software via Chocolatey</strong></td><td><a href="../../../../../.gitbook/assets/Chocolatey.png">Chocolatey.png</a></td><td><a href="../../../../crates/existing-crate-documentation/ad-hoc-install-uninstall-software-via-chocolatey-crate.md">ad-hoc-install-uninstall-software-via-chocolatey-crate.md</a></td></tr><tr><td><strong>Windows 11 Compatibility Checker</strong></td><td><a href="../../../../../.gitbook/assets/Windows 11 Compatibility checker.png">Windows 11 Compatibility checker.png</a></td><td></td></tr><tr><td><strong>Bulk Move Users to Specified OU</strong></td><td><a href="../../../../../.gitbook/assets/Screenshot 2025-02-27 at 3.36.32 PM (1).png">Screenshot 2025-02-27 at 3.36.32 PM (1).png</a></td><td></td></tr></tbody></table>

## Troubleshoot the N-able N-central integration

* **API Authentication Errors**: Verify JSON Web Token permissions and validity.
* **Powershell Script Execution Issues**: Check script API access permissions in N-able.

{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Current Limitations

There is currently no way to identify a Domain Controller via the N-able REST API. You must manually set the hostname of the preferred DC. Do this using the organization variable form that was discussed during your onboarding. The end result will be an organizational variable called **preferred\_domain\_controller** and a value of the hostname of that client's DC.

## N-able N-central actions and endpoints

For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).

For detailed endpoint documentation, log in to your N-able account or view their API documentation [here](https://documentation.n-able.com/).

| Category                | Action                                           | Description                                                                                                                                                                |
| ----------------------- | ------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Access Groups**       | Create Device Type Access Group                  | Creates a new device type access group with the specified details. NOTE: This endpoint is currently in a preview stage                                                     |
| **Access Groups**       | Create Organization Unit Type Access Group       | Creates a new organization unit type access group with the specified details. NOTE: This endpoint is currently in a preview stage                                          |
| **Access Groups**       | Get Access Group Details                         | Retrieves detailed information for a specific Access Group, including its name, type, and associated devices or users. NOTE: This endpoint is currently in a preview stage |
| **Access Groups**       | List Access Group Related Links                  | Description coming soon...                                                                                                                                                 |
| **Access Groups**       | List Access Groups Information for Org Unit      | Retrieves access group information for an organization unit with a specific id. NOTE: This endpoint is currently in a preview stage                                        |
| **Active Issues**       | List Active Issues                               | Fetch a list of active issues for the given organization unit.                                                                                                             |
| **Custom Properties**   | Get Device Custom Property                       | Get the device custom property for the given device id and property id. NOTE: This endpoint is currently in a preview stage                                                |
| **Custom Properties**   | Get Device Default Custom Property Information   | Retrieves default custom properties information. NOTE: This endpoint is currently in a preview stage                                                                       |
| **Custom Properties**   | Get Device Custom Properties                     | Retrieves custom properties list for a device. NOTE: This endpoint is currently in a preview stage                                                                         |
| **Custom Properties**   | Get Organization Unit Custom Property            | Get the organization unit custom property for the given organization unit id and property id                                                                               |
| **Custom Properties**   | List Organization Custom Properties              | Get the list of organization unit custom properties for the given organization unit id                                                                                     |
| **Custom Properties**   | Update Default Organization Unit Custom Property | Update the default organization unit custom property for the given organization unit id and property id                                                                    |
| **Custom Properties**   | Update Device Custom Property                    | Modifies one custom property for a device. NOTE: This endpoint is currently in a preview stage                                                                             |
| **Custom Properties**   | Update Organization Unit Custom Property         | Update the organization unit custom property for the given organization unit id and property id                                                                            |
| **Customers**           | List Customers                                   | List Customers                                                                                                                                                             |
| **Device Filters**      | List Device Filters                              | Retrieves the list of filters from N-central for the logged in user. NOTE: This endpoint is currently in a preview stage                                                   |
| **Devices**             | Get Computer                                     | Get Computer                                                                                                                                                               |
| **Devices**             | Get Service Monitor Status                       | Retrieves the status of the service monitoring tasks for a given device.                                                                                                   |
| **Devices**             | List Computers                                   | List Computers                                                                                                                                                             |
| **Devices**             | List Organization Unit Devices                   | Retrieves the list of devices from N-central for the logged in user.                                                                                                       |
| **Generic Request**     | N-central API Request                            | Generic action for making authenticated requests against the N-able N-central API                                                                                          |
| **Job Statuses**        | List Job Statuses                                | Fetch a list of job statuses for the given organization unit.                                                                                                              |
| **Maintenance Windows** | Add Maintenance Windows to Devices               | Adds a set of maintenance windows for a given device. NOTE: This endpoint is in preview. The provided list of maintenance windows applies to every device in the list      |
| **Maintenance Windows** | Delete Device Patch Maintenance Windows          | Deletes patch maintenance windows by given list of Schedule IDs. Only supports Patch maintenance windows created at the device level. NOTE: This endpoint is in preview    |
| **Maintenance Windows** | List Maintenance Windows For A Device            | Retrieves all maintenance windows for a given device. NOTE: This endpoint is in a preview stage                                                                            |
| **Organization Units**  | Create Customer                                  | Creates a new customer with the specified details. NOTE: This endpoint is currently in a preview stage                                                                     |
| **Organization Units**  | Create Service Organization                      | Creates a new service organization with the specified details. NOTE: This endpoint is currently in a preview stage                                                         |
| **Organization Units**  | Get Customer                                     | Returns a customer. NOTE: This endpoint is currently in a preview stage                                                                                                    |
| **Organization Units**  | Get Organization Unit                            | Returns an organization unit. NOTE: This endpoint is currently in a preview stage                                                                                          |
| **Organization Units**  | Get Service Organization                         | Returns a service organization. NOTE: This endpoint is currently in a preview stage                                                                                        |
| **Organization Units**  | List Child Organization Units                    | Returns a list of all organization units under the specific organization unit. NOTE: This endpoint is currently in a preview stage                                         |
| **Organization Units**  | List Customer Sites                              | Returns a list of all sites under a customer. NOTE: This endpoint is currently in a preview stage                                                                          |
| **Organization Units**  | List Organization Units                          | Returns a list of all organization units                                                                                                                                   |
| **Organization Units**  | List Service Organization Customers              | Returns a list of all customers under a service organization. NOTE: This endpoint is currently in a preview stage                                                          |
| **Organization Units**  | List Sites                                       | Returns a list of all sites                                                                                                                                                |
| **Organization Units**  | List Users in Organization Unit                  | Retrieves the list of users from N-central for the logged in user.                                                                                                         |
| **Organization Units**  | Create Site                                      | Creates a new site with the specified details. NOTE: This endpoint is currently in a preview stage                                                                         |
| **Organization Units**  | Get Site                                         | Returns a site. NOTE: This endpoint is currently in a preview stage                                                                                                        |
| **Psa**                 | Get Custom PSA Ticket Details                    | Retrieves detailed information for a specific Custom PSA Ticket. Exclusive to CUSTOM PSA Integrations only. NOTE: This is in preview                                       |
| **Psa**                 | List Custom Psa Related Links                    | NOTE: This endpoint is currently in a preview stage                                                                                                                        |
| **Psa**                 | List Custom Psa Tickets Related Links            | NOTE: This endpoint is currently in a preview stage                                                                                                                        |
| **Psa**                 | List Standard Psa Related Links                  | NOTE: This endpoint is currently in a preview stage                                                                                                                        |
| **Psa**                 | Validate Standard PSA Credentials                | Validates the credentials for the standard PSA system (Tigerpaw only). NOTE: This endpoint is currently in a preview stage                                                 |
| **Tasks**               | Create Scheduled Task                            | Create Scheduled Task                                                                                                                                                      |
| **Tasks**               | Get Device Tasks                                 | Get Scheduled Tasks for a Device                                                                                                                                           |
| **Tasks**               | Get Task Info by ID                              | Get Task Info by ID                                                                                                                                                        |
| **Tasks**               | Get Task Status by ID                            | Get Task Status by ID                                                                                                                                                      |
| **Tasks**               | Get Detailed Task Status Info by ID              | Get Detailed Task Status Info by ID                                                                                                                                        |
| **User Roles**          | Create User Role                                 | Add a new user role for an organization unit and return the role id                                                                                                        |
| **User Roles**          | Get User Role                                    | Returns a user role for a given organization unit and user role id                                                                                                         |
| **User Roles**          | List User Roles                                  | Fetch a list of user roles for a given organization unit                                                                                                                   |

