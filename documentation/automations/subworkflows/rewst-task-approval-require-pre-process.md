# \[REWST - TASK] Approval: Require Pre-Process

This modular workflow functions as a critical approval gate by validating if the requesting user has pre-authorization, sending approval emails when needed, and updating PSA tickets throughout the approval lifecycle. MSPs will find this valuable for implementing governance in client onboarding, license provisioning, security changes, and access management scenarios where documented approval is required before execution. Technically, the workflow first checks if the requesting user is on an approved list, then either bypasses or initiates an email approval flow, updates the PSA ticket at each stage (request sent, approved, denied, timed out), and ultimately serves as a decision point that larger automation processes can branch from based on approval status.

This workflow contains 12 tasks.

### Inputs

* **psa** - string
  * Specify the PSA if an override needed, otherwise we will default to the ORG Var within the automation.
* **workflow\_name** - string (Required)
  * Specifies the workflow name that the approval process kicks off for
* **existing\_ticket** - string (Required)
  * Specify the existing ticket id in order to update an existing ticket. If none specified, we will create a new ticket.
* **approval\_email\_list** - array (Required)
  * List of users that are able to give authorisation
  * Default: `{{ [ ] }}`
* **user\_running\_automation** - string (Required)
  * Specify the user running the automation
  * Default: `{{ CTX.user.username | d }}`

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **is\_approved**: Boolean; States if workflow was successful.

### Key tasks

* **new\_user\_approval\_email**: Core integration: Confirmation Email
* **update\_psa\_ticket\_approval\_timeout**: Data modification
* **update\_psa\_ticket\_no\_emails**: Data modification
* **check\_running\_user\_vs\_approval\_list**: Validation/verification
* **validate\_email\_approval\_list**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ CTX.approval_email_list|join(',') }}
```

Used in input parameter 'to'

#### Example 2

```jinja
{{ CTX.workflow_name }}
```

Used in input parameter 'title'
