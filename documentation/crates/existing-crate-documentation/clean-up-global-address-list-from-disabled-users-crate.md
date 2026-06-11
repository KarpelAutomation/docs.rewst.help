# Clean up Global Address List from Disabled Users Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find this Crate in our Crate Marketplace.
{% endhint %}

## What does the Clean up Global Address List from Disabled Users Crate do?

This Crate identifies all disabled users in Microsoft 365 and removes them from the Global Address List, helping to maintain a clean and accurate directory.

* Improve directory hygiene by maintaining an accurate Global Address List
* Reduce administrative overhead related to manual directory cleanups
* Enhance organizational security by ensuring that only active users are part of the Global Address List

## Crate prerequisites

Before unpacking this Crate, you'll first need to set up the Microsoft Graph integration, via our [Microsoft Cloud Bundle](../../integrations/integration-guides/microsoft-cloud-integration-bundle/).

## Unpack the Clean up Global Address List from Disabled Users Crate

1. Navigate to **Marketplace > Crates** in the Rewst platform.
2. Search for `Clean up Global Address List from Disabled Users`.\
   \
   ![](<../../../.gitbook/assets/image (140).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Ensure that **Enabled** is toggled on under the **Cron Job** accordion men&#x75;**.**
6. Click **Unpack Crate**.

### Update the cron trigger

{% hint style="info" %}
To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.
{% endhint %}

The Crate runs on a cron trigger, and will execute the workflow at the same time each day. You can adjust the chosen time for execution in the workflow itself.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[ROC] Remove Disabled Users from GAL`.
3. Click on the workflow to view it in the Workflow Builder.
4. Click on the trigger in the workflow to open its settings in the right side menu.
5. Update the timing of the cron trigger as desired. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example. 18 3, not 3 18.
6. Click **Save Trigger**.

{% hint style="warning" %}
No notification is sent when the workflow runs. If the workflow fails, you'll see the following noop in the results: `failed_to_hide_from_gal`
{% endhint %}

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
