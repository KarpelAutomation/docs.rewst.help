# \[REWST - TASK] M365: Remove Licenses

This workflow functions as a critical building block for MSPs by automating the process of removing Microsoft 365 licenses from users through Microsoft Graph API integration. At a technical level, the workflow retrieves a user's current license assignments, converts complex SKU IDs to human-readable license names, and then executes the license removal process - providing a reliable method for license management that can be triggered from various automation scenarios. MSPs will find this particularly valuable for client offboarding processes, cost optimization initiatives (removing unused licenses), license tier adjustments, and as part of comprehensive automated employee departure workflows integrated with their PSA/ticketing systems. This reusable component eliminates tedious manual license management tasks while ensuring consistent license removal processes across multiple client tenants, enabling MSP technicians to focus on higher-value activities.

This workflow contains 8 tasks.

### Inputs

* **aad\_user\_id** - string
  * Azure / Entra GUID of the user to remove licenses from.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.
* **removed\_licenses**: List of licenses that were removed.

### Key tasks

* **get\_assigned\_licenses**: Data retrieval
* **get\_friendly\_names**: Data retrieval
* **remove\_licenses**: Microsoft Graph integration: Assign License to User
* **failure\_catch**: Core integration: noop
* **check\_license\_count**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ - data_ns.status - }}
```

Used in publishing 'automation\_log'

#### Example 2

```jinja
{{ - data_ns.status < 2000 - }}
```

Used in publishing 'automation\_log'
