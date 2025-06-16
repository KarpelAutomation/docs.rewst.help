# \[REWST - TASK] PSA-Halo: List Company Locations

This workflow pulls all client location data from HaloPSA, making it a handy building block for automations that need accurate site info. It uses a simple API call to fetch and format location details, so other workflows can use them for things like dispatching techs, onboarding, asset tracking, or location-specific monitoring. MSPs can plug it in wherever up-to-date location data is key to managing tickets or making operational decisions.

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
* **halo\_list\_sites**: HaloPSA integration: List Sites

### Jinja examples

#### Example 1

```jinja
{{ [{"id": sites.id, "label": sites.name} for sites in CTX.company_locations.sites]| sort(attribute='label') }}
```

This expression creates a sorted dropdown-friendly list of company locations by transforming site data into an ID/label format that works well with form elements. It accesses the `CTX.company_locations.sites` data and extracts just the ID and name fields, sorting them alphabetically by name for easier selection. MSPs can modify this expression to change the sorting order (e.g., `sort(attribute='id')` for ID-based sorting) or add additional fields like `\"region\": sites.region` to provide more context in selection menus. For example, you might customize it to filter only active sites: `[{\"id\": sites.id, \"label\": sites.name} for sites in CTX.company_locations.sites if sites.status == \"active\"]`.

#### Example 2

```jinja
{{-
    [
        {
          "name": location.name,
          "id": location.id,
          "original_object": "psa_contact_location",
          "company_id": location.client_id,
          "company_name": location.client_name,
          "address_line_1": location.addressLine1|d,
          "address_line_2": location.addressLine2|d,
          "city": location.city|d,
          "state": location.stateReference.name|d,
          "postcode": location.zip|d
        }
        for location in CTX.company_locations.sites
        if location.id|string == CTX.psa_location_id|string
    ]
-}}
```

This expression extracts comprehensive location information by finding and formatting details about a specific company location that matches the PSA location ID. It accesses multiple properties from the matching location object, including address components and company details, using the `|d` default filter to handle missing values gracefully. MSPs can customize this by changing the filter condition (e.g., matching by name instead of ID) or modifying the structure to include additional fields like `"country": location.country|d` or `"phone": location.phone|d` that might be relevant to their documentation or integration needs.
