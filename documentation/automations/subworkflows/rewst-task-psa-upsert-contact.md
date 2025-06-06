# \[REWST - TASK] PSA: Upsert Contact

## PSA: Upsert Contact workflow

This workflow serves as a universal contact management building block that creates or updates contact records through a standard interface, across multiple PSA platforms such as ConnectWise Manage, AutoTask, ServiceNow, Freshdesk, Kaseya BMS, and Halo PSA.  The workflow first determines which PSA system is being used, then routes the request to the appropriate provider-specific implementation, abstracting away platform differences and returning consistent results regardless of the underlying PSA. This function is particularly valuable for MSPs during client onboarding, synchronizing contacts between systems, automated user provisioning workflows, and maintaining accurate contact information across your technology stack. By leveraging this building block, MSPs can standardize contact management operations across their automation ecosystem while maintaining flexibility to change PSA platforms without breaking dependent workflows.

This workflow contains 11 tasks.

### Inputs

* **psa** - string
  * Specify the PSA if an override needed, otherwise we will default to the ORG Var within the automation.
* **psa\_contact\_id** - string
  * Specify the Contact to update, if known
* **existing\_ticket** - string (Required)
  * Specify the existing ticket id in order to update an existing ticket. If none specified, we will create a new ticket.
* **user\_attributes** - object (Required)
  * Specify the user object that includes the user properties
  * Default: `{{ { } }}`
* **psa\_disable\_contact** - boolean
  * Specify whether to disable the contact if found. Defaults to false.
  * Default: `{{ false }}`
* **psa\_contact\_location** - string
  * Specify the location for the contact to be created under
  * Default: `{{ CTX.psa_contact_location|d }}`

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **determine\_provider**: Core integration: noop
* **cw\_upsert\_contact**: Workflows integration: \[REWST - TASK] PSA-CWM: Upsert Contact
* **servicenow\_upsert\_contact**: Workflows integration: \[REWST - TASK] PSA-ServiceNow: Upsert Contact
* **set\_output\_var**: Core integration: noop
* **freshdesk\_upsert\_contact**: Workflows integration: \[REWST - TASK] PSA-Freshdesk: Upsert Contact

### Jinja examples

#### Example 1

```jinja
{{ - CTX.psa == "cw_manage" - }}
```

Unknown context

#### Example 2

```jinja
{{ - CTX.psa == "datto_psa" - }}
```

Unknown context
