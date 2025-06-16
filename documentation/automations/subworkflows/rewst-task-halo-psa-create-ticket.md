# \[REWST - TASK] Halo PSA: Create Ticket

This workflow serves as a fundamental building block that automates ticket creation in Halo PSA, enabling MSPs to programmatically generate tickets from external triggers or as part of larger process chains. MSPs will find this particularly valuable for scenarios like auto-generating tickets from monitoring alerts, customer portal submissions, email-to-ticket conversion, or integrating with other platforms like RMMs that lack native Halo PSA connections. Technically, the workflow first retrieves team and user information from Halo PSA to ensure proper ticket routing, then dynamically creates tickets with appropriate assignments based on input parameters, allowing for consistent ticket creation with standardized fields and categorization that maintains your service desk workflow integrity.

This workflow contains 9 tasks.

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
* **check\_for\_team\_match**: Validation/verification
* **halo\_list\_teams**: HaloPSA integration: List Teams
* **failure\_catch**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{- CTX.halo_psa_ticket.id | d -}}
```

Used in publishing 'ticket\_id'

#### Example 2

```jinja
{{- CTX.halo_psa_ticket | d -}}
```

Used in publishing 'ticket\_data'
