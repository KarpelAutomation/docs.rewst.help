# Bitdefender GravityZone integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Bitdefender GravityZone integration do?

The Bitdefender GravityZone integration enables automated interactions with its API within Rewst workflows. Manage and monitor your Bitdefender GravityZone environment, including authentication and session management.

## Integration use cases

* Automation of endpoint security management - deploy, update, and monitor security software across devices
* Threat detection and response automation - Detect threats and trigger alerts without manual intervention
* Policy enforcement and compliance monitoring - Automate compliance checks and generate security reports

## Set up the Bitdefender GravityZone integration

### Set up steps in Bitdefender GravityZone

1. Log in to your Bitdefender GravityZone cloud application.
2. Click on your **user menu** in the top right of your screen, and select **My Account**.\
   <img src="../../../../.gitbook/assets/Screenshot 2025-02-18 at 4.45.35 PM.png" alt="" data-size="original">
3. Scroll down the page to the **API Keys** section.
4. Click **+ Add** to add a new API key.\
   ![](<../../../../.gitbook/assets/Screenshot 2025-02-18 at 4.48.14 PM.png>)
5. Enter the API Key Description and check off your desired Enabled API permissions. When finished, click **Generate**.\
   ![](<../../../../.gitbook/assets/Screenshot 2025-02-18 at 4.49.14 PM.png>)
6. Copy the API key in the dialog that appears. Note that this key can only be viewed in this dialog, and must be copied before clicking the **X** to close the dialog.\
   ![](<../../../../.gitbook/assets/Screenshot 2025-02-18 at 4.58.52 PM.png>)
7. Find and copy the **Access URL** under the **Control Center API** sectio&#x6E;**.** You'll need both this and your copied API key for Rewst.
8. Click **Save** at the bottom of the **API keys** section to authenticate your Bitdefender API Key with Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the `Bitdefender` integration. \
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-02-20 at 9.41.26 AM.png>)<br>
3. Click on the integration tile to launch the **Configuration** setup page.
4. Under **Configuration**:
   1. Edit the **Name**
   2. Add an optional **Description** for your configuration.
   3. Check off **Is Default**
   4. Under **Parameters**:
      1. Paste the API key copied from Bitdefender GravityZone into the **API Key** field in the configuration form
      2. Paste the **Control Center Access API URL** copied from Bitdefender GravityZone into the relevant field in the configuration form
   5. Click **Save Configuration.**
   6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-02-18 at 4.57.03 PM.png" alt=""><figcaption></figcaption></figure>

## Test the Integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}



## Bitdefender actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

For complete API documentation, see Bitdefenders' own docs [here](https://www.bitdefender.com/business/support/en/77209-125277-public-api.html).

| Category               | Action                                                    | Description                                                                                                                                                                                                                                                                       |
| ---------------------- | --------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Accounts**           | List Accounts                                             | Display all the user accounts that belong to a company.                                                                                                                                                                                                                           |
| **Accounts**           | Delete Account                                            | Delete a specific user account.                                                                                                                                                                                                                                                   |
| **Accounts**           | Create Account                                            | Create a user account and assign it a password.                                                                                                                                                                                                                                   |
| **Accounts**           | Update Account                                            | Update a user account.                                                                                                                                                                                                                                                            |
| **Accounts**           | Update Notification Settings                              | Configures the notification settings for a given user account.                                                                                                                                                                                                                    |
| **Accounts**           | Get Notification Settings                                 | Gets the notifications settings.                                                                                                                                                                                                                                                  |
| **Companies**          | Update Company Details                                    | Display all the user accounts that belong to a company.                                                                                                                                                                                                                           |
| **Companies**          | Get Company Details                                       | Gets the details of a company.                                                                                                                                                                                                                                                    |
| **General**            | Get API Key Details                                       | Retrieves the details of the API key.                                                                                                                                                                                                                                             |
| **General**            | Generate Email Verification Code                          | Generates a verification code and sends it to the specified email address.                                                                                                                                                                                                        |
| **Generic Request**    | Bitdefender API Request                                   | Generic action for making authenticated requests against the Bitdefender API                                                                                                                                                                                                      |
| **Incidents**          | Add to Blocklist                                          | Set up one or more rules that you can use in adding items to blocklists.                                                                                                                                                                                                          |
| **Incidents**          | List Blocklist Items                                      | Lists all the hashes that are present in a blocklist.                                                                                                                                                                                                                             |
| **Incidents**          | Remove from Blocklist                                     | Lists all the hashes that are present in a blocklist.                                                                                                                                                                                                                             |
| **Incidents**          | Create Isolate Endpoint Task                              | Creates a task to isolate the specified endpoint.                                                                                                                                                                                                                                 |
| **Incidents**          | Create Restore Endpoint From Isolation Task               | Creates a task to restore the specified endpoint from isolation.                                                                                                                                                                                                                  |
| **Incidents**          | Create Custom Rule                                        | Creates a custom rule.                                                                                                                                                                                                                                                            |
| **Incidents**          | Get Custom Rules List                                     | Lists all the custom rules that are present in the company.                                                                                                                                                                                                                       |
| **Incidents**          | Delete Custom Rule                                        | Deletes a custom rule.                                                                                                                                                                                                                                                            |
| **Incidents**          | Update Incident Note                                      | Updates the note of a specified incident.                                                                                                                                                                                                                                         |
| **Incidents**          | Change Incident Status                                    | Changes the status of a specified incident.                                                                                                                                                                                                                                       |
| **Integrations**       | Get Hourly Usage For Amazon EC2 Instances                 | Exposes the hourly usage for each Amazon instance category (micro, medium etc.).                                                                                                                                                                                                  |
| **Integrations**       | Configure Amazon EC2 Integration Using Cross-Account Role | Configures the Amazon EC2 integration using a cross-account role.                                                                                                                                                                                                                 |
| **Integrations**       | Generate Amazon EC2 External ID For Cross-Account Role    | Generates the Amazon EC2 external ID for a cross-account role.                                                                                                                                                                                                                    |
| **Integrations**       | Get Amazon EC2 External ID For Cross-Account Role         | Generates the Amazon EC2 external ID for a cross-account role.                                                                                                                                                                                                                    |
| **Integrations**       | Disable Amazon EC2 Integration                            | Disables a previously configured Amazon EC2 integration.                                                                                                                                                                                                                          |
| **Licensing**          | Get License Info                                          | Gets the license information for a company.                                                                                                                                                                                                                                       |
| **Licensing**          | Add Product Key                                           | Adds a license or addon-key to the existing list of licenses and addon-keys.                                                                                                                                                                                                      |
| **Licensing**          | Set License Key                                           | Sets a standalone or an add-on license key for a company.                                                                                                                                                                                                                         |
| **Licensing**          | Remove License Key                                        | Removes a license key from the given company.                                                                                                                                                                                                                                     |
| **Licensing**          | Get Monthly Usage                                         | Exposes the monthly usage for a company in a target month.                                                                                                                                                                                                                        |
| **Licensing**          | Get Monthly Usage Per Product Type                        | Exposes the monthly usage of a company in a target month. Returns the usage per product type, for all available product types.                                                                                                                                                    |
| **Maintenancewindows** | Create Patch Management Maintenance Window                | Creates a Patch Management Maintenance Window.                                                                                                                                                                                                                                    |
| **Maintenancewindows** | Get Maintenance Window List                               | List available maintenance windows.                                                                                                                                                                                                                                               |
| **Maintenancewindows** | Get Maintenance Window Details                            | Get all the information related to a maintenance window.                                                                                                                                                                                                                          |
| **Maintenancewindows** | Update Patch Management Maintenance Window                | Updates a Patch Management Maintenance Window.                                                                                                                                                                                                                                    |
| **Maintenancewindows** | Delete Maintenance Window                                 | Deletes a maintenance window.                                                                                                                                                                                                                                                     |
| **Maintenancewindows** | Assign Maintenance Windows                                | Assigns a set of maintenance windows to a policy.                                                                                                                                                                                                                                 |
| **Maintenancewindows** | Unassign Maintenance Windows                              | Assigns a set of maintenance windows to a policy.                                                                                                                                                                                                                                 |
| **Maintenancewindows** | Get Manually Approved Patches                             | Lists manually approved patches from the endpoints of a specific company.                                                                                                                                                                                                         |
| **Network**            | Assign Policy                                             | Assign a policy to one or more endpoints (including containers). The policy is not assigned to targets that have an enforced policy.                                                                                                                                              |
| **Network**            | List Network Inventory Items                              | Gets a list of network inventory items.                                                                                                                                                                                                                                           |
| **Network**            | Create Custom Group                                       | Creates a new custom group of endpoints.                                                                                                                                                                                                                                          |
| **Network**            | Delete Custom Group                                       | Deletes a custom group.                                                                                                                                                                                                                                                           |
| **Network**            | Move Custom Group                                         | Move a custom group.                                                                                                                                                                                                                                                              |
| **Network**            | List Custom Groups                                        | List of groups under a specified group.                                                                                                                                                                                                                                           |
| **Network**            | Kill Process                                              | Terminate an active process using its ID/path, the endpoint where it's running, and optionally the incident ID it generated.                                                                                                                                                      |
| **Network**            | Create Submit To Sandbox Analyzer Task                    | Create a Sandbox Analyzer task and submit up to 5 files for analysis.                                                                                                                                                                                                             |
| **Network**            | List Endpoints                                            | <p>Returns the list of endpoints<br>NOTE: this only works for single-site GravityZone setups. To achieve this for MSPs with multiple clients or tenants under one GravityZone console, build a generic API request that successfully pulls endpoint data across all tenants. </p> |
| **Network**            | Get Managed Endpoints Details                             | Gets the details of the managed endpoints.                                                                                                                                                                                                                                        |
| **Network**            | Move Endpoints                                            | Moves a list of endpoints to a custom group.                                                                                                                                                                                                                                      |
| **Network**            | Delete Endpoint ...                                       |                                                                                                                                                                                                                                                                                   |
