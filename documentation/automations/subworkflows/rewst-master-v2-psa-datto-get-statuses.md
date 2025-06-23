# \[Rewst Master v2] PSA-Datto: Get Statuses

This building block workflow retrieves all available ticket status options from Datto PSA by querying the platform's field definitions and picklists. It serves as a critical utility component in larger automation processes by providing dynamic access to current ticket status values rather than relying on hardcoded values that may change. MSPs would find this valuable when building ticket lifecycle automations, status-based reporting, client portal integrations, or any process requiring accurate ticket status mapping between systems. Technically, this workflow executes a single API call to Datto PSA's field definitions endpoint, retrieving the complete set of valid ticket statuses that can then be referenced by more complex workflows to ensure they're always using current, valid status options.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of status objects.

### Key tasks

* **get\_statuses**: Data retrieval

### Jinja example

#### Example&#x20;

```jinja
{{-
        {
            "id": status.value,
            "name": status.label,
            "current_default": status.value|int == ORG.VARIABLES[CTX.choose_variable]|d|int
        }
    for item in CTX.all_statuses_collected.fields
    if item.isPickList == true and item.name == "status"
    for status in item.picklistValues
    if status.isActive == true
-}}
```

This is used in publishing the all\_statuses data alias.
