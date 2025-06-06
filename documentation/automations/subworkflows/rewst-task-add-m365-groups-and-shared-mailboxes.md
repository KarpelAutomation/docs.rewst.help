# \[REWST - TASK] Add M365 Groups And Shared Mailboxes

This workflow automates the important task of adding users to Microsoft 365 groups like security, distribution, and mail-enabled groups, and setting up shared mailboxes. It's a flexible building block for larger automations like employee onboarding or department changes. Use it to standardize how users get access during onboarding, role changes, or when spinning up project teams. The workflow checks what each group or mailbox needs, then runs the right subworkflows to add users, with error handling built in to keep things running smoothly. Its modular design makes it easy to plug into broader automations, so MSPs can manage Microsoft 365 more consistently and at scale across clients.

This workflow contains 11 tasks.

### Inputs

* **automap** - boolean
  * Auto-maps shared Mailboxes to Outlook Profile
  * Default: `{{ true }}`
* **gbl\_groups** - array
  * Assign M365 Licenses by adding user to License-Enabled M365 Groups (Will be listed here)
  * Default: `{{ [ ] }}`
* **aad\_user\_id** - string
  * Azure Active Directory User ID
* **shared\_mailboxes** - array
  * Shared Mailbox Access
  * Default: `{{ [ ] }}`
* **mail\_enabled\_groups** - array
  * Mail-Enabled Groups
  * Default: `{{ [ ] }}`
* **m365\_direct\_licenses** - array
  * Directly Select Licenses from these current MS Subscriptions
  * Default: `{{ [ ] }}`
* **m365\_security\_groups** - array
  * Azure Active Directory Security Groups
  * Default: `{{ [ ] }}`
* **m365\_distribution\_groups** - array
  * Azure Active Directory Distribution Groups
  * Default: `{{ [ ] }}`
* **shared\_mailboxes\_allow\_send\_as** - boolean
  * ㅤAllow send as the Shared Mailboxes?
  * Default: `{{ false}}`
* **shared\_mailboxes\_allow\_send\_on\_behalf** - boolean
  * Allow Send on Behalf of the Shared Mailboxes?
  * Default: `{{ false}}`

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **check\_mail\_enabled\_groups**: Validation/verification
* **add\_to\_m365\_security\_group**: Workflows integration: \[REWST - TASK] M365: Add User to Security Group
* **check\_m365\_security\_groups**: Validation/verification
* **failure\_catch**: Core integration: noop
* **check\_shared\_mailboxes**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ CTX.mail_enabled_groups|d([],true)|length > 0 }}
```

Used in transition condition

#### Example 2

```jinja
{{ CTX.m365_distribution_groups|d([],true)|length > 0 }}
```

Used in transition condition
