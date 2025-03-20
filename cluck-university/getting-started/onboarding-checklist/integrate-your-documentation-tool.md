# Integrate your documentation tool

{% hint style="info" %}
Integrating your documentation tool centralizes and automates your documentation processes.
{% endhint %}

The videos in this guide focus on IT Glue, one of the most common documentation tools used by MSPs. The process to integrate other documentation tools is outlined in separate documentation guides linked at the bottom of this page.

Rewst is constantly adding new integrations. If Rewst doesn't currently have an integration for your particular documentation tool, you can still build a custom integration, as long as your tool has an API.

{% hint style="warning" %}
**Remember your prerequisites!**

* Have administrative access to your documentation tool
* Read through our introduction to [crates](../../../prebuilt-automations/crates/ "mention")
{% endhint %}

## Crates to optionally unpack after integrating your documentation tool <a href="#crates-to-optionally-unpack-after-integrating-your-documentation-tool" id="crates-to-optionally-unpack-after-integrating-your-documentation-tool"></a>

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>Document Rewst Form URLs (ITGlue/Hudu)</strong></td><td><a href="../../../.gitbook/assets/Document rewst form urls (1).png">Document rewst form urls (1).png</a></td></tr><tr><td><strong>Document User Details V2</strong></td><td><a href="../../../.gitbook/assets/Document user details v2 (1).png">Document user details v2 (1).png</a></td></tr><tr><td><strong>Document M365 Environment</strong></td><td><a href="../../../.gitbook/assets/Document m365 environment (2).png">Document m365 environment (2).png</a></td></tr><tr><td><strong>Document Shared Mailbox Details V2</strong></td><td><a href="../../../.gitbook/assets/document shared mailbox.png">document shared mailbox.png</a></td></tr></tbody></table>

## **Demo: Integrate IT Glue with Rewst** <a href="#demo-integrating-it-glue-with-rewst" id="demo-integrating-it-glue-with-rewst"></a>

### **Part 1: Integration setup steps to do in IT Glue** <a href="#part-1-integration-setup-steps-to-do-in-it-glue-1-13-min" id="part-1-integration-setup-steps-to-do-in-it-glue-1-13-min"></a>

{% embed url="https://www.youtube.com/watch?v=Ow-kg4YWZAA" %}
Documentation integration demo: Part 1 (IT Glue) (_1:13 min_)
{% endembed %}

#### **Part 1 video summary**

* Log in to IT Glue as an admin user in order to generate an API key for the integration.
* As a best practice, title the API key "Rewst API.”
* Copy the API key info; you’ll need it for Part 2.

### **Part 2: Integration setup steps to do in Rewst** <a href="#part-2-integration-setup-steps-to-do-in-rewst-1-34-min" id="part-2-integration-setup-steps-to-do-in-rewst-1-34-min"></a>

{% embed url="https://www.youtube.com/watch?v=JXJrSZASDSk" %}
Documentation integration demo: Part 2 (IT Glue in Rewst) (_1:34 min_)
{% endembed %}

#### **Part 2 video summary**

* Search for IT Glue under **Configuration > Integrations**.
* Enter the API key, along with the base URL for your documentation environment and any other required fields.

## **Activity: Integrate your documentation tool** <a href="#activity-integrate-your-documentation-tool" id="activity-integrate-your-documentation-tool"></a>

{% hint style="info" %}
Rewst integrates with a variety of documentation tools. Each brand has its own setup documentation. Find the tab for your particular documentation tool below, and click the link to open a new window with your instructions.
{% endhint %}

{% tabs %}
{% tab title="IT Glue" %}
#### ITGlue setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/documentation/itglue/it-glue-integration-setup.md" %}
[it-glue-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/documentation/itglue/it-glue-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Hudu" %}
#### Hudu setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/documentation/hudu/hudu-integration-setup.md" %}
[hudu-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/documentation/hudu/hudu-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="IT Portal" %}
#### IT Portal setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/documentation/it-portal-coming-soon/it-portal-integration-setup.md" %}
[it-portal-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/documentation/it-portal-coming-soon/it-portal-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Jumpcloud" %}
#### Jumpcloud setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/documentation/jumpcloud/jumpcloud-integration-setup.md" %}
[jumpcloud-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/documentation/jumpcloud/jumpcloud-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Jira" %}
#### Jira setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/documentation/jira/jira-integration-setup.md" %}
[jira-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/documentation/jira/jira-integration-setup.md)
{% endcontent-ref %}
{% endtab %}
{% endtabs %}

{% hint style="success" %}
**Need help?**

* Join an Onboarding Session – If you need general guidance on setting up an integration, [sign up for live training](https://outlook.office365.com/owa/calendar/RewstImplementation1@rewst.io/bookings/).
* Create a Support Ticket – If something isn't working with a specific integration, contact the [Robotics Operations Center (ROC)](mailto:roc@rewst.io) for troubleshooting.
{% endhint %}

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-target data-type="content-ref"></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><a href="integrate-your-licensing-tool.md"><strong>Integrate your licensing tool</strong></a></td><td><a href="integrate-your-licensing-tool.md">integrate-your-licensing-tool.md</a></td><td><a href="../../../.gitbook/assets/NEXT.png">NEXT.png</a></td></tr></tbody></table>
