# Clean up Global Address List from Disabled Users Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find this Crate in our Crate Marketplace.
{% endhint %}

## What does the Clean up Global Address List from Disabled Users Crate do?

This Crate identifies all disabled users in Microsoft 365 and removes them from the Global Address List, helping to maintain a clean and accurate directory.&#x20;

## Why use the Clean up Global Address List from Disabled Users Crate?

* Improve directory hygiene by maintaining an accurate Global Address List
* Reduce administrative overhead related to manual directory cleanups
* Enhance organizational security by ensuring that only active users are part of the Global Address List

## Crate prerequisites

Before unpacking this Crate, you'll first need to set up the Microsoft Graph integration, via our [Microsoft Cloud Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/).

## Unpack the Clean up Global Address List from Disabled Users Crate

1. Navigate to **Crates > Crate Marketplace** in the Rewst platform.
2. Search for `Clean up Global Address List from Disabled Users`.\
   \
   ![](<../../../.gitbook/assets/image (124).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Ensure that **Enabled** is toggled on under the **Cron Job** accordion men&#x75;**.**
6. Click **Unpack Crate**.

## Use the Clean up Global Address List from Disabled Users Crate

The Crate runs on a cron trigger, and will execute the workflow at the same time each day. You can adjust the chosen time for execution in the workflow itself.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[ROC] Remove Disabled Users from GAL`.
3. Click on the workflow to view it in the workflow builder.
4.  Click ![](<../../../.gitbook/assets/image (187).png>) to open the edit trigger menu.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-25 at 5.53.42 PM.png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example. 18 3, not 3 18.
6. Click **Submit**

{% hint style="warning" %}
No notification is sent when the workflow runs. If the workflow fails, you'll see the following noop in the results: `failed_to_hide_from_gal`
{% endhint %}



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
