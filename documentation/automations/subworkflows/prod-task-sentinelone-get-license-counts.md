# \[PROD - TASK] SentinelOne: Get License Counts

This workflow acts as a critical building block by querying the SentinelOne platform to retrieve client site information, enabling MSPs to effectively track and manage endpoint security licenses across multiple clients. It delivers essential visibility into license distribution and utilization, which directly supports compliance management, client billing accuracy, and renewal planning for cybersecurity services. The workflow functions by connecting to the SentinelOne API, retrieving a comprehensive list of all managed client sites, and preparing this data for license count analysis in subsequent automation processes. MSPs managing multiple SentinelOne deployments can leverage this automation to eliminate manual license auditing processes, proactively identify licensing gaps, and generate accurate reports for both internal operations and client discussions.

This workflow contains 5 tasks.

### Inputs

This sub workflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **sentinel\_counts**: List of SentinelOne companies and their counts.

### Key tasks

* **sentinel\_one\_list\_sites**: SentinelOne integration: List Sites
* **Begin**: Core integration: noop
* **build automation log**: Logging

### Jinja examples

#### Example 1

```jinja
{{ [ { "company": site.name, "count": site.activeLicenses, "sku": site.sku, "company_id": site.id |d } for site in CTX.all_sites ] }}
```
