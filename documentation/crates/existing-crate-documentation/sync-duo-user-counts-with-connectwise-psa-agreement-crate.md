# Sync Duo User Counts with ConnectWise PSA Agreement Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Sync Duo User Counts with ConnectWise PSA Agreement Crate do?

Our Sync Duo User Counts with ConnectWise PSA Agreement Crate automates the process of updating the ConnectWise PSA Agreement by keeping your it in sync with your Duo tenant's user count, running the process at intervals that suit your business requirements, and eliminating manual errors to ensure your agreements reflect the true usage.

Note that this requires the [Configure ConnectWise PSA Agreement for Duo Sync Crate](configure-connectwise-psa-agreement-for-duo-sync-crate.md) to configure the relevant variables.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* At your specified intervals, the Crate fetches the current user count from Duo
* The ConnectWise PSA Agreement is then updated to reflect this number
* You have the flexibility to run this Crate either on-demand or based on a predefined schedule

The Crate workflow is triggered by a cron job based on the configured schedule.

## Crate prerequisites

The following integrations must be set up before unpacking this Crate:

* [ConnectWise PSA integration](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Duo integration](../../configuration/integrations/integration-guides/duo-integration-setup.md)

## Unpack the Sync Duo User Counts with CWM Agreement Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Sync Duo User Counts with ConnectWise PSA Agreement Crate`.

    \
    ![](<../../../.gitbook/assets/image (328).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Expand the **Cron Job** accordion menu under **Configure Triggers**. Ensure **Enabled** is toggled on. Note that you also have the option to activate the Crate for all future organizations in addition to the current one. You may also set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] ConnectWise Manage - Sync DUO Counts w/ ConnectWise Agreement`.<br>

    <figure><img src="../../../.gitbook/assets/image (1) (4).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to view it in the Workflow Builder.<br>

    <figure><img src="../../../.gitbook/assets/image (2) (8).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own. Check in your PSA's portal to ensure that the workflow is able to detail the new admin accounts detected during the audit window as expected.

### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[ROC] ConnectWise Manage - Sync DUO Counts w/ ConnectWise Agreement`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.



    <figure><img src="../../../.gitbook/assets/image (3) (6).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

`cwm_duo_agreement_preferences`
