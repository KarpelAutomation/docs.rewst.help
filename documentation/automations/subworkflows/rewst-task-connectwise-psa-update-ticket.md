# \[REWST- TASK] ConnectWise PSA: Update Ticket

This ConnectWise PSA ticket update workflow helps MSPs streamline ticket management by handling different note types, updating statuses, and logging time automatically. It standardizes documentation, captures billable hours, supports automation from monitoring alerts, and keeps client communication clear while protecting internal discussions. The workflow checks inputs, pulls ticket data, applies configured updates, and ensures everything follows company policies—making it easy to integrate with other automations.

This workflow contains 26 tasks.

### Inputs

* **ticket\_id** - string
* **cwm\_tech\_id** - string
* **work\_minutes** - string
* **external\_note** - string
* **internal\_note** - string
* **resolution\_note** - string
* **complete\_workflow** - string
* **set\_ticket\_status** - string

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **format\_output**: Core integration: noop
* **check\_time\_entry\_org\_var**: Validation/verification
* **note\_type**: Core integration: noop
* **add\_internal\_resolution\_note**: ConnectWise PSA integration: Add Note to Service Ticket
* **add\_internal\_note**: ConnectWise PSA integration: Add Note to Service Ticket

### Jinja examples

#### Example 1

```jinja
{{ ORG.VARIABLES.time_entry_ticket_status | d }}
```

Used in transition condition

#### Example 2

```jinja
{{ CTX.internal_note|d }}
```

Used in transition condition
