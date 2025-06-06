# \[PROD - PROCESS] Datto: Get RMM Device Count Loader

This workflow automatically retrieves and compiles device counts across all client sites in Datto RMM, serving as a foundational data-gathering component that can feed into billing automation, asset reporting, or resource allocation workflows. It's particularly valuable for MSPs who need accurate device counts for usage-based billing, license management, or regular client reporting without manual inventory checks. Technically, the workflow calls the Datto RMM API to list all sites, then leverages a specialized task to gather device counts across these sites, making this data available for consumption by other automation processes in your MSP operations.

This workflow contains 5 tasks.

### Inputs

This sub workflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **rmm\_user\_count**: List of Datto RMM companies and their counts.

### Key tasks

* **Get\_Datto\_RMM\_Device\_Counts**: Data retrieval
* **datto\_rmm\_list\_sites**: Datto RMM integration: List Sites
* **build automation log**: Logging
* **BEGIN**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{- item().uid -}}
```

Used in input parameter 'site'

