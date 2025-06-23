# \[PROD - TASK] Datto PSA: Create Ticket

This workflow functions as a reusable building block that creates tickets in Datto Autotask PSA with proper contact association, enabling MSPs to programmatically generate standardized tickets across various automation scenarios. It's particularly valuable for integrating monitoring alerts with ticket creation, automating customer request handling, standardizing ticket generation across technicians, and incorporating ticket creation into complex workflows like onboarding/offboarding processes. Technically, the workflow first validates contact information by searching Datto PSA's contact database, then creates a properly formatted ticket with all required fields and associations, making it a reliable foundation for any automation that requires ticket generation within your PSA.

This workflow contains 8 tasks.

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
* **create\_ticket**: Creation/initialisation
* **format\_output**: Core integration: noop
* **failed**: Core integration: noop
* **find\_contact\_id**: Datto Autotask PSA integration: List Contacts by Search v2

### Jinja examples

#### Example 1

```jinja
{{ (CTX.child_company|d) or (CTX.company_id|d) or (ORG.VARIABLES.datto_company_id|d) }}
```

Task: set\_variables | Context: Used in publishing 'company\_id'

#### Example 2

```jinja
{ - CTX.ticket_type_id|d or ORG.VARIABLES.psa_datto_default_issue_type | d or ORG.VARIABLES.psa_new_user_ticket_type | d - }
```

Task: set\_variables | Context: Used in publishing 'issue\_type\_id'
