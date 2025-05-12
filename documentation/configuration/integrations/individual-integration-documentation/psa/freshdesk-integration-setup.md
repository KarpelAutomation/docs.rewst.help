# Freshdesk integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Freshdesk integration do?

Our Freshdesk integration enables the automation of PSA tasks. Use the Freshdesk API within Rewst workflows to perform actions such as create tickets, sync clients, and manage opportunities.

## Set up the Freshdesk integration

### Set up steps in Freshdesk

1. Log in to your Freshdesk Support Portal.
2. Click your **profile picture** on the top right corner of your portal.
3. Navigate to the **Profile Settings** page.
4. Find your API key below the change password section.
5. Copy the API key somewhere secure. You'll need it for further steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Freshdesk` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-05 at 3.18.25 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from Freshdesk into its relevant field:
   1. **Domain:** Freshdesk domain, i.e. the domain in `domain.freshdesk.com`
   2. **API Key**
5. Click **Save Configuration.**
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;



## Actions and endpoints

Freshdesk's own API documentation can be found [here](https://developer.freshdesk.com/api/#authentication).&#x20;

| Category            | Action                     | Description                                                                                                                                                                                                                   |
| ------------------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Agents**          | List Agents                | List all agents (users) matching the supplied parameters                                                                                                                                                                      |
| **Agents**          | Get Agent                  | Get an agent (user) by ID                                                                                                                                                                                                     |
| **Companies**       | List Companies             | List all companies                                                                                                                                                                                                            |
| **Companies**       | Search Companies           | Search for a company using its name                                                                                                                                                                                           |
| **Companies**       | Filter Companies           | (Beta) Use custom company fields that you have created in your account to filter through the companies and get a list of companies matching the specified company fields                                                      |
| **Companies**       | Get Company                | Get a company by ID                                                                                                                                                                                                           |
| **Companies**       | Create Company             | Adds a new company in Freshdesk                                                                                                                                                                                               |
| **Companies**       | Update Company             | Updates a company by ID                                                                                                                                                                                                       |
| **Companies**       | Delete Company             | Deletes a company by ID, once deleted a company cannot be restored. Deleting a company does not delete the contacts that are associated with it.                                                                              |
| **Contacts**        | List Contacts              | List all contacts, use filters to view only specific contacts                                                                                                                                                                 |
| **Contacts**        | Search Contacts            | Search for a contact using their name                                                                                                                                                                                         |
| **Contacts**        | Filter contacts            | (Beta) Use custom contact fields that you have created in your account to filter through the contacts and get a list of contacts matching the specified contact fields                                                        |
| **Contacts**        | Get Contact                | Get a contact by ID                                                                                                                                                                                                           |
| **Contacts**        | Create Contact             | Adds a new contact record                                                                                                                                                                                                     |
| **Contacts**        | Update Contact             | Update a contact by ID                                                                                                                                                                                                        |
| **Contacts**        | Soft Delete Contact        | Soft delete a contact by ID                                                                                                                                                                                                   |
| **Contacts**        | Permanently Delete Contact | Hard delete a contact to completely remove it from the portal. Can be used for GDPR compliance.                                                                                                                               |
| **Contacts**        | Restore Contact            | Used to restore contacts that have been soft-deleted from a Freshdesk account                                                                                                                                                 |
| **Contacts**        | Send Invite to a Contact   | Used to send an activation email to an existing contact for email verification. Once the activation is complete, these contacts can log in to the customer portal using their password and check the status of their tickets. |
| **Contacts**        | Convert Contact to Agent   | Makes a new Agent for an existing Contact                                                                                                                                                                                     |
| **Conversations**   | Create Reply               | Create a reply to a ticket or conversation                                                                                                                                                                                    |
| **Conversations**   | Create Note                | Create a note for a ticket                                                                                                                                                                                                    |
| **Generic Request** | Freshdesk API Request      | Generic action for making authenticated requests against the Freshdesk API                                                                                                                                                    |
| **Groups**          | List Groups                | List all groups                                                                                                                                                                                                               |
| **Groups**          | Get Group                  | Get a single group by ID                                                                                                                                                                                                      |
| **Roles**           | List Roles                 | List all roles                                                                                                                                                                                                                |
| **Roles**           | Get Role                   | Get a single role by ID                                                                                                                                                                                                       |
| **Skills**          | List Skills                | List all skills                                                                                                                                                                                                               |
| **Skills**          | Get Skill                  | Get a single skill by ID                                                                                                                                                                                                      |
| **Tickets**         | Create Ticket              | Create Freshdesk Ticket                                                                                                                                                                                                       |
| **Tickets**         | List Tickets               | List Freshdesk Tickets                                                                                                                                                                                                        |
| **Tickets**         | Get Ticket                 | Get Freshdesk Ticket                                                                                                                                                                                                          |
| **Tickets**         | Update Ticket              | Update Freshdesk Ticket                                                                                                                                                                                                       |
| **Time Entries**    | List Time Entries          | List all time entries created by agents. Use filters to view only specific time entries.                                                                                                                                      |
| **Time Entries**    | Create a Time Entry        | Adds a new time entry to a given ticket                                                                                                                                                                                       |
| **Time Entries**    | Update Time Entry          | Update a single time entry by ID                                                                                                                                                                                              |
| **Time Entries**    | Toggle Time Entry Timer    | Start or stop the timer for a given time entry                                                                                                                                                                                |
| **Time Entries**    | Delete Time Entry          | Permanently deletes a given time entry, note that once deleted time entries cannot be restored.                                                                                                                               |
