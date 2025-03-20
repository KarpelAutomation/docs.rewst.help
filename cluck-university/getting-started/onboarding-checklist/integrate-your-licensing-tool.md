# Integrate your licensing tool

{% hint style="info" %}
Integrating your licensing tool streamlines your license management.
{% endhint %}

The videos in this guide focus on Pax8, one of the most common licensing tools used by MSPs. The process to integrate other licensing tools is outlined in separate documentation guides linked at the bottom of this page.

Rewst is constantly adding new integrations. If Rewst doesn't currently have an integration for your particular licensing tool, you can still build a custom integration, as long as your tool has an API.

{% hint style="warning" %}
**Remember your prerequisites!**

* Have administrative access to your licensing tool
* Read through our introduction to [crates](../../../prebuilt-automations/crates/ "mention")
{% endhint %}

## Crates to optionally unpack after integrating your licensing tool <a href="#crates-to-optionally-unpack-after-integrating-your-licensing-tool" id="crates-to-optionally-unpack-after-integrating-your-licensing-tool"></a>

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>Billing Count Report</strong></td><td><a href="../../../.gitbook/assets/billing count report.png">billing count report.png</a></td></tr><tr><td><strong>Rewst: User Onboarding</strong></td><td><a href="../../../.gitbook/assets/rewst user onboarding.png">rewst user onboarding.png</a></td></tr><tr><td><strong>Rewst User Offboarding V2</strong></td><td><a href="../../../.gitbook/assets/rewst user offboarding.png">rewst user offboarding.png</a></td></tr><tr><td><strong>Export MS365 Licenses to CSV</strong></td><td><a href="../../../.gitbook/assets/Export ms365 licenses to csv (1).png">Export ms365 licenses to csv (1).png</a></td></tr></tbody></table>

## **Demo: Integrate Pax8 with Rewst** <a href="#demo-integrating-pax8-with-rewst" id="demo-integrating-pax8-with-rewst"></a>

{% hint style="warning" %}
Note that for licensing tools other than Pax8, you'll need to:

* Create an API user in your licensing tool
* Gather API credentials and keys
* Possibly gather your licensing tool's additional information, like the subscription ID
{% endhint %}

### Integration setup steps for Pax8 <a href="#integration-setup-steps-for-pax8-1-45-min" id="integration-setup-steps-for-pax8-1-45-min"></a>

{% embed url="https://www.youtube.com/watch?v=oxm7O8b-7Lc" %}
Licensing integration demo: Pax8 (_1:45 min_)
{% endembed %}

#### **Video summary**

* Search for the Pax8 under **Configuration&#x20;**_**>**_**&#x20;Integrations**.
* Click on the Pax8 integration tile. Scroll down to the bottom of the page. Next to **OAuth Configuration**, click on the **Authorize** button. Then, select the service account user you set up in Pax 8 to log in as that user, in the dialog that appears.
* Once logged in, you'll see a green confirmation message at the top of your screen letting you know that you have successfully authorized Pax8.

## **Activity: Integrate your licensing tool** <a href="#activity-integrate-your-licensing-tool" id="activity-integrate-your-licensing-tool"></a>

{% hint style="info" %}
Rewst integrates with a variety of licensing tools. Each brand has its own setup documentation. Find the tab for your particular licensing tool below, and click the link to open a new window with your instructions.
{% endhint %}

{% tabs %}
{% tab title="Pax8" %}
#### Pax8 setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/licensing/pax8/pax8-integration-setup.md" %}
[pax8-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/licensing/pax8/pax8-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Ingram Micro" %}
#### Ingram Micro Setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/licensing/ingram-micro/ingram-micro-integration-setup.md" %}
[ingram-micro-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/licensing/ingram-micro/ingram-micro-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Sherweb" %}
#### Sherweb setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/licensing/sherweb/sherweb-integration-setup.md" %}
[sherweb-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/licensing/sherweb/sherweb-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Synnex" %}
#### Synnex setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/licensing/synnex/synnex-integration-setup.md" %}
[synnex-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/licensing/synnex/synnex-integration-setup.md)
{% endcontent-ref %}
{% endtab %}
{% endtabs %}

{% hint style="success" %}
**Need help?**

* Join an Onboarding Session – If you need general guidance on setting up an integration, [sign up for live training](https://outlook.office365.com/owa/calendar/RewstImplementation1@rewst.io/bookings/).
* Create a Support Ticket – If something isn't working with a specific integration, contact the [Robotics Operations Center (ROC)](mailto:roc@rewst.io) for troubleshooting.
{% endhint %}

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><a href="intro-to-organizations-and-organization-variables.md"><strong>Intro to organizations and organization variables</strong></a></td><td><a href="../../../.gitbook/assets/NEXT.png">NEXT.png</a></td></tr></tbody></table>
