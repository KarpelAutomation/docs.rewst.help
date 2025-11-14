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

### Workflow breakdown

1. The workflow begins with the **BEGIN** task which serves as the entry point and immediately transitions to retrieve configuration settings.
2. The **get\_ignored\_skus** task attempts to retrieve an organization variable called renewal\_alerts\_ignored\_skus that contains a list of SKU IDs to exclude from renewal alerts.
3. If the variable is successfully retrieved, it stores the list for later filtering, but if the variable retrieval fails or the variable doesn't exist, the workflow continues with an empty list as the default.
4. The **ms\_get\_expired\_licenses** task makes a Microsoft Graph API request to the /directory/subscriptions endpoint to retrieve all Microsoft 365 subscriptions for the organization.
5. Upon successful retrieval, it processes the subscription data to identify subscriptions that are expiring soon by comparing their nextLifecycleDateTime against the current date.
6. The task filters out any subscriptions with lockedout status or SKU IDs that appear in the ignored SKUs list.
7. The **Email\_Only\_Check** task evaluates the organization's PSA configuration by checking if the default\_psa organization variable is set to mail\_only.
8. This check determines whether the workflow should send email notifications or create PSA tickets for the expiring subscriptions.
9. If the organization is configured for mail-only notifications, the workflow proceeds to the **send\_mail\_update** task.
10. The **send\_mail\_update** task iterates through each expiring subscription and sends individual email notifications to the address specified in the no\_psa\_mail\_address organization variable.
11. Each email contains detailed information about the expiring subscription including the SKU part number, SKU ID, expiration date, OCP subscription ID, and total licenses.
12. If the organization is not configured for mail-only notifications, the workflow proceeds to the **m365\_subscription\_expiring\_create\_psa\_ticket** task.
13. The **m365\_subscription\_expiring\_create\_psa\_ticket** task iterates through each expiring subscription and creates individual PSA tickets containing the subscription details for tracking and resolution by the MSP team.
14. Both the email and PSA ticket creation tasks process subscriptions with a concurrency of 1, ensuring they are handled sequentially rather than simultaneously.
15. If any task fails during execution, the workflow transitions to the **failed** task, which serves as a centralized error handling point before proceeding to completion.
16. The workflow concludes with the **END** task, which compiles a comprehensive automation log containing status codes, success indicators, error details, and warnings from all executed tasks.
17. This final task provides a complete audit trail of the workflow execution for monitoring and troubleshooting purposes.

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

### Use the Crate

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
