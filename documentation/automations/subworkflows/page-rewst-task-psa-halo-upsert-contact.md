# Page\[REWST - TASK] PSA-Halo: Upsert Contact

This workflow provides a standardized method for creating or updating contacts in HaloPSA, serving as a critical building block for client management automations by ensuring contact data consistency across your MSP's systems. The workflow functions by searching for an existing contact by email, then either updating the existing record or creating a new contact when one doesn't exist, eliminating duplicate records and reducing manual data entry errors. This automation is particularly valuable for MSPs during client onboarding processes, employee changes at client sites, synchronizing contact data between systems (like CRM to PSA), and any ticket-related workflow where accurate contact information is essential. Technicians can leverage this reusable component within larger automation sequences whenever a new contact needs to be added or updated in HaloPSA, ensuring data integrity across the PSA platform.

This workflow contains 9 tasks.

### Inputs

* **psa\_contact\_id** - string
  * Specify the Contact to update, if known
* **existing\_ticket** - string
  * Specify the existing ticket id in order to update an existing ticket. If none specified, we will create a new ticket.
* **user\_attributes** - object
  * Specify the user object that includes the user properties
  * Default: `{{ { } }}`
* **psa\_disable\_contact** - boolean
  * Specify whether to disable the contact if found. Defaults to false.
  * Default: `{{ false }}`
* **psa\_contact\_location** - string
  * Specify the location for the contact to be created under

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key Tasks

* **check\_contact\_found**: Validation/verification
* **determine\_upsert**: Core integration: noop
* **halo\_get\_contact\_id**: Data retrieval
* **halo\_update\_contact**: Data modification
* **halo\_create\_contact**: Creation/initialisation

### Jinja examples

#### Example 1

```jinja
{{ CTX.matching_contact.users | length == 1 or CTX.matching_contact.record_count == 1 }}
```

This condition evaluates whether exactly one contact was found in your system, checking either if there's exactly one user in the matching\_contact.users array OR if the record\_count equals 1. The expression accesses the contact data retrieved from a previous lookup task, typically used to determine whether a workflow should proceed or take an alternative path based on contact identification success. MSPs could modify this expression to implement more specific matching criteria, such as checking additional properties or implementing different threshold values for matches. For example, you might change it to `CTX.matching_contact.users | length >= 1` if you want the workflow to proceed when one or more contacts are found rather than requiring exactly one match.

### Expression 2: Extracting a contact ID with fallback logic

#### Example 2

```jinja
{{ CTX.matching_contact.users[0].id or CTX.matching_contact.id|d }}
```

This expression retrieves a contact ID using fallback logic - it first attempts to get the ID from the first user in the users array, but if that fails, it falls back to the direct contact ID property, with a final default of an empty string if both are unavailable. The expression is accessing identity data from a contact record and is typically used to extract a unique identifier that will be used in subsequent workflow tasks. MSPs can modify this to handle different data structures or to implement additional fallback options based on their specific integrations or data sources. For instance, you might modify it to `CTX.matching_contact.users[0].email` or `CTX.matching_contact.email|d('unknown@example.com')` to extract an email address instead of an ID, with a custom default value.
