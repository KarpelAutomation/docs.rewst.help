# \[REWST - PROC] User: Change Password

This workflow functions as a critical building block that automates user password changes across both on-premises Active Directory and Azure/Entra ID environments, creating or updating PSA tickets while providing email fallback options for comprehensive error handling. MSPs will find this particularly valuable for reducing password reset tickets (one of the highest volume ticket types), supporting hybrid identity environments, and maintaining consistent security practices across multiple clients. Technically, the workflow first validates required inputs, determines the identity provider location (on-prem AD or Entra ID), executes the appropriate password change method, triggers AD sync when necessary, and integrates with PSA systems to document the action through ticket creation or updates.

This workflow contains 21 tasks.

### Inputs

* **password** - string
  * Change user's password to this
* **ticket\_id** - string
  * Update ticket with the details of this workflow run
* **user\_name** - string
  * Username
* **idp\_config** - string
  * Accepted values are: on\_prem, hybrid\_no\_sync, azure\_ad, on\_prem\_only. If no value is provided value will be determined via org var logic.
* **skip\_ticket** - boolean
  * Set to true if you do not want any ticketing done
  * Default: `{{ false }}`
* **unlock\_account** - boolean
  * Unlocks account for locked out accounts
  * Default: `{{ false }}`
* **no\_sync\_override** - string
  * User ID if no User name provided
* **force\_password\_reset** - boolean
  * Force the user to change their password when logging in, defaults to true.
  * Default: `{{ true }}`

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **update\_ticket**: Data modification
* **email\_fallback**: Core integration: noop
* **failure\_catch**: Core integration: noop
* **process\_inputs**: Data processing
* **ticketing**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ ORG.VARIABLES.default_psa }}
```

Used in input parameter 'psa'

#### Example 2

```jinja
{{ CTX.ticket_id }}
```

Used in input parameter 'ticket\_id'
