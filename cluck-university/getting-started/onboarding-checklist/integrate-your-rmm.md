# Integrate your RMM

{% hint style="info" %}
Integrating your RMM lets you centralize endpoint monitoring, automate patch management, and streamline repetitive admin work.
{% endhint %}

The videos in this guide focus on Ninja RMM, one of the most common RMMs used by MSPs. The process to integrate other RMMs is outlined in separate documentation guides linked at the bottom of this page.

Rewst is constantly adding new integrations. If Rewst doesn't currently have an integration for your particular RMM, you can still build a custom integration, as long as your RMM has an API.

{% hint style="warning" %}
**Remember your prerequisites!**

* Have administrative access to your RMM
* Read through our introduction to [crates](../../../prebuilt-automations/crates/ "mention") and [integrations](../../../documentation/integrations/ "mention")
{% endhint %}

## Crates to optionally unpack after integrating your RMM <a href="#crates-to-optionally-unpack-after-integrating-your-rmm" id="crates-to-optionally-unpack-after-integrating-your-rmm"></a>

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>On-Premises Active Directory Password Expiration Alerts</strong></td><td><a href="../../../.gitbook/assets/on-prem-ad-password-expiration-alerts.png">on-prem-ad-password-expiration-alerts.png</a></td></tr><tr><td><strong>Rewst: User Onboarding</strong></td><td><a href="../../../.gitbook/assets/rewst-user-onboarding (1).png">rewst-user-onboarding (1).png</a></td></tr><tr><td><strong>Bulk Move Users to Specificed OU</strong></td><td><a href="../../../.gitbook/assets/Screenshot 2025-02-19 at 2.06.18 PM.png">Screenshot 2025-02-19 at 2.06.18 PM.png</a></td></tr><tr><td><strong>Ad-Hoc Install/Uninstall Software via Chocolatey</strong></td><td><a href="../../../.gitbook/assets/Screenshot 2025-02-19 at 2.06.55 PM.png">Screenshot 2025-02-19 at 2.06.55 PM.png</a></td></tr><tr><td><strong>Run Powershell Script on Selected Devices</strong></td><td><a href="../../../.gitbook/assets/Screenshot 2025-02-19 at 2.09.10 PM.png">Screenshot 2025-02-19 at 2.09.10 PM.png</a></td></tr><tr><td><strong>Just in Time Admin Access</strong></td><td><a href="../../../.gitbook/assets/Screenshot 2025-02-19 at 2.09.48 PM.png">Screenshot 2025-02-19 at 2.09.48 PM.png</a></td></tr></tbody></table>

## **Demo: Integrate Ninja RMM with Rewst** <a href="#demo-integrating-ninja-rmm-with-rewst" id="demo-integrating-ninja-rmm-with-rewst"></a>

### **Part 1: Integration setup steps to do in Ninja RMM** <a href="#part-1-integration-setup-steps-to-do-in-ninja-rmm-x-min" id="part-1-integration-setup-steps-to-do-in-ninja-rmm-x-min"></a>

{% embed url="https://youtu.be/rdAexkmWjOk" %}
RMM integration demo: Part 1 (Ninja) (_1:30 min_)
{% endembed %}

#### **Part 1 video summary**

* Add a PowerShell script to Ninja that enables Rewst to interact with your endpoints.
* Make sure to update the Base URL.
* The script and Base URL details can be found at: [#complete-setup-in-ninja](../../../documentation/integrations/rmm/ninjaone/ninjaone-integration-setup.md#complete-setup-in-ninja "mention")

### **Part 2: Integration setup steps to do in Rewst** <a href="#part-2-integration-setup-steps-to-do-in-rewst-min" id="part-2-integration-setup-steps-to-do-in-rewst-min"></a>

{% embed url="https://youtu.be/GVLdQdo4c_M" %}
RMM integration demo: Part 2 (Ninja in Rewst) (_1:09 min_)
{% endembed %}

#### **Part 2 video summary**

* Search for Ninja under **Configuration&#x20;**_**>**_**&#x20;Integrations**.
* Complete the required fields with information about your company, including the Region for your Ninja instance.
* Use a dedicated service account to integrate Ninja using oAuth.

## **Activity: Integrate your RMM** <a href="#activity-integrate-your-rmm" id="activity-integrate-your-rmm"></a>

{% hint style="info" %}
Rewst integrates with a variety of RMMs. Each brand of RMM has its own setup documentation. Find the tab for your particular RMM below, and click the link to open a new window with your instructions.
{% endhint %}

{% tabs %}
{% tab title="ConnectWise Automate" %}
#### ConnectWise Automate setup

{% content-ref url="../../../documentation/integrations/rmm/connectwise-automate/connectwise-automate-integration-setup.md" %}
[connectwise-automate-integration-setup.md](../../../documentation/integrations/rmm/connectwise-automate/connectwise-automate-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Datto RMM" %}
#### Datto RMM setup

{% content-ref url="../../../documentation/integrations/rmm/datto-rmm/datto-rmm-integration-setup.md" %}
[datto-rmm-integration-setup.md](../../../documentation/integrations/rmm/datto-rmm/datto-rmm-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="ImmyBot" %}
#### ImmyBot setup

{% content-ref url="../../../documentation/integrations/rmm/immybot/immybot-integration-setup.md" %}
[immybot-integration-setup.md](../../../documentation/integrations/rmm/immybot/immybot-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Kaseya" %}
#### Kaseya VSA setup

{% content-ref url="../../../documentation/integrations/rmm/kaseya-vsa/kaseya-vsa-integration-setup.md" %}
[kaseya-vsa-integration-setup.md](../../../documentation/integrations/rmm/kaseya-vsa/kaseya-vsa-integration-setup.md)
{% endcontent-ref %}

#### Kaseya VSX setup

{% content-ref url="../../../documentation/integrations/rmm/kaseya-vsa-x/kaseya-vsa-x-integration-setup.md" %}
[kaseya-vsa-x-integration-setup.md](../../../documentation/integrations/rmm/kaseya-vsa-x/kaseya-vsa-x-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="N-able N-Central" %}
#### N-able N-central setup

{% content-ref url="../../../documentation/integrations/rmm/nable/nable-integration-setup.md" %}
[nable-integration-setup.md](../../../documentation/integrations/rmm/nable/nable-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="NinjaOne" %}
#### NinjaOne setup

{% content-ref url="../../../documentation/integrations/rmm/ninjaone/ninjaone-integration-setup.md" %}
[ninjaone-integration-setup.md](../../../documentation/integrations/rmm/ninjaone/ninjaone-integration-setup.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Command/Continuum/Control" %}
#### ConnectWise Control

{% content-ref url="../../../documentation/integrations/rmm/connectwise-control-screenconnect.md" %}
[connectwise-control-screenconnect.md](../../../documentation/integrations/rmm/connectwise-control-screenconnect.md)
{% endcontent-ref %}
{% endtab %}

{% tab title="Other RMMs" %}
#### Addigy setup

{% content-ref url="../../../documentation/integrations/rmm/addigy/addigy-integration-setup.md" %}
[addigy-integration-setup.md](../../../documentation/integrations/rmm/addigy/addigy-integration-setup.md)
{% endcontent-ref %}

#### Auvik setup

{% content-ref url="../../../documentation/integrations/rmm/auvik/auvik-integration-setup.md" %}
[auvik-integration-setup.md](../../../documentation/integrations/rmm/auvik/auvik-integration-setup.md)
{% endcontent-ref %}

#### RPort setup

{% content-ref url="../../../documentation/integrations/rmm/rport/rport-integration-setup.md" %}
[rport-integration-setup.md](../../../documentation/integrations/rmm/rport/rport-integration-setup.md)
{% endcontent-ref %}
{% endtab %}
{% endtabs %}

{% hint style="success" %}
**Need help?**

* Join an Onboarding Session – If you need general guidance on setting up an integration, [sign up for live training](https://outlook.office365.com/owa/calendar/RewstImplementation1@rewst.io/bookings/).
* Create a Support Ticket – If something isn't working with a specific integration, contact the [Robotics Operations Center (ROC)](mailto:roc@rewst.io) for troubleshooting.\\
{% endhint %}

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><a href="integrate-the-microsoft-cloud-bundle.md"><strong>Integrate the Microsoft Cloud bundle</strong></a></td><td><a href="../../../.gitbook/assets/NEXT.png">NEXT.png</a></td></tr></tbody></table>
