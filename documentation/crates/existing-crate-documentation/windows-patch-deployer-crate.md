# Windows Patch Deployer Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Windows Patch Deployer Crate do?

This Crate streamlines the process of deploying Windows updates across selected computers using your RMM platform. It operates in two parts: caching available patches, and executing scheduled deployments. Patch activity is logged in PSA tickets for auditing. Deployments can be scheduled up to 30 days in advance. Installation status is tracked for up to 10 minutes.&#x20;

### How the Crate works

1. It lists online computers from the RMM platform and runs a PowerShell script to retrieve available patches. These are saved in a template, enabling quick retrieval through option generators during scheduling via form.
2. It schedules patch deployment based on user input via form. The workflow contains a cron trigger parameter for gathering data for the workflow.
3. The workflow:
   1. Creates a PSA ticket if one is not provided.
   2. Delays execution until the scheduled deployment time.
   3. Verifies schedule integrity when resuming.
   4. Runs PowerShell scripts on selected computers to install chosen patches.
   5. Updates the ticket with the patch deployment results.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which serves as the entry point for the automation process.
2. The **check\_trigger** task using the **noop** action evaluates the trigger type to determine the workflow path, checking if the workflow was initiated via a Form Submission or through other means.
3. If triggered by a Form Submission, the **list\_computers** task executes the **\[REWST - TASK] List Computers** action to retrieve a list of computers from the default RMM system and create a mapping of computer IDs to labels for ticket documentation.
4. If triggered by other means, the workflow proceeds directly to the **generate\_template\_from\_available\_patches** task using the **\[Rewst - TASK] Windows: Generate Template From Available Patches** action to prepare the PowerShell script template for patch deployment.
5. The **check\_ticketing\_action** task uses the **noop** action to determine whether a ticket ID was provided as input or if a new ticket needs to be created.
6. If no ticket ID is provided, the **list\_available\_patches** task executes the **\[REWST - OPT GEN] Windows: List Available Patches** action to retrieve available patches and create a mapping of patch IDs to labels for ticket creation.
7. The **psa\_create\_ticket** task runs the **\[REWST - PROCESS] PSA: Create Ticket** action to create a new PSA ticket with details about the patches to be deployed and target computers.
8. The **is\_delay\_needed** task uses the **noop** action to check if the current time has reached the scheduled deployment time by comparing the deployment schedule with the current timestamp.
9. If the deployment schedule has not been reached, the **delay\_automation** task executes the **\[REWST - TASK] Delay Automation** action to pause the workflow until the scheduled deployment time arrives.
10. After the delay completes, the **verify\_schedule** task uses the **noop** action to validate that the workflow is executing within an acceptable time window from the scheduled deployment time.
11. The **run\_powershell\_via\_rmm** task executes the **\[REWST - TASK] Run Powershell via RMM** action with "With Items" configuration to deploy patches to each computer in the computer ID list, running up to 5 concurrent operations with a 1-hour timeout.
12. Upon successful patch deployment, the **success\_update\_ticket\_internal\_note** task runs the **\[REWST - TASK] Update Ticket Internal Note** action to update the PSA ticket with detailed results including success status and console logs from each computer.
13. If any step fails, the **failed\_update\_ticket\_internal\_note** task executes the **\[REWST - TASK] Update Ticket Internal Note** action to update the ticket with failure information and error details.
14. The workflow then proceeds to either the **SUCCESS** task using the **noop** action if all operations completed successfully, or the **FAILED** task using the **noop** action if any critical errors occurred.
15. Both success and failure paths converge at the **END** task using the **noop** action, which publishes the final automation log and marks the workflow completion.
16. The workflow outputs include the PowerShell execution results, success status, and comprehensive automation logs for tracking and auditing purposes.

## Crate prerequisites

Before unpacking this Crate,

* Your [PSA must successfully be integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.
* Your [RMM must successfully be integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) with Rewst. Note that this Crate does not work with Kaseya VSA X.&#x20;

## Unpack the Windows Patch Deployer Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Windows Patch Deployer`**.**\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-11-20 at 2.25.19 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
6. Ensure that **Enabled** is toggled on.
7. Click **Unpack**.

### Use the Crate

{% hint style="info" %}
The deployment requires cached patch data, which is generated for the first time after Crate unpack either by waiting for the `Cron Job - Generate Template` trigger to run automatically on the main workflow of the Crate, or by triggering it manually with the desired Trigger Context Organization. Only follow the below steps when one of those data generation methods has been completed.

A variable configuration of `max_diff_hours` defines the maximum number of hours the workflow can deviate from the scheduled time to still be considered valid. At unpacking, this defaults to 2 hours.
{% endhint %}



1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[Rewst] Deploy Windows Patches`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the relevant organization. This will launch the form in a new tab.
5. Select the org that contains the computers you wish to deploy patches to via the **Organization** drop-down selector.
6. Choose the computers to be patched using the two drop-down selectors, which will only contain computers with available patches:
   1. **Operating System** - Filter computers by operating system
   2. **Computers** - Select computers to update
7. Choose your existing PSA ticket from the **Ticket** drop-down selector. Leaving this field blank will create a new ticket.
8. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-11-20 at 2.19.15 PM.png" alt=""><figcaption></figcaption></figure>

### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow on a schedule. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[Rewst - CRATE] Windows: Deploy Patches`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.



    <figure><img src="../../../.gitbook/assets/image (2) (4).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.
