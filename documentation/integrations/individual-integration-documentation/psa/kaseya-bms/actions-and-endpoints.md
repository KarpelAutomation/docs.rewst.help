# Actions & Endpoints

## Introduction

The Kaseya BMS Integration with Rewst delivers a robust set of actions and endpoints for interacting with Kaseya BMS. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Kaseya BMS Integration:

* [**Accounts**](actions-and-endpoints.md#accounts)
* [**Contacts**](actions-and-endpoints.md#contacts)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Lookups**](actions-and-endpoints.md#lookups)
* [**Service**](actions-and-endpoints.md#service)
* [**Statuses**](actions-and-endpoints.md#statuses)
* [**Users**](actions-and-endpoints.md#users)

## Actions

### Accounts

{% swagger baseUrl="api.<example>.kaseya.com" path="/crm/accounts/summary" method="get" summary="List Accounts" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/crm/accounts/summary/{accountId}" method="get" summary="Get Account by ID" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/crm/accounts/{accountId}/locations/lookup" method="get" summary="List Locations by Account" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Contacts

{% swagger baseUrl="api.<example>.kaseya.com" path="/system/lookup/ContactType" method="get" summary="List Contact Types" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/crm/accounts/summary" method="get" summary="List Contacts" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Generic Request

{% swagger baseUrl="api.<example>.kaseya.com" path="/<url_path>" method="post" summary="Kaseya BMS API Request" %}
{% swagger-description %}
Generic action for making authenticated requests against the Kaseya BMS API
{% endswagger-description %}
{% endswagger %}

### Lookups

{% swagger baseUrl="api.<example>.kaseya.com" path="/system/lookup/{tableName}" method="get" summary="Get System Lookup Table Content" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/system/tenantlookup/{tableName}" method="get" summary="Get Tenant Lookup Table Content" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Service

{% swagger baseUrl="api.<example>.kaseya.com" path="/system/queues/lookup" method="get" summary="List Queues" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/system/priorities/lookup" method="get" summary="List Priorities" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/servicedesk/tickets/search" method="post" summary="List Tickets" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="servicedesk/tickets/{ticketId}" method="get" summary="Get Ticket by ID" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/servicedesk/tickets" method="post" summary="Create Ticket" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/servicedesk/tickets/{ticketId}/notes" method="post" summary="Create Ticket Note" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/servicedesk/tickets/{ticketId}/timelogs" method="post" summary="Create Ticket Time Entry" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/servicedesk/tickets/{ticketId}" method="patch" summary="Update Ticket" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Statuses

{% swagger baseUrl="api.<example>.kaseya.com" path="/system/statuses/lookup" method="get" summary="List Statuses" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Users

{% swagger baseUrl="api.<example>.kaseya.com" path="/system/worktypes/lookup" method="get" summary="List Work Types" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/system/roles/lookup" method="get" summary="List Roles" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.<example>.kaseya.com" path="/hr/assignees/lookup" method="get" summary="List Users" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}
