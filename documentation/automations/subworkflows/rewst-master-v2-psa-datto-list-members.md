# \[Rewst Master v2] PSA-Datto: List Members

This workflow queries and retrieves a comprehensive list of members (technicians and resources) from Datto Autotask PSA, serving as a critical building block for workflows that need to identify available staff, assign responsibilities, or generate reports. MSPs would find this function valuable for automated ticket routing based on technician availability, staff utilization reporting, and as an essential component in onboarding/offboarding automation sequences. Technically, the workflow executes a simple but powerful resources\_query action against the Datto PSA API, retrieving member data that can be filtered and utilized by parent workflows for decision-making processes. This reusable component eliminates the need to repeatedly code PSA member queries across multiple automations, providing standardized access to resource information throughout your automation ecosystem.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of member objects.

### Key tasks

* **list\_members**: Datto Autotask PSA integration: resources\_query

### Jinja example

```jinja
{{ [{"id": resources.id, "label": resources.firstName~" "~resources.lastName, "default": true if resources.id == ORG.VARIABLES[CTX.choose_variable]|d|int else false} for resources in TASKS.list_members.result.result if (resources.isActive == true) and (resources.userType != 13) ] }}
```

This is used in publishing the members data alias.
