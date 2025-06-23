# \[Rewst Master v2] PSA-Datto: List Ticket Types

This workflow retrieves all available ticket types and their definitions from Datto Autotask PSA, serving as a fundamental building block for more complex automation workflows that need to reference or manipulate ticket categories. MSPs would find this valuable when creating ticket automation that requires type validation, implementing conditional workflows based on ticket classifications, or standardizing ticket categorization across client organizations. Technically, the workflow executes a single API call to Datto PSA using the "tickets\_query\_field\_definitions" action, which fetches field definitions including the picklist values containing available ticket types and their configurations. This data becomes essential for downstream automations that need to programmatically create, update, or route tickets with the correct type designation, ensuring data consistency and proper ticket handling in your PSA system.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of ticket type objects.

### Key tasks

* **list\_ticket\_types**: Datto Autotask PSA integration: List Ticket Fields with Picklists

### Jinja example

```jinja
{%- set all_issues = [] -%}

{%- for item in TASKS.list_ticket_types.result.result.fields -%}
  {% if item.isPickList == true and item.name == "issueType" %}
    {%- set tmp = item.picklistValues | list -%}
    {% for issues in tmp %}
      {%- set is_default = issues.value in ORG.VARIABLES[CTX.choose_variable]|d -%}
      {%- set tmp2 = all_issues.append({"label": issues.label, "id": issues.value, "default": is_default}) -%}
    {% endfor %}
  {% else %}
  {% endif %}
{% endfor %}

{{- all_issues | list -}}
```

This is used in publishing 'ticket\_types'.
