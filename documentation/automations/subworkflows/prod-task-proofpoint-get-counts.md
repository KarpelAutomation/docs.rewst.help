# \[PROD - TASK] Proofpoint: Get Counts

This workflow serves as a foundational building block that queries and retrieves organization count data from Proofpoint's email security platform, enabling MSPs to programmatically access client protection metrics for use in larger automation processes like reporting or security audits. It's particularly valuable for MSPs managing multiple clients' email security postures, supporting scenarios such as automated security reporting, license management verification, and identifying gaps in protection across client environments. Technically, the workflow operates by connecting to the Proofpoint API, retrieving organization data using the "proofpoint.get\_organization" action which lists all sub-organizations for a specified domain, then processes this data to extract relevant count information while incorporating error handling for reliability. This automation component eliminates manual data collection steps for technical staff and can feed directly into client-facing security reports, RMM dashboards, or PSA ticketing systems to maintain consistent email security monitoring across the MSP's client base.

This workflow contains 7 tasks.

### Inputs

This sub workflow has no inputs.

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
