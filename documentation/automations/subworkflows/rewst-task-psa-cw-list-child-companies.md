# \[REWST - TASK] PSA-CW: List Child Companies

This workflow serves as a fundamental building block that retrieves child companies from ConnectWise PSA, enabling more complex automations to operate across multi-tiered client organizational structures. MSPs would find this valuable when creating automated client onboarding processes, generating hierarchical billing reports, implementing mass configuration changes across related entities, or building comprehensive documentation systems that reflect organizational structure. Technically, the workflow functions by connecting to the ConnectWise API to list companies, filtering for child companies, and outputting the structured data for consumption by parent workflows—creating a reusable component that eliminates repetitive code across your automation portfolio.

This workflow contains 5 tasks.

### Inputs

* **psa\_child\_company\_id** - string
  * If known, we pass a specific ID into the sub which will return the details specifically for that child company rather than returning all child companies

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **companies**: A list of companies for the organization that the workflow was run for.
* **child\_company\_lookup\_details**: Company details are returned if a specific ID was provided to the workflow via the `psa_child_company_id` field.

### Key tasks

* **list\_companies**: ConnectWise PSA integration: List Companies
* **set\_output\_var**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
deletedFlag=false AND leadFlag=false AND parentCompany/id={{ ORG.VARIABLES.cw_manage_company_id|d }}
```

Used for writing the condition in the list\_companies action.
