# Actions & Endpoints

## Introduction

The Datto PSA Integration with Rewst delivers a robust set of actions and endpoints for interacting with Datto PSA. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Datto PSA Integration:

* [**Api Version**](actions-and-endpoints.md#api-version)
* [**Companies**](actions-and-endpoints.md#companies)
* [**Configurationitems**](actions-and-endpoints.md#configurationitems)
* [**Contacts**](actions-and-endpoints.md#contacts)
* [**Contracts**](actions-and-endpoints.md#contracts)
* [**Documents**](actions-and-endpoints.md#documents)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Legacy Actions**](actions-and-endpoints.md#legacy-actions)
* [**Phases Child**](actions-and-endpoints.md#phases-child)
* [**Projects**](actions-and-endpoints.md#projects)
* [**Resources**](actions-and-endpoints.md#resources)
* [**Surveys**](actions-and-endpoints.md#surveys)
* [**Tasks Child**](actions-and-endpoints.md#tasks-child)
* [**Ticket Categories**](actions-and-endpoints.md#ticket-categories)
* [**Ticket Notes**](actions-and-endpoints.md#ticket-notes)
* [**Ticket Notes Child**](actions-and-endpoints.md#ticket-notes-child)
* [**Tickets**](actions-and-endpoints.md#tickets)
* [**Time Entries**](actions-and-endpoints.md#time-entries)
* [**Webhook Logs**](actions-and-endpoints.md#webhook-logs)

## Actions

### Api Version

{% swagger baseUrl="<example>.com" path="/VersionInformation" method="get" summary="API Version Info" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Companies

{% swagger baseUrl="<example>.com" path="/V1.0/Companies/query" method="post" summary="List Companies by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Companies/query" method="post" summary="List Companies by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Companies/{id}" method="get" summary="Get Company v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Companies" method="post" summary="Create Company v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Companies" method="patch" summary="Update Company v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/CompanyWebhooks/query" method="post" summary="List Company Webhooks" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/CompanyWebhooks/{id}" method="get" summary="Get Company Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/CompanyWebhooks" method="post" summary="Create Company Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/CompanyWebhooks" method="patch" summary="Update Company Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/CompanyWebhooks/{id}" method="delete" summary="Delete Company Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/CompanyWebhookFields/query" method="post" summary="List Company Webhook Fields" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Configurationitems

{% swagger baseUrl="<example>.com" path="/V1.0/ConfigurationItemWebhooks/query" method="post" summary="List Configuration Item Webhooks" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ConfigurationItemWebhooks/{id}" method="get" summary="Get Configuration Item Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ConfigurationItemWebhooks" method="post" summary="Create Configuration Item Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ConfigurationItemWebhooks" method="patch" summary="Update Configuration Item Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ConfigurationItemWebhooks/{id}" method="delete" summary="Delete Configuration Item Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Contacts

{% swagger baseUrl="<example>.com" path="/V1.0/ContactWebhooks/query" method="post" summary="List Contact Webhooks" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ContactWebhooks/{id}" method="get" summary="Get Contact Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ContactWebhooks" method="post" summary="Create Contact Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ContactWebhooks" method="patch" summary="Update Contact Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ContactWebhooks/{id}" method="delete" summary="Delete Contact Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Contacts/query" method="post" summary="List Contacts by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Contacts/query" method="post" summary="List Contacts by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Contacts/{contact_id}" method="get" summary="Get Contact v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Companies/{company_id}/Contacts" method="get" summary="List Company Contacts v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Companies/{company_id}/Contacts" method="post" summary="Create Contact v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Companies/{company_id}/Contacts" method="patch" summary="Update Contact v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Contracts

{% swagger baseUrl="<example>.com" path="/V1.0/Contracts/query" method="post" summary="List Contracts by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Contracts/query" method="post" summary="List Contracts by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Contracts/{id}" method="get" summary="Get Contract v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Contracts" method="post" summary="Create Contract v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Contracts" method="patch" summary="Update Contract v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/ContractServiceAdjustments" method="post" summary="Adjust Contract Services v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Contracts/{contractId}/ServiceAdjustments" method="post" summary="Adjust Child Contract Services v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Documents

{% swagger baseUrl="<example>.com" path="/V1.0/Documents/query" method="post" summary="List Documents by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Documents/query" method="post" summary="List Documents by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Documents/{id}" method="get" summary="Get Document v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/DocumentCategories/query" method="post" summary="List Document Categories by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/DocumentAttachments/query" method="post" summary="List Document Attachments by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/DocumentAttachments/query" method="post" summary="List Document Attachments by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/DocumentAttachments/{id}" method="get" summary="Get Document Attachment v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Documents/{document_id}/attachments" method="get" summary="List Attachments on Document v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Documents/{document_id}/attachments" method="post" summary="Create Attachment on Document v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Documents/{document_id}/attachments/{attachment_id}" method="get" summary="Get Attachment on Document v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Generic Request

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="Datto PSA API Request" %}
{% swagger-description %}
Generic action for making authenticated requests against the Datto PSA API
{% endswagger-description %}
{% endswagger %}

### Legacy Actions

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="roles_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="roles_query_item" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="deleted_ticket_activity_logs_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="contact_billing_product_associations_child_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="delete" summary="contact_billing_product_associations_child_delete_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="resource_role_queues_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="resource_role_queues_query_entity_information" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="resource_role_queues_query_field_definitions" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="ticket_attachments_child_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="ticket_categories_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="List Contacts" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="contacts_query_item" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contacts_query_count" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="time_entries_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="time_entries_query_item" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="delete" summary="time_entries_delete_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="resource_roles_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="resources_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="put" summary="time_entries_update_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="time_entries_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="patch" summary="time_entries_patch_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="projects_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="projects_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="List Companies" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="Get Company" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="Get Company Count" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="patch" summary="Update Company (PATCH)" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="resources_query_field_definitions" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="companies_query_field_definitions" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="company_contacts_child_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="company_contacts_child_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="patch" summary="Update Contact" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="services_query_item" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="ticket_checklist_items_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="tasks_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="company_locations_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="company_site_configurations_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="ticket_checklist_items_child_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="configuration_items_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="patch" summary="configuration_items_patch_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="ticket_notes_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="ticket_notes_child_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="Create Ticket Note" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="List Tickets" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="tickets_query_item" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="List Tickets by Search Query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="put" summary="tickets_update_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="Create Service Ticket" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="patch" summary="Update Service Ticket" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="List Ticket Fields with Picklists" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="configuration_item_types_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="ticket_secondary_resources_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="configuration_item_types_query_user_defined_field_definitions" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="List Contracts" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contracts_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="patch" summary="contracts_patch_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contract_service_adjustments_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contract_service_adjustments_child_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contract_service_bundle_adjustments_create_entity" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contract_service_bundles_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="List Service Bundles on Contract" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contract_service_bundle_units_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contract_service_bundle_units_query_count" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="contract_service_bundle_units_child_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="contract_service_bundle_units_child_query_item" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contract_services_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="get" summary="contract_services_query_item" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/<url_path>" method="post" summary="contract_service_units_query" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Phases Child

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{projectId}/Phases" method="get" summary="List Phases on Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{projectId}/Phases" method="patch" summary="Update Phase on Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{projectId}/Phases" method="post" summary="Create Phase on Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{projectId}/Phases/{phaseId}" method="get" summary="Get Phase on Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Projects

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/query" method="post" summary="List Projects by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/query" method="post" summary="List Projects by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{id}" method="get" summary="Get Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects" method="post" summary="Create Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects" method="patch" summary="Update Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Resources

{% swagger baseUrl="<example>.com" path="/V1.0/Resources/query" method="post" summary="List Resources by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Resources/query" method="post" summary="List Resources by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Resources/{id}" method="get" summary="Get Resource v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Surveys

{% swagger baseUrl="<example>.com" path="/V1.0/Surveys/query" method="post" summary="List Surveys by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Surveys/query" method="post" summary="List Surveys by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Surveys/{id}" method="get" summary="Get Survey v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Tasks Child

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{projectId}/Tasks" method="get" summary="List Tasks on Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{projectId}/Tasks" method="post" summary="Create Task on Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{projectId}/Tasks" method="patch" summary="Update Task on Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Projects/{projectId}/Tasks/{taskId}" method="get" summary="Get Task on Project v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Ticket Categories

{% swagger baseUrl="<example>.com" path="/V1.0/TicketCategories/query" method="post" summary="List Ticket Categories by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketCategories/query" method="post" summary="List Ticket Categories by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketCategories/{id}" method="get" summary="Get Ticket Category v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketCategories" method="patch" summary="Update Ticket Category v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Ticket Notes

{% swagger baseUrl="<example>.com" path="/V1.0/TicketNotes/query" method="post" summary="List Ticket Notes by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketNotes/query" method="post" summary="List Ticket Notes by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketNotes/{id}" method="get" summary="Get Ticket Note v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketNoteWebhooks/query" method="post" summary="List Ticket Note Webhooks" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketNoteWebhooks/{id}" method="get" summary="Get Ticket Note Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketNoteWebhooks" method="post" summary="Create Ticket Note Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketNoteWebhooks" method="patch" summary="Update Ticket Note Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketNoteWebhooks/{id}" method="delete" summary="Delete Ticket Note Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Ticket Notes Child

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets/{ticketId}/Notes" method="get" summary="List Notes on Ticket v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets/{parentId}/Notes" method="post" summary="Create Ticket Note v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets/{ticketId}/Notes" method="patch" summary="Update Ticket Note v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets/{ticketId}/Notes/{noteId}" method="get" summary="Get Child Ticket Note v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Tickets

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets/query" method="post" summary="List Tickets by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets/query" method="post" summary="List Tickets by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets/{id}" method="get" summary="Get Ticket v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets" method="post" summary="Create Ticket v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/Tickets" method="patch" summary="Update Ticket v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketWebhooks/query" method="post" summary="List Ticket Webhooks" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketWebhooks/{id}" method="get" summary="Get Ticket Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketWebhooks" method="post" summary="Create Ticket Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketWebhooks" method="patch" summary="Update Ticket Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TicketWebhooks/{id}" method="delete" summary="Delete Ticket Webhook" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Time Entries

{% swagger baseUrl="<example>.com" path="/V1.0/TimeEntries/query" method="post" summary="List Time Entries by Search v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TimeEntries/query" method="post" summary="List Time Entries by Filter v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TimeEntries/{id}" method="get" summary="Get Time Entry v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TimeEntries/{id}" method="delete" summary="Delete Time Entry v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TimeEntries" method="post" summary="Create Time Entry v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/TimeEntries" method="patch" summary="Update Time Entry v2" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

### Webhook Logs

{% swagger baseUrl="<example>.com" path="/V1.0/WebhookEventErrorLogs/query" method="post" summary="List Webhook Event Error Logs" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/WebhookEventErrorLogs/{id}" method="get" summary="Get Webhook Event Error Log" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<example>.com" path="/V1.0/WebhookEventErrorLogs/{id}" method="delete" summary="Delete Webhook Event Error Log" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}
