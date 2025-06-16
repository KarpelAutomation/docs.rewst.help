# \[Rewst Master v2] PSA-Halo: Get Statuses

This workflow pulls all ticket status configurations from Halo PSA, making it easy for other automations to use them without manual lookups. MSPs can use it for ticket routing, escalations, SLA tracking, or syncing with external systems. It runs one API call to get a list of statuses, which can be referenced by ID or name, helping avoid hardcoding and making automations easier to maintain as PSA setups evolve.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of statuses.

### Key tasks

* **list\_statuses**: HaloPSA integration: List Statuses

### Jinja examples

#### Example 1

```jinja
{{ [
    {
        "id": statuses.id,
        "name": statuses.name,
        "current_default": true if statuses.id == ORG.VARIABLES[CTX.choose_variable]|d|int else false
    }
    for statuses in TASKS.list_statuses.result.result
    ]
}}
```

