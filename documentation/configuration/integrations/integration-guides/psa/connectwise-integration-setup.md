# ConnectWise PSA integration

{% hint style="info" %}
Note that ConnectWise PSA was previously known as ConnectWise Manage.

If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the ConnectWise PSA integration do?

Our ConnectWise PSA integration enables the automation of PSA tasks. Use the ConnectWise PSA API within Rewst workflows to perform actions such as managing agreements, contacts, and tickets.

### Why use the ConnectWise PSA integration?

Here’s just a taste of what you can automate with relevant Crates, after you've set up your ConnectWise PSA integration:

* Add your child organizations, also known as customers, to Rewst.
* User onboarding and offboarding
* Categorize tickets using OpenAI

## Integration prerequisites

Rewst has a number of tasks that can be performed using the ConnectWise Manage API, all of which require different permissions. You can review the [ConnectWise Manage Security Roles Matrix](https://developer.connectwise.com/@api/deki/files/422/Security_Roles_Matrix_11132017.xlsx?revision=1) for more information.

{% hint style="info" %}
You'll need an active ConnectWise Developer account to access the above URL.
{% endhint %}

## Set up the ConnectWise PSA integration

### Setup steps in ConnectWise

1. Create a security role in ConnectWise PSA
   1. Navigate to **System > Security Roles**.
   2. Click the **+** in the top left of your screen.
   3. Name the Security Role **Rewst API**. &#x20;
   4. Click the **save** icon.
   5. Set your permission as per [this document](broken-reference).
2. Create an API account
   1. This can be done by following [ConnectWise's own instructions](https://developer.connectwise.com/Special:Userlogin?returntotitle=Products%2FManage%2FDeveloper_Guide%2FAuthentication#tab=login).&#x20;
   2. Note that you'll need to be signed in to ConnectWise to view the documentation.&#x20;
3. Create an API member
   1. Navigate to **System > Members > API Members in ConnectWise PSA**.
   2. Click **+** to create a new API member.
   3. Enter a **Member ID** and **Member Name**. We suggest naming each of these Rewst.
   4. Select **Rewst API** as your **Role ID**.
   5. Select your highest **Level**, such as Corporate (Level 1)_._
   6. Select a **Location**, **Department**, **Name**, and **Default Territory**, as per your company guidelines.
   7. Click the **Save** icon at the top.
   8. Click on the **Rewst API member**.
   9. Click API Keys **+**.
   10. Add a new API Key.
   11. Add Rewst API as the **Description**.
   12. Click **Save**.
   13. Copy and save the public and private key in a secure location. You'll need these to move on to the rest of the setup steps in Rewst.

<figure><img src="../../../../../.gitbook/assets/cwm-api-member.jpg" alt=""><figcaption><p>Creating an API Member in ConnectWise Manage</p></figcaption></figure>

<figure><img src="../../../../../.gitbook/assets/public-api-key.jpg" alt=""><figcaption><p>Public and Private Key</p></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the integrations page, search for `ConnectWise PSA`. \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-02-11 at 6.01.15 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. In the **Configuration** form, enter the following into the relevant fields:
   1. The copied **API Member ID**&#x20;
   2. The **company ID** used when logging into ConnectWise PSA
   3. The **Hostname** for ConnectWise PSA
   4. The Private & Public API Key.
      1. Optionally, change the Company Query Conditions to filter what companies are returned by the API
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

<figure><img src="../../../../../.gitbook/assets/cwm-rewst-integration-setup.jpg" alt=""><figcaption><p>Configuring ConnectWise Manage Integration in Rewst</p></figcaption></figure>

{% hint style="warning" %}
**Other Configurations**

Once the integration has been configured within Rewst, we can use the Rewst Crate: Configure Organization Variables to configure your own custom settings and how Rewst should interact with ConnectWise PSA. Our Guide for that Crate can be found here: [_Configure Organization Variable_](https://docs.rewst.help/prebuilt-automations/existing-crate-documentation/configure-organization-variables)[_s_](../../../../crates/existing-crate-documentation/configure-organization-variables.md)

Note that this form asks for information about your RMM / M365 settings as well. While this form can be completed again separately, we recommend that you also set up the integration for Microsoft Graph and your RMM at this same time.
{% endhint %}

## Actions and endpoints

<details>

<summary>Actions table for ConnectWise PSA</summary>



| Category                          | Action                                      |
| --------------------------------- | ------------------------------------------- |
| **Activities**                    | List Sales Activities                       |
| **Activities**                    | Create Sales Activity                       |
| **Activities**                    | Get Sales Activity                          |
| **Activities**                    | Delete Sales Activity                       |
| **Activities**                    | Replace Sales Activity                      |
| **Activities**                    | Update Sales Activity                       |
| **Address Formats**               | List Company Address Formats                |
| **Address Formats**               | Create Company Address Format               |
| **Address Formats**               | Get Company Address Format                  |
| **Address Formats**               | Delete Company Address Format               |
| **Address Formats**               | Replace Company Address Format              |
| **Address Formats**               | Update Company Address Format               |
| **Agreement Additions**           | List Agreement Additions                    |
| **Agreement Additions**           | Create Agreement Addition                   |
| **Agreement Additions**           | Get Agreement Addition                      |
| **Agreement Additions**           | Delete Agreement Additions                  |
| **Agreement Additions**           | Replace Agreement Additions                 |
| **Agreement Additions**           | Update Agreement Additions                  |
| **Agreement Adjustments**         | List Agreement Adjustments                  |
| **Agreement Adjustments**         | Create Agreement Adjustment                 |
| **Agreement Adjustments**         | Get Agreement Adjustments                   |
| **Agreement Adjustments**         | Delete Agreement Adjustments                |
| **Agreement Adjustments**         | Replace Agreement Adjustments               |
| **Agreement Adjustments**         | Update Agreement Adjustments                |
| **Agreement Types**               | List Agreement Types                        |
| **Agreement Types**               | Create Agreement Type                       |
| **Agreement Types**               | Get Agreement Type                          |
| **Agreement Types**               | Delete Agreement Type                       |
| **Agreement Types**               | Replace Agreement Types                     |
| **Agreement Types**               | Update Agreement Types                      |
| **Agreements**                    | List Agreements                             |
| **Agreements**                    | Create Agreement                            |
| **Agreements**                    | Get Agreement                               |
| **Agreements**                    | Delete Agreement                            |
| **Agreements**                    | Replace Agreement                           |
| **Agreements**                    | Update Agreement                            |
| **Agreements**                    | List Agreements Configurations              |
| **Agreements**                    | Create Agreement Configurations             |
| **Agreements**                    | Get Agreement Configuration                 |
| **Agreements**                    | Delete Agreement Configuration              |
| **Audit Trail**                   | Get Audit Trail                             |
| **Billing Cycles**                | List Finance Billing Cycles                 |
| **Billing Cycles**                | Create Finance Billing Cycle                |
| **Billing Cycles**                | Get Finance Billing Cycle                   |
| **Billing Cycles**                | Delete Finance Billing Cycle                |
| **Billing Cycles**                | Replace Finance Billing Cycle               |
| **Billing Cycles**                | Update Finance Billing Cycle                |
| **Billing Terms**                 | List Finance Billing Terms                  |
| **Billing Terms**                 | Create Finance Billing Term                 |
| **Billing Terms**                 | Get Finance Billing Term                    |
| **Billing Terms**                 | Delete Finance Billing Term                 |
| **Billing Terms**                 | Replace Finance Billing Term                |
| **Billing Terms**                 | Update Finance Billing Term                 |
| **Boards**                        | List Service Boards                         |
| **Boards**                        | Create Service Board                        |
| **Boards**                        | Get Service Board                           |
| **Boards**                        | Delete Service Board                        |
| **Boards**                        | Replace Service Board                       |
| **Boards**                        | Update Service Board                        |
| **Boards**                        | Copy Service Board                          |
| **Boards**                        | List Service Board Statuses                 |
| **Boards**                        | List Service Board Types                    |
| **Boards**                        | List Service Board Subtypes                 |
| **Boards**                        | List Service Board Items                    |
| **Calendars**                     | List Calendars                              |
| **Calendars**                     | Create Calendar                             |
| **Calendars**                     | Get Calendar                                |
| **Calendars**                     | Update Calendar                             |
| **Calendars**                     | Replace Calendar                            |
| **Calendars**                     | Delete Calendar                             |
| **Calendars**                     | Copy Calendar                               |
| **Callbacks**                     | List Callbacks                              |
| **Callbacks**                     | Delete Callback                             |
| **Campaign Audits**               | List Campaign Audits                        |
| **Campaign Audits**               | Create Campaign Audit                       |
| **Campaign Audits**               | Get Campaign Audit                          |
| **Campaign Audits**               | Delete Campaign Audits                      |
| **Campaign Audits**               | Replace Campaign Audits                     |
| **Campaign Audits**               | Update Campaign Audits                      |
| **Campaign Emails Opened**        | List Marketing Campaign Emails Opened       |
| **Campaign Emails Opened**        | Create Marketing Campaign Emails Opened     |
| **Campaign Emails Opened**        | Get Marketing Campaign Emails Opened        |
| **Campaign Emails Opened**        | Delete Marketing Campaign Emails Opened     |
| **Campaign Emails Opened**        | Replace Marketing Campaign Emails Opened    |
| **Campaign Emails Opened**        | Update Marketing Campaign Emails Opened     |
| **Campaign Forms Submitted**      | List Campaign Forms Submitted               |
| **Campaign Forms Submitted**      | Create Campaign Forms Submitted             |
| **Campaign Forms Submitted**      | Get Campaign Forms Submitted                |
| **Campaign Forms Submitted**      | Delete Campaign Forms Submitted             |
| **Campaign Forms Submitted**      | Replace Campaign Forms Submitted            |
| **Campaign Forms Submitted**      | Update Campaign Forms Submitted             |
| **Campaign Links Clicked**        | List Campaign Links Clicked                 |
| **Campaign Links Clicked**        | Create Campaign Links Clicked               |
| **Campaign Links Clicked**        | Get Campaign Links Clicked                  |
| **Campaign Links Clicked**        | Delete Campaign Links Clicked               |
| **Campaign Links Clicked**        | Replace Campaign Links Clicked              |
| **Campaign Links Clicked**        | Update Campaign Links Clicked               |
| **Campaigns**                     | List Marketing Campaigns                    |
| **Campaigns**                     | Create Marketing Campaign                   |
| **Campaigns**                     | Get Marketing Campaign                      |
| **Campaigns**                     | Delete Marketing Campaign                   |
| **Campaigns**                     | Replace Marketing Campaign                  |
| **Campaigns**                     | Update Marketing Campaign                   |
| **Campaigns**                     | List Campaign Activities                    |
| **Campaigns**                     | List Campaign Opportunities                 |
| **Campaigns**                     | Get Campaign Count                          |
| **Classifications**               | List Expense Classifications                |
| **Classifications**               | Get Expense Classification                  |
| **Communication Types**           | List Communication Types                    |
| **Communication Types**           | Create Communication Type                   |
| **Communication Types**           | Get Communication Type                      |
| **Communication Types**           | Delete Communication Type                   |
| **Communication Types**           | Replace Communication Type                  |
| **Communication Types**           | Update Company Communication Type           |
| **Companies**                     | List Companies                              |
| **Companies**                     | Create Company                              |
| **Companies**                     | Get Company                                 |
| **Companies**                     | Delete Company                              |
| **Companies**                     | Replace Company                             |
| **Companies**                     | Update Company                              |
| **Company Custom Notes**          | List Custom Status Notes                    |
| **Company Custom Notes**          | Create Custom Status Note                   |
| **Company Custom Notes**          | Get Custom Status Note                      |
| **Company Custom Notes**          | Delete Custom Status Note                   |
| **Company Custom Notes**          | Replace Custom Status Note                  |
| **Company Custom Notes**          | Update Custom Status Note                   |
| **Company Finances**              | Replace Company Finance Information         |
| **Company Finances**              | List Company Finances                       |
| **Company Finances**              | Get Company Finance                         |
| **Company Finances**              | Update Company Finance Information          |
| **Company Sites**                 | List Sites                                  |
| **Company Sites**                 | Get Site                                    |
| **Company Statuses**              | List Statuses                               |
| **Company Statuses**              | Create Status                               |
| **Company Statuses**              | Get Status                                  |
| **Company Statuses**              | Delete Status                               |
| **Company Statuses**              | Replace Status                              |
| **Company Statuses**              | Update Status                               |
| **Company Types**                 | List Company Types                          |
| **Company Types**                 | Create Company Type                         |
| **Company Types**                 | Get Company Type                            |
| **Company Types**                 | Delete Company Type                         |
| **Company Types**                 | Replace Company Type                        |
| **Company Types**                 | Update Company Type                         |
| **Configuration Types**           | List Configurations Types                   |
| **Configuration Types**           | Create Configurations Type                  |
| **Configuration Types**           | Get Configurations Type                     |
| **Configuration Types**           | Delete Configurations Type                  |
| **Configuration Types**           | Replace Configurations Type                 |
| **Configuration Types**           | Update Configurations Type                  |
| **Configurations**                | List Configurations                         |
| **Configurations**                | Create Configuration                        |
| **Configurations**                | Get Configuration                           |
| **Configurations**                | Delete Configuration                        |
| **Configurations**                | Replace Configuration                       |
| **Configurations**                | Update Configuration                        |
| **Contact Groups**                | List Contact Groups                         |
| **Contact Groups**                | Create Contact Group                        |
| **Contact Groups**                | Get Contact Group                           |
| **Contact Groups**                | Delete Contact Group                        |
| **Contact Groups**                | Replace Contact Group                       |
| **Contact Groups**                | Update Contact Group                        |
| **Contacts**                      | List Contacts                               |
| **Contacts**                      | Create Contact                              |
| **Contacts**                      | Get Contact                                 |
| **Contacts**                      | Delete Contact                              |
| **Contacts**                      | Replace Contact                             |
| **Contacts**                      | Update Contact                              |
| **Contacts**                      | Get Contact Image                           |
| **Contacts**                      | Get Contact Portal Security                 |
| **Contacts**                      | Get Default Contact                         |
| **Contacts**                      | Create Password Request for Contact         |
| **Contacts**                      | Validate Portal Credentials for Contact     |
| **Contacts**                      | Get Contact Communications                  |
| **Cwm Confirmations**             | Create Pod Confirmation                     |
| **Documents**                     | List Documents                              |
| **Documents**                     | Get Document                                |
| **Documents**                     | Delete Document                             |
| **Documents**                     | Download Document                           |
| **Documents**                     | Get Document Thumbnail                      |
| **Expense Entries**               | List Expense Entries                        |
| **Expense Entries**               | Create Expense Entry                        |
| **Expense Entries**               | Get Expense Entry                           |
| **Expense Entries**               | Delete Expense Entry                        |
| **Expense Entries**               | Replace Expense Entry                       |
| **Expense Entries**               | Update Expense Entry                        |
| **Expense Reports**               | List Expense Reports                        |
| **Expense Reports**               | Get Expense Report                          |
| **Expense Reports**               | Reverse Expense Report                      |
| **Expense Reports**               | Submit Expense Report                       |
| **Generic Request**               | CW PSA API Request                          |
| **Holidays**                      | List Holiday List's Holidays                |
| **Holidays**                      | Create Holiday List's Holiday               |
| **Holidays**                      | Get Holiday List's Holiday                  |
| **Holidays**                      | Delete Holiday List's Holiday               |
| **Holidays**                      | Replace Holiday List's Holiday              |
| **Holidays**                      | Update Holiday List's Holiday               |
| **In Out Boards**                 | List In Out Boards                          |
| **In Out Boards**                 | Create In Out Board                         |
| **In Out Boards**                 | Get In Out Board                            |
| **In Out Boards**                 | Delete In Out Board                         |
| **In Out Boards**                 | Replace In Out Board                        |
| **In Out Boards**                 | Update In Out Board                         |
| **Invoices**                      | List Finance Invoices                       |
| **Invoices**                      | Create Invoice                              |
| **Invoices**                      | Get Invoice                                 |
| **Invoices**                      | Delete Invoice                              |
| **Invoices**                      | Replace Invoice                             |
| **Invoices**                      | Update Invoice                              |
| **Invoices**                      | Get Invoice PDF                             |
| **Knowledge Base Articles**       | List Service Knowledge Base Articles        |
| **Knowledge Base Articles**       | Create Service Knowledge Base Article       |
| **Knowledge Base Articles**       | Get Service Knowledge Base Article          |
| **Knowledge Base Articles**       | Delete Service Knowledge Base Article       |
| **Knowledge Base Articles**       | Replace Service Knowledge Base Article      |
| **Knowledge Base Articles**       | Update Service Knowledge Base Article       |
| **Knowledge Base Categories**     | List Service Knowledge Base Categories      |
| **Knowledge Base Categories**     | Create Service Knowledge Base Category      |
| **Knowledge Base Categories**     | Get Service Knowledge Base Category         |
| **Knowledge Base Categories**     | Delete Service Knowledge Base Category      |
| **Knowledge Base Categories**     | Replace Service Knowledge Base Category     |
| **Knowledge Base Categories**     | Update Service Knowledge Base Category      |
| **Knowledge Base Sub Categories** | List Service Knowledge Base Sub Categories  |
| **Knowledge Base Sub Categories** | Create Service Knowledge Base Sub Category  |
| **Knowledge Base Sub Categories** | Get Service Knowledge Base Sub Category     |
| **Knowledge Base Sub Categories** | Delete Service Knowledge Base Sub Category  |
| **Knowledge Base Sub Categories** | Replace Service Knowledge Base Sub Category |
| **Knowledge Base Sub Categories** | Update Service Knowledge Base Sub Category  |
| **Member Skills**                 | List Members Skills                         |
| **Member Skills**                 | Create Members Skill                        |
| **Member Skills**                 | Get Members Skill                           |
| **Member Skills**                 | Delete Members Skill                        |
| **Member Skills**                 | Replace Members Skill                       |
| **Member Skills**                 | Update Members Skill                        |
| **Members**                       | List Members                                |
| **Members**                       | Create Member                               |
| **Members**                       | Get Member                                  |
| **Members**                       | Replace Member                              |
| **Members**                       | Update Member                               |
| **Members**                       | Deactivate Member                           |
| **Members**                       | Link SSO User to Member                     |
| **Members**                       | Submit Member                               |
| **Members**                       | Unlink SSO User from Member                 |
| **Members**                       | Delete Member's Unused Time Sheets          |
| **Members**                       | Create Member Identifier Token              |
| **Opportunities**                 | List Opportunities                          |
| **Opportunities**                 | Create Opportunity                          |
| **Opportunities**                 | Get Opportunity Count                       |
| **Opportunities**                 | Get Opportunity                             |
| **Opportunities**                 | Delete Opportunity                          |
| **Opportunities**                 | Replace Opportunity                         |
| **Opportunities**                 | Update Opportunity                          |
| **Opportunities**                 | Convert Opportunity To Agreement            |
| **Opportunities**                 | Convert Opportunity To Project              |
| **Opportunities**                 | Convert Opportunity To Sales Order          |
| **Opportunities**                 | Convert Opportunity To Service Ticket       |
| **Opportunity Forecasts**         | List Opportunity's Sales Forecasts          |
| **Opportunity Forecasts**         | Create Forecast for Sales Opportunity       |
| **Opportunity Forecasts**         | Delete Opportunity's Sales Forecast         |
| **Opportunity Forecasts**         | Replace Opportunity's Sales Forecast        |
| **Opportunity Forecasts**         | Update Opportunity's Sales Forecast         |
| **Opportunity Forecasts**         | Copy Opportunity's Sales Forecast           |
| **Opportunity Statuses**          | List Sales Opportunities Statuses           |
| **Opportunity Statuses**          | Create Sales Opportunities Status           |
| **Opportunity Statuses**          | Get Sales Opportunities Status              |
| **Opportunity Statuses**          | Delete Sales Opportunities Status           |
| **Opportunity Statuses**          | Replace Sales Opportunities Status          |
| **Opportunity Statuses**          | Update Sales Opportunities Status           |
| **Priorities**                    | List Service Priorities                     |
| **Priorities**                    | Create Service Priority                     |
| **Priorities**                    | Get Service Priority                        |
| **Priorities**                    | Delete Service Priority                     |
| **Priorities**                    | Replace Service Priority                    |
| **Priorities**                    | Update Service Priority                     |
| **Priorities**                    | Get Service Priority Image                  |
| **Procurement Adjustments**       | List Procurement Adjustments                |
| **Procurement Adjustments**       | Create Procurement Adjustment               |
| **Procurement Adjustments**       | Get Procurement Adjustment                  |
| **Procurement Adjustments**       | Delete Procurement Adjustment               |
| **Procurement Adjustments**       | Replace Procurement Adjustment              |
| **Procurement Adjustments**       | Update Procurement Adjustment               |
| **Product Types**                 | List Procurement Types                      |
| **Product Types**                 | Create Procurement Type                     |
| **Product Types**                 | Get Procurement Type                        |
| **Product Types**                 | Delete Procurement Type                     |
| **Product Types**                 | Replace Procurement Type                    |
| **Product Types**                 | Update Procurement Type                     |
| **Products**                      | List Products                               |
| **Products**                      | Create Product                              |
| **Products**                      | Get Product                                 |
| **Products**                      | Delete Product                              |
| **Products**                      | Replace Product                             |
| **Products**                      | Update Product                              |
| **Products**                      | Detach Product                              |
| **Project Notes**                 | List Project Notes                          |
| **Project Notes**                 | Create Project Note                         |
| **Project Notes**                 | Get Project Note                            |
| **Project Notes**                 | Delete Project Note                         |
| **Project Notes**                 | Replace Project Note                        |
| **Project Notes**                 | Update Project Note                         |
| **Project Phases**                | List Project Phases                         |
| **Project Phases**                | Create Project Phase                        |
| **Project Phases**                | Get Project Phase                           |
| **Project Phases**                | Delete Project Phase                        |
| **Project Phases**                | Replace Project Phase                       |
| **Project Phases**                | Update Project Phase                        |
| **Project Statuses**              | List Project Statuses                       |
| **Project Statuses**              | Create Project Status                       |
| **Project Statuses**              | Get Project Status                          |
| **Project Statuses**              | Delete Project Status                       |
| **Project Statuses**              | Replace Project Status                      |
| **Project Statuses**              | Update Project Status                       |
| **Project Ticket Notes**          | Mark Project Ticket Note As                 |
| **Project Ticket Notes**          | List Project Tickets All Notes              |
| **Project Tickets**               | List Project Tickets                        |
| **Project Tickets**               | Create Project Ticket                       |
| **Project Tickets**               | Get Project Ticket                          |
| **Project Tickets**               | Delete Project Ticket                       |
| **Project Tickets**               | Replace Project Ticket                      |
| **Project Tickets**               | Update Project Ticket                       |
| **Project Tickets**               | List Project Tickets Activities             |
| **Project Tickets**               | List Project Ticket Configuration           |
| **Project Tickets**               | Create Project Tickets Configuration        |
| **Project Tickets**               | Get Project Tickets Configuration           |
| **Project Tickets**               | Delete Project Tickets Configuration        |
| **Project Tickets**               | Convert Project Ticket                      |
| **Project Tickets**               | List Project Ticket's Documents             |
| **Project Tickets**               | List Project Ticket's Products              |
| **Project Tickets**               | List Project Ticket's Schedule Entries      |
| **Project Tickets**               | List Project Ticket's Time Entries          |
| **Project Tickets**               | Get Project Tickets Count                   |
| **Project Tickets**               | Search Project Tickets                      |
| **Project Types**                 | List Project Types                          |
| **Project Types**                 | Create Project Type                         |
| **Project Types**                 | Get Project Type                            |
| **Project Types**                 | Delete Project Type                         |
| **Project Types**                 | Replace Project Type                        |
| **Project Types**                 | Update Project Type                         |
| **Projects**                      | List Projects                               |
| **Projects**                      | Create Project                              |
| **Projects**                      | Get Project                                 |
| **Projects**                      | Delete Project                              |
| **Projects**                      | Replace Project                             |
| **Projects**                      | Update Project                              |
| **Purchase Order Statuses**       | List Purchase Order Statuses                |
| **Purchase Order Statuses**       | Create Purchase Order Status                |
| **Purchase Order Statuses**       | Get Purchase Order Status                   |
| **Purchase Order Statuses**       | Delete Purchase Order Status                |
| **Purchase Order Statuses**       | Update Purchase Order Status                |
| **Purchase Order Statuses**       | Replace Purchase Order Status               |
| **Purchase Orders**               | List Purchase Orders                        |
| **Purchase Orders**               | Create Purchase Order                       |
| **Purchase Orders**               | Get Purchase Order                          |
| **Purchase Orders**               | Delete Purchase Order                       |
| **Purchase Orders**               | Replace Purchase Order                      |
| **Purchase Orders**               | Update Purchase Order                       |
| **Reports**                       | List Reports                                |
| **Reports**                       | Get Reports By Report Name                  |
| **Reports**                       | List Reports By Report Name Columns         |
| **Roles**                         | List Sales Roles                            |
| **Roles**                         | Create Sales Role                           |
| **Roles**                         | Get Sales Role                              |
| **Roles**                         | Delete Sales Role                           |
| **Roles**                         | Replace Sales Role                          |
| **Roles**                         | Update Sales Role                           |
| **Schedules**                     | List Schedule Types                         |
| **Schedules**                     | List Schedule Entries                       |
| **Schedules**                     | Get Schedule Entry                          |
| **Schedules**                     | Create Schedule Entry                       |
| **Schedules**                     | Update Schedule Entry                       |
| **Schedules**                     | Delete Schedule Entry                       |
| **Security Roles**                | List Security Roles                         |
| **Security Roles**                | Create Security Role                        |
| **Security Roles**                | Get Security Role                           |
| **Security Roles**                | Delete Security Role                        |
| **Severities**                    | List Service Severities                     |
| **Severities**                    | Get Service Severity                        |
| **Severities**                    | Replace Service Severity                    |
| **Severities**                    | Update Service Severity                     |
| **Skill Categories**              | List Skill Categories                       |
| **Skill Categories**              | Create Skill Category                       |
| **Skill Categories**              | Get Skill Category                          |
| **Skill Categories**              | Delete Skill Category                       |
| **Skill Categories**              | Replace Skill Category                      |
| **Skill Categories**              | Update Skill Category                       |
| **Skills**                        | List Skills                                 |
| **Skills**                        | Create Skill                                |
| **Skills**                        | Get Skill                                   |
| **Skills**                        | Delete Skill                                |
| **Skills**                        | Replace Skill                               |
| **Skills**                        | Update Skill                                |
| **Slas**                          | List Service SLAs                           |
| **Slas**                          | Create Service SLAs                         |
| **Slas**                          | Get Service SLAs                            |
| **Slas**                          | Delete Service SLAs                         |
| **Slas**                          | Replace Service SLAs                        |
| **Slas**                          | Update Service SLAs                         |
| **Sources**                       | List Service Sources                        |
| **Sources**                       | Create Service Sources                      |
| **Sources**                       | Get Service Sources                         |
| **Sources**                       | Delete Service Sources                      |
| **Sources**                       | Replace Service Sources                     |
| **Sources**                       | Update Service Sources                      |
| **Survey Results**                | List Service Survey Results                 |
| **Survey Results**                | Create Service Survey Result                |
| **Survey Results**                | Get Service Survey Result                   |
| **Survey Results**                | Delete Service Survey Result                |
| **Survey Results**                | Replace Service Survey Result               |
| **Survey Results**                | Update Service Surveys Result               |
| **Surveys**                       | List Surveys                                |
| **Surveys**                       | Create Survey                               |
| **Surveys**                       | Get Survey                                  |
| **Surveys**                       | Delete Survey                               |
| **Surveys**                       | Replace Survey                              |
| **Surveys**                       | Update Survey                               |
| **Surveys**                       | Copy Survey                                 |
| **Ticket Notes**                  | List Project Ticket Notes                   |
| **Ticket Notes**                  | Create Project Ticket Notes                 |
| **Ticket Notes**                  | Get Project Ticket Notes                    |
| **Ticket Notes**                  | Delete Project Ticket Notes                 |
| **Ticket Notes**                  | Replace Project Ticket Notes                |
| **Ticket Notes**                  | Update Project Ticket Notes                 |
| **Ticket Notes**                  | List Service Ticket Notes                   |
| **Ticket Notes**                  | List All Service Ticket Notes               |
| **Ticket Notes**                  | Add Note to Service Ticket                  |
| **Ticket Notes**                  | Get Service Ticket Note                     |
| **Ticket Notes**                  | Delete Service Ticket Notes                 |
| **Ticket Notes**                  | Replace Service Ticket Notes                |
| **Ticket Notes**                  | Update Service Ticket Notes                 |
| **Ticket Tasks**                  | List Project Ticket Tasks                   |
| **Ticket Tasks**                  | Create Project Ticket Task                  |
| **Ticket Tasks**                  | Get Project Ticket Task                     |
| **Ticket Tasks**                  | Delete Project Ticket Task                  |
| **Ticket Tasks**                  | Replace Project Ticket Task                 |
| **Ticket Tasks**                  | Update Project Ticket Task                  |
| **Ticket Tasks**                  | List Service Ticket Tasks                   |
| **Ticket Tasks**                  | Create Service Ticket Task                  |
| **Ticket Tasks**                  | Get Service Ticket Task                     |
| **Ticket Tasks**                  | Delete Service Ticket Task                  |
| **Ticket Tasks**                  | Replace Service Ticket Task                 |
| **Ticket Tasks**                  | Get Service Ticket Task Count               |
| **Ticket Tasks**                  | Update Service Ticket Task                  |
| **Tickets**                       | List Service Tickets                        |
| **Tickets**                       | Create Service Ticket                       |
| **Tickets**                       | Get Service Ticket                          |
| **Tickets**                       | Delete Service Ticket                       |
| **Tickets**                       | Replace Service Ticket                      |
| **Tickets**                       | Update Service Ticket                       |
| **Tickets**                       | List Service Tickets Activities             |
| **Tickets**                       | Attach Children to Service Ticket           |
| **Tickets**                       | List Service Ticket Configurations          |
| **Tickets**                       | Create Service Ticket Configuration         |
| **Tickets**                       | Get Service Ticket Configuration            |
| **Tickets**                       | Delete Service Ticket Configuration         |
| **Tickets**                       | Add Configuration to Service Ticket         |
| **Tickets**                       | Convert Service Ticket To Project           |
| **Tickets**                       | Merge Service Tickets                       |
| **Tickets**                       | List Service Tickets Products               |
| **Tickets**                       | List Service Ticket's Schedule Entries      |
| **Tickets**                       | List Service Tickets Time Entries           |
| **Tickets**                       | Get Service Tickets Count                   |
| **Tickets**                       | Search Service Tickets                      |
| **Time Entries**                  | List Time Entries                           |
| **Time Entries**                  | Create Time Entry                           |
| **Time Entries**                  | Get Time Entry                              |
| **Time Entries**                  | Delete Time Entry                           |
| **Time Entries**                  | Replace Time Entry                          |
| **Time Entries**                  | Update Time Entry                           |
| **Time Entries**                  | Create Default Time Entry                   |
| **Time Sheets**                   | List Time Sheets                            |
| **Time Sheets**                   | Get Time Sheet                              |
| **Time Sheets**                   | Approve Time Sheet                          |
| **Time Sheets**                   | Reject Time Sheet                           |
| **Time Sheets**                   | Reverse Time Sheet                          |
| **Time Sheets**                   | Submit Time Sheet                           |
| **Work Roles**                    | List Time Work Roles                        |
| **Work Roles**                    | Create Time Work Role                       |
| **Work Roles**                    | Get Time Work Role                          |
| **Work Roles**                    | Delete Time Work Role                       |
| **Work Roles**                    | Replace Time Work Role                      |
| **Work Roles**                    | Update Time Work Role                       |
| **Work Types**                    | List Work Types                             |
| **Work Types**                    | Create Work Type                            |
| **Work Types**                    | Get Work Type                               |
| **Work Types**                    | Delete Work Type                            |
| **Work Types**                    | Replace Work Type                           |
| **Work Types**                    | Update Work Type                            |

</details>

## ConnectWise PSA pod configuration

{% hint style="warning" %}
Pod Authorization

Note that pods do not allow the use of the fat client due to authorization pass-through issues. This means that you can use the web client to access pods.
{% endhint %}

### Configure ConnectWise pods

To configure the connection between your pods and Rewst, follow the below steps.

1. Login to ConnectWise Manage as a user that has access to the Setup Tables. This is likely an admin account.
2. Click the **System** icon on the bottom left of the ConnectWise Manage UI.
3. Click on the **Setup Tables** menu that appears.
4. Enter `\*api\` in the table filter. Your returned result should be **Manage Hosted API**.
5. Click **Add** and use the below settings:
   1. **Description** - Enter **Rewst**
   2. **Screen** - For our example, we use **Service Tickets**
   3. **Origin** - [https://app.rewst.io](https://app.rewst.io)
   4. **URL** - [https://app.rewst.io/organizations/\<org\_id>/integrations/embed/ticket/\[cw\_id\]](https://app.rewst.io/organizations/%3Corg_id%3E/integrations/embed/ticket/\[cw_id)
6. Select **Pod**.

{% hint style="warning" %}
Update the URL

You will need to add your own `org_id`to the URL above. This can be obtained by going to Rewst and looking at the URL. `[cw_id]`should be left as-is.
{% endhint %}

### Add pods to tickets

1. Click the **Settings** icon in the top right corner of your screen.
2. Select **Pod Configuration**.

<figure><img src="../../../../../.gitbook/assets/cwm-pod-config.png" alt=""><figcaption><p>Selecting the Settings Icon</p></figcaption></figure>

3. **Move** the Rewst pods to the **Displayed** table.

<figure><img src="../../../../../.gitbook/assets/cwm-pod-configuration-window.png" alt=""><figcaption><p>Adding Rewst Configured Pods</p></figcaption></figure>

{% hint style="danger" %}
**Firefox Dynamic State Partitioning**

An issue arises with Firefox's Dynamic State Partitioning where the default `network.cookie.cookieBehavior` value of 5 rejects (known) trackers and partitions third-party storage, hindering the authentication process and causing a logged GraphQL error. This issue also occurs with embedded forms.

Firefox users must set `network.cookie.cookieBehavior` to 4 for successful pod authentication.

Consult the official Firefox documentation for more information: [https://developer.mozilla.org/en-US/docs/Web/Privacy/State\_Partitioning#disable\_dynamic\_state\_partitioning](https://developer.mozilla.org/en-US/docs/Web/Privacy/State_Partitioning#disable_dynamic_state_partitioning).\\
{% endhint %}

You'll have a workflow called `[Rewst Master v3] Pods: Technician Toolbox` within your organization.

### Re-run a pod from a ticket

Let's imagine you have a ticket that has had its associated pod workflow execution expire (or fail for one reason or another). If you attempt to view the pod in the ticket you'll see something along the lines of:&#x20;

<figure><img src="https://github.com/RewstApp/docs.rewst.help/assets/121902974/7ce5ce24-e338-41a2-99d2-9db4effd218a" alt=""><figcaption></figcaption></figure>

To execute a new instance of the pod, click on the **Links** dropdown in the ticket and choose **Rewst - Start Pod on this Ticket**.

<figure><img src="https://github.com/RewstApp/docs.rewst.help/assets/121902974/058d6794-48ba-4f7d-b5ba-d15b2f295b87" alt="" width="375"><figcaption></figcaption></figure>

After you have used this button, a web page will open and close. This will send a request to the Live Link trigger and start a new execution for that ticket. Allow some time to pass for the ticket to update. You should see the pod populate once the execution has gone through.

<figure><img src="https://github.com/RewstApp/docs.rewst.help/assets/121902974/a1e209d6-c432-44aa-9785-14d24f47410f" alt=""><figcaption></figcaption></figure>

## Least privilege access requirements for ConnectWise PSA integration



<details>

<summary>Authentication requirements</summary>

To initiate the successful authentication of the ConnectWise PSA integration with Rewst, and pull back the list of companies you want to associate, the following permission scopes are needed:

* System → Member Maintenance: Inquire
* Companies → Company Maintenance: Inquire

{% hint style="danger" %}
If you are seeing a 403 Forbidden error when running workflows, this is due to incorrect permissions. Ensure that the above authentication requirements are complete to resolve this error.&#x20;
{% endhint %}

</details>

<details>

<summary>Additional action requirements</summary>

In addition to the above that’s required for authentication, there are several more actions the ConnectWise integration is capable of taking within Rewst. To use them all, you’ll need the following additional security roles configured for this account:

* Companies → Configurations: Add, Edit, Inquire
* Companies → Contacts: Add, Edit, Inquire
* Companies → Manage Attachments: Add (My), Edit (My), Delete(My), Inquire
* Companies → Team Members: Inquire
* Service Desk → Service Tickets: Add, Edit, Inquire
* Service Desk → Service Ticket – Dependencies: Add, Edit, Inquire
* Service Desk → Close Service Tickets: Edit, Inquire
* Service Desk → Merge Tickets: Add, Edit, Inquire
* Project → Project Ticket: Add, Edit, Inquire&#x20;
* Project → Project Ticket - Dependancies: Add, Edit, Inquire&#x20;
* Project → Close Project Tickets: Edit, Inquire
* System → My Account: Add (My), Edit (My), Delete (My), Inquire (My)
* System → Table Setup: Add, Inquire (Additional customization can be done to allow or disallow tables)
* Time & Expense → Time Entry: Add, Edit, Delete (My), Inquire
* Time & Expense → Time Entry Billable Option: Add, Edit, Delete(My), Inquire
* Finance → Agreements: Inquire
* Finance → Billing View Time: Inquire: ALL _\*Required for adding billable time to tickets_
* Finance → Billing View Time: Edit: ALL _\*Required for adding billable time to tickets_

</details>

<details>

<summary>Breakdown of actions per security role</summary>

The following tables outline the various actions the ConnectWise PSA integration can take within Rewst, grouped by their security roles in ConnectWise, and each of their required permission levels to be able to execute them in workflows. We also have a generic request action, that will require any relevant scopes for what it’s being used for. For more information on the ConnectWise API and its required permissions, please refer to the [Official ConnectWise API documentation](https://developer.connectwise.com/).

#### Companies

<table><thead><tr><th width="253">Actions</th><th width="286.3333333333333">API endpoint</th><th>Required permission</th></tr></thead><tbody><tr><td>List Companies</td><td>/company/companies</td><td>Inquire</td></tr><tr><td>Get Company</td><td>/company/companies/{id}</td><td>Inquire</td></tr><tr><td>List Communication Types</td><td>/company/communicationTypes</td><td>Inquire</td></tr><tr><td>List Contacts</td><td>/company/contacts</td><td>Inquire</td></tr><tr><td>Get Contact</td><td>/company/contacts/{id}</td><td>Inquire</td></tr><tr><td>Create Contact</td><td>/company/contacts</td><td>Add</td></tr></tbody></table>

#### Service Desk

<table><thead><tr><th width="260">Actions</th><th width="286.3333333333333">API endpoint</th><th>Required permission</th></tr></thead><tbody><tr><td>List Service Tickets</td><td>/service/tickets</td><td>Inquire</td></tr><tr><td>Get Service Ticket</td><td>/service/tickets/{id}</td><td>Inquire</td></tr><tr><td>Get Tasks</td><td>/service/tickets/{id}/tasks</td><td>Inquire</td></tr><tr><td>Create Task</td><td>/service/tickets/tasks/{id}</td><td>Add</td></tr><tr><td>Create Bulk Tasks</td><td>/service/tickets/tasks/bulk</td><td>Add</td></tr><tr><td>Update Task</td><td>/service/tickets/tasks/{id}</td><td>Edit</td></tr><tr><td>Update Service Ticket</td><td>/service/tickets/{id}</td><td>Edit</td></tr><tr><td>Create Service Ticket</td><td>/service/tickets</td><td>Add</td></tr></tbody></table>

#### Time and expense

<table><thead><tr><th width="265">Actions</th><th width="278.3333333333333">API endpoint</th><th>Required permission</th></tr></thead><tbody><tr><td>Add Time Entry</td><td>/time/entries</td><td>Add</td></tr></tbody></table>

#### Finance

<table><thead><tr><th width="267">Actions</th><th width="276.3333333333333">API endpoint</th><th>Required permission</th></tr></thead><tbody><tr><td>List Agreements</td><td>/finance/agreements</td><td>Inquire</td></tr></tbody></table>

</details>

## Query and filter in ConnectWise PSA actions

### Understanding Query String Parameters and Conditions

Query string parameters and conditions allow you to filter results in ConnectWise PSA Actions. By using specific symbols and expressions, you can pinpoint the data you need.

### **How to Use Symbols:**

* `=`: Matches exactly
* `!=`: Does not match
* `<, <=, >, >=`: Relational operators
* `contains, like, in, not`: Specific condition operators

### Practical Examples

Learn how to apply query string parameters and conditions in real-world scenarios.

#### **Example 1: List Companies**

* **Action**: `List Companies`
* **Query Condition**: `name="Test Rewst"`
* **Explanation**: Easily locate companies by name.

#### **Example 2: List Service Tickets**

* **Action**: `List Service Tickets`
* **Query Condition**: `board/name="Integration"`
* **Explanation**: Organize tickets by board names for efficient processing.

#### **Example 3: List Contacts with Specific Communication Items**

* **Action**: `List Contacts`
* **Child Condition**: `communicationItems/value like "john@Outlook.com" AND communicationItems/communicationType="Email"`
* **Explanation**: Target contacts based on communication preferences.

### Query nested attributes

Accessing data within nested objects requires a specific approach.

* **Syntax**: Use a forward slash `/`
* **Example**: `communicationItems/value`
* **Use Case**: When you need to extract specific attributes from nested entities, such as communication items within contacts.

### Conditions in ConnectWise PSA actions

Different conditions serve different purposes. Mastering these conditions enables you to build complex and tailored queries.

* **Strings**: Match text patterns (`Summary = "string"`)
* **Integers**: Locate numerical values (`Board/Id = 123`)
* **Boolean**: Filter by true/false conditions (`ClosedFlag = True`)
* **Datetimes**: Sort by date and time (`LastUpdated = [2016-08-20T18:04:26Z]`)
* **Operators**: Define relational/logical conditions (`Summary Not Contains "Low Priority"`)
* **Logic Operators**: Combine multiple conditions (`AND, OR`)
* **Reference Conditions**: Access fields within referenced objects (`manufacturer/name`)

## Troubleshoot API issues from ConnectWise logs

1. Log in to ConnectWise PSA.
2. Navigate to **System > Members**.
3. Click **API Members**. Here, you'll find settings specific to API interactions and configurations.

<figure><img src="../../../../../.gitbook/assets/image (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

4. Under the **API Members** tab, locate and select the user associated with Rewst's integration.

<figure><img src="../../../../../.gitbook/assets/image (2) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

5. After selecting the Rewst user:
   1. Navigate to the **API Logs** tab.&#x20;
   2. Click **Start Debug Mode**.

<figure><img src="../../../../../.gitbook/assets/image (3) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

6. In the **Debug Mode** dialog:
   1. Enter length of time (e.g. `5`) in the **Minutes** field. This will capture logs for the specified duration.
   2. Click **Ok**.

<figure><img src="../../../../../.gitbook/assets/image (4) (1).png" alt=""><figcaption></figcaption></figure>

7. Replicate the issue or process you are troubleshooting
8. Return to the **API Logs** tab.
9. Click **Download Logs**. Once downloaded, you can review these logs, and provide to the ROC for troubleshooting assistance.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}
