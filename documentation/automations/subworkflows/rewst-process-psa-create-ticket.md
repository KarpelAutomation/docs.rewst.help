# \[REWST - PROCESS] PSA: Create Ticket

This workflow acts as a universal ticket creation tool that routes requests to the correct PSA system. It’s great for MSPs who need consistent ticketing across different triggers without hardcoding PSA-specific logic. It identifies the right platform, hands off the request to a matching subworkflow, and returns a standard response, making your automations flexible and vendor-agnostic even if your PSA changes later.

This workflow contains 12 tasks.

### Inputs

* **psa** - string
  * Ability to override PSA. Set to organization varilable `default_psa` is not supplied
* **board** - string
  * PSA Board ID
* **summary** - string
  * Summary
* **company\_id** - string
  * PSA Company ID
* **contact\_id** - string
  * PSA Contact ID
* **category\_one** - string
  * Set category 1 for Halo PSA
* **category\_two** - string
  * Set category 2 for Halo PSA
* **category\_four** - string
  * Set category 4 for Halo PSA
* **child\_company** - string
  * Child Company ID
* **contact\_email** - string
  * Contact Email
* **category\_three** - string
  * Set category 3 for Halo PSA
* **ticket\_item\_id** - string
  * Item ID to attach ticket to
* **ticket\_type\_id** - string
  * Ticket Type ID
* **ticket\_priority** - string
  * Ticket Priority
* **ticket\_subtype\_id** - string
  * TIcket Subtype ID
* **initial\_description** - string
  * Initial description on ticket
* **default\_status\_override** - string
  * Override Ticket Status ID

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **ticket\_id**: Ticket ID of the created ticket.
* ticket\_data: Ticket object turned from the PSA

### Key tasks

* **kaseya\_bms\_create\_ticket**: Creation/initialisation
* **determine\_provider**: Core integration: noop
* **begin**: Core integration: noop
* **freshdesk\_create\_ticket**: Creation/initialisation
* **cwpsa\_create\_ticket**: Creation/initialisation

### Jinja examples

#### Example 1

```jinja
{{ - CTX.board - }}
```

Used in input parameter 'board'

#### Example 2

```jinja
{{ - CTX.summary - }}
```

Used in input parameter 'summary'
