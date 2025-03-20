# Integrate your PSA

{% hint style="info" %}
Integrating your PSA is the foundation to streamlining and automating your MSP workflows. It's one of the first things you'll need to do to get started with Rewst.
{% endhint %}

The videos in this guide focus on ConnectWise PSA, one of the most common PSAs used by MSPs. The process to integrate other PSAs is outlined in separate documentation guides linked at the bottom of this page.

Rewst is constantly adding new integrations. If Rewst doesn't currently have an integration for your particular PSA, you can still build a custom integration, as long as your tool has an API.

{% hint style="warning" %}
**Remember your prerequisites!**

Before you set up this integration, make sure that you:

* Have administrative access to your PSA
* Create a dedicated user and security role for the API integration, shown in the **PSA Demo: Part 1** video below
* Read through our introduction to [crates](../../../prebuilt-automations/crates/ "mention") and [integrations](../../../documentation/integrations/ "mention")
{% endhint %}

## **PSA integration overview** <a href="#intro-to-integrating-your-psa-5-09-min" id="intro-to-integrating-your-psa-5-09-min"></a>

{% embed url="https://www.youtube.com/watch?v=bCwh2jUFG4Y" %}
PSA integration overview (_5:09 min_)
{% endembed %}

## Crates to optionally unpack after integrating your PSA <a href="#crates-to-optionally-unpack-after-integrating-your-psa" id="crates-to-optionally-unpack-after-integrating-your-psa"></a>

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td><strong>Bulk Create Client from PSA</strong></td><td><a href="../../../.gitbook/assets/bulk create client from PSA.png">bulk create client from PSA.png</a></td><td></td></tr><tr><td><strong>Rewst: User Onboarding</strong></td><td><a href="../../../.gitbook/assets/rewst user onboarding.png">rewst user onboarding.png</a></td><td><a href="../../../prebuilt-automations/existing-crate-documentation/new-user-onboarding/">new-user-onboarding</a></td></tr><tr><td><strong>Rewst User Offboarding V2</strong></td><td><a href="../../../.gitbook/assets/rewst user offboarding.png">rewst user offboarding.png</a></td><td><a href="../../../prebuilt-automations/existing-crate-documentation/new-user-onboarding/">new-user-onboarding</a></td></tr><tr><td><strong>Add Rewst Form Link to New User Request Tickets</strong></td><td><a href="../../../.gitbook/assets/Add rewst form link to new user request tickets.png">Add rewst form link to new user request tickets.png</a></td><td></td></tr><tr><td><strong>OpenAI Ticket Categorization</strong></td><td><a href="../../../.gitbook/assets/Open AI Ticket Categorization.png">Open AI Ticket Categorization.png</a></td><td><a href="../../../prebuilt-automations/existing-crate-documentation/openai-ticket-categorisation-setup.md">openai-ticket-categorisation-setup.md</a></td></tr><tr><td><strong>Billing Count Report</strong></td><td><a href="../../../.gitbook/assets/billing-count-report.png">billing-count-report.png</a></td><td></td></tr></tbody></table>

## **Demo: Integrate ConnectWise PSA with Rewst** <a href="#demo-integrating-connectwise-psa-with-rewst" id="demo-integrating-connectwise-psa-with-rewst"></a>

### **Part 1: Integration setup steps to do in ConnectWise PSA** <a href="#part-1-integration-setup-steps-to-do-in-connectwise-psa-8-42-min" id="part-1-integration-setup-steps-to-do-in-connectwise-psa-8-42-min"></a>

{% embed url="https://www.youtube.com/watch?v=0F1PAWkZwtc" %}
PSA integration demo: Part 1 (ConnectWise) (_8:42 min_)
{% endembed %}

#### **Part 1 video summary**

* Log in to your PSA as an admin user in order to create a dedicated security role and user for the integration, following your PSA's least privileged access documentation to set the relevant security permissions.
* Create an API key for the dedicated API user.
* As a best practice, use **Rewst API** in your titling convention for the API user and API key.
* Copy the public and private key information; you’ll need it for Part 2.

### **Part 2: Integration setup steps to do in Rewst** <a href="#part-2-integration-setup-steps-to-do-in-rewst-2-16-min" id="part-2-integration-setup-steps-to-do-in-rewst-2-16-min"></a>

{% embed url="https://www.youtube.com/watch?v=vaGzA6wNezI" %}
PSA integration demo: Part 2 (ConnectWise PSA in Rewst) (_2:42 min_)
{% endembed %}

**Part 2 video summary**

* Search for the tool you want to integrate under **Configuration&#x20;**_**>**_**&#x20;Integrations**.
* Complete the required fields with information about your company, along with the information from the PSA, such as the API username and the API key information that you copied earlier.

## **Activity: Integrate your PSA** <a href="#activity-integrate-your-psa" id="activity-integrate-your-psa"></a>

{% hint style="info" %}
Rewst integrates with a variety of PSAs. Each brand of PSA has its own setup documentation. Find the tab for your particular PSA below, and click the link to open a new window with your instructions.
{% endhint %}

{% tabs %}
{% tab title="ConnectWise PSA" %}
#### ConnectWise PSA setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/psa/connectwise-manage/connectwise-integration-setup.md" %}
[connectwise-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/psa/connectwise-manage/connectwise-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Datto Autotask" %}
#### Datto Autotask PSA setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/psa/autotask-datto-psa/datto-psa-integration-setup.md" %}
[datto-psa-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/psa/autotask-datto-psa/datto-psa-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Halo" %}
#### Datto Autotask PSA setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/psa/halopsa/halo-integration-setup.md" %}
[halo-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/psa/halopsa/halo-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Kaseya" %}
#### Kaseya BMS PSA setup

{% content-ref url="../../../documentation/integrations/individual-integration-documentation/psa/kaseya-bms/kaseya-bms-integration-setup.md" %}
[kaseya-bms-integration-setup.md](../../../documentation/integrations/individual-integration-documentation/psa/kaseya-bms/kaseya-bms-integration-setup.md)
{% endcontent-ref %}
{% endtab %}
{% endtabs %}

{% hint style="success" %}
**Need help?**

* Join an Onboarding Session – If you need general guidance on setting up an integration, [sign up for live training](https://outlook.office365.com/owa/calendar/RewstImplementation1@rewst.io/bookings/).
* Create a Support Ticket – If something isn't working with a specific integration, contact the [Robotics Operations Center (ROC)](mailto:roc@rewst.io) for troubleshooting.
{% endhint %}

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><a href="integrate-your-rmm.md"><strong>Integrate your RMM</strong></a></td><td><a href="../../../.gitbook/assets/NEXT.png">NEXT.png</a></td></tr></tbody></table>
