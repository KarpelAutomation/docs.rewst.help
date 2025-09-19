# Alert on Login From Non Native Country Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Login From Non Native Country Crate do?

Th**is** Crate enhances security by detecting logins from countries that do not match a user's configured location. It helps administrators quickly identify potential unauthorized access and take necessary action.

This Crate detects and reports logins from non-native countries, but does not take action to block them. It does not change any user configurations within M365., and can't determine if logins from different countries are legitimate due to VPN use.

### How the Crate works

* Retrieves each user's configured country from Microsoft Graph for comparison.
* Retrieves recent login events from Microsoft Graph.
* Flags logins originating from a country different from the user's configured location.
* Logs a ticket to notify administrators of potential unauthorized access.

{% hint style="success" %}
You have the option to configure the audit window via a trigger variable named `audit_days`. This defines how many past days of login activity to include in the report. For example, if the cron job runs daily, setting this to `1` ensures only new logins are reported, preventing duplicate alerts.
{% endhint %}

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must first be installed before unpacking this Crate.

Entra ID Premium P1 or P2 license is required to use this Crate.

## Unpack the Alert on Login From Non Native Country Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Alert on Login From Non Native Country`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-19 at 11.52.23 AM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that you have the option under the **Cron Job** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
7. Click **Unpack**.

## Use the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. To edit a cron trigger in the workflow to either test it once or change the timing it will routinely run:

1. Navigate to **Automations > Workflows**.
2. Search for `[REWST - CRATE] M365: Alert on Login from Non-Native Country`.
3. Click on the workflow to open it in the workflow builder.
4. Click <img src="../../../.gitbook/assets/image (189).png" alt="" data-size="line"> to open the edit trigger menu.
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.
7. If adjusting to immediately test, remember to adjust the trigger back to its normal timing after testing.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
