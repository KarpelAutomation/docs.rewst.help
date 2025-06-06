# \[PROD - TASK] Huntress: Get License Counts

This workflow queries the Huntress security platform to retrieve and compile license usage data across all client organizations, serving as a critical building block for license management, billing reconciliation, and capacity planning automations. For MSPs, this function provides essential visibility for client billing accuracy, license compliance tracking, and identifying opportunities to optimize security coverage across the client base. Technically, the workflow first authenticates with Huntress, then retrieves the complete list of managed organizations, calculates agent deployment counts per organization, and compiles this data for integration with other systems like PSAs for billing or reporting tools for client reviews. This data can be particularly valuable when integrated with onboarding/offboarding workflows or when preparing for quarterly business reviews to assess security tool adoption and coverage gaps.

This workflow contains 6 tasks.

### Inputs

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **huntress\_count**: List of Huntress companies and their counts.

### Key tasks

* **huntress\_list\_organizations**: Huntress integration: List Organizations
* **get\_huntress\_agent\_count**: Data retrieval
* **build automation log**: Logging
* **BEGIN**: Core integration: noop
* **action\_error**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ [ { "company": org.name |d, "count": org.agents_count |d, "company_id": org.id |d } for org in CTX.huntress_orgs ] }}
```

This expression creates a structured list of all client organizations with their Huntress agent deployment statistics. It iterates through each organization in your Huntress integration (`CTX.huntress_orgs`), extracting the company name, agent count, and company ID into a list of dictionaries, with the `|d` filter providing empty string defaults for any missing values.
