# \[PROD - TASK] Pax8: Get License Counts

This workflow acts as a powerful building block that queries the Pax8 platform to retrieve comprehensive license counts across all client companies, providing essential data for license management, billing verification, and reporting workflows. By connecting to Pax8's API to list companies, gather product information, and enumerate active subscriptions, the workflow delivers accurate license quantity data that MSPs can leverage to identify unused licenses, verify billing accuracy, or trigger procurement processes. MSPs can integrate this into larger automation sequences that generate client-facing license reports, reconcile billing data between Pax8 and their PSA, or build automatic notifications when licenses need attention. The technical implementation is straightforward yet powerful - listing managed companies in Pax8, retrieving product details, and collecting subscription information to create a complete picture of license utilization across the entire client base.

This workflow contains 7 tasks.

### Inputs

This sub workflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **subscription\_name\_and\_quantity**: List of Pax8 companies and their counts.

### Key tasks

* **BEGIN**: Core integration: noop
* **handle failure actions**: Core integration: noop
* **pax\_8\_get\_product**: Data retrieval
* **pax\_8\_list\_companies**: Pax8 integration: List Companies
* **pax\_8\_list\_subscriptions**: Pax8 integration: List Subscriptions

### Jinja examples

#### Example 1

```jinja
{{ CTX.subscription_data }}
```

Used in publishing 'subscription\_name\_and\_quantity'
