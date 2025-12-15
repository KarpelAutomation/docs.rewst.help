# Alert on Privileged Role Account Creation Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Privileged Role Account Creation Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Alert on Privileged Role Account Creation Crate helps identify newly created administrator accounts in your Microsoft 365 environment. By monitoring specific admin roles and comparing them against a configurable audit window, this Crate provides timely alerts via PSA tickets and helps catch unauthorized or unexpected account creations early on.

The Alert on Privileged Role Account Creation Crate only reports newly created admin accounts. It does not perform any deletion actions.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Lists users from Microsoft Graph, then filtered by the specified admin role names
* Compares account creation dates against the defined audit window to identify newly created admin accounts
* Generates PSA tickets that detail the new admin accounts detected during the audit window

The Crate workflow is triggered by a cron trigger based on the configured schedule.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

Your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which serves as the entry point and initializes the monitoring process for new administrator accounts.
2. The **get\_audit\_logs** task executes the **Microsoft Graph API Get Audit Logs** action to retrieve recent audit log entries from Microsoft 365 that contain administrative role assignments and account creations.
3. The **filter\_admin\_events** task uses the **Filter List** action to identify events specifically related to new administrator account creations or role assignments within the specified time period.
4. The **check\_for\_new\_admins** task runs the **conditional logic** action to determine if any new administrator accounts have been created or if existing accounts have been granted administrative privileges.
5. The **validate\_admin\_changes** task executes the **Microsoft Graph API Get User** action to retrieve detailed information about the newly created or modified administrator accounts.
6. The **assess\_risk\_level** task uses the **Set Variable** action to evaluate the risk level of the new administrator accounts based on factors like creation time, assigned roles, and account properties.
7. The **generate\_alert\_data** task runs the **Transform Data** action to compile comprehensive information about the new administrator accounts including user details, assigned roles, and creation timestamps.
8. The **create\_psa\_ticket** task executes the **PSA Create Ticket** action to generate a security alert ticket documenting the new administrator account creation for review and approval.
9. The **send\_notification** task uses the **Send Email** action to notify security personnel and administrators about the new administrator account creation via email alert.
10. The workflow concludes with the **END** task using the **noop** action, completing the monitoring and alerting process for new Microsoft 365 administrator accounts.

## Unpack the Alert on Privileged Role Account Creation Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Alert on Privileged Role Account Creation`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (318).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on for **Cron Job** under **Configure Triggers**. Note that you have the option under the accordion menu of the trigger to activate the Crate for all future organizations in addition to the current one. You may also set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[REWST - PROC] Alert on Users Without MFA Enforced`.<br>

    <figure><img src="../../../.gitbook/assets/image (269).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to view it in the Workflow Builder.<br>

    <figure><img src="../../../.gitbook/assets/image (270).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own. Check in your PSA's portal to ensure that the workflow is able to detail the new admin accounts detected during the audit window as expected.

### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[REWST - CRATE] M365: Alert on New Admin Accounts`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.<br>

    <figure><img src="../../../.gitbook/assets/image (272).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
