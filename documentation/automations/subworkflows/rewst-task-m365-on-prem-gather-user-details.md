# \[REWST - TASK] M365/On-Prem: Gather User Details

This workflow functions as a critical automation building block that retrieves comprehensive user information from both Microsoft 365 and on-premises Active Directory environments, serving as a foundation for more complex user management automations. For MSPs, this workflow is particularly valuable in hybrid environment management scenarios, including user onboarding/offboarding processes, troubleshooting access issues, and preparing documentation for compliance audits—all without requiring technicians to manually query multiple systems. Technically, the workflow validates input parameters, determines whether to query cloud or on-premises environments (or both), leverages Microsoft Graph API for cloud data, executes PowerShell via RMM for on-premises information, and then formats everything into standardized output that can be consumed by other workflows or ticketing systems.

This workflow contains 10 tasks.

### Inputs

* **rmm\_site** - string
  * Provide the RMM site ID (optional)
* **aad\_user\_guid** - string
  * Please provide the Entra/AzureAD user's unique GUID
* **on\_prem\_upn\_or\_sam** - string
  * Please provide the on prem AD user's UPN or samAccountName

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.
* **output**: Dictionary object containing an azure\_user dictionary (if applicable) and on\_prem\_user dictionary (if applicable). These objects will contain information about the user.

### Key tasks

* **get\_aad\_user\_details**: Data retrieval
* **verify\_inputs**: Core integration: noop
* **check\_for\_on\_prem**: Validation/verification
* **check\_for\_azure**: Validation/verification
* **format\_on\_prem\_user**: Core integration: noop

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
