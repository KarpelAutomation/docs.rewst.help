# Document M365 Environment Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Document M365 Environment Crate do?

The Document M365 Environment Crate fetches user details from the Microsoft 365 API and documents this information in your documentation tool. It records details such as licenses, total users, and disabled, enabled, synced uses, as well as all members of privileged groups. The Crate ensures that all changes are recorded as part of the version history. Improve reporting accuracy, save time through automated documentation, and aid troubleshooting with readily available group information.

## Crate prerequisites

Before unpacking this Crate:

* The [Microsoft Cloud Integration Bundle](../../integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up.
* Your [IT Glue](../../integrations/integration-guides/it-glue-integration-setup.md), [SyncMonkey](../../integrations/integration-guides/syncmonkey-integration.md), or [Hudu](../../integrations/integration-guides/hudu-integration-setup.md) integration must be set up.

## Unpack the Document M365 Environment Crate

1. Navigate to **Marketplace > Crates** in the Rewst platform.
2. Search for `Document M365 Environment`.\
   \
   ![](<../../../.gitbook/assets/image (153).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that you have the option under the **Cron Job** accordion menu to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
7. Click **Unpack**.

### Update the cron trigger

{% hint style="info" %}
To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. A fresh documentation record will appear in your documentation tool if the workflow is successful.
{% endhint %}

1. Navigate to **Automations > Workflows**.
2. Search for `[REWST - CRATE] Docs: Document M365 Environment` .
3. Click on the workflow to open it in the Workflow Builder.
4. Click on the trigger to open its settings in the right side menu.
5. Adjust the cron trigger's schedule to your desired time. The cron trigger for this Crate is set to trigger daily at 8:20 PM (UTC) if left on its default setting.
6. Click **Save Trigger**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
