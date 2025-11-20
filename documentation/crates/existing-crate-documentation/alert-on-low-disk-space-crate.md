# Alert on Low Disk Space Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Low Disk Space Crate do?

This Crate looks for drives of managed computers with low disk space and creates a ticket for any found in your PSA. It doesn't look for existing disk free space tickets, alert on specific size thresholds, or exclude disks by any criteria other than if they are a local disc.

### How the Crate works

The workflow associated with this Crate runs per organization, via cron trigger. It will iterate online devices for the organization and retrieve logical disk information from each device. It will then evaluate whether the remaining free space is at or below the specified value. For each disk associated with a device that meets that criteria, a ticket will be created. The Crate also outputs the retrieved disk information after the workflow runs.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which serves as the entry point and immediately transitions to the next step.
2. The **get\_organization\_computers** task executes the **\[REWST - TASK] List Computers** action to retrieve all computers from the organization, using the default RMM system and limiting results to 300 devices while including N-Central last contact information.
3. The **remove\_offline\_computers** task uses the **Filter List** action to filter the computer list and keep only devices that are currently online by checking where the online attribute equals "True".
4. The **collect\_drive\_information** task runs the **\[REWST - TASK] Run Powershell via RMM** action with items iteration, executing a PowerShell script on each online device to gather drive information including free space, total space, and usage data.
5. The **transform\_drive\_data** task uses the **Set Variable** action to process and structure the raw drive data into a standardized format, calculating drive percentage free space and organizing device information including hostname, drive letter, and space metrics.
6. The **get\_drives\_with\_low\_freespace** task applies the **Filter List** action to identify drives where the percentage of free space is less than or equal to the configured alert threshold percentage.
7. The workflow then evaluates whether ticket generation is enabled and follows one of two paths: if ticket generation is disabled, it proceeds directly to the **END** task; if enabled, it continues to the **generate\_tickets** task.
8. The **generate\_tickets** task executes the **\[REWST - PROCESS] PSA: Create Ticket** action with items iteration, creating individual tickets in the PSA system for each drive that has low free space, including device hostname and drive letter in the ticket summary.
9. If any task fails during execution, the workflow transitions to the **action\_error** task, which uses the **noop** action to handle error states before proceeding to completion.
10. The workflow concludes with the **END** task using the **noop** action, which compiles automation logs from all executed tasks and publishes the final workflow results including status codes, errors, warnings, and collected drive data.

## Crate prerequisites

Your[ PSA must be integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.

Your [RMM must be integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) with Rewst.

## Unpack the Alert on Low Disk Space Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst Platform.
2. Search for `Alert on Low Disk Space`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-11-17 at 4.35.43 PM.png>)<br>
3. Click **Unpack Crate**.
4. Click **Continue.**
5. Expand the **Cron Job** accordion menu under **Configure Triggers.**
6. Ensure that **Enabled** is toggled on. Note that you have the option to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), organizations, or [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md).
7. Click **Unpack**.

### Additional Crate configurations

If desired, there are two additional trigger parameter options to configure in the unpacked workflow for this Crate.&#x20;

1. Open the workflow `[Rewst- Crate] Alert on Low Disk Space` in the workflow builder.
2. Click ![](<../../../.gitbook/assets/Screenshot 2025-11-17 at 4.41.39 PM.png>) to edit the trigger.
3. Scroll down to the **Trigger Parameters** section.
   1. Generate Ticket - A boolean value specifying whether you want a ticket generated or not
   2. Alert Remaining Freespace Percent - The percent, expressed as an integer, that an alert should be created for when freespace on a disk is at or falls below that value
4. Click **Submit** when your desired changes have been configured.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-11-17 at 4.39.34 PM.png" alt="A navy blue background with white text denoting a section called Trigger Parameters. There are two fields, each titled Alert Remaining Freespace Percent and Generate Ticket. There is a notation that each of these fields is required. A button to open the Jinja editor appears to the right of each field."><figcaption></figcaption></figure>

### Test the Crate

To test the Crate to see if it works:

1. You'll need to manually identify a device with limited disk space.&#x20;
2. Navigate to **Automations > Workflows**.
3. Search for `[Rewst- Crate] Alert on Low Disk Space`. Click to open the workflow in the Workflow Builder.
4. Click **Test**.
5. Check in your PSA to see if the ticket is attached to the device as expected.&#x20;
6. If the ticket doesn't appear, check the workflow's results for the error and contact Rewst Support.

### Adjust the Crate's cron trigger

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[Rewst- Crate] Alert on Low Disk Space`.
3. Click on the workflow to view it in the workflow builder.
4.  Click ![](<../../../.gitbook/assets/image (205).png>) to open the edit trigger menu.\
    &#x20;

    <figure><img src="https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2F1835401289-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FAQQ1EHVcEsGKBPVHmiav%252Fuploads%252FwnXIbYjmeXtTETWFBKkI%252FScreenshot%25202025-06-25%2520at%25205.53.42%25E2%2580%25AFPM.png%3Falt%3Dmedia%26token%3D53680b5e-a0a9-4260-8d31-4802c66355e8&#x26;width=300&#x26;dpr=4&#x26;quality=100&#x26;sign=e56327e1&#x26;sv=2" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example. 18 3, not 3 18.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
