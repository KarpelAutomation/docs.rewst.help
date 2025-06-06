# \[PROD - PROCESS] M365: M365 User License Launcher

This workflow serves as a foundational building block that retrieves Microsoft 365 user license information and makes it available for consumption by larger automation processes, functioning as a standardized entry point to license data. MSPs can leverage this component for critical scenarios including license auditing, user onboarding/offboarding processes, license optimization to prevent over-provisioning, and generating automated client billing reports. Technically, the workflow executes by calling the "\[PROD TASK] M365: Get User Licenses" task to fetch license data from Microsoft 365 tenants, presenting structured license information that other workflows can consume for decision-making and automation tasks.

This workflow contains 4 tasks.

### Inputs

* **company\_id** - string; This would be a Microsoft Entra tenant ID.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **license\_counts**: List of Rewst orgs and their license counts in Office 365.

### Key tasks

* **BEGIN**: Core integration: noop
* **workflows\_365\_get\_users**: Data retrieval
* **Create Automation Log**: Creation/initialisation

### Jinja examples

#### Example 1

```jinja
{{ CTX.company_id |d }}
```

Example for input parameter 'company\_id'

#### Example 2

```jinja
{{ RESULT.license_counts }}
```

Used in publishing 'license\_counts'
