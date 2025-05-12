# Cove integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Cove integration do?

Our Cove integration links N-able’s Cove Data Protection with Rewst, to automate and manage data protection tasks within your Rewst workflows. Use the N-able Cove API to create, read, update, or delete backup jobs, monitor backup statuses, and access detailed reporting functionalities.

### Why use the Cove integration?

* Billing reconciliation
* Onboarding of customers and devices
* Self documentation
* Automating actions on backup failure

## Integration prerequisites

The user that will be used to authenticate with Cove API must have API Authentication enabled within Cove.

## Set up the Cove integration

### Set up steps in Cove Data Protection

1. Log in to Cove Data Protection.
2. Navigate to **Management > Customers**
3. Choose the customer that you want to log in under, and copy their **Customer ID**.

<figure><img src="../../../../../.gitbook/assets/Screenshot 2025-02-06 at 11.54.22 AM.png" alt="" width="129"><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the integrations page, search for the `Cove` integration.\
   ![](<../../../../../.gitbook/assets/Screenshot 2025-02-06 at 11.06.19 AM.png>)
3. Click on the integration tile to launch the Configuration setup page.
4. Under **Configuration**:
   1. Edit the **Name**
   2. Add an optional **Description** for your configuration.
5. Under **Parameters**:
   1. Enter your Cove username in the **Username** field.
   2. Enter your Cove password in the **Password** field.
   3. Enter the name of the customer related to this integration in the **Customer Name** field.
   4. Paste the customer ID you copied from Cove into the **Customer ID** field.
   5. The base URL of the Cove API in the **Base URL** field will automatically populate into the form when you begin integration setup.
6. Click **Save Configuration.**
7. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Cove integration actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

Cove’s up-to-date API documentation can be found [here](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm).

| Category            | Action                                                                                                                                                | Description                                                                                     |
| ------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| **Accounts**        | [Create Account](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)            | Adds a backup device                                                                            |
|                     | [Get Account Info](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)          | Gets information about a backup device using its name and password                              |
|                     | [Get Account Info By Id](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)    | Gets information about a backup device by its ID                                                |
|                     | [Get Account Info By Token](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm) | Gets information about a backup device by its token                                             |
|                     | [Get Account Id](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)            | Gets a backup device ID number                                                                  |
|                     | [List Accounts](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)             | Gets the list of devices of your own company and your customers                                 |
|                     | [List Account Statistics](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)   | Gets the statistics of devices of your own company and your customers                           |
|                     | [Update Account](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)            | Modifies a backup device                                                                        |
|                     | [Delete Account](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)            | Removes a backup device                                                                         |
| **Generic Request** | [Cove API Request](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)          | Generic action for making authenticated requests against the Cove API                           |
| **Miscellaneous**   | [Get User Settings](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)         | Gets information on a Backup Dashboard view, including a list of columns displayed in this view |
|                     | [List User Settings](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)        | Gets the list of Backup Dashboard views for a user and the columns displayed in each            |
|                     | [List Regions](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)              | Gets the list of geographic regions                                                             |
|                     | [List Locations](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)            | Gets the list of the storage locations                                                          |
|                     | [List Account Profiles](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)     | Gets the list of profiles available to your devices of your own company and your customers      |
| **Partners**        | [Create Partner](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)            | Adds Customers                                                                                  |
|                     | [List Partners](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)             | Gets the list of customers for your own company or your customers                               |
|                     | [List Partner Properties](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)   | Gets the list of properties for your own company or your customers                              |
|                     | [List Child Partners](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)       | Gets the list of child customers for your own company or your customers                         |
|                     | [Get Partner Info](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)          | Gets information on a customer                                                                  |
|                     | [Get Partner Info By Id](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)    | Gets information on a customer using the customer ID                                            |
|                     | [Get Partner Info By UID](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)   | Gets information on a customer using the customer UID                                           |
|                     | [Get Partner Info History](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)  | Gets information on a customer history using the customer ID                                    |
|                     | [Get Partner State](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)         | Gets the current state of a customer using the customer ID                                      |
|                     | [Get Partner Tree](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)          | Gets a list of a customer’s child partners using the customer ID                                |
|                     | [Regenerate Partner UID](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)    | Regenerates a customer UID using the customer ID                                                |
|                     | [Update Partner](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)            | Changes the properties of an existing customer                                                  |
|                     | [Delete Partner](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)            | Removes a customer                                                                              |
| **Users**           | [Create User](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)               | Adds user                                                                                       |
|                     | [List Users](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)                | Gets the list of users of your own company and your customers                                   |
|                     | [Get User Info](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)             | Gets information about a user using their name                                                  |
|                     | [Get User Info By Id](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)       | Gets information about a user using the user ID                                                 |
|                     | [Update User](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)               | Modifies a backup user. Usernames and passwords cannot be changed                               |
|                     | [Delete User](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm)               | Removes a user                                                                                  |
|                     |                                                                                                                                                       |                                                                                                 |

