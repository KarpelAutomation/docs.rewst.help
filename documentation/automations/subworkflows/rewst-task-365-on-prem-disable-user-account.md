# \[REWST - TASK] 365/On-Prem: Disable User Account

This workflow provides a standardized method to disable user accounts across both Microsoft 365 and on-premises Active Directory environments, serving as a critical building block in comprehensive offboarding automation chains and security incident response protocols. MSPs will find this particularly valuable during client employee departures, security breaches requiring immediate account lockdown, or compliance scenarios demanding rapid access revocation - all without requiring technicians to remember the specific steps for each environment type. Technically, the workflow validates inputs, checks applicable identity environments (Microsoft 365/on-premises), then executes the appropriate disabling action using Microsoft Graph API for cloud accounts and PowerShell via RMM for on-premises accounts, with built-in error handling for operational reliability. This automation significantly reduces the risk of missed steps during offboarding while cutting the average technician time from 15-20 minutes down to mere seconds per user deactivation.

This workflow contains 10 tasks.

### Inputs

* **idp\_config** - string
  * One of: on\_prem, hybrid\_no\_sync, azure\_ad, on\_prem\_only
* **on\_prem\_id** - string
  * On-prem ID of user to be disabled
* **aad\_user\_id** - string
  * Entra ID of user to be disabled

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **check\_aad**: Validation/verification
* **failure\_catch**: Core integration: noop
* **disable\_aad\_user**: Microsoft Graph integration: Graph API Request
* **disable\_on\_prem**: Workflows integration: \[REWST - TASK] Run Powershell via RMM
* **check\_on\_prem**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ CTX.aad_user_id|d != \"\" and CTX.idp_config|d in [\"hybrid_no_sync\", \"azure_ad\"] }}
```
