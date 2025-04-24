# M365 CSP/GDAP Permission Checker Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the M365 CSP/GDAP Permission Checker Crate do?

This Crate gives you a simple way to help validate that your GDAP roles and permissions are correct and assigned to the appropriate account. Your Rewst service account that is used to manage your Microsoft tenants requires [specific GDAP roles in order to perform it's various actions](https://docs.rewst.help/documentation/integrations/individual-integration-documentation/cloud/microsoft-cloud-integration-bundle/authorization-best-practices#recommended-roles-for-gdap).  The workflow in this Crate is designed to identify if any of these roles are missing at a specified client location.

For more information on the recommended GDAP roles, see the [Best Practices for Microsoft Integration](https://docs.rewst.help/documentation/integrations/cloud/authorization-best-practices) page in our documentation.

## Crate prerequisites

The [Microsoft Graph integration](../../documentation/integrations/individual-integration-documentation/cloud/microsoft-cloud-integration-bundle/microsoft-graph/microsoft-graph-integration-setup.md) must first be set up before unpacking this Crate.

## Unpack the M365 CSP/GDAP Permission Checker Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `M365 CSP/GDAP Permission Checker`**.**\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-04-22 at 3.33.58 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5.  Click **Continue**.\
    \


    <figure><img src="../../.gitbook/assets/Screenshot 2025-04-22 at 3.52.52 PM.png" alt=""><figcaption><p>The Crate's configuration page</p></figcaption></figure>
6. Enter your time estimate into the **Time Saved (seconds)** field.
7. Expand the **Always Pass** accordion menu. Ensure that **Activate for all current and future managed organizations** is toggled on to allow you to run the Crate ad-hoc for any of your client accounts.
8. Click **Unpack**.

## How to use the Crate

Using this Crate involves investigating the workflow within it.&#x20;

1. Navigate to **Automations > Workflows**.
2.  Search for `[ROC] M365: CSP/CPV Permission Checker`. Click on the workflow to open it in the workflow builder. \


    <figure><img src="../../.gitbook/assets/Screenshot 2025-04-22 at 4.27.59 PM.png" alt=""><figcaption></figcaption></figure>
3. Within the **\[ROC] M365: CSP/CPV Permission Checker** main workflow, click `Test`.
4. Select the tenant you want to check permissions for from the **Trigger Context Organization** dropdown menu. This list is derived from the organizations enabled in your trigger configuration.
5.  Enter the domain associated with the managing organization's tenant in the **Primary Domain of the MSP** field. \


    <figure><img src="../../.gitbook/assets/Screenshot 2025-04-24 at 9.08.54 AM.png" alt=""><figcaption></figcaption></figure>
6. Click **Test**.
7. Click **View Results**.
8. Click **Load Context**. \
   \
   ![](<../../.gitbook/assets/Screenshot 2025-04-24 at 9.09.31 AM.png>)
9. Click to expand all ![](<../../.gitbook/assets/Screenshot 2025-04-24 at 9.10.17 AM.png>) s in the context code. The errors messages contained within this record will indicate if roles are present or missing. For example:

```
"missing_roles": [
  {
    "ID": "No ID associated with no user",
    "Name": "Security Administrator",
    "Note": "No users assigned to this role.",
    "Found": false,
    "Principal Organization IDs": []
  },
  {
    "ID": "No ID associated with no user",
    "Name": "Authentication Policy Administrator",
    "Note": "No users assigned to this role.",
    "Found": false,
    "Principal Organization IDs": []
  }
]
```

## Technical execution of the Crate

### **Workflow steps** <a href="#workflow-steps" id="workflow-steps"></a>

<details>

<summary>Gather tenant info</summary>

* The **\[ROC] M365: Get Tenant Info by Domain** sub-workflow uses the collected domain, represented as `{{ CTX.primary_domain }}`.
* A `GET` request is made to: `https://login.microsoftonline.com/{{ CTX.provided_domain }}/.well-known/openid-configuration`

</details>

<details>

<summary>Determine tenant ID</summary>

A data alias is created for the `msp_tenant_id`, which is extracted from the returned tenant info using the following Jinja statement:

```
{{ CTX.tenant_info.authorization_endpoint.split('/')[3] }}
```

</details>

<details>

<summary>Assess roles</summary>

* The **\[ROC] M365: Get Role Assignments** sub-workflow is initiated.
* The [Necessary GDAP roles](https://docs.rewst.help/documentation/integrations/individual-integration-documentation/cloud/microsoft-cloud-integration-bundle/authorization-best-practices#recommended-roles-for-gdap) are confirmed through a `GET` request to the following Graph endpoint:
  * Base URL: `https://graph.microsoft.com/beta`
  * Endpoint: `/roleManagement/directory/roleAssignments?$filter=roleDefinitionId eq '{{ CTX.role_id }}'&$expand=principal`
* The output differentiates between present and absent roles, with results set for comparison in the subsequent step.

</details>

<details>

<summary>Compile and analyze results</summary>

* A comparison is conducted between the `msp_tenant_id` and the IDs from the returned roles to ensure appropriate permissions.
* A summary of the roles is generated, and a `missing roles` data alias is defined.

Example output:

```
"missing_roles": [
  {
    "ID": "No ID associated with no user",
    "Name": "Security Administrator",
    "Note": "No users assigned to this role.",
    "Found": false,
    "Principal Organization IDs": []
  },
  {
    "ID": "No ID associated with no user",
    "Name": "Authentication Policy Administrator",
    "Note": "No users assigned to this role.",
    "Found": false,
    "Principal Organization IDs": []
  }
]
```

</details>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
