# \[Rewst Master v2] PSA-Kaseya: Get Contact Types

This workflow retrieves all contact type classifications from Kaseya BMS, serving as a critical reference data component for larger client management automations. MSPs can leverage this building block when developing client onboarding processes, creating custom forms that require contact type selections, or building integrations that synchronize contact data between systems. Technically, the workflow executes a single API call to Kaseya BMS that returns the standardized contact type identifiers and descriptions available in your instance. This fundamental data retrieval function enables consistent contact categorization across your automation ecosystem, ensuring contacts are properly classified as primary, billing, technical, or other custom types your organization utilizes.

This workflow contains 1 tasks.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of contact types.

### Key tasks

* **kaseya\_bms\_list\_contact\_types**: Kaseya BMS integration: List Contact Types

### Jinja example

```jinja
{{
    [
        {
        "id": contact_type.id,
        "name": contact_type.name,
        "default": true if contact_type.id|string in ORG.VARIABLES[CTX.choose_variable]|d else false
        }
        for contact_type in TASKS.kaseya_bms_list_contact_types.result.result
        if contact_type.isActive == true
    ] | sort(attribute="name") | unique(attribute="id")
}}
```

This is used for building the contact\_types data alias.
