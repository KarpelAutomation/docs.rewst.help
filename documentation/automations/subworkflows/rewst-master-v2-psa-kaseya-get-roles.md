# \[Rewst Master v2] PSA-Kaseya: Get Roles

This workflow retrieves all user roles from Kaseya BMS, making it a key data source for role-based automations. MSPs can use it for onboarding techs, auditing permissions, routing tickets by role, or syncing access controls across systems. It runs a simple API call to pull role data and feeds it into other workflows to help ensure consistency, while making updates easier when role structures change.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of roles.

### Key tasks

* **kaseya\_bms\_list\_roles**: Kaseya BMS integration: List Roles

### Jinja example

```jinja
{{
    [
        {
        "id": role.id,
        "label": role.name,
        "default": true if role.id == ORG.VARIABLES[CTX.choose_variable]|d|int else false
        }
        for role in TASKS.kaseya_bms_list_roles.result.result
    ] | sort(attribute="label") | unique(attribute="id")
}}
```

This is used for defining the role's data alias.
