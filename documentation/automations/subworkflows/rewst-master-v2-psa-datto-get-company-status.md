# \[Rewst Master v2] PSA-Datto: Get Company Status

This workflow pulls all company status values from Datto PSA with a single API call, making it a key reference point for automations that depend on client status. MSPs can use it to filter clients, trigger conditional actions, or validate status fields before updates. By returning standardized status options, it avoids hardcoding and keeps automations flexible, even when custom statuses are added, ensuring reliable, status-aware workflows across your PSA environment.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of company statuses.

### Key tasks

* **get\_company\_statuses**: Data retrieval

### Jinja example

```jinja
{%- set all_company_statuses = [] -%}

{%- for item in RESULT.result.fields -%}
  {% if item.isPickList == true and item.name == "companyType" %}
    {%- set tmp = item.picklistValues | list -%}
    {% for companystatuses in tmp %}
      {%- set is_default = companystatuses.value|string in ORG.VARIABLES[CTX.choose_variable]|d -%}
      {%- set tmp2 = all_company_statuses.append({"name": companystatuses.label, "id": companystatuses.value, "default": is_default}) -%}
    {% endfor %}
  {% else %}
  {% endif %}
{% endfor %}

{{- all_company_statuses | list -}}

```

This is used in publishing all\_company\_statuses
