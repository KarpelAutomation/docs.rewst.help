---
description: >-
  This document outlines the requirements and the setup for the Microsoft CSP
  integration, one of the most complex integrations due to the diversity of
  Microsoft's products and services.
---

# Microsoft CSP integration setup

{% hint style="success" %}
**Microsoft CSP is now part of our new Microsoft Cloud Integration Bundle!** 🌟 We've combined our Microsoft integrations into a single, streamlined package for easier management and enhanced security.

This individual guide for the sections specific to the Microsoft CSP setup. You can learn more about the entire bundle on the [Microsoft Cloud Integration Bundle](../) page.
{% endhint %}

## **Overview**

The Microsoft CSP integration within the Rewst Microsoft Cloud Integration Bundle enhances the management of Cloud Solution Provider relationships and services. It simplifies the delegation and management of permissions across customer tenants, offering streamlined access to manage and administer Microsoft services.

## **Key Features**

* **Delegated Admin Permissions**: Manage CSP services with delegated permissions, simplifying customer management.
* **Efficient Client Mapping**: Easily map CSP clients to Rewst organizations to maintain clear and organized client management.
* **Seamless Service Integration**: Integrates closely with other Microsoft services for a cohesive management experience.

***

## **Setup Instructions**

The setup process starts within the [..](../ "mention") page. Review Initial setup and first two steps there for further information. For CSP specific permissions review step 3 below:

#### [#initial-setup](../#initial-setup "mention") ->[#step-1-select-integrations](../#step-1-select-integrations "mention") -> [#step-2-configuration-parameters](../#step-2-configuration-parameters "mention")

### **Step 3: Tenant Permissions**

* You will be presented with a list of necessary permissions for Microsoft CSP, which typically includes user impersonation permissions to manage CSP functions.
* Click `Next` to proceed to [Step 4](../#step-4-authorize-integration)

{% hint style="info" %}
For more information on CSP Permissions See the [#microsoft-csp-permissions](../microsoft-cloud-permissions.md#microsoft-csp-permissions "mention")section of the [microsoft-cloud-permissions.md](../microsoft-cloud-permissions.md "mention") page
{% endhint %}

## **Managing Client Mappings and Delegated Access**

* **Locate Desired Client**: Search for the client you intend to map within the Rewst platform. Once located, select their name from a drop-down menu.
* **Consent to Delegated Access**: Click next to the client mapping to consent to delegated access for the selected client, facilitating the management of their CSP services under your administration.

***

## **Troubleshooting Tips**

{% hint style="danger" %}
Please refer to the [issue-alerts.md](../../../../../../updates/issue-alerts.md "mention") page if you see an error saying, "One or more organizations are linked to multiple customers. This will cause errors when attempting to run Microsoft actions on these organizations"
{% endhint %}

* **Authorization Issues**: Ensure that you are using the correct account and that all permissions are properly configured before authorization.
* **Client Mapping Errors**: If issues arise during client mapping, ensure that client details are correct and that they are properly registered in the CSP portal.

{% hint style="info" %}
- For more information on setting the GDAP user in Rewst check out the [rewst-user-setup-and-gdap-relationship-guidance.md](rewst-user-setup-and-gdap-relationship-guidance.md "mention")article.&#x20;
- For troubleshooting tips, check out the [troubleshooting-installation-issues.md](../common-issues-with-microsoft-bundle/troubleshooting-installation-issues.md "mention") and [common-issues-with-microsoft-bundle](../common-issues-with-microsoft-bundle/ "mention") pages.
{% endhint %}

## **Best Practices for Microsoft Integrations**

For best practice information please refer to: [Best Practices for Microsoft Integrations](https://docs.rewst.help/documentation/integrations/cloud/authorization-best-practices).
