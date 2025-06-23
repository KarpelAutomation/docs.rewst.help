# \[Rewst Master v2] PSA-Datto: Get Company Classification

This workflow retrieves all available company classification types from Datto Autotask PSA, serving as a foundational building block for more complex automation processes that need to categorize or filter clients. MSPs would find this function valuable when automating client onboarding workflows, implementing classification-based automation rules, or synchronizing client categorization between systems. Technically, the workflow executes a single API call to Datto PSA using the "companies\_query\_field\_definitions" action, which returns the standardized classification options configured in your PSA that can then be used in dropdown menus or conditional logic within other workflows. This reusable component eliminates the need to hardcode classification values, ensuring your automations remain current even when PSA configurations change.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of company classifications.

### Key tasks

* **get\_company\_classifications**: Data retrieval

### Jinja example

```jinja
{%- set all_classifications = [] -%}

{%- for item in RESULT.result.fields -%}
  {% if item.isPickList == true and item.name == "classification" %}
    {%- set tmp = item.picklistValues | list -%}
    {% for classifications in tmp %}
      {%- set is_default = classifications.value|string in ORG.VARIABLES[CTX.choose_variable]|d -%}
      {%- set tmp2 = all_classifications.append({"name": classifications.label, "id": classifications.value, "default": is_default}) -%}
    {% endfor %}
  {% else %}
  {% endif %}
{% endfor %}

{{- all_classifications | list -}}

```

This is used in publishing 'all\_classifications'
