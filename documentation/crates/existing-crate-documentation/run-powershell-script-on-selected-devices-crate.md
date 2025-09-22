# Run PowerShell Script on Selected Devices Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Run PowerShell Script on Selected Devices Crate do?

This Crate allows for instant, managed execution of stored PowerShell scripts, streamlining your operations. Run PowerShell scripts effortlessly on selected devices within your specified organizations.

### How the Crate works

The Crate contains a form that is used to choose your device and trigger the running of the script.

* From the available list of PowerShell scripts in Rewst, choose the one to be executed.
* Specify the target devices and organizations where the script should run.
* The selected script is run on the chosen devices, within the targeted organizations, then updates or creates a ticket.

### Crate prerequisites

Before unpacking this Crate, you'll need to successfully integrate both your [PSA](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) and [RMM](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) with Rewst.&#x20;

## Unpack the Run PowerShell Script on Selected Devices Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Run PowerShell Script on Selected Devices`**.**\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-22 at 9.32.25 AM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
6. Ensure that **Enabled** is toggled on.
7. Click **Unpack**.

## Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `Run Ad-Hoc PowerShell on Computer`.
3. Click **⋮ > Usages > View Direct URLs**.&#x20;
4. Click on the link for the organization which contains your relevant user. This will launch the form in a new tab.
5. Choose your desired information from the relevant drop-down selector fields:
   1. Your relevant Rewst **Organization**&#x20;
   2. The **Existing Ticket** in your PSA&#x20;
   3. The computer or computers where the script will be run
   4. The PowerShell script, included in the list in the **Rewst Script** field
6. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-22 at 9.39.55 AM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
