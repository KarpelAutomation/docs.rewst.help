# IT Glue integration

{% hint style="warning" %}
IT Glue's API access is limited to users of the legacy **Classic** (pre 2018) and **Enterprise** level plans only. See **\[yourdomain].itglue.com/account/plan** for details on your organization's plan and usage.

For more information on IT Glue's plans and pricing review the [IT Glue pricing page](https://www.itglue.com/pricing/).
{% endhint %}

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the IT Glue integration do?

Rewst's IT Glue integration brings powerful documentation capabilities to your applications, enhancing IT knowledge management and streamlining workflows. Seamlessly access and collaborate on IT Glue's documentation repository, gaining centralized access to critical information, configurations, and processes. Improve efficiency, ensure consistency, and enhance IT service delivery. Leverage the collective knowledge and expertise stored in IT Glue to troubleshoot issues, onboard new team members, and deliver exceptional IT support.

## Set up the IT Glue integration

### Password access

Rewst requires the **Password Access** checkbox to be enabled on the API Keys screen in ITGlue Account Settings.

<figure><img src="../../../../.gitbook/assets/it-glue-least-privledged-access.png" alt=""><figcaption><p>Ensure that this setting is checked before attempting integration setup</p></figcaption></figure>

### Set up steps in IT Glue

IT Glue's most up-to-date information for how to generate an API key can be found [here](https://help.itglue.kaseya.com/help/Content/1-admin/it-glue-api/getting-started-with-the-it-glue-api.html?cshid=1038).&#x20;

1. Navigate to **Admin > Settings** in your IT Glue application.
2.  Click the **API keys** tab.\


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-01-28 at 6.30.03 PM.png" alt=""><figcaption></figcaption></figure>
3. Scroll to bottom and click **+** on the right side.
4. Enter a **name** for the API key.
5.  Click **Generate API key**.\


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-01-28 at 6.30.43 PM.png" alt=""><figcaption></figcaption></figure>
6. Check the **Password Access** box.
7. Copy and Save the API key. Note that you won't be able to view the API key again once it has been generated.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for ITGlue in the integrations page.\
   \
   ![Screenshot of the IT Glue integration card as seen on the Rewst integrations search results page, highlighting automation of documentation-driven IT management.](<../../../../.gitbook/assets/Screenshot 2025-05-01 at 4.23.54 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Enter the API key copied from IT Glue into the **API Key** field.
5. Choose your Base URL for your IT Glue environment, related to region, from the **Base URL** drop-down selector.
6. Set the **Use Rewst IP Address** drop-down selector to **True** or **False**.
7. Click **Save Configuration**.
8. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

## Troubleshoot the IT Glue integration

### Forbidden errors

If you've selected `Allow specific IP addresses` in IT Glue rather than `Allow access from all IP addresses`, you will need to add the [#rewst-outgoing-ip-address](../../../../security/security-policy.md#rewst-outgoing-ip-address "mention") into the `IP Access Control` within IT Glue.

Here's how you can do it:

1. Navigate to the IP Access Control settings within IT Glue.
2. Add [Rewst's IP address](../../../../security/security-policy.md#rewst-outgoing-ip-address) to the list of allowed IP addresses.

<figure><img src="../../../../.gitbook/assets/image (1) (1) (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

After adding Rewst's IP address, the forbidden error should be resolved and you should be able to successfully set up the IT Glue integration.

For more information, check [IT Glue's own documentation](https://api.itglue.com/developer/).

## Add Rewst flexible assets to sidebar in IT Glue

{% hint style="warning" %}
These steps can only be performed from an IT Glue admin account.
{% endhint %}

If you have created flexible assets in Rewst, and want to add them to your sidebar in IT Glue:

1. Log in to your IT Glue admin account.
2. Click the **Admin** tab in the top menu.
3.  Scroll down and click **Customize Sidebar.**\
    \


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-01-28 at 2.40.24 PM.png" alt=""><figcaption></figcaption></figure>
4. Choose your assets to add to the sidebar under **Flexible Assets**.
5. When finished, click the green **Save** button. Your sidebar should be updated. This section is also where you may reset the sidebar to default, if you wish to remove Rewst's flexible assets. \
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-01-28 at 2.42.02 PM.png>)

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category                     | Action                         | Description                                                                                                                                 |
| ---------------------------- | ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- |
| **Accounts Users**           | List Users                     | Gets a list of users                                                                                                                        |
| **Accounts Users**           | Get Accounts User              | Gets a specific user by it's ID.                                                                                                            |
| **Accounts Users**           | Update Accounts User           | Description coming soon...                                                                                                                  |
| **Configuration Interfaces** | List Configuration Interfaces  | Gets a list of configuration interfaces                                                                                                     |
| **Configuration Interfaces** | Get Configuration Interface    | Gets a specific configuration interface by it's ID.                                                                                         |
| **Configuration Interfaces** | Create Configuration Interface | Creates a new configuration interface                                                                                                       |
| **Configuration Interfaces** | Update Configuration Interface | Description coming soon...                                                                                                                  |
| **Configuration Statuses**   | List Configuration Statuses    | Gets a list of Configuration Statuses                                                                                                       |
| **Configuration Statuses**   | Get Configuration Status       | Gets a specific Configuration Status by it's ID.                                                                                            |
| **Configuration Statuses**   | Create Configuration Status    | Creates a new Configuration Status                                                                                                          |
| **Configuration Statuses**   | Update Configuration Status    | Description coming soon...                                                                                                                  |
| **Configuration Types**      | List Configuration Types       | Gets a list of configuration types                                                                                                          |
| **Configuration Types**      | Get Configuration Type         | Gets a specific configuration type by it's ID.                                                                                              |
| **Configuration Types**      | Create Configuration Type      | Creates a new configuration type                                                                                                            |
| **Configuration Types**      | Update Configuration Type      | Description coming soon...                                                                                                                  |
| **Configurations**           | List Configurations            | Gets a list of configurations                                                                                                               |
| **Configurations**           | Get Configuration              | Gets a specific configuration by it's ID.                                                                                                   |
| **Configurations**           | Create Configuration           | Creates a new configuration                                                                                                                 |
| **Configurations**           | Update Configuration           | Description coming soon...                                                                                                                  |
| **Contact Types**            | List Contact Types             | Gets a list of contact types                                                                                                                |
| **Contact Types**            | Get Contact Type               | Gets a specific contact type by it's ID.                                                                                                    |
| **Contact Types**            | Create Contact Type            | Creates a new contact type                                                                                                                  |
| **Contact Types**            | Update Contact Type            | Description coming soon...                                                                                                                  |
| **Contacts**                 | List Contacts                  | Gets a list of contacts                                                                                                                     |
| **Contacts**                 | Get Contact                    | Gets a specific contact by it's ID.                                                                                                         |
| **Contacts**                 | Create Contact                 | Creates a new contact                                                                                                                       |
| **Contacts**                 | Update Contact                 | Description coming soon...                                                                                                                  |
| **Countries**                | List Countries                 | Gets a list of countries                                                                                                                    |
| **Countries**                | Get Country                    | Gets a specific country by it's ID.                                                                                                         |
| **Domains**                  | List Domains                   | Gets a list of domains                                                                                                                      |
| **Expirations**              | List Expirations               | Description coming soon...                                                                                                                  |
| **Exports**                  | Create Export                  | Creates a new export for a single organization if organization\_id is specified. If it is not the new export will be for all organizations. |
| **Exports**                  | List Exports                   | Returns a list of exports in your account.                                                                                                  |
| **Exports**                  | Get Export                     | Gets a specific export by its ID.                                                                                                           |
| **Exports**                  | Delete Export                  | Delete an export by ID.                                                                                                                     |
| **Flexible Asset Fields**    | List Flexible Asset Fields     | Gets a list of flexible asset fields                                                                                                        |
| **Flexible Asset Fields**    | Get Flexible Asset Field       | Gets a specific flexible asset field by it's ID.                                                                                            |
| **Flexible Asset Fields**    | Create Flexible Asset Field    | Creates a new flexible asset field                                                                                                          |
| **Flexible Asset Fields**    | Update Flexible Asset Field    | Description coming soon...                                                                                                                  |
| **Flexible Asset Fields**    | Delete Flexible Asset Field    | Description coming soon...                                                                                                                  |
| **Flexible Asset Types**     | List Flexible Asset Types      | Gets a list of flexible Asset Types                                                                                                         |
| **Flexible Asset Types**     | List Flexible Asset Types v2   | Gets a list of flexible Asset Types                                                                                                         |
| **Flexible Asset Types**     | Get Flexible Asset Type        | Gets a specific flexible Asset Type by it's ID.                                                                                             |
| **Flexible Asset Types**     | Create Flexible Asset Type     | Creates a new flexible asset type                                                                                                           |
| **Flexible Asset Types**     | Update Flexible Asset Type     | Description coming soon...                                                                                                                  |
| **Flexible Assets**          | List Flexible Assets           | Gets a list of flexible assets                                                                                                              |
| **Flexible Assets**          | Get Flexible Asset             | Gets a specific flexible asset by it's ID.                                                                                                  |
| **Flexible Assets**          | Create Flexible Asset          | Creates a new flexible asset                                                                                                                |
| **Flexible Assets**          | Update Flexible Asset          | Description coming soon...                                                                                                                  |
| **Flexible Assets**          | Delete Flexible Asset          | Description coming soon...                                                                                                                  |
| **Generic Request**          | IT Glue API Request            | Generic action for making authenticated requests against the IT Glue API                                                                    |
| **Groups**                   | List Groups                    | Gets a list of groups                                                                                                                       |
| **Groups**                   | Get Group                      | Gets a specific group by it's ID.                                                                                                           |
| **Locations**                | List Locations                 | Gets a list of locations                                                                                                                    |
| **Locations**                | Get Location                   | Gets a specific location by it's ID.                                                                                                        |
| **Locations**                | Create Location                | Creates a new location                                                                                                                      |
| **Locations**                | Update Location                | Description coming soon...                                                                                                                  |
| **Locations**                | Delete Location                | Description coming soon...                                                                                                                  |
| **Logs**                     | List Logs                      | Gets a list of logs                                                                                                                         |
| **Manufacturers**            | List Manufacturers             | Gets a list of manufacturers                                                                                                                |
| **Manufacturers**            | Get Manufacturer               | Gets a specific manufacturer by it's ID.                                                                                                    |
| **Manufacturers**            | Create Manufacturer            | Creates a new manufacturer                                                                                                                  |
| **Manufacturers**            | Update Manufacturer            | Description coming soon...                                                                                                                  |
| **Models**                   | List Models                    | Gets a list of models                                                                                                                       |
| **Models**                   | Get Model                      | Gets a specific model by it's ID.                                                                                                           |
| **Models**                   | Create Model                   | Creates a new model                                                                                                                         |
| **Models**                   | Update Model                   | Description coming soon...                                                                                                                  |
| **Operating Systems**        | List Operating Systems         | Gets a list of Operating Systems                                                                                                            |
| **Operating Systems**        | Get Operating System           | Gets a specific Operating System by it's ID.                                                                                                |
| **Organization Statuses**    | List Organization Statuses     | Gets a list of organization statuses                                                                                                        |
| **Organization Statuses**    | Get Organization Status        | Gets a specific organization status by it's ID.                                                                                             |
| **Organization Statuses**    | Create Organization Status     | Creates a new organization status                                                                                                           |
| **Organization Statuses**    | Update Organization Status     | Description coming soon...                                                                                                                  |
| **Organization Types**       | List Organization Types        | Gets a list of organization types                                                                                                           |
| **Organization Types**       | Get Organization Type          | Gets a specific organization type by it's ID.                                                                                               |
| **Organization Types**       | Create Organization Type       | Creates a new organization type                                                                                                             |
| **Organization Types**       | Update Organization Type       | Description coming soon...                                                                                                                  |
| **Organizations**            | List Organizations             | Gets a list of organizations                                                                                                                |
| **Organizations**            | Get Organization               | Gets a specific organization by it's ID.                                                                                                    |
| **Organizations**            | Create Organization            | Creates a new organization                                                                                                                  |
| **Organizations**            | Update Organization            | Description coming soon...                                                                                                                  |
| **Organizations**            | Delete Organization            | Description coming soon...                                                                                                                  |
| **Password Categories**      | List Password Categories       | Gets a list of password categories                                                                                                          |
| **Password Categories**      | Get Password Category          | Gets a specific password category by it's ID.                                                                                               |
| **Password Categories**      | Create Password Category       | Creates a new password category                                                                                                             |
| **Password Categories**      | Update Password Category       | Description coming soon...                                                                                                                  |
| **Passwords**                | List Passwords                 | Gets a list of passwords                                                                                                                    |
| **Passwords**                | Get Password                   | Gets a specific password by it's ID.                                                                                                        |
| **Passwords**                | Create Password                | Creates a new password                                                                                                                      |
| **Passwords**                | Update Password                | Description coming soon...                                                                                                                  |
| **Passwords**                | Delete Password                | Description coming soon...                                                                                                                  |
| **Platforms**                | List Platforms                 | Gets a list of platforms                                                                                                                    |
| **Platforms**                | Get Platform                   | Gets a specific platform by it's ID.                                                                                                        |
| **Regions**                  | List Regions                   | Gets a list of regions                                                                                                                      |
| **Regions**                  | Get Region                     | Gets a specific region by it's ID.                                                                                                          |
| **Related Items**            | Create Related Item            | Creates a relationship between two items                                                                                                    |
| **Related Items**            | Update Related Item Note       | Update the note on an existing item relationship                                                                                            |
| **Related Items**            | Delete Related Item            | Delete an existing item relationship                                                                                                        |
