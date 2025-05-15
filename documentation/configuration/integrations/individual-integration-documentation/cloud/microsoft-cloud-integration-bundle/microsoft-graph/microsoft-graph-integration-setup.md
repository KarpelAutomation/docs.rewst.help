# Microsoft Graph integration setup

{% hint style="info" %}
**Microsoft Graph is now part of our new Microsoft Cloud Integration Bundle!** 🌟 We've combined our Microsoft integrations into a single, streamlined package for easier management and enhanced security.

This individual guide is specific to the Microsoft Graph section. You can learn more about the entire bundle on the [Microsoft Cloud Integration Bundle](../) page.
{% endhint %}

{% hint style="warning" %}
Microsoft Graph does not suppot multi-instance integration. For more on this topic, see our documentation [here](../../../../multi-instance-integration/),&#x20;
{% endhint %}

The Microsoft Graph integration within the Rewst Microsoft Cloud Integration Bundle facilitates seamless interaction with Microsoft services like Office 365, Azure Active Directory, SharePoint, and more. This integration is designed to simplify access to a wide array of Microsoft products through a single API endpoint.

## **Key Features**

* **Unified API Access**: Connect to multiple Microsoft services through one API for efficient data management.
* **Data Management**: Read and write data across various Microsoft platforms.
* **User and Access Management**: Manage user identities and access permissions seamlessly.
* **Enhanced Workflow Integration**: Automate and integrate workflows to enhance productivity across services like Outlook, Teams, and OneDrive.
* **Analytics and Reporting**: Perform analytics on user activities and generate reports to drive decision-making.

***

## **Setup Instructions**

The setup process starts within the [..](../ "mention") page. Review Initial setup and first two steps there for further information. For Graph specific permissions review step 3 below:

#### [#initial-setup](../#initial-setup "mention") ->[#step-1-select-integrations](../#step-1-select-integrations "mention") -> [#step-2-configuration-parameters](../#step-2-configuration-parameters "mention")

### **Step 3: Tenant Permissions**

* You will be presented with a list of necessary permissions for Microsoft Graph, which typically includes operations like reading and writing data, managing users, accessing calendars and contacts, and more.
* Recommended permissions are pre-selected, but you can adjust them according to your organizational needs.
* Click `Next` to proceed to [Step 4](../#step-4-authorize-integration)

{% hint style="info" %}
For more information on Graph Permissions See the [#microsoft-graph-permissions](../microsoft-cloud-permissions.md#microsoft-graph-permissions "mention") section of the [microsoft-cloud-permissions.md](../microsoft-cloud-permissions.md "mention") page
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

Our documentation comes directly from Microsoft. If you need more information on managing groups in Microsoft Graph, we recommend visiting [this Microsoft reference page](https://learn.microsoft.com/en-us/graph/api/resources/groups-overview).
