# Export MS365 Licenses to CSV Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Export MS365 Licenses to CSV Crate do?

This Crate is designed to automate the audit of Microsoft 365 licenses within a tenant. It generates a CSV report and uploads it to a PSA ticket for regular monitoring and compliance checks.

### How the Crate works

1. &#x20;Initially, the workflow scans the Microsoft 365 tenant to identify all licenses.
2. It generates a CSV report detailing the license information, such as type, usage, and allocation.
3. The CSV is then attached to a designated ticket within the PSA.
4. The entire process is set to recur at regular intervals for continuous monitoring and auditing.

## Crate prerequisites

* Your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst before unpacking this Crate.&#x20;
* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Export MS365 Licenses to CSV Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Export MS365 Licenses to CSV`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-22 at 10.01.26 AM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack**.
5. Enter the following information into the configuration page:
   1. The ID of the board or queue you wish to use for the workflow
   2. The priority of the tickets that will be logged in the board
   3.  Choose your relevant PSA from the drop-down selector<br>

       <figure><img src="../../../.gitbook/assets/Screenshot 2025-09-22 at 10.04.36 AM.png" alt=""><figcaption></figcaption></figure>
6. Click **Continue**.
7. Note that you have the option under the **Cron Job** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](https://docs.rewst.help/documentation/automations/intro-to-triggers/trigger-criteria), or for integration overrides.
8. Ensure that the cron job trigger has **Enabled** toggled on.
9. Click **Unpack**.

### Use the Crate

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. If you wish to test the workflow, adjust the time to 5 minutes in future, check workflow execution logs to make sure that the workflow ran properly, the readjust the cron trigger's timing to run as desired for normal scheduling.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[ROC] MS Graph - M365 License Export`.
3. Click on the workflow to view it in the workflow builder.
4. Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-22 at 10.31.33 AM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
