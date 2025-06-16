# \[Rewst Master v2] PSA-Halo: Get Priorities

This workflow pulls all ticket priority levels from Halo PSA, making it a key tool for automations that rely on priority-based decisions. MSPs can use it for triage, SLA enforcement, or custom ticket creation where priority matters. It runs a single API call to fetch all configured priorities and their details, so parent workflows get the data they need without extra auth steps or duplicate logic, helping streamline complex automations through simple, reusable components.

This workflow contains 1 task.

### Inputs

* **sla\_id** - string
* **choose\_variable** - string

### Outputs

* **options**: Array of priorities.

### Key tasks

* **list\_priorities**: HaloPSA integration: HaloPSA API Request

### Jinja examples

#### Example 1

```jinja
{{ CTX.sla_id }}
```

Used in input parameter 'url\_path' of list\_priorities action

#### Example 2

```jinja
{{ TASKS.list_priorities.result.result }}
```

Used in publishing 'all\_priority\_info'
