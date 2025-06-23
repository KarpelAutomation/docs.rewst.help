# \[REWST- TASK] Datto PSA: Update Ticket

This building block automates the process of updating Datto PSA tickets with standardized notes, time entries, and status changes, providing a consistent method for ticket documentation that can be triggered from other automation workflows. MSPs will find this particularly valuable for ensuring technician time is properly captured for billing, maintaining consistent documentation standards across the team, and enabling other systems like RMM tools to automatically update tickets when alerts are resolved or actions are completed. The workflow functions by first validating the ticket exists and checking input parameters (like time entries), then conditionally adding notes, logging billable time, and updating ticket status and quality control fields—all while maintaining proper error handling to ensure reliable ticket updates.

This workflow contains 20 tasks.

### Inputs

* **status** - string
* **queue\_id** - string
* **ticket\_id** - string
* **work\_minutes** - string
* **external\_note** - string
* **internal\_note** - string
* **complete\_workflow** - string
* **datto\_ticket\_number** - string

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **check\_time\_amount**: Validation/verification
* **internal\_note**: Datto Autotask PSA integration: Create Ticket Note v2
* **check\_if\_should\_be\_internal**: Validation/verification
* **add\_time\_entry**: Datto Autotask PSA integration: Create Time Entry v2
* **list\_tickets**: Datto Autotask PSA integration: List Tickets by Filter v2

### Jinja examples

#### Example 1

```jinja
{{- CTX.status -}}
```

This is used in status\_set action in the status input.

#### Example 2

```jinja
{{- CTX.external_note[:5000] or "" -}}
```

This is used in input for Description field of external\_note action.
