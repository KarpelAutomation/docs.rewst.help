# SuperOps integration

## What does the SuperOps integration do?

The SuperOps integration automates core MSP tasks, from customer-facing to internal operations. Use the SuperOps API within Rewst workflows to handle service management and business operations tasks, plus device, network, and customer management. Get more value out of SuperOps by connecting each step of their monitoring, automation, resolution, and payment functionalities to the rest of your tech stack.&#x20;

## Integration use cases

* User onboarding and offboarding
* Categorize tickets using Open AI
* Connect the RMM and PSA capabilities of SuperOps to other integration's in Rewst's marketplace

## Set up the SuperOps integration

### Set up steps in SuperOps

1. Log in to your SuperOps application.
2. Navigate to **Settings > Your Profile > API token**.&#x20;
3.  Click **Generate Token.**\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-26 at 3.02.29 PM.png" alt=""><figcaption></figcaption></figure>
4. Copy the token. Save this for later use.
5. Navigate to **Settings > My Company > Company information**. \
   ![](<../../../.gitbook/assets/Screenshot 2025-02-26 at 2.57.35 PM.png>)
6. Locate your subdomain under the **Branding** submenu. Copy the **Subdomain Name** and save it for later use.\


### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the **SuperOps** integration. \
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-02-26 at 2.44.53 PM.png>)\

3. Click on the integration tile to launch the **Configuration** setup page.
4.  Under **Parameters**:

    1. Paste the API key copied from SuperOps into the **API Key** field of the configuration form.
    2. Choose your relevant data center from the **Data Center** drop-down selector.
    3. Paste your subdomain for your SuperOps account into the **Subdomain** field.
    4. Click **Save Configuration.**



    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-26 at 2.51.54 PM.png" alt=""><figcaption></figcaption></figure>

## Test the Integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.

{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}



## SuperOps actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

For complete API documentation, see SuperOps's own docs [here](https://developer.superops.com/msp/).

| Category            | Action                            | Description                                                                                  |
| ------------------- | --------------------------------- | -------------------------------------------------------------------------------------------- |
| **Alerts**          | Create Alert                      | Creates an alert for an asset                                                                |
| **Alerts**          | List Alerts                       | Fetches the list of all your alerts.                                                         |
| **Alerts**          | Resolve Alerts                    | Resolves a list of alerts.                                                                   |
| **Assets**          | Get Asset                         | Get an asset                                                                                 |
| **Assets**          | Get Asset Activity                | Fetches the list of asset activities.                                                        |
| **Assets**          | Get Asset Custom Fields           | Fetches the list of asset custom fields based on module (e.g., Windows, Mac)                 |
| **Assets**          | Get Asset Disk Details            | Fetch Asset Disk Details.                                                                    |
| **Assets**          | Get Asset Info By TP Endpoint IDs | Fetch Asset Info By TP EndpointIds                                                           |
| **Assets**          | Get Asset Summary                 | Fetches the asset's summary details.                                                         |
| **Assets**          | Get Asset User Log                | Fetches the asset's user logs.                                                               |
| **Assets**          | List Asset Patch Details          | Fetches all the patch details of an asset.                                                   |
| **Assets**          | List Asset Software               | Fetches all the patch details of an asset.                                                   |
| **Assets**          | List Assets                       | Get a list of assets                                                                         |
| **Assets**          | Soft Delete Asset                 | Soft-deletes an asset from the platform                                                      |
| **Assets**          | Update Asset                      | Updates an asset's data                                                                      |
| **Classifications** | Create Category                   | Creates new ticket categories.                                                               |
| **Classifications** | Create Causes                     | Creates new ticket causes.                                                                   |
| **Classifications** | List Business Functions           | Get a list of business functions                                                             |
| **Classifications** | List Categories                   | Fetches the list of available ticket categories.                                             |
| **Classifications** | List Causes                       | Fetches the list of available ticket causes.                                                 |
| **Classifications** | List Designations                 | Fetches the list of designations.                                                            |
| **Classifications** | List Holidays                     | Fetches the list of holiday lists.                                                           |
| **Classifications** | List Impacts                      | Fetches the list of available impact levels.                                                 |
| **Classifications** | List Offered Items                | Fetches a list of the offered services                                                       |
| **Classifications** | List Priorities                   | Fetches the list of available priority levels.                                               |
| **Classifications** | List Requester Roles              | Fetches the list of requester-type roles.                                                    |
| **Classifications** | List Resolution Codes             | Fetches the list of resolution codes.                                                        |
| **Classifications** | List SLAs                         | Fetch a list of available SLAs.                                                              |
| **Classifications** | List Urgency Levels               | Fetches the list of available urgency levels.                                                |
| **Clients**         | Create Client Custom Field        | Creates a client custom field                                                                |
| **Clients**         | Create Client Site                | Creates a client site                                                                        |
| **Clients**         | Create Client User                | Creates a new client user                                                                    |
| **Clients**         | Create Client User Associations   | Creates client user associations                                                             |
| **Clients**         | Create Client V2                  | Creates a client                                                                             |
| **Clients**         | Delete Client User                | Deletes the records of an existing client user                                               |
| **Clients**         | Delete Client User Associations   | Deletes existing client user associations                                                    |
| **Clients**         | Get Client                        | Fetches a client.                                                                            |
| **Clients**         | Get Client Custom Field           | Fetches a client custom field.                                                               |
| **Clients**         | Get Client Site                   | Fetches a list of clients.                                                                   |
| **Clients**         | Get Client User                   | Fetches a client user.                                                                       |
| **Clients**         | Hard Delete Clients               | Permanently delete trashed clients before the 30-day auto-removal.                           |
| **Clients**         | List Clients                      | Fetches a list of clients.                                                                   |
| **Clients**         | List Client Custom Fields         | Fetches the list of client custom fields.                                                    |
| **Clients**         | List Client Sites                 | Fetches a list of clients.                                                                   |
| **Clients**         | List Client Stages                | Fetches a list of client stages.                                                             |
| **Clients**         | List Client User Association      | Fetches a list of client user associations.                                                  |
| **Clients**         | List Client Users                 | Fetches a list of client users.                                                              |
| **Clients**         | Soft Delete Clients               | Trash (soft delete) an existing client                                                       |
| **Documentations**  | Create IT Documentation           | Creates a new IT document record.                                                            |
| **Documentations**  | Delete IT Documentation           | Deletes an IT document record                                                                |
| **Documentations**  | Get IT Documentation              | Fetches an IT document's details.                                                            |
| **Documentations**  | Get IT Documentation Categories   | Fetches all available IT document categories.                                                |
| **Documentations**  | List IT Documentations            | Fetches all the IT documents under a category.                                               |
| **Documentations**  | Update IT Documentation           | Updates an existing IT document                                                              |
| **Generic Request** | Generic SuperOps API Request      | Generic action for making authenticated requests against the SuperOps API                    |
| **Payments**        | Get Invoice                       | Fetches an invoice.                                                                          |
| **Payments**        | List Invoice Items                | Fetches a list of all the invoice items.                                                     |
| **Payments**        | List Invoices                     | Fetches a list of invoices.                                                                  |
| **Payments**        | List Payment Methods              | Fetches the list of payment method list.                                                     |
| **Payments**        | List Payment Terms                | Fetches the list of payment terms.                                                           |
| **Payments**        | Update Invoice                    | Updates an existing invoice                                                                  |
| **Scripts**         | List Scripts                      | Fetches all available scripts.                                                               |
| **Scripts**         | List Scripts By Type              | Specifies the input required to fetch a script list, including predefined scripts by OS type |
| **Scripts**         | Run Script On Asset               | Runs a script on an asset                                                                    |
| **Service Items**   | Create Service Category           | Creates a new service category in the service catalog.                                       |
| **Service Items**   | Create Service Item               | Creates a new service item in the service catalog.                                           |
| **Service Items**   | Get Service Item                  | Fetches a service item.                                                                      |
| **Service Items**   | List Service Categories           | Get a list of service categories                                                             |
| **Service Items**   | List Service Items                | Fetches a list of service items.                                                             |
| **Tasks**           | Create Task                       | Creates a task                                                                               |
| **Tasks**           | Get Task                          | Fetches a task.                                                                              |
| **Tasks**           | List Tasks                        | Fetches a list of tasks.                                                                     |
| **Taxes**           | Create Tax                        | Creates a new tax rate                                                                       |
| **Taxes**           | Get Tax                           | Fetches a tax rate from the list of saved tax rates.                                         |
| **Taxes**           | List Taxes                        | Fetches all the tax rates saved in SuperOps.ai.                                              |
| **Technicians**     | Create Technician                 | Creates a new technician                                                                     |
| **Technicians**     | Delete Technician                 | Deletes the records of an existing technician                                                |
| **Technicians**     | List Teams                        | Fetches the list of teams.                                                                   |
| **Technicians**     | List Technician Groups            | Fetches the list of technician groups.                                                       |
| **Technicians**     | List Technician Roles             | Fetches the list of technician-type roles.                                                   |
| **Technicians**     | List Technicians                  | Fetches a list of technicians.                                                               |
| **Technicians**     | Update Technician                 | Updates information of an existing technician                                                |
| **Tickets**         | Create Status                     | Creates new ticket statuses.                                                                 |
| **Tickets**         | Create Ticket                     | Creates a new ticket                                                                         |
| **Tickets**         | Create Ticket Conversation        | Creates a new ticket conversation                                                            |
| **Tickets**         | Create Ticket Custom Field        | Creates a ticket custom field                                                                |
| **Tickets**         | Create Ticket Note                | Creates a new ticket note                                                                    |
| **Tickets**         | Get Ticket                        | Fetches a ticket.                                                                            |
| **Tickets**         | Get Ticket Custom Field           | Fetches a ticket custom field.                                                               |
| **Tickets**         | Hard Delete Tickets               | Permanently delete trashed tickets. Without this, they are auto-deleted after 30 days.       |
| **Tickets**         | List Statuses                     | Fetch the list of available ticket statuses.                                                 |
| **Tickets**         | List Ticket Conversation          | Fetches the list of conversations in a ticket.                                               |
| **Tickets**         | List Ticket Custom Fields         | Fetches the list of ticket custom fields.                                                    |
| **Tickets**         | List Ticket Notes                 | Fetches a list of notes in a ticket.                                                         |
| **Tickets**         | List Tickets                      | Fetches a list of tickets.                                                                   |
| **Tickets**         | Restore Tickets                   | Restores trashed tickets.                                                                    |
| **Tickets**         | Soft Delete Tickets               | Trash i.e. soft delete tickets                                                               |
| **Tickets**         | Update Ticket                     | Updates an existing ticket                                                                   |
| **Worklogs**        | Create Worklog Entries            | Creates new worklog entries                                                                  |
| **Worklogs**        | Delete Worklog Entry              | Delete a worklog entry                                                                       |
| **Worklogs**        | Get Worklog Entries               | Fetches worklog Entries.                                                                     |
| **Worklogs**        | List Work Statuses                | Fetches a list of work (task/project) statuses.                                              |
| **Worklogs**        | Update Worklog Entry              | Updates a worklog entry                                                                      |

