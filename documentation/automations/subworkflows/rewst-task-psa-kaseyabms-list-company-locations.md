# \[REWST - TASK] PSA-KaseyaBMS: List Company Locations

This workflow pulls all location data for a specific client from Kaseya BMS, making it a key component for automations that depend on site-specific info. MSPs can use it for onboarding, multi-site monitoring, location-based ticket routing, or service deployments. It uses the Kaseya API to fetch and format the data, then passes it to other workflows, removing the need for manual lookups and supporting smarter, location-aware automation.

This workflow contains 5 tasks.

### Inputs

* **psa\_location\_id** - string
  * If known, we pass a specific ID into the sub which will return the details specifically for that location rather than returning all locations

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **locations**: A list of locations for the organization that the workflow was run for.
* **location\_lookup\_details**: Location details are returned if a specific ID was provided to the workflow via the `psa_location_id` field.

### Key tasks

* **set\_output\_var**: Core integration: noop
* **kaseya\_list\_locations**: Kaseya BMS integration: List Locations by Account

### Jinja Examples

#### Example 1

```jinja
{{-
    [
        {
            "id": location.id,
            "label": location.name
        }
    for location in CTX.company_locations
    ] | unique(attribute="id")| sort(attribute='label')
-}}
```

This is used for defining the all\_locations data alias.

#### Example 2

```jinja
{{-
    [
        {
          "name": location.name,
          "id": location.id,
          "original_object": "psa_contact_location",
          "company_id": location.accountId,
          "is_main": location.isMain,
          "address_line_1": location.addressLine1|d,
          "address_line_2": location.addressLine2|d,
          "city": location.city|d,
          "state": location.stateReference.name|d,
          "postcode": location.zip|d
        }
        for location in CTX.company_locations
        if location.id|string == CTX.psa_location_id|string
    ]
-}}
```

This is used for defining the location\_lookup\_details.
