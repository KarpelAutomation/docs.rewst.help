# \[PROD - TASK] Auvik: Get Counts

This workflow serves as a foundational building block that retrieves and quantifies all network devices tracked in Auvik across your client base, providing essential inventory metrics that can be leveraged in reporting, billing automation, or compliance verification processes. For MSPs, this function delivers critical visibility when performing quarterly business reviews, validating managed device counts against service agreements, or identifying growth opportunities within existing clients' networks. Technically, the workflow first retrieves all tenant details from Auvik, then calls a device listing task for each tenant, and finally merges these device counts with company information to produce comprehensive device statistics by client - all accessible via API for integration with your PSA, documentation system, or custom reporting tools.

This workflow contains 7 tasks.

### Inputs

This subworkflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **auvik\_user\_count**: List of auvik companies and their counts.

### Key tasks

* **workflows\_dev\_task\_auvik\_list\_devices**: Workflows integration: \[DEV TASK] Auvik: List Devices
* **BEGIN**: Core integration: noop
* **build automation log**: Logging
* **merge\_counts\_with\_company**: Core integration: noop
* **auvik\_list\_tenants\_detail**: Auvik integration: List Tenants Detail

### Jinja examples

#### Example 1

```jinja
{{ item().id }}
```

Used in input parameter 'id'

