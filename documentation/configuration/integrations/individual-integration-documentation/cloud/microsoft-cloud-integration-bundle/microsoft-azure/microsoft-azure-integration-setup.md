# Microsoft Azure integration setup

{% hint style="warning" %}
**Microsoft Azure is now part of our new Microsoft Cloud Integration Bundle!** 🌟 We've combined our Microsoft integrations into a single, streamlined package for easier management and enhanced security.

This individual guide is specific to the Microsoft Azure section. You can learn more about the entire bundle on the [Microsoft Cloud Integration Bundle](../) page.
{% endhint %}

The Microsoft Azure integration, as part of the Rewst Microsoft Cloud Integration Bundle, offers streamlined management of Azure services, providing tools and capabilities that are essential for building scalable infrastructure, robust data storage solutions, advanced analytics, and comprehensive application management.

## **Key Features**

* **Scalable Infrastructure**: Dynamically adjust your computational and storage resources based on your needs.
* **Robust Data Storage**: Leverage Azure's secure and scalable storage solutions for all types of data.
* **Advanced Analytics and AI**: Utilize Azure's machine learning and analytics tools to enhance decision-making and innovation.
* **Application Management**: Deploy and manage applications efficiently using Azure’s DevOps and management tools.

***

## **Setup Instructions**

The setup process starts within the [..](../ "mention") page. Review Initial setup and first two steps there for further information. For Azure specific permissions review step 3 below:

#### [#initial-setup](../#initial-setup "mention") ->[#step-1-select-integrations](../#step-1-select-integrations "mention") -> [#step-2-configuration-parameters](../#step-2-configuration-parameters "mention")

### **Step 3: Tenant Permissions**

* You will see a list of permissions for Graph, Exchange Online, CSP, and Azure. Necessary permissions for Azure may include:
  * **Key Vault Impersonation**
  * **Service Management User Impersonation**
  * **Storage User Impersonation**
* Recommended options are pre-selected, but you can customize based on your needs.
* Click `Next` to proceed to [Step 4](../#step-4-authorize-integration)

{% hint style="info" %}
For more information on Azure Permissions, see the [#microsoft-azure-permissions](../microsoft-cloud-permissions.md#microsoft-azure-permissions "mention") section of the [microsoft-cloud-permissions.md](../microsoft-cloud-permissions.md "mention") page
{% endhint %}

{% hint style="warning" %}
**Azure Authorization Note:** A key vault is required in your Azure subscription. If you receive an "Invalid Client" error message when authorizing it is likely due to a missing key vault. [Creating an empty key vault](https://learn.microsoft.com/en-us/azure/key-vault/secrets/quick-create-portal) should resolve the issue.&#x20;
{% endhint %}

***

## **Troubleshooting Tips**

* **Authorization Issues**: If you encounter problems during the authorization step, ensure that you are using the correct account and that all permissions are properly set.
* **Permission Configuration Errors**: Double-check the permissions if there are issues with accessing certain functionalities. Ensure that the appropriate permissions are enabled and correctly configured.

{% hint style="info" %}
For troubleshooting tips, check out the [troubleshooting-installation-issues.md](../common-issues-with-microsoft-bundle/troubleshooting-installation-issues.md "mention") and [common-issues-with-microsoft-bundle](../common-issues-with-microsoft-bundle/ "mention") pages.
{% endhint %}

## **Best Practices for Microsoft Integrations**

For best practice information please refer to: [Best Practices for Microsoft Integrations](https://docs.rewst.help/documentation/integrations/cloud/authorization-best-practices).
