# Identify Users in Bypass Mode Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Identify Users in Bypass Mode Crate do?

Our Identify Users in Bypass Mode Crate identifies all users that are in bypass mode and creates a PSA ticket to ensure that the granting of bypass mode is intentional and tracked. The Crate’s workflow has a weekly cron trigger. Guarantee that any user in bypass mode is regularly identified, and not missed or forgotten. You also have the option to set an email send to notify you if the workflow fails.

## Crate prerequisites

Before unpacking this Crate:

* Our [Duo](../../integrations/integration-guides/duo-integration-setup.md) integration must be set up.
* Your [PSA](../../integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) must be successfully integrated with Rewst.

## Unpack the Identify Users in Bypass Mode Crate

1. Navigate to **Marketplace > Crates** in the left side menu of the Rewst platform.
2. Search for `Identify Users in Bypass Mode`\
   \
   ![](<../../../.gitbook/assets/image (160).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Enter your estimated time saved.
6. Click **Unpack**.

<figure><img src="../../../.gitbook/assets/image (49) (1).png" alt=""><figcaption></figcaption></figure>

### Update the cron trigger

{% hint style="info" %}
To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.
{% endhint %}

1. Navigate to **Automations > Workflows**.
2. Search for **`Duo: Identify Users In Bypass Mode`**.
3. Click on the workflow to view it in the Workflow Builder.
4. Update the timing of the cron trigger as desired. Note that when entering the time into the Cron Schedule field, the correct format is minutes followed by hour. For example, 18 3, not 3 18. The trigger has a default setting to run at 12 AM EDT on Fridays.&#x20;
5. Click **Save Trigger**.<br>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

### Set the email for failure notification.

1. Navigate to **Automations > Workflows**.
2. Search for **`Duo: Identify Users In Bypass Mode`**.
3. Click on the workflow to view it in the Workflow Builder.
4. Scroll over the workflow and locate the **send\_error\_to\_email** task.
5. Click into the task. Navigate to the **Parameters** tab.
6. Update the desired email address in the **fallback\_email** field.&#x20;
