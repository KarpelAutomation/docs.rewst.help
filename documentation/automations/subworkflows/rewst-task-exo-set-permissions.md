# \[REWST - TASK] EXO Set Permissions

This workflow automates the assignment of Exchange Online mailbox permissions (Full Access and Send As) with granular control over automapping functionality, serving as a reusable building block in larger processes like employee onboarding and access management. MSPs can leverage this workflow to standardize mailbox delegation across multiple clients, efficiently respond to permission-related tickets, and implement consistent access controls during staff role changes without manual PowerShell commands. Technically, the workflow evaluates input parameters to determine the appropriate permission type, checks automapping preferences, executes the corresponding Exchange Online PowerShell commands through Rewst's EXO integration, and returns standardized results that can be consumed by parent workflows or ticketing systems.

This workflow contains 9 tasks.

### Inputs

* **access\_recipient** - string
  * List of Azure / Entra GUIDs that will receive access to the offboarded user's mailbox.
* **mailbox\_to\_share** - string
  * GUID of the Azure / Entra user.
* **shared\_mailbox\_no\_automap** - boolean
  * If set to true, then the offboarded user's mailbox will not be automapped to user's that were granted acces to it.
* **shared\_mailboxes\_allow\_send\_as** - boolean
  * If set to true, then user's who were granted access will also be granted Send As access.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **failed**: Core integration: noop
* **full\_access\_no\_automap**: Microsoft Exchange Online integration: InvokeCommand
* **update\_output**: Data modification
* **check\_automap\_shared\_mailbox**: Validation/verification
* **add\_sendas\_access**: Communication/notification

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
