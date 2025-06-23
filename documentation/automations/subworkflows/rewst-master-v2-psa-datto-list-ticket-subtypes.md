# \[Rewst Master v2] PSA-Datto: List Ticket Subtypes

This workflow retrieves all available ticket subtypes from Datto Autotask PSA, serving as a critical reference component for any automation that needs to create, route, or categorize tickets programmatically. MSPs will find this building block invaluable when developing automated ticket creation from RMM alerts, implementing intelligent ticket routing based on issue type, or synchronizing ticket classifications between different platforms. Technically, it executes a simple query to the Datto PSA API that returns all defined ticket subtypes and their associated picklist values, making these values available as variables for other workflows. This standardized method for accessing ticket classification data ensures that downstream automations always use valid subtype values, preventing errors when integrating with the PSA.

This workflow contains 1 task.

### Inputs

* **ticket\_type** - string
* **choose\_variable** - string

### Outputs

* **options**: Array of ticket subtype objects.

### Key tasks

* **list\_ticket\_subtypes**: Datto Autotask PSA integration: List Ticket Fields with Picklists

### Jinja example

```jinja
{%- set all_subissues = [] -%}

{%- for item in CTX.list_all_types -%}

{%- if CTX.ticket_type|d == item.type_id|d -%}

{%- set is_default = item.value|d == ORG.VARIABLES[CTX.choose_variable]|d -%}

{%- set _ = all_subissues.append({"label":item.subType_name, "id":item.subType_id, "default":is_default}) -%}

{% endif %}

{%- endfor -%}

{{- all_subissues -}}
```

This is used in publishing the ticket\_subtypes data alias.
