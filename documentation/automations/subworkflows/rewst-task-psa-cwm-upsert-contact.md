# \[REWST - TASK] PSA-CWM: Upsert Contact

This workflow automates creating or updating contact records in ConnectWise Manage. It starts by checking if the contact already exists, then either updates the record or creates a new one. It's a key part of automations for customer onboarding, user provisioning, and syncing data across platforms where accurate contact info needs to be kept up to date in the PSA. Useful when connecting systems like CRMs, documentation tools, or Microsoft 365 to ConnectWise Manage, it helps avoid duplicate contacts and keeps data consistent. The workflow cleans up input data, looks for existing contacts by email or ID, and runs the right action to create or update the record, handling details like contact types and mobile numbers.

This workflow contains 16 tasks.

### Inputs

* **psa\_contact\_id** - string
  * Specify the Contact to update, if known
* **existing\_ticket** - string
  * Specify the existing ticket id in order to update an existing ticket. If none specified, we will create a new ticket.
* **user\_attributes** - object
  * Specify the user object that includes the user properties
  * Default: `{{ { } }}`
* **psa\_disable\_contact** - boolean
  * Specify whether to disable the contact if found. Defaults to false.
  * Default: `{{ false }}`
* **psa\_contact\_location** - string
  * Specify the location for the contact to be created under
  * Default: `{{ CTX.psa_contact_location |d }}`

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **cw\_update\_contact**: Data modification
* **update\_type**: Data modification
* **is\_type\_provided**: Core integration: noop
* **cw\_list\_contacts\_id**: ConnectWise PSA integration: List Contacts
* **cw\_create\_contact**: Creation/initialisation

### Jinja examples

#### Example 1

```jinja
{{ - CTX.user_attributes.data.zip|d - }}
```

Used for populating the Zip field on the cw\_create\_contact task.

#### Example 2

```jinja
{{ CTX.user_attributes.data.city|d }}
```

Used for populating the City field on the cw\_create\_contact task.
