# Integrate the Microsoft Cloud bundle

{% hint style="info" %}
The Microsoft Cloud Bundle allows you to connect Rewst workflows to your Microsoft services for powerful automations at scale.
{% endhint %}

Rewst's Microsoft Cloud bundle is a little different from our other integrations, in that it's actually a group of integrations. For your ease of use, we've bundled all our Microsoft integrations together. Choose which of the 4 included integrations you'd like to install, and what permissions to assign to each, while using one Enterprise App and a single authentication for all.

If you use a different or additional cloud provider, refer to the relevant documentation guide linked at the bottom of this page.

{% hint style="warning" %}
**Remember your prerequisites!**

* Have administrative access to Microsoft cloud tools
* Read through our introduction to [crates](../../../prebuilt-automations/crates/ "mention") and [integrations](../../../documentation/integrations/ "mention")
{% endhint %}

## Crates to optionally unpack after integrating the Microsoft Cloud bundle <a href="#crates-to-optionally-unpack-after-integrating-the-microsoft-cloud-bundle" id="crates-to-optionally-unpack-after-integrating-the-microsoft-cloud-bundle"></a>

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>Alert when Users' Mailboxes are Reaching Quota</strong></td><td><a href="../../../.gitbook/assets/Alert when user&#x27;s mailboxes are reaching quota.png">Alert when user's mailboxes are reaching quota.png</a></td></tr><tr><td><strong>Add or Remove Group Membership</strong></td><td><a href="../../../.gitbook/assets/Add or remove group membership.png">Add or remove group membership.png</a></td></tr><tr><td><strong>Document M365 Environment</strong></td><td><a href="../../../.gitbook/assets/Document m365 environment.png">Document m365 environment.png</a></td></tr><tr><td><strong>Rewst: User Onboarding</strong></td><td><a href="../../../.gitbook/assets/rewst user onboarding.png">rewst user onboarding.png</a></td></tr><tr><td><strong>Amend Calendar Permission on User</strong></td><td><a href="../../../.gitbook/assets/amend calendar permissions.png">amend calendar permissions.png</a></td></tr><tr><td><strong>Alert on Expiring App Reg Secrets</strong></td><td><a href="../../../.gitbook/assets/Alert on epiring app reg secrets.png">Alert on epiring app reg secrets.png</a></td></tr><tr><td><strong>Configure Out Of Office on Mailbox</strong></td><td><a href="../../../.gitbook/assets/configure out of office on mailbox.png">configure out of office on mailbox.png</a></td></tr><tr><td><strong>Update M365 User Attributes</strong></td><td><a href="../../../.gitbook/assets/update m365 user attributes.png">update m365 user attributes.png</a></td></tr></tbody></table>

## **Part 1: Configuring the Microsoft Cloud bundle** <a href="#part-1-configuring-the-microsoft-cloud-bundle-2-42-min" id="part-1-configuring-the-microsoft-cloud-bundle-2-42-min"></a>

{% embed url="https://www.youtube.com/watch?v=AHwvyW7BbVc" %}
Cloud integration demo: Microsoft bundle part 1 (_2:42 min_)
{% endembed %}

### Part 1 video summary <a href="#part-1-video-summary" id="part-1-video-summary"></a>

* Navigate to **Configuration > Integrations** and search for the **Microsoft Cloud Integration Bundle.**
* Choose which Microsoft services to integrate. Microsoft Graph is essential for most Rewst crates, while Exchange Online and CSP enable mailbox and partner center functionality. Microsoft Azure supports cloud computing tasks like managing VMs and using Azure tables.
* Select whether to use Rewst’s pre-provided Enterprise App (easier maintenance) or your own existing Enterprise App (more control over settings).
* Review and adjust permissions for each integration. Rewst pre-selects permissions needed for full functionality, but you can modify them for security needs.
* Sign in with your dedicated admin user to authorize the integration. This final step allows Rewst to create the Enterprise Application and validate permissions in your Entra environment.

## **Part 2: Mapping and consenting organizations for the Microsoft Cloud bundle** <a href="#part-2-mapping-and-consenting-organizations-for-the-microsoft-cloud-bundle" id="part-2-mapping-and-consenting-organizations-for-the-microsoft-cloud-bundle"></a>

{% embed url="https://www.youtube.com/watch?v=SvqM6cgUq_k" %}
Cloud integration demo: Microsoft bundle part 2 (_1:39 min_)
{% endembed %}

### **Part 2 video summary** <a href="#part-2-video-summary" id="part-2-video-summary"></a>

* Once your selected Microsoft integrations are connected, your customer organizations will appear in the list. If you haven’t added your customer organizations yet, come back to this step later.
* Match your Rewst organizations to the corresponding CSP organizations, link them to Microsoft, and consent to delegated admin permissions for each customer.
* Delegating consent enables Rewst to communicate with customer environments using the Administrative Relationship and GDAP roles you previously configured.
* The process may take a few minutes. Successful delegations show a green shield. If errors occur, check your GDAP settings in CSP.
* Once you’ve authenticated the integration, mapped your customers, and granted delegated admin consent, your Microsoft toolset is ready to use in Rewst!

## **Activity: Integrate your cloud tool** <a href="#activity-integrate-your-cloud-tool-s" id="activity-integrate-your-cloud-tool-s"></a>

{% hint style="info" %}
Rewst integrates with a variety of cloud tools. Each brand has its own setup documentation. Find the tab for your particular cloud tool below, and click the link to open a new window with your instructions. If you use more than one cloud tool, set up multiple integrations.
{% endhint %}

{% tabs %}
{% tab title="Microsoft Cloud bundle" %}
#### Microsoft cloud bundle setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/cloud/microsoft-cloud-integration-bundle/" %}
[microsoft-cloud-integration-bundle](../../../documentation/integrations/individual-integration-documentation/cloud/microsoft-cloud-integration-bundle/)
{% endcontent-ref %}
{% endtab %}

{% tab title="Google Admin" %}
#### Google Admin setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/cloud/google-admin/" %}
[google-admin](../../../documentation/integrations/individual-integration-documentation/cloud/google-admin/)
{% endcontent-ref %}
{% endtab %}

{% tab title="Nerdio" %}
#### Nerdio setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/cloud/nerdio/" %}
[nerdio](../../../documentation/integrations/individual-integration-documentation/cloud/nerdio/)
{% endcontent-ref %}
{% endtab %}
{% endtabs %}

{% hint style="success" %}
**Need help?**

* Join an Onboarding Session – If you need general guidance on setting up an integration, [sign up for live training](https://outlook.office365.com/owa/calendar/RewstImplementation1@rewst.io/bookings/).
* Create a Support Ticket – If something isn't working with a specific integration, contact the [Robotics Operations Center (ROC)](mailto:roc@rewst.io) for troubleshooting.
{% endhint %}

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><a href="integrate-your-documentation-tool.md"><strong>Integrate your documentation tool</strong></a></td><td><a href="../../../.gitbook/assets/NEXT.png">NEXT.png</a></td></tr></tbody></table>
