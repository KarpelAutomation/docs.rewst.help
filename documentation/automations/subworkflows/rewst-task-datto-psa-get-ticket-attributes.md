# \[REWST - TASK] Datto PSA: Get Ticket Attributes

This workflow gathers detailed ticket attribute data from Datto PSA—like statuses, types, subtypes, queues, and priorities—making it a key component for building advanced automations. MSPs can use it for ticket triage, SLA enforcement, routing logic, or cross-platform integrations that rely on accurate PSA ticket mapping. It runs targeted API calls to fetch this structured data and makes it available for use in parent workflows, helping ensure consistent and informed decision-making across your automation stack.

This workflow contains 10 tasks.

### Inputs

* **board\_id** - string
* **ticket\_type** - string
* **ticket\_subtype** - string
* **selected\_variable** - string
  * board, status, subtype, type

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **options**: Array of ticket attributes.

### Key tasks

* **get\_statuses**: Data retrieval
* **list\_ticket\_types**: Datto Autotask PSA integration: List Ticket Fields with Picklists
* **list\_ticket\_subtypes**: Datto Autotask PSA integration: List Ticket Fields with Picklists
* **get\_queue**: Data retrieval
* **failure\_catch**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ CTX.selected_variable == "board" }}
```

This is used in conditional logic for path decision.

#### Example 2

```jinja
{{ CTX.selected_variable == "type" }}
```

This is used in conditional logic for path decision.
