# Exchange CIS Audit Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Exchange CIS Audit Crate do?

Compliance with CIS controls is critical for your organization's security posture. This Crate automates the process of validating certain CIS controls such as audit logs and mailbox configurations, and logs a ticket for record-keeping and potential remediation actions.

### How the Crate works

* **The workflow v**alidates if audit logs are configured correctly per CIS controls.
* It confirms if mailbox settings align with specific CIS controls.
* A ticket is created in your integrated PSA, detailing the compliance status of each control validated.
* The ticket contains a detailed summary of all the controls checked, making it easier for remediation if necessary.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

Your [PSA must succesfully be integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.

## Unpack the Exchange CIS Audit Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2. Search for `Exchange CIS Audit`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-25 at 11.50.38 AM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Click **Continue**.
6. Note that you have the option under the **Cron Job** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](https://docs.rewst.help/documentation/automations/intro-to-triggers/trigger-criteria), or for integration overrides.
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. After unpacking, the default schedule for this Crate is once monthly, on the first day of each month.

1. Navigate to **Automations > Workflows**.
2. Search for `[ROC] EXO: CIS Audit`.
3. Click on the workflow to open it in the workflow builder.
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own. Check in your PSA to ensure that the workflow creates a ticket as expected.
5. Re-adjust the cron trigger's schedule to run as you would normally wish.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-25 at 12.05.01 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

