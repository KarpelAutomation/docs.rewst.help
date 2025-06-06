# \[REWST - TASK] Forward Mail

This workflow functions as a reusable automation block for forwarding emails in Microsoft Exchange Online environments, with conditional logic to either preserve or discard the original message in the sender's mailbox. MSPs can leverage this capability when implementing client onboarding/offboarding processes, setting up executive assistant mail handling, automating vacation responses, or creating escalation flows for service tickets that require email notifications. Technically, the workflow evaluates whether to store the original message, then executes the appropriate Exchange Online PowerShell command (microsoft\_exo.exo\_invoke\_command) to handle the forwarding operation according to the specified parameters. This standardized component can be called from parent workflows to ensure consistent mail handling across various automation scenarios, making it particularly valuable for MSPs managing multi-tenant environments where email operations need standardization.

This workflow contains 7 tasks.

### Inputs

* **mailbox\_to\_forward** - string
  * GUID of the Azure / Entra user for whom you wish to forward mail for.
* **forward\_mail\_to\_user** - string
  * GUID of user to forward mail to.
  * Default: `{{ CTX.forward_mail_to_user }}`
* **forward\_mail\_and\_store** - boolean
  * If set to true, then when forwarding mail it will also store the original message in the offboarded user's mailbox.
  * Default: `{{ CTX.forward_mail_and_store|d(false) }}`

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **check\_store\_in\_mailbox**: Validation/verification
* **forward\_mail\_no\_store**: Microsoft Exchange Online integration: InvokeCommand
* **forward\_mail\_and\_store**: Microsoft Exchange Online integration: InvokeCommand
* **failed**: Core integration: noop
* **set\_output\_sucess**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ CTX.mailbox_to_forward }}
```



#### Example 2

```jinja
{{ CTX.forward_mail_to_user }}
```

