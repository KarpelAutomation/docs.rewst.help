# Alert on AV/EDR Coverage Gaps Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on AV/EDR Coverage Gaps Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Alert on AV/EDR Coverage Gaps Crate identifies endpoints that are not protected by the configured antivirus or endpoint detection and response platforms. It ensures that organizations maintain a comprehensive security coverage by generating alerts and creating PSA tickets for uncovered devices.

The Alert on AV/EDR Coverage Gaps Crate only identifies unprotected devices. It doesn't deploy security software.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Gathers a list of computers managed by the remote monitoring and management platform
* Checks which devices are not covered by the installed AV/EDR platforms
* Logs a ticket to document which computers are not protected

The Crate workflow is triggered by a cron job based on the configured schedule.

### Workflow breakdown

1. The workflow begins with the **START** task, which uses the **noop** action to initiate the workflow execution.
2. The workflow proceeds to the **list\_computers** task, which executes the **\[REWST - TASK] List Computers** action to retrieve all computers from the organization's RMM platform with a limit of 300 devices.
3. If the **list\_computers** task succeeds, the workflow moves to the **list\_edr\_protected\_computers** task, which runs the **\[REWST - TASK] List EDR-Protected Computers** action to gather information about computers that are currently protected by configured antivirus and EDR platforms like SentinelOne and OpenText Core Endpoint Protection.
4. Upon successful completion of the EDR protection list, the workflow executes the **group\_by\_protection\_status** task, which uses the **Set Variable** action to analyze and categorize computers based on their protection status by comparing RMM computer lists against EDR-protected computer lists to identify unprotected devices and extra devices that exist in EDR platforms but not in the RMM.
5. The **group\_by\_protection\_status** task evaluates whether any computers are unprotected or if there are extra devices found in the EDR platforms, and if missing or extra devices are detected, the workflow transitions to the **psa\_create\_ticket** task.
6. The **psa\_create\_ticket** task executes the **\[REWST - PROCESS] PSA: Create Ticket** action to create a PSA ticket with the summary `Endpoints Missing Antivirus/EDR Protection` and includes detailed information about unprotected computers, extra devices, and protection status across configured AV/EDR platforms.
7. The workflow concludes with the **END** task, which uses the **noop** action to finalize the workflow execution and publishes automation logs to the workflow context.
8. If any task fails during execution, the workflow routes to the **FAILED** task, which uses the **noop** action before proceeding to the **END** task to ensure proper workflow termination.

## Crate prerequisites

Your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.

{% hint style="info" %}
This Crate only works with [SentinelOne](../../configuration/integrations/integration-guides/sentinelone-integration-setup.md) and [OpenText Core Endpoint Protection](../../configuration/integrations/integration-guides/webroot-integration-setup.md) if integrated with the organization.
{% endhint %}

## Unpack the Alert on AV/EDR Coverage Gaps Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Alert on AV/EDR Coverage Gaps`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (312).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on for **Cron Job** under **Configure Triggers**. Note that you have the option under the accordion menu of the trigger to activate the Crate for all future organizations in addition to the current one. You may also set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[REWST - CRATE] Alert AV/EDR Coverage Gaps`.<br>

    <figure><img src="../../../.gitbook/assets/image (313).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to view it in the Workflow Builder.<br>

    <figure><img src="../../../.gitbook/assets/image (314).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own. Check in your PSA's portal to ensure that the workflow is generating alerts and creating PSA tickets for uncovered devices as expected.

### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[REWST - CRATE] Alert AV/EDR Coverage Gaps`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.<br>

    <figure><img src="../../../.gitbook/assets/image (315).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
