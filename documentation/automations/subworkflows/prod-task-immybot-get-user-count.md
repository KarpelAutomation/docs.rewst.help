# \[PROD - TASK] Immybot: Get User Count

This workflow retrieves the total count of devices managed in ImmyBot, serving as a critical data-gathering building block that can feed into larger workflows for billing, license management, or resource planning automations. It's particularly valuable for MSPs needing to automate client billing based on device count, reconcile asset inventory across platforms, or trigger conditional processes based on current managed device thresholds. Technically, the workflow executes an API call to ImmyBot using the "list\_computers" action, processes the returned device data, and makes the count available for downstream automation consumption - creating a simple yet powerful integration point between ImmyBot and your broader automation ecosystem.

This workflow contains 6 tasks.

### Inputs

This sub workflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **immy\_counts**: List of ImmyBot companies and their counts.

### Key tasks

* **BEGIN**: Core integration: noop
* **get\_device\_count**: Data retrieval
* **immy\_bot\_list\_computers**: Calculation
* **build automation log**: Logging
* **action\_error**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ [ { "company": item, "company_id": [device.company_id for device in CTX.listed_immy_devices if device.company_name == item] | first |d, "count": [device for device in CTX.listed_immy_devices if device.company_name == item] | length } for item in company_list ] }}
```

This expression creates a structured report of device counts by company, iterating through a list of companies and counting matching Immybot devices for each. It's accessing company names from `company_list` and device data from `CTX.listed_immy_devices`, using list comprehensions and filters to match devices to their respective companies.
