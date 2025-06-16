# \[REWST- TASK] Halo PSA: Update Ticket

This workflow serves as a fundamental building block that enables the programmatic updating of tickets within Halo PSA, allowing MSPs to incorporate ticket modifications into larger automation sequences without manual intervention. It's particularly valuable for scenarios requiring consistent ticket documentation during automated remediation workflows, standardizing ticket quality control processes, and maintaining detailed audit trails when multiple systems interact with a single ticket. Technically, the workflow accepts a ticket ID and update parameters, adds private notes to document automated actions, performs the requested ticket updates with quality control checks, and verifies time tracking compliance – streamlining what would otherwise be time-consuming manual documentation tasks in the PSA.

This workflow contains 8 tasks.

### Inputs

* **ticket\_id** - string
* **work\_minutes** - string
* **external\_note** - string
* **internal\_note** - string
* **complete\_workflow** - string
* **set\_ticket\_status** - string

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **failed**: Core integration: noop
* **complete\_workflow**: Core integration: noop
* **add\_private\_note**: HaloPSA integration: Add or Update Actions
* **update\_ticket\_qc**: Data modification
* **check\_time**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{- CTX.halo_psa_ticket.id | d(None) -}}
```

Used in publishing 'ticket\_number'

#### Example 2

```jinja
{{- CTX.halo_psa_ticket | d(None) -}}
```

Used in publishing 'ticket\_data'
