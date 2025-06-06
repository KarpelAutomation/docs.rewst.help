# \[REWST - TASK] Remove Supervisor

This workflow automates the removal of supervisor relationships in both Azure AD and on-premises Active Directory environments, serving as a critical building block in user offboarding, role changes, and organizational restructuring processes. MSPs will find this particularly valuable when handling staff departures, promotions, or departmental reorganizations across multiple client environments, eliminating manual intervention in both cloud and on-premises directories simultaneously. The workflow functions by first checking both environments to determine where supervisor relationships exist, then leveraging Microsoft Graph API to remove cloud-based supervisor assignments and executing PowerShell scripts through an RMM tool to handle on-premises AD modifications. This dual-environment approach ensures comprehensive cleanup of supervisor relationships regardless of the client's infrastructure setup, making it an efficient component in broader HR-triggered automation workflows.

This workflow contains 7 tasks.

### Inputs

* **rmm\_site** - string
  * Provide the RMM site ID (optional)
* **idp\_config** - string
  * Accepted values are: on\_prem, hybrid\_no\_sync, azure\_ad, on\_prem\_only. If no value is provided value will be determined via org var logic.
* **on\_prem\_dc** - string
  * The hostname of the On-Prem Domain Controller.
* **aad\_user\_id** - string
  * The GUID of the Azure/Entra User.
* **default\_rmm** - string
  * Default RMM
* **on\_prem\_user\_id** - string
  * The User ID of the On-Prem user.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **failure\_catch**: Core integration: noop
* **check\_onprem**: Validation/verification
* **check\_aad**: Validation/verification
* **remove\_aad\_supervisor**: Microsoft Graph integration: Graph API Request
* **remove\_onprem\_supervisor**: Workflows integration: \[REWST - TASK] Run Powershell via RMM

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
