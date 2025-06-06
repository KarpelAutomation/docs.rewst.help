# \[PROD - TASK] MyGlue: Get License Counts

This workflow automatically pulls organization and user data from IT Glue, matches users to their respective organizations, and calculates license utilization across client sites - serving as a foundational building block for license management, billing verification, and capacity planning automations. MSPs will find this particularly valuable for reconciling monthly MyGlue license billing, identifying underutilized licenses for reassignment, preparing client reviews with accurate license metrics, and ensuring compliance with license agreements. Technically, the workflow functions by retrieving a comprehensive list of organizations and users from IT Glue's API, processing this data to match users with their organizations, calculating per-site license counts, and then producing a structured output that can feed into reporting tools, PSA systems, or other automated processes.

This workflow contains 8 tasks.

### Inputs

This sub workflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **glue\_counts**: List of ITGlue companies and their counts.

### Key tasks

* **it\_glue\_list\_organizations**: IT Glue integration: List Organizations
* **it\_glue\_list\_users**: IT Glue integration: List Users
* **BEGIN**: Core integration: noop
* **calculate\_site\_counts**: Calculation
* **match\_users\_to\_org**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ [ org for org in CTX.glue_orgs if org.attributes['my-glue-account-id'] ] }}
```

Creates a list of organizations that have the attribute my-glue-account-id populated.
