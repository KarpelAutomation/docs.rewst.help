# Workstation Offboarding Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Workstation Offboarding Crate do?

This Crate is designed to streamline the offboarding process for workstations across multiple platforms based on device name.

This Crate only removes agents from their management dashboards. It doesn't uninstall the agent from the actual device unless included below in the supported platform list.

### How the Crate works <a href="#marked-how-it-works" id="marked-how-it-works"></a>

The Crate is triggered via a form submission. Once submitted, the workflow identifies the corresponding workstation IDs across the selected platforms and proceeds to either remove the assets or mark them as inactive, depending on your configuration. A report will be sent to the email listed in the form with a detailed report of each successful or failed task, and it will include the workflows's result page.

## Supported platforms and Crate prerequisites <a href="#marked-supported-platforms" id="marked-supported-platforms"></a>

### RMMs <a href="#marked-rmms" id="marked-rmms"></a>

* [ConnectWise Automate](../../configuration/integrations/integration-guides/connectwise-automate-integration-setup.md)
* [ImmyBot](../../configuration/integrations/integration-guides/immybot-integration-setup.md)
* [Kaseya VSA](../../configuration/integrations/integration-guides/kaseya-vsa-integration-setup.md)
* [ConnectWise ScreenConnect](../../configuration/integrations/integration-guides/connectwise-control-screenconnect.md)
* [SuperOps](../../configuration/integrations/integration-guides/superops-integration.md) - supports removing the asset only

### PSAs <a href="#marked-psas" id="marked-psas"></a>

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md) - Set inactive or remove
* [Datto PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/) - Set inactive
* [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md) - Set inactive or remove
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md) - Set inactive or remove
* [ServiceNow](../../configuration/integrations/integration-guides/servicenow-integration-setup.md) - Set inactive or remove

### Other integrations <a href="#marked-other-integrations" id="marked-other-integrations"></a>

* [SentinelOne](../../configuration/integrations/integration-guides/sentinelone-integration-setup.md)
* [ConnectSecure](../../configuration/integrations/integration-guides/connectsecure-integration.md)
* [Acronis](../../configuration/integrations/integration-guides/acronis-integration.md)
* [Liongard](../../configuration/integrations/integration-guides/liongard-integration-setup.md)
* [Nodeware](../../configuration/integrations/integration-guides/nodeware-integration.md)

\
Unpack the Workstation Offboarding Crate
----------------------------------------

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Workstation Offboarding`**.**\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-10-15 at 3.51.06 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Click to expand the **Form Submission** accordion menu. Ensure that **Enabled** is toggled on.
6. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](https://docs.rewst.help/documentation/automations/intro-to-triggers/trigger-criteria), or for integration overrides.
7. Click **Unpack**.

## Use the Workstation Offboarding Crate

{% hint style="info" %}
For field options related to an integration to appear on the form, you'll need to have that integration successfully set up with Rewst.&#x20;
{% endhint %}

1. Navigate to **Automations > Forms**.
2. Search for `[REWST] Workstation Offboarding`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Copy the URL and paste it into a new tab or browser window.
5. Choose the organization you'd like to run the form on from the **List Organizations** drop-down selector.
6. Choose your relevant information from the drop-down selectors:
   1. **Select the organization where the workstations are located**
   2. **Manually type or select one or more workstations to offboard**
   3. **Recipient Email for Offboarding Report** - optional
7. Check boxes under each subsection to choose your platforms to use during offboarding:
   1. **RMM**
   2. **PSA -** Choose whether to set configs or assets to **inactive** or _f_**ully remove** them if supported by your brand of PSA
   3. **EDR**
   4. **Other**
   5. **Platforms to Offboard From**
8. Click **Submit**.
9. After the first time you use the form, check in your relevant platforms to ensure that the offboarding has been completed. If failure occurs, check the [workflow execution logs](../../automations/workflows/#view-specific-workflow-results) in Rewst for more information.

{% hint style="success" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
