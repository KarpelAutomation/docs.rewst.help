# \[PROD - TASK] CWA: Get Counts

This workflow serves as a fundamental building block that queries ConnectWise Automate to retrieve company and computer counts, providing essential inventory data that can be consumed by larger automation processes for reporting, billing, or compliance purposes. MSPs will find this function valuable for client onboarding/offboarding validation, license reconciliation, automated billing workflows, and generating executive dashboards showing managed device statistics across their client base. Technically, the workflow executes by first retrieving the complete list of companies from CWA, then obtaining all managed computers, calculating the relevant counts, and presenting the data in a standardized format that other workflows can easily reference when making automation decisions or populating reports.

This workflow contains 7 tasks.

### Inputs

This subworkflow has no inputs.

### Outputs

**cwa\_counts**: This output will contain a list of companies from Automate along with their counts.

### Key tasks

* **connect\_wise\_automate\_list\_companies**: ConnectWise Automate integration: List Companies
* **connect\_wise\_automate\_list\_computers**: Calculation
* **build automation log**: Logging
* **calculate\_final\_count**: Calculation
* **handle failure actions**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ [ { "company": company.Name, "id": company.Id } for company in CTX.companies ] }}
```

**Task: connect\_wise\_automate\_list\_companies**

This expression creates a formatted list of company data by iterating through all companies available in the ConnectWise Automate integration. It extracts each company's name and ID, transforming them into a structured JSON array that can be easily consumed by other workflow steps or displayed in a dashboard.

The expression accesses the `CTX.companies` object provided by Rewst's ConnectWise Automate integration, which contains all the company records with their properties like Name and Id. MSPs can modify this to include additional company properties by adding more key-value pairs to the dictionary such as `\"location\": company.Location` or `\"contact\": company.PrimaryContact`.
