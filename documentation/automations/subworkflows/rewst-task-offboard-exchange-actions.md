# \[REWST - TASK] Offboard Exchange Actions

This modular workflow automates Exchange mailbox tasks during offboarding, like setting out-of-office replies, converting to shared mailboxes, and configuring forwarding. It also removes mobile devices, hides users from the GAL, and updates mailbox permissions. By automating these steps, MSPs can streamline offboarding, stay compliant, and avoid mistakes. The workflow uses conditional logic and PowerShell via the Microsoft EXO connector, with built-in error handling to keep things moving even if some steps fail.

This workflow contains 35 tasks.

### Inputs

* **rmm\_site** - string
  * Provide the RMM site ID (optional)
* **idp\_config** - string
  * Accepted values are: on\_prem, hybrid\_no\_sync, azure\_ad, on\_prem\_only. If no value is provided value will be determined via org var logic.
* **forward\_mail** - boolean
  * If set to true, this will set the mail to forward.
  * Default: `{{- CTX.forward_mail |d(false) -}}`
* **on\_prem\_user** - array
  * Dictionary object of the On-Prem user.
  * Default: `{{ [ ] }}`
* **hide\_from\_gal** - boolean
  * If set to true, this will hide the user from the GAL.
  * Default: `{{ true }}`
* **user\_to\_offboard** - string
  * GUID of the Azure / Entra user.
* **convert\_to\_shared** - boolean
  * If set to true, this will convert the user to a shared mailbox.
  * Default: `{{ true }}`
* **set\_out\_of\_office** - boolean
  * If set to true, this will set the user's out of office message.
  * Default: `{{ CTX.set_out_of_office|d(false) }}`
* **remove\_all\_licences** - boolean
  * Used for decision logic, licenses handled in another flow.
  * Default: `{{ false }}`
* **forward\_mail\_to\_user** - string
  * GUID of the Azure/Entra user to forward mail to.
* **remove\_mobile\_devices** - boolean
  * If set to true, this will remove the user's mobile devices.
  * Default: `{{- CTX.remove_mobile_devices |d(true) -}}`
* **shared\_mailbox\_action** - boolean
  * If set to true, this will grant users access to the offboarded user's mailbox.
  * Default: `{{ true }}`
* **shared\_mailboxes\_list** - array
  * List of Azure / Entra GUIDs that will receive access to the offboarded user's mailbox.
  * Default: `{{ [ ] }}`
* **external\_out\_of\_office** - string
  * External Out of Office message.
* **forward\_mail\_and\_store** - boolean
  * If set to true, then when forwarding mail it will also store the original message in the offboarded user's mailbox.
  * Default: `{{ true }}`
* **internal\_out\_of\_office** - string
  * Internal Out of Office message.
* **customer\_ad\_configuration** - string
  * Legacy, not in use.
  * Default: `{{- CTX.customer_ad_configuration -}}`
* **shared\_mailbox\_no\_automap** - boolean
  * If set to true, then the offboarded user's mailbox will not be automapped to user's that were granted acces to it.
  * Default: `{{ true }}`
* **shared\_mailboxes\_allow\_send\_as** - boolean
  * If set to true, then user's who were granted access will also be granted Send As access.
  * Default: `{{ CTX.shared_mailboxes_allow_send_as|d(false) }}`

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.
* **failures**: List of failures.
* **output**: Output of the workflow, if any is defined.

### Key tasks

* **check\_out\_of\_office**: Validation/verification
* **exchange\_online\_selected**: Core integration: noop
* **do\_not\_convert\_to\_shared\_continue**: Data conversion
* **do\_not\_remove\_mobile\_devices**: Core integration: noop
* **check\_add\_shared\_mailbox\_permissions**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ CTX.idp_config|d in [\"on_prem\", \"hybrid_no_sync\", \"azure_ad\"] and CTX.user_to_offboard|d }}
```

This expression validates if a user offboarding process should proceed based on the client's identity provider configuration. It checks if the identity provider (stored in `CTX.idp_config`) is either on-premises, hybrid without synchronization, or Azure AD, and confirms a user exists in the `CTX.user_to_offboard` variable. MSPs can customize this by modifying the list of acceptable IdP configurations to match their specific client environments, such as adding Okta or other identity providers. For example, you might extend it to: `CTX.idp_config|d in ["on_prem", "hybrid_no_sync", "azure_ad", "okta"] and CTX.user_to_offboard|d and CTX.department_approval|d`.

### Expression 2: On-Premises Environment with RMM Check

#### Example 2

```jinja
{{ CTX.idp_config|d in [\"on_prem_only\"] and ORG.VARIABLES.default_rmm|d }}
```

This expression determines if workflow steps related to an on-premises-only environment with RMM tools should execute. It verifies the client has a strictly on-premises identity setup and confirms a default RMM tool is configured in the organization variables. MSPs can modify this to target specific RMM platforms or additional infrastructure requirements by changing the conditions or adding specific RMM tool checks. A practical variation might be: `CTX.idp_config|d in ["on_prem_only"] and ORG.VARIABLES.default_rmm|d == "ConnectWise Automate"` to trigger specialized automation for a particular RMM tool.
