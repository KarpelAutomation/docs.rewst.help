# \[Rewst Master v2] PSA-Kaseya: Get Business Type

This workflow pulls business type classifications from Kaseya BMS lookup tables, giving automations the ability to make decisions based on client industry. MSPs can use it to apply client-specific SLAs, tailor onboarding, enforce industry-based policies, or customize billing. It runs a single API call to fetch standardized business type data, making it easy for other workflows to use. This helps ensure consistent client categorization across automations, especially when serving a diverse client base.

This workflow contains 1 tasks.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of business types.

### Key tasks

* **kaseya\_bms\_get\_tenant\_lookup\_table\_content**: Data retrieval

### Jinja examples

```jinja
{{
    [
        {
        "id": business_type.id,
        "name": business_type.name,
        "default": true if business_type.id|string in ORG.VARIABLES[CTX.choose_variable]|d else false
        }
        for business_type in TASKS.kaseya_bms_get_tenant_lookup_table_content.result.result
        if business_type.isActive == true
    ] | sort(attribute="name") | unique(attribute="id")
}}
```

This is used to define business\_type data alias.
