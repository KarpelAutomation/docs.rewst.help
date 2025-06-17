# \[REWST - TASK] Kaseya BMS: Create Ticket

This workflow creates tickets in Kaseya BMS with built-in validation for key details like service request ID, source, location, contact, and status. MSPs can use it in automations that convert alerts to tickets, standardize client portal submissions, or manage onboarding/offboarding tasks. It checks inputs, pulls needed reference data from BMS, and creates the ticket with error handling, making it a solid, reusable foundation for any ticket-related automation in Kaseya BMS.

This workflow contains 16 tasks.

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

* **BEGIN**: Core integration: noop
* **format\_output**: Core integration: noop
* **check\_for\_service\_request\_id**: Validation/verification
* **check\_for\_source\_id**: Validation/verification
* **check\_for\_location\_id**: Validation/verification

### Jinja example

```jinja
{{ CTX.create_ticket.result.id }}
```

This is used to define the ticket\_id alias.
