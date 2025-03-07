# View Rewst integration org variables

<details>

<summary><strong>Crate Specifications</strong></summary>

**Creation Date**: September 27th, 2023

**Components**:

* **Parent Workflows**:
  * `[ROC] Rewst: Get All Integration Ids`
* **Sub-Workflows**:
* `get_org_ids`

**Trigger**:

* Manual

**Configuration**

* **Workflow Name**: Editable to suit your organizational naming conventions.
* **Time Saved**: Estimate the time saving in seconds for documentation and efficiency analysis

</details>

{% hint style="success" %}
If you're interested in taking advantage of the **View Rewst Integration Org Variables** within your Rewst organization, unpack it from the Crate Marketplace.
{% endhint %}

## Crate Overview

This crate is designed to streamline the process of mapping and managing organization variables across different integrations configured in Rewst. It includes two key workflows:

1. **\[ROC] Rewst: Get All Integration Ids**
2. **get\_org\_ids**

### High-Level Data Flow

* The parent workflow, `[ROC] Rewst: Get All Integration Ids`, begins by listing all organizations within Rewst, gathering their respective integrations.
* It then triggers the `get_org_ids` subworkflow for each organization ID, as specified in `{{CTX.all_org_ids}}`.
  * This execution is done using the `Run As Org` setting, ensuring that the subworkflow processes data in the context of each specific organization.

### Subworkflow Processing

* Inside the `get_org_ids` subworkflow:
  * **Task 1**: Sets up the base for integration mapping with `org_variables`, establishing a foundational dictionary that maps integration names to their Rewst variable names.
  * **Task 2**: Fetches the Microsoft Tenant ID (`ms_tenant_id`) for the specific organization in focus. This is a key piece of data that will be included in the final integration mapping.
  * **Task 3**: Constructs a comprehensive mapping of integration IDs (`integration_ids`), using the previously fetched `ms_tenant_id` and other relevant organization data.

### Data Aggregation and Output

* Upon completion of the subworkflow for each organization, the parent workflow receives the raw results (`unformated_ids`).
* These results are then aggregated into a single, comprehensive list of integration IDs across all organizations (`all_integration_ids`).

***

## Workflow Breakdown: **`[ROC] Rewst: Get All Integration Ids`**

### **Action**: [List Organization](https://docs.rewst.help/documentation/workflows/actions-in-rewst/rewst-actions/organization-actions#list-organizations)

* **Input Parameters**: None specified; lists all organizations in Rewst.
  * **Data Alias:** `all_org_ids` stores the list of returned results.

### **Action**: [List Integrations for Organization](https://docs.rewst.help/documentation/workflows/actions-in-rewst/rewst-actions/integrations-and-external-association-actions#list-integrations-for-organization)

* **Input Parameters**:
  * `org_id`: Uses `{{ ORG.ATTRIBUTES.id }}` to fetch integrations for the current organization.

### Action: Executes the `get_org_ids` subworkflow.

* **Purpose**: To process integration data for each organization.
* **Run As Org**: Utilizes `{{item()}}` to run the subworkflow in the context of each organization in `{{CTX.all_org_ids}}`.
* **With Items Configuration**:
  * Iterates over `{{CTX.all_org_ids}}` to run the subworkflow for each organization.
  * Uses `{{ CTX.installed_integrations }}` as input to provide installed integrations for each organization.
  * `concurrency` set to "7" for parallel processing.
* **Output**:
  * Data Alias `unformated_ids`: Collects raw subworkflow results.
  * Data Alias `all_integration_ids`: Aggregates comprehensive integration IDs mappings.

***

## Subworkflow Breakdown: `get_org_ids`

### **Action**: `noop`

* **Purpose**: Starts the subworkflow.
* **Data Alias:** `org_variables`: Mapping dictionary for integration names to Rewst variable names.

### **Rewst Action**: [**Get External Reference**](https://docs.rewst.help/documentation/workflows/actions-in-rewst/rewst-actions/integrations-and-external-association-actions#get-external-reference)

* **Input Parameters**:
  * `identifier`: `ms_tenant_id`
  * `org_id`: `{{ ORG.ATTRIBUTES.id }}`
* **Data Alias:** `ms_tenant_id` stores the result of the action.

### **Action**: `noop`

* **Purpose:** Custom Logic in Data Alias designed to create a comprehensive mapping of integration IDs for each organization, considering various variables and conditions.
* **Data Alias:** `integration_ids` maps integration IDs to the organization.

**Jinja Template**:

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

### **Jinja Logic Explanation**

* **Organization Attributes**:
  * `rewst_name`: Retrieves the name of the organization from its attributes.
  * `rewst_id`: Retrieves the unique ID of the organization.
* **Integration Mapping**:
  * This portion constructs a dictionary for each integration within the organization.
  * `integration.ref`: Represents the reference name of each integration.
  * The template checks multiple variables for each integration (like `"_client_id"`, `"_tenant_id"`, `"_org_id"`, etc.) and assigns the first found value to the integration's reference name.
  * It uses a conditional (`if`) statement to include only those integrations where relevant variables are found.
* **Microsoft Tenant ID Mapping**:
  * Adds the Microsoft Tenant ID (`"m365"`) to the mapping, using the result from the previous "get\_foreign\_object\_reference" task.
  * The loop (`for tenant in range(0,1)`) is designed to include this mapping only if the `ms_tenant_id` is found.

### Output

* The output is a nested dictionary with each organization’s name and ID, along with a detailed mapping of all their integrations and specific attributes like client IDs, tenant IDs, etc.
* This structured output is crucial for workflows that need to understand and manipulate data across multiple integrations and platforms within Rewst.

***

## Conclusion

The `View Rewst Integration Org Variables` crate offers a powerful solution for seamlessly mapping and managing organization variables across various integrations within Rewst. Through its comprehensive workflows, users gain the ability to aggregate and contextualize integration data specific to each organization. This crate not only simplifies the process of dealing with diverse integrations but also enhances the efficiency and accuracy of data handling within the Rewst platform.
