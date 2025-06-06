# \[REWST - TASK] Remove Group Memberships

This workflow automatically removes users from both Microsoft 365 and on-premises Active Directory groups, functioning as a critical building block in comprehensive user management automations like offboarding, permission adjustments, or security remediation processes. MSPs will find this particularly valuable during client offboarding processes, security incident responses requiring immediate access revocation, compliance audits, and multi-tenant management scenarios where maintaining accurate group memberships across different environments is challenging. Technically, the workflow retrieves the user's current group memberships via Microsoft Graph API, evaluates whether to process cloud-based groups (Microsoft 365) or on-premises Active Directory groups (or both), and then executes the removals using appropriate methods for each environment—API calls for cloud groups and PowerShell commands via RMM for on-premises groups.

This workflow contains 12 tasks.

### Inputs

* **idp\_config** - string
  * Accepted values are: on\_prem, hybrid\_no\_sync, azure\_ad, on\_prem\_only. If no value is provided value will be determined via org var logic.
  * Default: `{{ CTX.idp_config|d }}`
* **on\_prem\_dc** - string
  * The hostname of the On-Prem Domain Controller.
  * Default: `{{ ORG.VARIABLES.primary_domain_controller|d }}`
* **aad\_user\_id** - string
  * The GUID of the Azure/Entra User.
* **default\_rmm** - string
  * Default RMM
* **on\_prem\_user\_id** - string
  * The User ID of the On-Prem user.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.
* **removed\_groups**: List of groups that were removed.
* **dynamic\_groups**: List of dynamic groups that the user could not be removed from.

### Key tasks

* **failure\_catch**: Core integration: noop
* **get\_user\_groups**: Data retrieval
* **check\_azure**: Validation/verification
* **check\_onprem**: Validation/verification
* **check\_for\_groups**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ CTX.aad_user_id }}
```

Used in input parameter 'endpoint'

#### Example 2

```jinja
{{ \r [\r group\r for group in CTX.get_user_groups.data.value\r if group not in [\"@odata.context\", \"value\"]\r ]\r }}
```

Unknown context
