# \[Rewst Master v2] PSA-Halo: Get Company Status

This workflow functions as a foundational component that retrieves company status information from HaloPSA via an authenticated API request, enabling MSPs to access client status data that can be leveraged in conditional automation flows or reporting processes. For MSPs, this building block provides critical value when implementing automated client onboarding/offboarding workflows, performing bulk operations that need to filter by client status, or building dashboards that visualize client portfolio health by status. Technically, the workflow executes a single API call to HaloPSA that returns company status values, making it an efficient method to programmatically access this data without manual PSA interaction, which serves as essential context for status-dependent automation decisions in larger workflow chains.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of SLAs.

### Key tasks

* **list\_company\_statuses**: HaloPSA integration: HaloPSA API Request

### Jinja examples

#### Example 1

```jinja
{{ [
    {
        "id": companystatus.id,
        "name": companystatus.name,
        "default": true if companystatus.id|string in ORG.VARIABLES[CTX.choose_variable]|d else false
    }
    for companystatus in TASKS.list_company_statuses.result.result
    ]
}}
```

The above Jinja is used for building out the options for the options output.
