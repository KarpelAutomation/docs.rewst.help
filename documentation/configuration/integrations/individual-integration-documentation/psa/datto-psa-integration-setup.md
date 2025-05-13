# Datto Autotask PSA integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Datto Autotask integration do?

Our Datto Autotask integration enables seamless synchronization of ticketing, client data, and service management workflows between Autotask and Rewst. It allows MSPs to automate repetitive tasks like ticket creation, status updates, and client information syncing, reducing manual effort and improving operational efficiency.

### Why use the Datto Autotask integration?

#### Automate ticket creation

A critical server outage alert is triggered in your RMM tool. Rewst detects the alert, and **creates a high-priority ticket in** Autotask with details like impacted client, server ID, and error logs. It assigns the ticket to the infrastructure Team based on the ticket category, and triggers a Slack or Teams alert to the assigned team with a direct link to the Autotask ticket

#### Contract renewal automation

A client’s managed services contract is nearing expiration in Autotask. Rewst identifies expiring contracts and triggers a renewal workflow. It generates a quote in Autotask, emails it to the client, schedules a follow-up task for the account manager, and updates the contract status to **Renewal Pending** in Autotask.

#### Client onboarding and offboarding

A new client signs up for managed services. Rewst creates the client’s Autotask account, assigns contracts, and configures service templates. It provisions user accounts in Microsoft 365 or Google Workspace via integrated workflows, then triggers an onboarding checklist for the service team in Autotask.

#### Asset and configuration management

A new firewall is deployed, Rewst **creates a configuration item (CI) in Autotask** with details like serial number, warranty date, and network role, then links the CI to the client’s Autotask profile and updates your documentation platform (eg. IT Glue documentation), and schedules warranty renewal reminders in Autotask.

## Set up the Datto Autotask integration

### Set up steps in Datto Autotask

1. Log into Autotask PSA as an Administrator
2. Navigate to **Admin > Account Settings & Users.**
3. Click to expand the **Resources/Users (HR)** accordion menu.
4. Scroll down the page to the **Security** menu. Click **Security Levels**. Here there should be an API user with the security level of **system.** It has the appropriate administrator privileges to allow for the full functionality of the automations. Datto’s own documentation about this system security level can be found [here](https://ww1.autotask.net/help/content/4_Admin/1CompanySettings_Users/ResourcesUsersHR/Resources/API_User_Add_Edit.htm).
5. Hover over <img src="../../../../../.gitbook/assets/Screenshot 2025-03-31 at 4.34.56 PM.png" alt="" data-size="line"> to the right of the API user. Click **Copy** in the dialog that appears. This will open a new tab in your browser.
6. Enter a descriptive name which includes Rewst in the text in the **Name** field.
7.  Scroll down and expand the **Other** accordion menu. Ensure that the **can create webhooks** box is checked on, and the **maximum number of webhooks** is set to `50`.\
    \


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-03-31 at 4.40.22 PM.png" alt=""><figcaption></figcaption></figure>
8. Click **Save**.
9. Navigate to **Commonly Used >** **Resources (Users)**. Click **⌄** to expand the **+New** drop down selector.&#x20;
10. Click **New API User**. This will open a new browser tab.\
    \
    ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 13.28.43.jpg>)
11. Enter the following information into the relevant fields in the **General** menu:
    1. **First Name**
    2. **Last Name**
    3. **Email Address**
    4. **Security Level**: use the level you created or cloned in step 3
    5. **Primary Internal Location**\
       \
       ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 13.40.11.jpg>)
12. Scroll down to the **Credentials** submenu. Click **Generate Key**. Click **Generate Secret**. Copy both keys into a secure location. You’ll need this information for continued setup steps in Rewst.\
    \
    ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 13.41.05.jpg>)
13. Select **Integration Vendor** under the **API Tracking Identifier** submenu. Select **Rewst - Automation** from the **Integration Vendor** drop down selector.\
    \
    ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 13.54.48 (1).jpg>)
14. Note your API Username with the format `APIUser@example.com`, and API URL: for example, `https://ww2.autotask.net...` .
15. Click **Save & Close**.

{% hint style="danger" %}
Before saving and closing the API user page, copy the Secret Key and Username . The secret key won't be displayed again, once saved.
{% endhint %}

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for **Datto Autotask** in the integrations page.
3. Click on the integration tile to launch the configuration setup page.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 13.42.07.jpg>)
4. Name the configuration with a definitive name such as `Rewst Autotask integration`.
5. Enter the API credentials copied from Datto into the relevant fields:
   1. **Platform**: `https://ww2.autotask.net`
      1. Choose your zone of residence from the drop-down selector.
      2. This can also be referenced in your Autotask URL.
   2. **API Username**: `APIUser@example.com`
   3. **API User Password**: `[Paste Secret Key]`&#x20;
6. Click **Save**.&#x20;
7.  Rewst will do a quick validation of your input. A new submenu will appear in your configuration page for **Organization Mapping**.&#x20;

    1. **Suggest Values**: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.
    2. **Refresh Options**: This will re-read the potential mapping options - both organizations and companies in Datto.
    3. **Save Mappings** This will apply mapping configuration changes.

    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-04-04 at 1.08.48 PM.png" alt=""><figcaption></figcaption></figure>
8. Note the **company Filter** section at the bottom of the configuration page. Click ![](<../../../../../.gitbook/assets/Screenshot 2025-03-26 at 11.10.58 AM.png>)to create a new company filter. This will display a new submenu of options.
   1. **Filter**: Choose what you would like filtered from the drop-down selector.
   2. **Operation**: Choose which operation you would like to use.
   3. **Value**: This must be an integer. The below guide is an example for how this may be used.

{% hint style="info" %}
**Accepted company type values**

Ensure you enter the number for the company type you would like to filter on.

```
1 = Customer
2 = Lead
3 = Prospect
4 = Dead
6 = Cancelation
7 = Vendor
8 = Partner
```
{% endhint %}

{% hint style="danger" %}
If there are too many customers in the query, you may experience long loading times when refreshing options. If this is the case, you can make use of the page filters to make the list of customers smaller.&#x20;
{% endhint %}

## Test the integration

1. Navigate to **Automation > Workflows** in Rewst.
2. Create a new workflow and name it with something short and descriptive, such as `Test Autotask Integration`.
3. Drag and drop the action **List Companies** from the left actions menu to the workflow builder canvas.
4. Click <img src="../../../../../.gitbook/assets/Screenshot 2025-02-21 at 11.13.39 AM (1).png" alt="" data-size="line"> to add a trigger to your workflow.
5. Name your trigger whatever you’d like.
6. Click into the trigger’s settings.
7. Toggle **Enabled** to on.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 17.44.00.jpg>)
8. Set the **Trigger Type** to **Core - Always Pass**.
9. Click **+** next to **Integration Overrides**. Add **Datto Autotask PSA** as your integration override.\
   \
   ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 17.45.35.jpg>)
10. In the **Activate Trigger To Run For** section, keep **Selected Organization** toggled on. Toggle **All current and future managed organizations** on, choose just one, or individually select organizations from the **Organizations** drop-down selector.\
    \
    ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 17.52.21.jpg>)
11. Click **Submit** to save your trigger.
12. Click **Publish** to save your changes.
13. Click Test to run your workflow. Note that this will bring up a drop-down selector to choosing organizations.
14. Select your MSP level.
15. Click **Test** and confirm that the execution finishes without errors.\
    \
    ![](<../../../../../.gitbook/assets/CleanShot 2025-03-18 at 17.53.50.jpg>)
16. If the test for your MSP is successful, do the same test again. At this point in your steps, select a client organization instead, and ensure that it finishes with no errors.

## Crates related to the Datto Autotask integration

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>OpenAI Ticket Categorization</strong></td><td><a href="../../../../../.gitbook/assets/Open AI TIcket Categorization copy.png">Open AI TIcket Categorization copy.png</a></td></tr><tr><td><strong>Bulk Create Client from PSA</strong></td><td><a href="../../../../../.gitbook/assets/Bulk create client from psa (1).png">Bulk create client from psa (1).png</a></td></tr><tr><td><strong>OpenAI Ticket Sentiment Analysis</strong></td><td><a href="../../../../../.gitbook/assets/Open ai ticket sentiment analysis (1).png">Open ai ticket sentiment analysis (1).png</a></td></tr><tr><td><strong>Add Rewst Form Link to New User Request Tickets</strong></td><td><a href="../../../../../.gitbook/assets/Add Rewst form link.png">Add Rewst form link.png</a></td></tr><tr><td><strong>Add Rewst Form Link to Offboarding Request Tickets</strong></td><td><a href="../../../../../.gitbook/assets/Add REwst form link to offboarding.png">Add REwst form link to offboarding.png</a></td></tr><tr><td><strong>Assign Asset/ Config to Ticket Based on Contact</strong></td><td><a href="../../../../../.gitbook/assets/Assign asset config to ticket based on contact.png">Assign asset config to ticket based on contact.png</a></td></tr><tr><td><strong>Use OpenAI to Suggest Responses to New Tickets</strong></td><td><a href="../../../../../.gitbook/assets/Use open ai to suggest ticket responses to new tickets.png">Use open ai to suggest ticket responses to new tickets.png</a></td></tr><tr><td><strong>Browse Rewst Form Triggers within a Form and Attach to a Ticket</strong></td><td><a href="../../../../../.gitbook/assets/browse Rewst form triggers within a form and attach to a ticket.avif">browse Rewst form triggers within a form and attach to a ticket.avif</a></td></tr></tbody></table>

## Webhook setup for triggers

By default, the Datto Autotask API User system security level does not have permission to create company webhooks. When you configure a trigger in the Rewst platform, you'll receive an error message stating that the webhook could not be created. To resolve this, you'll need to create a new security level by doing the following:

1. Log in to Datto Autotask.
2. Navigate to **Admin > Account Settings & Users**.
3. Click **Security Levels** on the **Resources / Users (HR)** tab.
4. Find the **API User (system) (API-only)** security level on the context menu.
5. Select **Copy**.
6. Scroll down to the **Other** tab.
7. Check the checkbox for **Create Company Webhooks**.
8. Enter a number. Each trigger will require at least one webhook.
9. Click **Save**.  &#x20;
10. Edit the user you are using to authorize Rewst and set it to this new security level.

{% hint style="success" %}
With this, you should now be able to create webhooks in Rewst. This will happen automatically when you create a trigger such as `Datto - Ticket Record Saved`.
{% endhint %}

## Troubleshoot the Datto Autotask integration

{% hint style="info" %}
Click on any of the issues below to expand and view the solution. If you issue isn’t included below, please contact Rewst support in your dedicated support Discord channel.
{% endhint %}

<details>

<summary>Authentication errors</summary>

* Confirm that your API credentials are entered correctly.
* Ensure that the Autotask user has the **API User** role.

</details>

<details>

<summary>Missing ticket data</summary>

* Verify the ticket exists in Autotask and matches query filters.
* Check API permissions for the resource account.

</details>

<details>

<summary>API rate limits</summary>

Autotask enforces API call limits. Use Rewst’s error handling to retry failed requests.

</details>

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Datto Autotask actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

For details on Autotask’s API documentation, refer to their [official documentation](https://ww2.autotask.net/help/developerhelp/Content/0_HOME/HOME.htm).

| Action name                      | Description                                           | Endpoint                                         |
| -------------------------------- | ----------------------------------------------------- | ------------------------------------------------ |
| API Version Info                 | Retrieves API version information                     | `GET /VersionInformation`                        |
| List Companies                   | Retrieves companies by query/search criteria          | `POST /V1.0/Companies/query`                     |
| Get Company                      | Fetches details of a specific company                 | `GET /V1.0/Companies/{id}`                       |
| Create Company                   | Creates a new company                                 | `POST /V1.0/Companies`                           |
| Update Company                   | Updates existing company information                  | `PATCH /V1.0/Companies`                          |
| List Configuration Item Webhooks | Retrieves webhooks for configuration items            | `POST /V1.0/ConfigurationItemWebhooks/query`     |
| List Contacts                    | Retrieves contacts based on filters/query             | `POST /V1.0/Contacts/query`                      |
| Get Contact                      | Fetches details of a specific contact                 | `GET /V1.0/Contacts/{contact_id}`                |
| Create Contact                   | Adds a new contact to a company                       | `POST /V1.0/Companies/{company_id}/Contacts`     |
| Update Contact                   | Updates existing contact details                      | `PATCH /V1.0/Companies/{company_id}/Contacts`    |
| List Contracts                   | Retrieves contracts based on criteria                 | `POST /V1.0/Contracts/query`                     |
| Get Contract                     | Fetches a specific contract                           | `GET /V1.0/Contracts/{id}`                       |
| Create Contract                  | Creates a new contract                                | `POST /V1.0/Contracts`                           |
| Update Contract                  | Updates an existing contract                          | `PATCH /V1.0/Contracts`                          |
| List Documents                   | Retrieves documents based on filters/query            | `POST /V1.0/Documents/query`                     |
| Get Document                     | Retrieves specific document details                   | `GET /V1.0/Documents/{id}`                       |
| Create Document Attachment       | Adds attachment to a document                         | `POST /V1.0/Documents/{document_id}/attachments` |
| Generic Datto PSA API Request    | Performs generic authenticated API requests           | `GET /<url_path>`                                |
| List Phases on Project           | Lists project phases                                  | `GET /V1.0/Projects/{projectId}/Phases`          |
| Create Project                   | Adds a new project                                    | `POST /V1.0/Projects`                            |
| Update Project                   | Updates existing project details                      | `PATCH /V1.0/Projects`                           |
| Get Project                      | Retrieves project details                             | `GET /V1.0/Projects/{id}`                        |
| List Resources                   | Retrieves resources based on filters/query            | `POST /V1.0/Resources/query`                     |
| Get Resource                     | Fetches details of a specific resource                | `GET /V1.0/Resources/{id}`                       |
| List Surveys                     | Retrieves surveys based on criteria                   | `POST /V1.0/Surveys/query`                       |
| Get Survey                       | Retrieves details of a specific survey                | `GET /V1.0/Surveys/{id}`                         |
| List Tasks on Project            | Lists tasks associated with a project                 | `GET /V1.0/Projects/{projectId}/Tasks`           |
| Create Task on Project           | Creates a new task for a specific project             | `POST /V1.0/Projects/{projectId}/Tasks`          |
| List Ticket Categories           | Retrieves ticket categories                           | `POST /V1.0/TicketCategories/query`              |
| Get Ticket Category              | Fetches details of a specific ticket category         | `GET /V1.0/TicketCategories/{id}`                |
| List Ticket Notes                | Retrieves ticket notes                                | `POST /V1.0/TicketNotes/query`                   |
| Create Ticket Note               | Adds a note to a ticket                               | `POST /V1.0/Tickets/{parentId}/Notes`            |
| Update Ticket Note               | Updates a specific ticket note                        | `PATCH /V1.0/Tickets/{ticketId}/Notes`           |
| List Tickets                     | Retrieves tickets based on filters/query              | `POST /V1.0/Tickets/query`                       |
| Get Ticket                       | Retrieves specific ticket details                     | `GET /V1.0/Tickets/{id}`                         |
| Create Ticket                    | Creates a new ticket                                  | `POST /V1.0/Tickets`                             |
| Update Ticket                    | Updates an existing ticket                            | `PATCH /V1.0/Tickets`                            |
| List Time Entries                | Retrieves time entries                                | `POST /V1.0/TimeEntries/query`                   |
| Get Time Entry                   | Fetches details of a specific time entry              | `GET /V1.0/TimeEntries/{id}`                     |
| Create Time Entry                | Creates a new time entry                              | `POST /V1.0/TimeEntries`                         |
| Update Time Entry                | Updates existing time entry                           | `PATCH /V1.0/TimeEntries`                        |
| List Webhook Event Error Logs    | Retrieves webhook event error logs                    | `POST /V1.0/WebhookEventErrorLogs/query`         |
| Get Webhook Event Error Log      | Fetches details of a specific webhook event error log | `GET /V1.0/WebhookEventErrorLogs/{id}`           |

