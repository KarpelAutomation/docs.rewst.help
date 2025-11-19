# Document Rewst Org Variables Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Export Intune Policies and Configurations Crate in our Crate Marketplace.
{% endhint %}

## What does the Document Rewst Org Variables Crate do?

This Crate automatically captures all Rewst Org Variables for an organization and stores them in an ITGlue flexible asset, ensuring an immutable audit log for all changes.

### How the Crate works

The workflow in this Crate runs on a cron job. You have the option to adjust the schedule for when that workflow runs. The default unpacked with the Crate is daily.

* All current org variables for the organization are captured.
* A flexible asset is either created or updated in ITGlue.
* The asset serves as an audit log, documenting each change to the org variable.
* Optional notifications can be set up to alert relevant stakeholders when changes are made.

## Crate prerequisites

The [ITGlue integration ](../../configuration/integrations/integration-guides/it-glue-integration-setup.md)must be set up before unpacking this Crate.

## Unpack the Document Rewst Org Variables Crate Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2.  Search for `Document Rewst Org Variables`.\


    ![](<../../../.gitbook/assets/Screenshot 2025-09-24 at 12.04.54 PM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note the option under the **Cron Job** accordion menu to activate the Crate for all future organizations in addition to the current one. This is defaulted to on for the Crate. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
7. Click **Unpack**.\


### Use the Crate

1. The Crate runs on a cron trigger, and will execute the workflow to check and generate the flexible asset content at the same time each day. You can adjust the chosen time for execution in the workflow itself.
   1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
   2. Search for `[ROC] ITG: Store Org Vars ITG`.
   3. Click on the workflow to view it in the workflow builder.
   4. Click <img src="../../../.gitbook/assets/image (201).png" alt="" data-size="line"> to open the edit trigger menu.
   5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.\
      ![](<../../../.gitbook/assets/Screenshot 2025-09-24 at 12.24.40 PM.png>)
   6. Click **Submit**.
2. To test the Crate after unpacking:
   1. Adjust the timing of the cron job to five minutes in the future.&#x20;
   2. Click **Submit**.
   3. Check in ITGlue to see if the flexible asset is created.
   4. Return to Rewst and re-adjust the cron job timing as desired.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
