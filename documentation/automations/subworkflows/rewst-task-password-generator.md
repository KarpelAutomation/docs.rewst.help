# \[REWST - TASK] Password Generator

This workflow is a flexible password generator that supports different formats—cryptographic, Rewst-style, or user-friendly—based on settings you choose. MSPs can plug it into onboarding, password resets, or account creation to ensure consistent, secure password generation. It figures out the right method, creates the password, and passes it along for use in other automations or documentation.

This workflow contains 9 tasks.

### Inputs

* **psa** - string
  * Specify the PSA if an override needed, otherwise we will default to the ORG Var within the automation.
* **existing\_ticket** - string (Required)
  * Specify the existing ticket id in order to update an existing ticket. If none specified, we will create a new ticket.
* **minimum\_numbers** - string
  * Specify the number of numbers that must be in the generated password
  * Default: `{{- CTX.minimum_numbers|d(2) -}}`
* **password\_length** - string
  * Specify the number of characters in the password to be generated
  * Default: `{{- CTX.password_length|d(16) -}}`
* **minimum\_capitals** - string
  * Specify the number of capitals that must be in the generated password
  * Default: `{{- CTX.minimum_capitals|d(2) -}}`
* **minimum\_punctuation** - string
  * Specify the number of punctuation characters that must be in the generated password
  * Default: `{{- CTX.minimum_punctuation|d(2) -}}`
* **predefined\_password** - string
  * If specified, then we bypass generation and will just utilize the set password.
* **password\_generator\_system** - string
  * Specify where to generate the password from, if left null then will use the Rewst default action

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **generated\_password**: This will return the password generated by the workflow.

### Key tasks

* **generate\_rewst\_password**: Workflows integration: \[REWST - TASK] Rewst: Password Generator
* **generate\_random\_password**: Core integration: Generate Password V2
* **generate\_friendly\_password**: Workflows integration: \[REWST - TASK] Friendly: Password Generator
* **set\_output\_var**: Core integration: noop
* **which\_password\_system**: Core integration: noop

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
