# \[PROD - TASK] Proofpoint: Get Counts

This workflow is a core building block that pulls organization count data from Proofpoint’s email security platform. It allows MSPs to programmatically access client protection metrics and use them in larger automations like reporting and security audits. It’s especially useful for MSPs managing multiple clients, supporting use cases such as automated security reporting, license verification, and spotting gaps in protection across environments.

Technically, the workflow connects to the Proofpoint API, uses the `proofpoint.get_organization` action to list sub-organizations for a domain, then processes the results to extract the needed count data with built-in error handling for reliability. This removes the need for manual data collection and can feed directly into client reports, RMM dashboards, or PSA ticketing systems to support consistent email security monitoring across all managed clients.

This workflow contains 7 tasks.

### Inputs

This subworkflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **proofpoint\_user\_count**: List of ProofPoint companies and their counts.

### Key tasks

* **handle failure actions**: Core integration: noop
* **Get Proofpoint Counts**: Data retrieval
* **build automation log**: Logging
* **proof\_point\_list\_organizations**: ProofPoint integration: List Organizations
* **BEGIN**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ [ { "company": org.name, "active_users": org.active_users, "count": org.user_licenses, "company_id": org.primary_domain } for org in CTX.proofpoint_orgs ] }}
```

This Jinja expression creates a formatted list of dictionaries containing Proofpoint license information for each managed organization. It accesses the `proofpoint_orgs` data from the context (CTX) object and extracts key metrics like organization name, active user count, license count, and primary domain for reporting or further processing.
