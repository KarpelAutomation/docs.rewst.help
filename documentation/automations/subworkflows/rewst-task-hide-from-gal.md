# \[REWST - TASK] Hide From Gal

This workflow automates hiding users from the Global Address List (GAL) across Microsoft 365, on-premises Exchange, or hybrid environments, serving as a critical building block in user management and offboarding automation sequences. MSPs will find this particularly valuable for expediting client employee departures, managing temporary contractors who shouldn't appear in company directories, and maintaining compliance with privacy requirements for sensitive roles without manual Exchange administration. The workflow intelligently determines the environment type, executes appropriate PowerShell commands either through Exchange Online API or via RMM for on-premises servers, and automatically triggers AD sync in hybrid scenarios to ensure changes propagate properly through the environment.

This workflow contains 9 tasks.

### Inputs

* **rmm\_site** - string
  * Provide the RMM site ID (optional)
  * Default: `{{ CTX.rmm_site|d }}`
* **idp\_config** - string
  * IDP Configuration
  * Default: `{{ CTX.idp_config|d("invalid_idp")`
* **default\_rmm** - string
  * Default RMM
* **user\_to\_hide** - string
  * GUID of the Azure / Entra user. (Only used for Exchange Online)
* **script\_template** - string
  * Script to Execute; Used for On-Prem, user ID/UPN/samAccountName loaded by script prior to passing in.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **hide\_from\_gal\_aad**: Microsoft Exchange Online integration: InvokeCommand
* **failed**: Core integration: noop
* **hide\_from\_gal\_on\_prem**: Workflows integration: \[REWST - TASK] Run Powershell via RMM
* **check\_on\_prem**: Validation/verification
* **check\_ad\_sync**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ CTX.user_to_hide }}
```

Unknown context

#### Example 2

```jinja
{{ CTX.default_rmm|d(ORG.VARIABLES.default_rmm|d) }}
```

Used in input parameter 'default\_rmm'
