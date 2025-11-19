# Relate ITG Contact with ITG Configuration Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Relate ITG Contact with ITG Configuration Crate do?

Our Relate IT Glue Contact with IT Glue Configuration Crate simplifies managing configurations and their related contacts in IT Glue by facilitating an automatic linkage between IT Glue Configurations and their associated IT Glue Contacts. It aims to keep your configurations and contact records synchronized, thereby reducing manual data entry.

### How the Crate works

This Crate operates by iteratively going through all the ITG Configurations, finding the relevant ITG Contacts and relating them directly. Upon triggering, this Crate will:

1. Scan through all existing ITG Configurations
2. Identify associated ITG Contacts
3. Establish a relation between each ITG Configuration and its corresponding ITG Contact
4. Update the ITG Contact record to reflect this relation

## Crate prerequisites

The [IT Glue integration](../../configuration/integrations/integration-guides/it-glue-integration-setup.md) must be set up before unpacking this Crate.

## Unpack the Relate ITG Contact with ITG Configuration Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Relate ITG Contact with ITG Configuration`.\


    ![](<../../../.gitbook/assets/image (233).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter **Time Saved** under **Crate Configuration**.
7. Ensure that **Enabled** is toggled on under **Configure Triggers**.\
   Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
8. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows**.
2.  Search for `[ROC] ITG: Associate Configuration with Contacts`.\


    <figure><img src="../../../.gitbook/assets/image (234).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to open it in the workflow builder.\


    <figure><img src="../../../.gitbook/assets/image (236).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own, and tickets will be created if expiring certs are found.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
