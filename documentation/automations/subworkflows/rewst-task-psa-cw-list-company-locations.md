# \[REWST - TASK] PSA-CW: List Company Locations

This workflow pulls a full list of client locations from ConnectWise PSA, making it a key tool for any automation that depends on site data. MSPs can use it to route techs, assign locations to tickets, or create location-based reports and inventories. It uses the ConnectWise API to grab standardized site info, removing the need for manual lookups and powering smarter, multi-site automations.

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
* **psa\_list\_sites**: ConnectWise PSA integration: List Sites

### Jinja examples

#### Example 1

```jinja
inactiveFlag={{ False }}
```

Used for writing the condition in the Conditions field of the psa\_list\_sites action.

#### Example 2

```jinja
{{ CTX.psa_company_id|d or ORG.VARIABLES.cw_manage_company_id|d }}
```

Used for populating the Company field of the psa\_list\_sites action.
