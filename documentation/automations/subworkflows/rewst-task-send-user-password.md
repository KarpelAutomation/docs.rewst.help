# \[REWST - TASK] Send User Password

This workflow securely distributes user passwords through multiple channels, SMS to users or email to supervisors, and updates PSA tickets accordingly, serving as a critical security-focused building block that can be incorporated into user onboarding, password reset, or account management processes.

MSPs will find this valuable during client employee onboarding, password resets after security incidents, and regular credential rotation scenarios where secure, documented password delivery is required to maintain compliance and security best practices.

Technically, the workflow first checks for organization variables to determine delivery preferences, then conditionally routes the password either via SMS directly to the end user or through email to a supervisor, followed by automatic PSA ticket updates to document the action and maintain audit trails for compliance purposes.

This workflow contains 10 tasks.

### Inputs

* **email** - string
  * User's email address
* **password** - string
  * User's password to be sent
* **username** - string
  * User's Username
* **ticket\_id** - string
  * Ticket ID
* **first\_name** - string
  * User's First Name
* **supervisor** - string
  * Supervisor's Email Address
* **send\_sms\_to\_user** - boolean
  * Send SMS to user?
  * Default: `{{ false}}`
* **sms\_with\_country\_code** - string
  * SMS Phone Number with Country Code
* **send\_supervisor\_user\_password** - boolean
  * Send Supervisor User's Password
  * Default: `{{ false}}`

### Outputs

* **success** - Boolean; States if workflow was successful.
* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **check\_send\_supervisor\_password**: Communication/notification
* **send\_sms\_to\_user**: Communication/notification
* **sms\_update\_ticket**: Data modification
* **send\_sms\_org\_var\_not\_set**: Communication/notification
* **check\_send\_sms**: Communication/notification

### Jinja examples

#### Example 1

```jinja
{{ CTX.sms_with_country_code|d }}
```

Used in input for `sms_number` for send\_sms\_to\_user task.

#### Example 2

```jinja
{{ CTX.username|d }}
```

Used in input for `username` for send\_password\_to\_supervisor task.
