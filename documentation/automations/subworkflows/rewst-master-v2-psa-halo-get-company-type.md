# \[Rewst Master v2] PSA-Halo: Get Company Type

This building block workflow retrieves a list of company types from Halo PSA through an authenticated API request, providing standardized client classification data that can be consumed by parent workflows. MSPs can leverage this component in automation scenarios requiring client type distinction, such as customizing onboarding processes, applying different SLA rules based on company categories, or routing tickets according to client classification. Technically, the workflow executes a single API call to Halo PSA's company types endpoint, returns the standardized list, and makes it available for conditional logic in more complex workflows. This reusable function eliminates redundant API calls across multiple workflows while ensuring consistent company type data is available for decision-making throughout your automation ecosystem.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of company type objects.

### Key tasks

* **list\_company\_types**: HaloPSA integration: HaloPSA API Request

### Jinja example

```jinja
{{ [
    {
        "id": companytypes.id,
        "name": companytypes.name,
        "default": true if companytypes.id|string in ORG.VARIABLES[CTX.choose_variable]|d else false
    }
    for companytypes in TASKS.list_company_types.result.result
    ]
}}
```

The above Jinja is used for building out the options for the options output.
