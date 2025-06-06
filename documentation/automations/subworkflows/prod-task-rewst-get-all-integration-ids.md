# \[PROD - TASK] Rewst: Get All Integration Ids

This utility workflow collects all integration IDs from your Rewst instance, mapping organizations to their connected systems and Microsoft tenant IDs, serving as a fundamental building block for other automation workflows that need to interact with your integrated PSA, RMM, or Microsoft 365 environments. It's particularly valuable for MSPs when creating cross-platform automation workflows, conducting integration audits, or troubleshooting connection issues where accurate integration identifiers are required. Technically, the workflow retrieves all organizations in your Rewst instance, lists the integrations for each organization, collects relevant organization variables, and specifically identifies Microsoft tenant IDs—creating a comprehensive integration mapping that other workflows can reference when executing actions against specific client environments.

This workflow contains 6 tasks.

### Inputs

This sub workflow has no inputs.

### Outputs

* **all\_integration\_ids**: Outputs a list of organizations, the organization object includes org info and their integration mappings.

### Key tasks

* **rewst\_list\_organizations**: Rewst integration: List Organizations
* **rewst\_list\_integrations\_for\_organization**: Rewst integration: List Integrations For Organization
* **rewst\_list\_organization\_variables**: Rewst integration: List Organization Variables
* **BEGIN**: Core integration: noop
* **workflows\_get\_ms\_tenant\_ids**: Data retrieval

### Jinja examples

#### Example 1

```jinja
{{ [org.id for org in CTX.all_orgs if org.is_enabled == true] + [ORG.ATTRIBUTES.id] }}
```

This expression creates a list of all enabled organization IDs across your MSP environment, plus the current organization's ID. It accesses the `CTX.all_orgs` collection to gather all enabled organizations (`org.is_enabled == true`) and adds the current organization ID (`ORG.ATTRIBUTES.id`) to ensure it's included regardless of its enabled status.

### Expression 2

#### Example 2

```jinja
{{ [ config.id for pack in CTX.packs for config in pack.pack_configs if config.default == true and \"csp\" in pack.name|lower ] | first or None }}
```

This expression finds the first default configuration ID for any integration pack containing "csp" in its name (cloud service provider), returning None if none exists. It performs a nested loop through integration packs and their configurations, filtering for default configurations within CSP-related integration packs.
