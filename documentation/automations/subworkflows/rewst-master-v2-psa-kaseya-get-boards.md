# \[Rewst Master v2] PSA-Kaseya: Get Boards

This workflow pulls all service boards from Kaseya BMS using a direct API call, making it a key building block for automations that need to select or assign boards. MSPs can use it for ticket creation, routing, portal integrations, or syncing across platforms. It runs a single API task to fetch the full list of boards, so other workflows can easily reference them for logic, reporting, or categorization—without having to repeat the lookup each time.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of queues.

### Key tasks

* **kaseya\_bms\_list\_queues**: Kaseya BMS integration: List Queues

### Jinja Example

```jinja
{{
    [
        {
        "id": queue.id,
        "name": queue.name,
        "default": true if queue.id == ORG.VARIABLES[CTX.choose_variable]|d|int else false
        }
        for queue in TASKS.kaseya_bms_list_queues.result.result
        if queue.isActive == true
    ] | sort(attribute="name") | unique(attribute="id")
}}
```

This is used to define the data alias queues.
