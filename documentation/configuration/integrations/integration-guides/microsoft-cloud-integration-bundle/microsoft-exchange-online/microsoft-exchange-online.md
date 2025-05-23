---
description: >-
  Microsoft Exchange Online provides access to Microsoft Exchange Online
  resources (i.e. Mailboxes, Distribution Groups, etc.).
---

# Microsoft Exchange Online

{% hint style="info" %}
**Microsoft Exchange Online is now part of our new Microsoft Cloud Integration Bundle!** 🌟 We've combined our Microsoft integrations into a single, streamlined package for easier management and enhanced security.

This individual guide is for the sections specific to Microsoft Exchange Online setup. You can learn more about the entire bundle on the [Microsoft Cloud Integration Bundle](../) page.
{% endhint %}

{% hint style="warning" %}
Microsoft Exchange Online does not suppot multi-instance integration. For more on this topic, see our documentation [here](../../../multi-instance-integration/),&#x20;
{% endhint %}

The Microsoft Exchange Online integration in the Rewst Microsoft Cloud Integration Bundle provides advanced email and calendar management capabilities. This integration simplifies the administration of Exchange services, enhancing productivity and security within your organization.

## **Key Features**

* **Advanced Email Management**: Manage user mailboxes, settings, and security policies efficiently.
* **Enhanced Calendar Capabilities**: Facilitate better scheduling and calendar sharing across your organization.
* **Seamless Integration**: Works closely with other Microsoft services for a cohesive management experience, particularly with Microsoft Graph for enhanced functionality.

***

## **Setup Instructions**

The setup process starts within the [..](../ "mention") page. Review Initial setup and first two steps there for further information. For Exchange Online specific permissions review step 3 below:

#### [#initial-setup](../#initial-setup "mention") ->[#step-1-select-integrations](../#step-1-select-integrations "mention") -> [#step-2-configuration-parameters](../#step-2-configuration-parameters "mention")

### **Step 3: Tenant Permissions**

* You will see a list of necessary permissions for Microsoft Exchange Online, which typically includes:
  * **Exchange.Manage**: Manage general features and settings.
  * **Exchange.ManageAsApp**: Manage Exchange features at the app level.
  * **Full\_Access\_As\_App**: Grant full access to the app to manage Exchange.
* Click `Next` to proceed to [Step 4](../#step-4-authorize-integration)

{% hint style="info" %}
For more information on Exchange Permissions[#microsoft-exchange-online-permissions](../microsoft-cloud-permissions.md#microsoft-exchange-online-permissions "mention") section of the [microsoft-cloud-permissions.md](../microsoft-cloud-permissions.md "mention") page
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

## Actions

### Invoke Command

Invoke a command in Microsoft Exchange Online (EXO).

<table data-full-width="true"><thead><tr><th width="800">Name</th><th width="780.3333333333333">Type</th><th>Description</th></tr></thead><tbody><tr><td>Cmdlet Name</td><td><code>String</code></td><td><strong>Required</strong>. The name of the cmdlet to run.</td></tr><tr><td>Parameters</td><td><code>Array[[Parameter](#parameter)]</code></td><td><strong>Required</strong>. The parameters to pass to the cmdlet.</td></tr><tr><td>Remove Empty</td><td><code>boolean</code></td><td>If <code>true</code>, any null value will be stripped before sending the request. Default: <code>true</code>.</td></tr><tr><td>Anchor Mailbox</td><td></td><td>Optional. Some cmdlets require an anchor mailbox header to be specified. This can be overridden here if desired or for troubleshooting purposes.</td></tr></tbody></table>

