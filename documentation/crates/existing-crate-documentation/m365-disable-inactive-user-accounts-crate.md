# M365: Disable Inactive User Accounts Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the M365: Disable Inactive User Accounts Crate do?

Our M365: Disable Inactive User Accounts Crate automates the identification and disabling of inactive Microsoft 365 user accounts. It retrieves user activity data from Microsoft Graph, applies role-based exclusions, and disables eligible accounts while logging the changes into a PSA ticket.

This Crate disables inactive accounts, but doesn't remove them from the directory. Manual intervention is still required to restore access. The Crate doesn't automatically remove Microsoft M365 licenses from disabled users.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Regularly checks for inactive accounts and takes action based on predefined thresholds
* Uses Microsoft Graph API and PSA tools to streamline account management
* Reduces manual oversight by automating the process of disabling inactive accounts and logging changes
* Enhances organizational security by minimizing exposure from unused accounts while preventing accidental deactivation of critical users

The Crate workflow is triggered by a cron job based on the configured schedule.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which processes any excluded user principal names by converting them to lowercase and storing them in the context for later filtering.
2. The **list\_inactive\_users** task executes the **\[REWST - TASK] M365: List Inactive Users** action to identify user accounts that have been inactive for the specified number of days, excluding system accounts and any specified roles.
3. If the **list\_inactive\_users** task fails, the workflow transitions to the **FAILED** task using the **noop** action, which then proceeds directly to the **END** task.
4. Upon successful completion of the **list\_inactive\_users** task, the workflow moves to the **filter\_inactive\_users** task using the **Set Variable** action, which filters the inactive users list to include only enabled accounts that are not in the excluded user principal names list.
5. The **filter\_inactive\_users** task has three possible transition paths based on conditions:
   * If no users remain after filtering, it transitions directly to the **END** task.
   * If the enable\_remediation flag is set to True, it proceeds to the **disable\_user\_account** task.
   * Otherwise, it skips remediation and goes directly to the **create\_psa\_ticket** task for reporting only.
6. When remediation is enabled, the **disable\_user\_account** task executes the **\[REWST - TASK] 365/On-Prem: Disable User Account** action with a "with items" loop that processes each inactive user that is not synchronized with on-premises Active Directory, running up to 5 concurrent operations.
7. If the **disable\_user\_account** task fails, the workflow transitions to the **FAILED** task, otherwise it continues to the **create\_psa\_ticket** task.
8. The **create\_psa\_ticket** task executes the **\[REWST - PROCESS] PSA: Create Ticket** action to generate a ticket documenting the inactive users found and any remediation actions taken, with different descriptions based on whether remediation was enabled or disabled.
9. If the **create\_psa\_ticket** task fails, the workflow transitions to the **FAILED** task, otherwise it proceeds to the **END** task.
10. The workflow concludes with the **END** task using the **noop** action, which publishes the final automation log and outputs the list of inactive users that were processed.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

Your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.

## Unpack the M365: Disable Inactive User Accounts Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `M365: Disable Inactive User Accounts`.

    \
    ![](<../../../.gitbook/assets/image (311).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter **Time Saved** under **Crate Configuration**.
7. Expand the **Cron Job** accordion menu under **Configure Triggers**. By default, the **Enabled** toggle button is disabled. Ensure **Enabled** is toggled on. Note that you also have the option to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
8. Click **Unpack**.

## Use the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. To edit a cron trigger in the workflow to either test it once or change the time it will routinely run:

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] Check for Disabled Users With Licenses`.



    <figure><img src="../../../.gitbook/assets/image (224).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Click ![](<../../../.gitbook/assets/image (226).png>) to open the **Edit Trigger** menu.
5. The default **Cron Schedule** under **Trigger Parameters** is currently set to Monday at 3:00 AM UTC. This may be kept as is or if desired, be modified. To modify, update the timing of the cron trigger in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. It is recommended that you manually execute the workflow with the **Weekly Check** trigger selected using the **Test** button for your main organization. This will complete the first step, where the organization variable for the webhook trigger ID is created. If this is not performed, on the first run, the customer organizations will exit the workflow, and the main organization will create the variable and run normally. The subsequent runs will function normally for the customer organization.
7. Click **Submit**.
8. Click **Save**.
9. You'll see a green message at the top of your screen indicating the trigger is saved.
10. Verify that the inactive user accounts have been disabled in the in the Microsoft 365 Admin Center.
11. Check your PSA to ensure that the changes have been logged in a ticket.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
