# \[Rewst Master v2] PSA-Datto: Get Priorities

This workflow retrieves the standardized list of ticket priorities from Datto Autotask PSA, serving as a fundamental building block that other automations can leverage when creating, updating, or processing tickets. MSPs will find this function valuable when building ticket creation workflows with conditional priority assignment, implementing SLA-based escalation processes, or ensuring consistent priority values across integration points with other tools. Technically, the workflow executes a single API call to Datto Autotask PSA using the "List Ticket Fields with Picklists" action, retrieving the current priority options configured in your PSA. By centralizing this function, MSPs can maintain consistent priority handling across their entire automation ecosystem while easily adapting if priority configurations change in Autotask.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of priorities.

### Key tasks

* **get\_priorities**: Data retrieval

### Jinja example

```jinja
{%- set all_priorities = [] -%}

{%- for item in RESULT.result.fields -%}
  {% if item.isPickList == true and item.name == "priority" %}
    {%- set tmp = item.picklistValues | list -%}
    {% for priority in tmp %}
      {%- set is_default = priority.value|int == ORG.VARIABLES[CTX.choose_variable]|d|int -%}
      {%- set tmp2 = all_priorities.append({"name": priority.label, "id": priority.value, "default": is_default}) -%}
    {% endfor %}
  {% else %}
  {% endif %}
{% endfor %}

{{- all_priorities | list -}}
```

This is used in publishing the all\_priorities data alias.
