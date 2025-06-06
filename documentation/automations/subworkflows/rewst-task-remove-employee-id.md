# \[REWST - TASK] Remove Employee ID

This workflow automates the removal of employee ID attributes from Microsoft 365/Azure AD user accounts via Microsoft Graph API, serving as a reusable building block for more complex user management processes. MSPs can leverage this module during employee offboarding procedures, tenant standardization projects, or when preparing accounts for reassignment after employee transitions. The workflow operates by executing a targeted Microsoft Graph API request that removes the employeeId attribute from a user object, with built-in error handling to ensure operational reliability. This automation is particularly valuable for MSPs managing multi-tenant environments where maintaining clean, standardized user attributes impacts directory synchronization, licensing assignments, and compliance reporting.

This workflow contains 4 tasks.

### Inputs

* **user\_id** - string
  * GUID of the Azure / Entra User.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **remove\_employeeId**: Microsoft Graph integration: Graph API Request
* **failure\_catch**: Core integration: noop

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
