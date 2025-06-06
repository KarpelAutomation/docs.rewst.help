# \[REWST - TASK] Connectwise PSA: Create Ticket

This workflow automates the full ticket creation process in ConnectWise PSA, handling contact validation, agreement selection, and ticket formatting. MSPs can use it to standardize ticket creation across use cases like alert-to-ticket automation, onboarding, or external system triggers. It pulls agreement info, checks contact details, formats the ticket, and adds metadata—making it a reliable, reusable component that speeds up building more complex automations.

This workflow contains 14 tasks.

### Inputs

* **board** - string
* **summary** - string
* **company\_id** - string
* **contact\_id** - string
* **category\_one** - string
* **category\_two** - string
* **category\_four** - string
* **child\_company** - string
* **contact\_email** - string
* **category\_three** - string
* **ticket\_item\_id** - string
* **ticket\_type\_id** - string
* **ticket\_priority** - string
* **ticket\_subtype\_id** - string
* **initial\_description** - string
* **default\_status\_override** - string

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.
* **ticket\_id**: Returns the ticket ID of the created ticket.
* **ticket\_data**: Return the ticket object of the created ticket.

### Key tasks

* **list\_agreements**: ConnectWise PSA integration: List Agreements
* **check\_contact\_id\_or\_email**: Validation/verification
* **summary\_length\_check**: Validation/verification
* **failed**: Core integration: noop
* **create\_service\_ticket\_with\_agreement**: Creation/initialisation

### Jinja examples

#### Example 1

```jinja
{{ CTX.contact_email|d }}
```

Used in the contact\_email provided transition condition to check if the contact needs resolved by email.

### Expression 2: Contact ID Check

#### Example 2

```jinja
{{ CTX.contact_id|d }}
```

This expression retrieves a contact ID from the workflow context, typically used in transition conditions to determine if a valid contact was found in a previous step. It includes a default filter (`|d`) to gracefully handle cases where the contact ID doesn't exist, preventing workflow errors.
