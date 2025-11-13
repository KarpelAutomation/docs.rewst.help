---
description: >-
  This document outlines the requirements and setup for the Kaseya BMS
  integration.
---

# Kaseya BMS integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Kaseya BMS integration do?

Our Kaseya BMS integration enables the automation of ticket creation, updates, and management directly from workflows, ensuring seamless synchronization between service requests and business operations. It allows for automated time entry and billing updates, reducing manual effort and improving accuracy. If desired, the integration could trigger Rewst workflows based on ticket events.

### Why use the Kaseya BMS integration?

* Automatically trigger workflows based on specific ticket types, updates, or subjects. By leveraging designated trigger types, you can pass ticket data directly into workflows, ensuring you have access to the necessary information exactly when you need it.
* Log workflow results at key stages, enabling Helpdesk staff to quickly and easily track the progress of workflows, such as onboarding processes.
* Add internal and external notes, allowing you to run automations and show information only to those who need it.
* Integrate seamlessly with AI, Using our AI integrations you can leverage the power of OpenAi and Azure OpenAi to set ticket categories and sentiment or even suggest steps for your team to take.
* Create Ticket Time Entries, eliminating manual data entry, ensuring accurate time tracking, improving billing efficiency, and enhancing SLA compliance—boosting productivity while reducing human error.
* Import all PSA customers into Rewst, streamlining initial setup and saving valuable time.

## Integration prerequisites

Rewst requires an OTP token to access the Kaseya BMS API. You’ll need to create a regular user account, as Kaseya doesn't allow OTP Tokens to be generated on API users.

## Set up the Kaseya BMS integration

### Set up steps in Kaseya BMS

1. Log in to Kaseya BMS with an administrative account.
2. Navigate to **Admin > HR > Employees**.
3.  Click +**New**.\
    \


    <figure><img src="../../../../.gitbook/assets/image (53) (1).png" alt=""><figcaption></figcaption></figure>
4. Create your new user with an easily identifiable name. Set the user type to **Employee**. Use the **Administrator** security role to ensure that the API has the necessary permissions for Rewst to integrate seamlessly. Note that you must use a valid email address to set up this account. That email will be used for further setup steps later in the process.\


<figure><img src="../../../../.gitbook/assets/image (54) (1).png" alt=""><figcaption></figcaption></figure>

5. Log out of your current Kaseya sessions. Log in as the newly created user.
6. Navigate to **My Profile**. As this is your first time logging in, Kaseya should display this page at login.
7.  Click **Enable MFA**.\
    \


    <figure><img src="../../../../.gitbook/assets/image (55) (1).png" alt=""><figcaption></figcaption></figure>
8. Click **Show secret key for manual configuration** in the dialog that appears. Copy and save this code, which you’ll need to finish setup in Rewst.\
   \
   ![](<../../../../.gitbook/assets/image (56) (1).png>)
9. Configure MFA with your preferred app.
10. Click **Enable**.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the `Kaseya BMS` integration.
3. Click on the integration tile to launch setup.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-03-31 at 12.29.33 PM.png>)
4.  Enter all details into their relevant fields:

    * **Name**: Can be left as default but changed if you wish
    * **Description**: Can be left blank but populate if you wish
    * **Is Default**: Most situations will call for this to be left ticked, this is for if you have multiple instances.
    * **Hostname**: This is the hostname of your BMS instance preceded by api, you can find this in the URL bar
    * **Password**: The password for your newly create BMS user
    * **Tenant**: This is the name of the parent org in BMS, if you are unsure this will be on the welcome email received when setting up the new users and will be marked as “Company”
    * **TOTP Secret**: This is the code we saved during the MFA setup
    * **Username**: The username we created in BMS

    \
    ![](<../../../../.gitbook/assets/image (61) (1).png>)
5.  Click **Save Configuration**. You should see the following confirmation message display if your setup has completed properly.\
    \


    <figure><img src="../../../../.gitbook/assets/image (62) (1).png" alt=""><figcaption></figcaption></figure>
6. This step will vary depending on if you have set up your customers in Rewst.
   1. If you have not setup your customers in Rewst, unpack the [Bulk Create Client from PSA Crate](../../../crates/existing-crate-documentation/bulk-create-client-from-psa-crate.md).
   2. If you have already set up customers or imported clients, scrolling down on the integration page will display a list of your customers.
      1. Click **Refresh Options** if you have already imported your customers via PSA integration, but are not seeing a correct list.
      2. Click **Suggest Values** to match between Rewst organization and Kaseya BMS customers. Note that if the names are not exactly the same, they may be excluded. Use the drop-down selector to choose the correct organization and fix this mismatch.
7. Click **Save Mappings** to complete your integration setup.

## Test the integration

Successful organization importing via the Bulk Create Client from PSA Crate is a good indication that the integration is working as expected. If your organizations were imported by other methods, run this test to ensure that the integration is fully functional.

1. Navigate to **Automations > Workflows**.
2. Click **Create**.
3.  Name your workflow `Kaseya BMS Test`, and click **Submit**. Note that this workflow is just to test the integration, and can be deleted after the test is complete.\
    \


    <figure><img src="../../../../.gitbook/assets/image (57) (1).png" alt=""><figcaption></figcaption></figure>
4. Search for `Kaseya BMS` in the actions menu of your workflow builder.
5.  Drag and drop the **List accounts** action on to the workflow builder canvas.\
    \


    <figure><img src="../../../../.gitbook/assets/image (58) (1).png" alt=""><figcaption></figcaption></figure>
6. Click **Test** in the top right corner of the workflow builder. If all is working after the test, the task's highlight will turn green.

<figure><img src="../../../../.gitbook/assets/image (59) (1).png" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Crates related to the Kaseya BMS integration

To see an up-to-date list of Crates that can be unpacked after completing Kaseya BMS integration, navigate to **Crates > Crate Marketplace** in the left side menu of your Rewst platform.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-11-13 at 12.42.06 PM.png" alt=""><figcaption></figcaption></figure>

Click **Filter** to expand the filter menu. Enter **Kaseya BMS** into the **Integrations** field, and watch Rewst filter down to just the Crates that relate to that integration. Any other prerequisites for the Crate will be listed in the right side of that Crate's details page.&#x20;

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-11-13 at 12.39.02 PM.png" alt="" width="131"><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Kaseya BMS actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

Kaseya's own full documentation can be found [here](https://api.bms.kaseya.com/swagger/index.html).&#x20;

<table data-full-width="true"><thead><tr><th>Action Name</th><th>Description</th><th>Endpoint Related to Action</th></tr></thead><tbody><tr><td>kaseya_bms_create_contact</td><td>The kaseya_bms_create_contact action creates a new contact in Kaseya BMS by adding their details to the system. This typically includes information such as the contact’s first name, last name, email address, phone number, company association, and job title. The action ensures that the contact is properly linked to an existing company within Kaseya BMS, allowing for seamless integration into customer records and service workflows.</td><td>/crm/contacts/summary</td></tr><tr><td>kaseya_bms_create_ticket</td><td>The kaseya_bms_create_ticket action generates a new support ticket in Kaseya BMS, allowing users to log and track service requests. This action typically requires details such as the ticket title, description, priority level, issue type, assigned technician or team, and the associated company or contact. Once created, the ticket becomes part of the service management workflow, enabling efficient tracking, updates, and resolution of customer issues.</td><td>/servicedesk/tickets</td></tr><tr><td>kaseya_bms_create_ticket_note</td><td>The kaseya_bms_create_ticket_note action adds a note to an existing ticket in Kaseya BMS, providing additional information, updates, or internal comments related to the ticket. This action typically requires the ticket ID to identify the correct record along with the note content. Adding notes helps maintain a clear history of communications and actions taken on a ticket, improving collaboration and documentation</td><td>/servicedesk/tickets/{ticketId}/notes</td></tr><tr><td>kaseya_bms_create_ticket_time_entry</td><td>The kaseya_bms_create_ticket_time_entry action logs a time entry against an existing ticket in Kaseya BMS, tracking the time spent on a task. It requires a Start Time formatted as %H:%M, the Ticket ID to associate the entry with a specific ticket, and the Time Spent in minutes. Additionally, it can include the Assignee ID to specify who performed the work, WorkType ID to categorize the entry, Status ID to reflect ticket progress, and optional External Notes or Internal Notes for documentation. This ensures accurate time tracking for billing, reporting, and service management.</td><td>/servicedesk/tickets/{ticketId}/timelogs</td></tr><tr><td>kaseya_bms_get_account_by_id</td><td>The kaseya_bms_get_account_by_id action retrieves details of an account in Kaseya BMS using the specified Account ID. This allows users to fetch information about a company or organization stored in the system, such as its name, contact details, and associated records. It is useful for verifying account details, integrating data with other systems, or automating workflows that require account-specific information.</td><td>/crm/accounts/summary/{accountId}</td></tr><tr><td>kaseya_bms_get_contact_by_id</td><td>The kaseya_bms_get_contact_by_id action retrieves details of a specific contact in Kaseya BMS using the provided Contact ID. This allows users to access contact information such as name, email, phone number, and associated account details. It is useful for validating contact records, integrating data with other systems, or automating workflows that require contact-specific information.</td><td>/crm/contacts/summary</td></tr><tr><td>kaseya_bms_get_location_info_by_id</td><td>/crm/accounts/{accountId}/locations/{locationId}</td><td>/crm/accounts/{accountId}/locations/{locationId}</td></tr><tr><td>kaseya_bms_list_users</td><td>The kaseya_bms_list_users action retrieves a list of all users in Kaseya BMS. This provides access to user details such as names, roles, email addresses, and other relevant information. It is useful for managing user accounts and integrating user data into automated workflows.</td><td>/hr/assignees/lookup</td></tr><tr><td>kaseya_bms_list_work_types</td><td>The kaseya_bms_list_work_types action retrieves a list of available work types in Kaseya BMS. Work types define different categories of tasks or services, often used for time tracking and billing purposes. This action is useful for standardizing service classifications, ensuring accurate reporting, and integrating work type data into automated workflows.</td><td>/system/worktypes/lookup</td></tr><tr><td>kaseya_bms_update_ticket</td><td>The kaseya_bms_update_ticket action updates an existing ticket in Kaseya BMS using the provided Ticket ID and other relevant details. Required fields include the Account ID, Location ID, Open Date, Source ID, Type ID, and Ticket ID. Additional fields such as Details, Priority ID, Queue ID, Status ID, Assignee ID, Contact ID, Contract ID, Due Date, Issue Type ID, SLA ID, Subissue Type ID, Title, Use Default Contract, and WorkType ID can be used to modify the ticket as needed. This action is useful for updating ticket information, reassigning tasks, adjusting priorities, and ensuring accurate tracking of automations.</td><td>/servicedesk/tickets/{ticketId}</td></tr><tr><td>kaseya_bms_list_tickets</td><td>The kaseya_bms_list_tickets action retrieves a filtered list of tickets from Kaseya BMS based on various optional criteria. Users can filter tickets by Account, Account IDs, Assignee Name, Contact ID, Contact Name, Created By Name, Ticket Number, Title, and Details. Date-based filters include Completed Date From/To, Created On From/To, Due Date From/To, and Last Activity Update From/To. Additional filters include Exclude Completed, Is Recurring Ticket, Is Scheduled, Issue Type Names, Priority Names, Queue Names, Service Level Agreement Names, Source IDs, Status Names, Subissue Type Names, Ticket Type Names, and Owner ID. This action is useful for retrieving specific tickets based on various criteria to improve tracking, reporting, and automation workflows.</td><td>/servicedesk/tickets/search</td></tr><tr><td>kaseya_bms_get_system_lookup_table_content</td><td>The kaseya_bms_get_system_lookup_table_content action retrieves the contents of a specified system lookup table in Kaseya BMS using the provided Table Name. Lookup tables store predefined data sets used for categorization, configuration, or reference purposes within the system. This action is useful for accessing standardized lists, such as ticket statuses, priority levels, or work types, to support automation and data consistency across workflows</td><td>/system/lookup/{tableName}</td></tr><tr><td>kaseya_bms_get_ticket_by_id</td><td>The kaseya_bms_get_ticket_by_id action retrieves detailed information about a specific ticket in Kaseya BMS using the provided Ticket ID. This action allows users to access ticket details such as status, priority, assignee, description, and related account or contact information. It is useful for reviewing ticket progress, integrating ticket data with other systems, and automating service management workflows.</td><td>servicedesk/tickets/{ticketId}</td></tr><tr><td>kaseya_bms_kaseya_bms_api_request</td><td>The kaseya_bms_kaseya_bms_api_request action allows users to make custom API requests to Kaseya BMS using a specified Request Method (e.g., GET, POST, PUT, DELETE) and URL Path. It supports sending data through the Body or Raw JSON fields, along with optional Headers, Cookies, and Query Params for customization. Users can enable Paginate Request to retrieve multiple pages of results and Follow Redirects if needed. The Require Success Status option ensures that only successful responses are processed. This action provides flexibility for advanced integrations and custom interactions with the Kaseya BMS API beyond predefined endpoints.</td><td>https://&#x3C;your_bms_instance>.kaseya.com/api/v1/</td></tr><tr><td>kaseya_bms_list_accounts</td><td>The kaseya_bms_list_accounts action retrieves a list of accounts from Kaseya BMS. This provides access to company or organization details, such as names, IDs, and other relevant information. It is useful for managing customer records, validating account data, and integrating account information into automated workflows.</td><td>/crm/accounts/summary</td></tr><tr><td>kaseya_bms_list_contact_types</td><td>The kaseya_bms_list_contact_types action retrieves a list of available contact types in Kaseya BMS. Contact types help categorize different kinds of contacts within the system, such as clients, vendors, or internal users. This action is useful for accessing that data and integrating contact type information into automated workflows.</td><td>/system/lookup/ContactType</td></tr><tr><td>kaseya_bms_list_contacts</td><td>The kaseya_bms_list_contacts action retrieves a list of contacts in Kaseya BMS, with optional filtering based on Account ID, Account Name, Email Address, and Is Active status. This action is useful for accessing contact data, managing customer or user records, and integrating contact information into automated workflows.</td><td>/crm/contacts/summary</td></tr><tr><td>kaseya_bms_list_locations_by_account</td><td>The kaseya_bms_list_locations_by_account action retrieves a list of locations associated with a specific account in Kaseya BMS using the provided Account ID. This action is useful for accessing location data related to an account and integrating that information into automated workflows.</td><td>/crm/accounts/{accountId}/locations/lookup</td></tr><tr><td>kaseya_bms_list_priorities</td><td>The kaseya_bms_list_priorities action retrieves a list of priority levels available in Kaseya BMS. This action is useful for accessing priority data, which helps categorize and manage the urgency of tickets in automated workflows.</td><td>/system/priorities/lookup</td></tr><tr><td>kaseya_bms_list_queues</td><td>The kaseya_bms_list_queues action retrieves a list of ticket queues available in Kaseya BMS. This action is useful for accessing queue data, which helps organize and manage ticket assignments within automated workflows.</td><td>/system/queues/lookup</td></tr><tr><td>kaseya_bms_list_roles</td><td>The kaseya_bms_list_roles action retrieves a list of roles available in Kaseya BMS. This action is useful for accessing role data, which defines the permissions and responsibilities of users within the system, and can be integrated into automated workflows for user management and assignment.</td><td>/system/roles/lookup</td></tr><tr><td>kaseya_bms_list_statuses</td><td>The kaseya_bms_list_statuses action retrieves a list of ticket statuses available in Kaseya BMS. This action is useful for accessing status data, which helps categorize and track the progress of tickets, and can be integrated into automated workflows for managing ticket lifecycle and reporting.</td><td>/system/statuses/lookup</td></tr></tbody></table>

