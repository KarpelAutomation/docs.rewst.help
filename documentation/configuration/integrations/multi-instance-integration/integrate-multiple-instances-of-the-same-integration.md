# Integrate multiple instances of the same integration

MSPs may encounter a situation where they need to set up multiple instances of the same integration, when that integration doesn’t support [multi-instance integration setup](https://docs.rewst.help/documentation/integrations/multi-instance-integration/multi-instance-integration-setup). These integrations include the following - note that all Microsoft integrations are now part of our [Microsoft Cloud bundle](../integration-guides/cloud/microsoft-cloud-integration-bundle/):

* [Microsoft Azure ](../integration-guides/cloud/microsoft-cloud-integration-bundle/microsoft-azure/)
* [Microsoft CSP ](../integration-guides/cloud/microsoft-cloud-integration-bundle/microsoft-csp/)
* [ImmyBot ](../integration-guides/rmm/immybot-integration-setup.md)
* [Microsoft Exchange Online](../integration-guides/cloud/microsoft-cloud-integration-bundle/microsoft-exchange-online/)&#x20;
* [Microsoft Graph ](../integration-guides/cloud/microsoft-cloud-integration-bundle/microsoft-graph/)
* N-Able - the deprecated version of the integration is only still used by a few longer-term Rewst customers.

This is most often experienced with the Microsoft CSP integration, via one of the following scenarios. For the purposes of documentation, the example in this page will use the Microsoft CSP integration.

* An MSP acquires another MSP, and inherits their customers. That newly acquired MSP may or may not have been an existing user of Rewst. This creates one MSP using two Microsoft CSP accounts.
* An MSP manages clients in multiple geographic regions, such as the United States and also Europe, which means meeting different legal requirements for each bucket of clients, possibly with different Microsoft CSP licenses for each region.

{% hint style="info" %}
Note that if you are in the second scenario, Microsoft offers a Multi-Geo Capabilities add-on which allows you to manage tenants in both Canada and the United States under one account. For more information on this license solution, see [Microsoft’s documentation here](https://learn.microsoft.com/en-us/microsoft-365/enterprise/microsoft-365-multi-geo?view=o365-worldwide).
{% endhint %}

Before proceeding with these steps, we strongly recommend checking in with your CSM. They can point you to the correct Rewst team to discuss if it’s the right fit for your situation and goals.

## Example: Integrate multiple instances of Microsoft CSP into Rewst

### **Create and identify existing accounts**

1. Identify the initial MSP parent organization in the Rewst platform.
2. Make sure you have login credentials and the admin role for this parent account.
3. Identify each of the separate CSP accounts you’ll need to integrate into Rewst.

### **Set up child organizations**

1. Create a separate child organization for every CSP account. For example, if integrating two separate CSP accounts into Rewst, you would create two child organizations.
2. Give each child organization a descriptive name, to clearly label which organization will be for which CSP account.

### **Integration setup**

1. Log in to each of the child organizations in Rewst
2. [Set up the CSP integration](https://docs.rewst.help/documentation/integrations/individual-integration-documentation/cloud/microsoft-cloud-integration-bundle/microsoft-csp/microsoft-csp-integration-setup) separately for each child organization created, each configured to meet their individual needs. Note that this integration is now part of the Microsoft Cloud Bundle.

### **Create customer organizations**

Create customer [organizations](../../../settings/organizations.md) within each of the MSP child organizations.

## **Additional considerations**

* When adding Crates or components, remember to add them to both MSP Child organizations separately, to ensure consistency.
* Any workflows you create should be established at the parent-level organization. This allows for easy cloning and management within the child organizations.
