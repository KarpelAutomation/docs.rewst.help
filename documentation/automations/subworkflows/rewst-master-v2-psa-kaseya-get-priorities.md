# \[Rewst Master v2] PSA-Kaseya: Get Priorities

This workflow pulls all ticket priority levels from Kaseya BMS with a single API call, making it a key component for automations that depend on setting or filtering by priority. MSPs can use it to assign priorities when creating tickets, route them based on urgency, or trigger escalations automatically. It uses the List Priorities action to fetch all configurations by ID, helping ensure consistent, flexible handling without hardcoding values that might change later.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of priorities.

### Key tasks

* **kaseya\_bms\_list\_priorities**: Kaseya BMS integration: List Priorities

### Jinja example

```jinja
{{
    [
        {
        "id": priority.id,
        "name": priority.name,
        "default": true if priority.id == ORG.VARIABLES[CTX.choose_variable]|d|int else false
        }
        for priority in TASKS.kaseya_bms_list_priorities.result.result
    ] | sort(attribute="name") | unique(attribute="id")
}}
```

This is used to define the priorities data alias.
