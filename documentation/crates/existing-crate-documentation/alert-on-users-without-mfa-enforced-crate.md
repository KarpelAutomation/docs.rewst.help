# Alert On Users Without MFA Enforced Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Users Without MFA Enforced Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Alert on Users Without MFA Enforced Crate gathers a list of users and checks whether the users have the MFA enforced through security defaults, per user MFA, or conditional access. If the workflow identifies users without the MFA enforced, a ticket will be created in the PSA for your team to address.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* The Crate is executed via a cron trigger, or it can be run manually for an organization via the Test button in the workflow builder.
* PSA tickets will be automatically created for users without MFA enforced
* Easily ignore users from future runs via a hyperlink in the PSA ticket or edited via organization variable.

### Workflow breakdown

1\. The workflow begins execution with the **START** task, which initiates the process flow.

2\. The workflow examines whether an organization variable for the webhook trigger ID exists, called `users_no_mfa_enforced_ignore_trigger_id`, determining the execution path based on whether the variable is found and whether the workflow is running under the managing organization.

3\. If the trigger organization variable doesn't exist and the workflow is running under the managing organization, it creates the necessary webhook organization variable for future use.

4\. The workflow determines whether it was triggered by a webhook or another trigger type, such as a cron job, which affects how the workflow processes users.

5\. If the workflow was triggered via webhook, it processes the request to add a user to the ignore list and updates the organization ignore variable accordingly.

6\. The workflow retrieves the organization variable containing the list of users to ignore for MFA enforcement alerts: `mfa_enforcement_alert_users_to_ignore`.

7\. The workflow calls the detailed MFA reporting process to fetch comprehensive MFA status information for all users in the organization.

8\. The workflow evaluates the retrieved user data to identify users who do not have MFA enforced, excluding any users in the ignore list, and determines whether alerts need to be sent.

9\. For each user without MFA enforcement, the workflow executes the user processing task using "with items" iteration, which handles alerting and notification processes for each individual user.

10\. If any step fails during execution, the workflow routes to a failure catch task that sets the success status to false.

11\. The workflow concludes by compiling automation logs from all executed tasks and publishing the final success status and comprehensive logging information.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

Your PSA must be successfully integrated with Rewst. PSAs that work with this Crate include:

* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [SuperOps](../../configuration/integrations/integration-guides/superops-integration.md)
* [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
* [ServiceNow](../../configuration/integrations/integration-guides/servicenow-integration-setup.md)
* [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)

## Unpack the Alert on Users Without MFA Enforced Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Alert on Users Without MFA Enforced`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (265).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on for both **Webhook** and **Cron Job** under **Configure Triggers**. Note that you have the option under the accordion menus of both triggers to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[REWST - PROC] Alert on Users Without MFA Enforced`.\


    <figure><img src="../../../.gitbook/assets/image (269).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to view it in the Workflow Builder.\


    <figure><img src="../../../.gitbook/assets/image (270).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own. Check in your PSA's portal to ensure that the workflow is creating tickets, and able to move new devices to their correct location as expected.

### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[REWST - PROC] Alert on Users Without MFA Enforced`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.\


    <figure><img src="../../../.gitbook/assets/image (272).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](../../configuration/organization-variables.md).&#x20;

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](configure-organization-variables.md), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

* `mfa_enforcement_alert_users_to_ignore` - This is a JSON-formatted list containing GUIDs of users to ignore.
* `mfa_enforcement_ignore_trigger_id` - This stores the trigger ID of the webhook trigger for the workflow. This gets set automatically on the first run at the MSP level. The workflow will not run for child organizations until the first run for the MSP org completes. This can be edited should the trigger get recreated.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
