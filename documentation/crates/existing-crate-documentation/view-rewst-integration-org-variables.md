# View Rewst integration Org Variables

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the View Rewst Integration Org Variables Crate do?

The View Rewst Integration Org Variables Crate offers a powerful solution for seamlessly mapping and managing [organization variables](../../configuration/organization-variables.md) across various integrations within Rewst. Through its comprehensive workflows, gain the ability to aggregate and contextualize integration data specific to each organization. This Crate not only simplifies the process of dealing with diverse integrations, but also enhances the efficiency and accuracy of data handling within the Rewst platform.

## Why use the View Rewst Integration Org Variables Crate?

If you're struggling with inconsistent naming across various platforms, the advanced mapping feature of this crate allows you to easily map integration variables across different integrations, based on their unique IDs. Say goodbye to tedious string manipulations and hardcoding matches.

## Crate overview

This Crate includes two key workflows:

1. **\[ROC] Rewst: Get All Integration IDs**
2. **get\_org\_ids**

The parent workflow `[ROC] Rewst: Get All Integration Ids`begins by listing all organizations within Rewst, gathering their respective integrations.

It then triggers the `get_org_ids` subworkflow for each organization ID, as specified in `{{CTX.all_org_ids}}`.

This execution is done using the `Run As Org` setting, ensuring that the subworkflow processes data in the context of each specific organization.

### Subworkflow processing

* Inside the `get_org_ids` subworkflow:
  * **Task 1**: Sets up the base for integration mapping with `org_variables`, establishing a foundational dictionary that maps integration names to their Rewst variable names.
  * **Task 2**: Fetches the Microsoft Tenant ID (`ms_tenant_id`) for the specific organization in focus. This is a key piece of data that will be included in the final integration mapping.
  * **Task 3**: Constructs a comprehensive mapping of integration IDs (`integration_ids`), using the previously fetched `ms_tenant_id` and other relevant organization data.

### Data aggregation and output

* Upon completion of the subworkflow for each organization, the parent workflow receives the raw results (`unformated_ids`).
* These results are then aggregated into a single, comprehensive list of integration IDs across all organizations (`all_integration_ids`).

## Breakdown of workflows in this Crate

### **Workflow: `[ROC] Rewst: Get All Integration Ids`**

#### **Action**: [List Organization](https://docs.rewst.help/documentation/automations/actions-in-rewst/rewst-actions#list-organizations)

* **Input parameters**: None specified; lists all organizations in Rewst.
  * **Data alias:** `all_org_ids` stores the list of returned results.

#### **Action**: [List Integrations for Organization](https://docs.rewst.help/documentation/crates/existing-crate-documentation/view-rewst-integration-org-variables#action-list-integrations-for-organization)

* **Input parameters**:
  * `org_id`: Uses `{{ ORG.ATTRIBUTES.id }}` to fetch integrations for the current organization.

#### Action: Executes the `get_org_ids` subworkflow.

* **Purpose**: To process integration data for each organization.
* **Run As Org**: Utilizes `{{item()}}` to run the subworkflow in the context of each organization in `{{CTX.all_org_ids}}`.
* **With Items configuration**:
  * Iterates over `{{CTX.all_org_ids}}` to run the subworkflow for each organization.
  * Uses `{{ CTX.installed_integrations }}` as input to provide installed integrations for each organization.
  * `concurrency` set to "7" for parallel processing.
* **Output**:
  * Data alias `unformated_ids`: Collects raw subworkflow results.
  * Data alias `all_integration_ids`: Aggregates comprehensive integration IDs mappings.

### Subworkflow breakdown: `get_org_ids`

#### **Action**: `noop`

* **Purpose**: Starts the subworkflow.
* **Data alias:** `org_variables`: Mapping dictionary for integration names to Rewst variable names.

#### **Rewst Action**: [**Get External Reference**](https://docs.rewst.help/documentation/crates/existing-crate-documentation/view-rewst-integration-org-variables#rewst-action-get-external-reference)

* **Input parameters**:
  * `identifier`: `ms_tenant_id`
  * `org_id`: `{{ ORG.ATTRIBUTES.id }}`
* **Data alias:** `ms_tenant_id` stores the result of the action.

#### **Action**: `noop`

* **Purpose:** Custom Logic in Data Alias designed to create a comprehensive mapping of integration IDs for each organization, considering various variables and conditions.
* **Data alias:** `integration_ids` maps integration IDs to the organization.

### **Jinja template**:

```django
{{-
        {
        "rewst_name": ORG.ATTRIBUTES.name,
        "rewst_id": ORG.ATTRIBUTES.id,
          **{
            integration.ref: ORG.VARIABLES[CTX.org_variables[integration.ref]] 
              or ORG.VARIABLES[integration.ref+"_client_id"] 
              or ORG.VARIABLES[integration.ref+"_tenant_id"] 
              or ORG.VARIABLES[integration.ref.replace("_", "")+"_org_id"] 
              or ORG.VARIABLES[integration.ref+"_company_id"] 
              or ORG.VARIABLES[integration.ref+"_account_id"] 
              or ORG.VARIABLES[integration.ref+"_site_id"] 
              or ORG.VARIABLES[integration.ref+"_customers"] 
              or ORG.VARIABLES[integration.ref+"_org_domain"] 
              or ORG.VARIABLES[integration.ref.replace("_rmm", "")+"_org_id"]|d
            for integration in CTX.installed_integrations
            if ORG.VARIABLES[CTX.org_variables[integration.ref]] 
              or ORG.VARIABLES[integration.ref+"_client_id"] 
              or ORG.VARIABLES[integration.ref+"_tenant_id"] 
              or ORG.VARIABLES[integration.ref.replace("_", "")+"_org_id"] 
              or ORG.VARIABLES[integration.ref+"_company_id"] 
              or ORG.VARIABLES[integration.ref+"_account_id"] 
              or ORG.VARIABLES[integration.ref+"_site_id"] 
              or ORG.VARIABLES[integration.ref+"_customers"] 
              or ORG.VARIABLES[integration.ref+"_org_domain"] 
              or ORG.VARIABLES[integration.ref.replace("_rmm", "")+"_org_id"]|d
            },
          **{ 
            "m365": CTX.ms_tenant_id.result.reference_id
            for tenant in range(0,1)
            if CTX.ms_tenant_id.result.reference_id
            }
        }
-}}
```

### **Jinja logic explanation**

* **Organization attributes**:
  * `rewst_name`: Retrieves the name of the organization from its attributes.
  * `rewst_id`: Retrieves the unique ID of the organization.
* **Integration mapping**:
  * This portion constructs a dictionary for each integration within the organization.
  * `integration.ref`: Represents the reference name of each integration.
  * The template checks multiple variables for each integration (like `"_client_id"`, `"_tenant_id"`, `"_org_id"`, etc.) and assigns the first found value to the integration's reference name.
  * It uses a conditional (`if`) statement to include only those integrations where relevant variables are found.
* **Microsoft tenant ID mapping**:
  * Adds the Microsoft Tenant ID (`"m365"`) to the mapping, using the result from the previous "get\_foreign\_object\_reference" task.
  * The loop (`for tenant in range(0,1)`) is designed to include this mapping only if the `ms_tenant_id` is found.

## Output

The output is a nested dictionary with each organization’s name and ID, along with a detailed mapping of all their integrations and specific attributes like client IDs, tenant IDs, etc.

This structured output is crucial for workflows that need to understand and manipulate data across multiple integrations and platforms within Rewst.

{% hint style="success" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

***
