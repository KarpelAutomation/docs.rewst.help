# Actions & Endpoints

## Introduction

The Freshdesk Integration with Rewst delivers a robust set of actions and endpoints for interacting with Freshdesk. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Freshdesk Integration:

* [**Agents**](actions-and-endpoints.md#agents)
* [**Companies**](actions-and-endpoints.md#companies)
* [**Contacts**](actions-and-endpoints.md#contacts)
* [**Conversations**](actions-and-endpoints.md#conversations)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Groups**](actions-and-endpoints.md#groups)
* [**Roles**](actions-and-endpoints.md#roles)
* [**Skills**](actions-and-endpoints.md#skills)
* [**Tickets**](actions-and-endpoints.md#tickets)
* [**Time Entries**](actions-and-endpoints.md#time-entries)

## Actions

### Agents

{% swagger baseUrl="<example>.freshdesk.com" path="/agents" method="get" summary="List Agents" %}
{% swagger-description %}
List all agents (users) matching the supplied parameters
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/agents/{agent_id}" method="get" summary="Get Agent" %}
{% swagger-description %}
Get an agent (user) by ID
{% endswagger-description %}
{% endswagger %}

### Companies

{% swagger baseUrl="<example>.freshdesk.com" path="/companies" method="get" summary="List Companies" %}
{% swagger-description %}
List all companies
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/companies/autocomplete" method="get" summary="Search Companies" %}
{% swagger-description %}
Search for a company using its name
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/search/companies" method="get" summary="Filter Companies" %}
{% swagger-description %}
(Beta) Use custom company fields that you have created in your account to filter through the companies and get a list of companies matching the specified company fields
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/companies/{company_id}" method="get" summary="Get Company" %}
{% swagger-description %}
Get a company by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/companies" method="post" summary="Create Company" %}
{% swagger-description %}
Adds a new company in Freshdesk
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/companies/{company_id}" method="put" summary="Update Company" %}
{% swagger-description %}
Updates a company by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/companies/{company_id}" method="delete" summary="Delete Company" %}
{% swagger-description %}
Deletes a company by ID, once deleted a company cannot be restored. Deleting a company does not delete the contacts that are associated with it.
{% endswagger-description %}
{% endswagger %}

### Contacts

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts" method="get" summary="List Contacts" %}
{% swagger-description %}
List all contacts, use filters to view only specific contacts
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts/autocomplete" method="get" summary="Search Contacts" %}
{% swagger-description %}
Search for a contact using their name
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/search/contacts" method="get" summary="Filter contacts" %}
{% swagger-description %}
(Beta) Use custom contact fields that you have created in your account to filter through the contacts and get a list of contacts matching the specified contact fields
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts/{contact_id}" method="get" summary="Get Contact" %}
{% swagger-description %}
Get a contact by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts" method="post" summary="Create Contact" %}
{% swagger-description %}
Adds a new contact record
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts/{contact_id}" method="put" summary="Update Contact" %}
{% swagger-description %}
Update a contact by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts/{contact_id}" method="delete" summary="Soft Delete Contact" %}
{% swagger-description %}
Soft delete a contact by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts/{contact_id}/hard_delete" method="delete" summary="Permanently Delete Contact" %}
{% swagger-description %}
Hard delete a contact to completely remove it from the portal. Can be used for GDPR compliance.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts/{contact_id}/restore" method="put" summary="Restore Contact" %}
{% swagger-description %}
Used to restore contacts that have been soft-deleted from a Freshdesk account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts/{contact_id}/send_invite" method="put" summary="Send Invite to a Contact" %}
{% swagger-description %}
Used to send an activation email to an existing contact for email verification. Once the activation is complete, these contacts can log in to the customer portal using their password and check the status of their tickets.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/contacts/{contact_id}/make_agent" method="put" summary="Convert Contact to Agent" %}
{% swagger-description %}
Makes a new Agent for an existing Contact
{% endswagger-description %}
{% endswagger %}

### Conversations

{% swagger baseUrl="<example>.freshdesk.com" path="/tickets/{ticket_id}/reply" method="post" summary="Create Reply" %}
{% swagger-description %}
Create a reply to a ticket or conversation
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/tickets/{ticket_id}/notes" method="post" summary="Create Note" %}
{% swagger-description %}
Create a note for a ticket
{% endswagger-description %}
{% endswagger %}

### Generic Request

{% swagger baseUrl="<example>.freshdesk.com" path="/<url_path>" method="get" summary="Freshdesk API Request" %}
{% swagger-description %}
Generic action for making authenticated requests against the Freshdesk API
{% endswagger-description %}
{% endswagger %}

### Groups

{% swagger baseUrl="<example>.freshdesk.com" path="/groups" method="get" summary="List Groups" %}
{% swagger-description %}
List all groups
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/groups/{group_id}" method="get" summary="Get Group" %}
{% swagger-description %}
Get a single group by ID
{% endswagger-description %}
{% endswagger %}

### Roles

{% swagger baseUrl="<example>.freshdesk.com" path="/roles" method="get" summary="List Roles" %}
{% swagger-description %}
List all roles
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/roles/{role_id}" method="get" summary="Get Role" %}
{% swagger-description %}
Get a single role by ID
{% endswagger-description %}
{% endswagger %}

### Skills

{% swagger baseUrl="<example>.freshdesk.com" path="/skills" method="get" summary="List Skills" %}
{% swagger-description %}
List all skills
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/skills/{skill_id}" method="get" summary="Get Skill" %}
{% swagger-description %}
Get a single skill by ID
{% endswagger-description %}
{% endswagger %}

### Tickets

{% swagger baseUrl="<example>.freshdesk.com" path="/tickets" method="post" summary="Create Ticket" %}
{% swagger-description %}
Create Freshdesk Ticket
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/tickets" method="get" summary="List Tickets" %}
{% swagger-description %}
List Freshdesk Tickets
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/tickets/{ticket_id}" method="get" summary="Get Ticket" %}
{% swagger-description %}
Get Freshdesk Ticket
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/tickets/{ticket_id}" method="put" summary="Update Ticket" %}
{% swagger-description %}
Update Freshdesk Ticket
{% endswagger-description %}
{% endswagger %}

### Time Entries

{% swagger baseUrl="<example>.freshdesk.com" path="/time_entries" method="get" summary="List Time Entries" %}
{% swagger-description %}
List all time entries created by agents. Use filters to view only specific time entries.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/tickets/{ticket_id}/time_entries" method="post" summary="Create a Time Entry" %}
{% swagger-description %}
Adds a new time entry to a given ticket
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/time_entries/{time_entry_id}" method="put" summary="Update Time Entry" %}
{% swagger-description %}
Update a single time entry by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/time_entries/{time_entry_id}/toggle_timer" method="put" summary="Toggle Time Entry Timer" %}
{% swagger-description %}
Start or stop the timer for a given time entry
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.freshdesk.com" path="/time_entries/{time_entry_id}" method="delete" summary="Delete Time Entry" %}
{% swagger-description %}
Permanently deletes a given time entry, note that once deleted time entries cannot be restored.
{% endswagger-description %}
{% endswagger %}
