# \[REWST- TASK] PSA-Kaseya BMS: Update Ticket

This workflow automates key ticket operations in Kaseya BMS—like adding notes, updating fields, and logging time—making it a powerful tool for managing tickets beyond just creation. MSPs can use it to handle RMM-triggered updates, enforce documentation standards, track time accurately, and meet compliance requirements. It checks that the ticket exists, applies the requested changes, and uses system roles and work types to keep data clean. This helps build full automation chains that keep tickets up to date with little manual effort.

This workflow contains 16 tasks.

### Inputs

* **ticket\_id** - string
* **work\_minutes** - string
* **external\_note** - string
* **internal\_note** - string
* **resolution\_note** - string
* **complete\_workflow** - string
* **set\_ticket\_status** - string

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **begin**: Core integration: noop
* **kaseya\_create\_external\_note**: Creation/initialisation
* **check\_time**: Validation/verification
* **kaseya\_bms\_list\_tickets**: Kaseya BMS integration: List Tickets
* **check\_notes**: Validation/verification

### Jinja example

```jinja
{{ CTX.ticket_id }}
```

This is used in input for kaseya\_bms\_update\_ticket.
