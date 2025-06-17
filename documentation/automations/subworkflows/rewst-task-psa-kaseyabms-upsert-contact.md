# \[REWST - TASK] PSA-KaseyaBMS: Upsert Contact

This workflow automates contact creation and updates in Kaseya BMS by checking if a contact exists via ID or email, then either updating it or creating a new one. It’s ideal for MSPs automating onboarding, user provisioning, ticketing, or syncing across platforms, ensuring clean, duplicate-free records. The logic follows a decision tree to determine the right action, executes the proper API call, and includes error handling to save time and keep contact data consistent across systems.

This workflow contains 9 tasks.

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

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **check\_contact\_found**: Validation/verification
* **determine\_upsert**: Core integration: noop
* **no\_update\_contact\_endpoint**: Data modification
* **bms\_list\_contacts\_id**: Kaseya BMS integration: Get Contact by ID
* **bms\_list\_contacts\_email**: Kaseya BMS integration: List Contacts

### Jinja examples

#### Example 1

```jinja

<div data-gb-custom-block data-tag="set" data-0='@' data-1='@' data-2='@' data-3='@' data-4='@' data-5='@' data-6='@' data-7='@' data-8='@' data-9='@' data-10='@' data-11='@'></div>

{{ email | regex_match('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$') }}
```

This is used in transition condition to see if a email was provided.

#### Example 2

```jinja
{{ CTX.psa_contact_id | d }}
```

This is used in transition condition to see if a contact ID was provided.
