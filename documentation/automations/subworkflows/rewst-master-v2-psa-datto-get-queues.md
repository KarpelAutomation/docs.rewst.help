# \[Rewst Master v2] PSA-Datto: Get Queues

This workflow retrieves queue information from Datto PSA, serving as a critical building block for more complex ticket routing and management automations. MSPs can leverage this function when implementing automated ticket assignment processes, workload balancing between teams, or creating custom reporting dashboards that provide visibility into queue status and performance. Technically, the workflow executes a simple API call to Datto PSA's resource role queues endpoint, retrieving the field definitions and structure of available queues, which other workflows can then consume to make intelligent routing decisions or gather queue metrics for service delivery improvements.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of queues.

### Key tasks

* **datto\_psa\_resource\_role\_queues\_query\_field\_definitions**: Datto Autotask PSA integration: resource\_role\_queues\_query\_field\_definitions

### Jinja Example

```jinja
{%- set all_queues = [] -%}

{%- for item in RESULT.result.fields -%}
  {% if item.isPickList == true %}
    {%- set tmp = item.picklistValues | list -%}
    {% for queues in tmp %}
      {%- set is_default = queues.value|int == ORG.VARIABLES[CTX.choose_variable]|d|int -%}
      {%- set tmp2 = all_queues.append({"name": queues.label, "id": queues.value, "default": is_default}) -%}
    {% endfor %}
  {% else %}
  {% endif %}
{% endfor %}

{{- all_queues | list -}}

```

This is used to populate the queues data alias.
