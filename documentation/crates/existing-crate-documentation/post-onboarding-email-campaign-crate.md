# Post Onboarding Email Campaign Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Post Onboarding Email Campaign Crate do?

Our Post Onboarding Email Campaign Crate enhances the onboarding process by sending templated emails to new users at specific intervals. The emails will be based on predefined campaigns, and the workflow will dynamically select a campaign template based on the start date of the new user.

* Creates a variable for newly onboarded users that captures their start date and the campaign they should be a part of
* Chooses the appropriate campaign template based on the new user's start date
* Sends out 30-day and 60-day welcome emails based on the captured start date and selected campaign template

### Workflow breakdown

1. The workflow begins execution with the **BEGIN** task, which uses the **noop** action to initialize the workflow and establish the starting point for the automation process.
2. The workflow transitions to the **list\_all\_orgs** task, which executes the **\[Rewst Master v3] Rewst: Run for All Orgs** action to retrieve a comprehensive list of all organizations within the Rewst platform.
3. Upon successful completion of the **list\_all\_orgs** task, the workflow publishes the automation log and the complete list of organizations to the workflow context, making this data available for subsequent tasks.
4. The workflow then proceeds to the **workflows\_post\_onboarding\_email\_campaign** task, which executes the **\[ROC] User: Post Onboarding Email Campaign - Stage 2.1: Send Mail Campaign** sub-workflow action.
5. The **workflows\_post\_onboarding\_email\_campaign** task runs iteratively across all organizations retrieved in step 2, processing each organization individually with a concurrency limit of 1 to ensure sequential execution.
6. For each organization iteration, the task passes the email\_titles, frequency\_list, and email\_templates input parameters from the workflow context to the sub-workflow, enabling customized email campaign execution per organization.
7. The sub-workflow processes each organization by checking for existing email campaign state variables, determining which users need to receive emails based on their hire dates and the frequency list, and sending appropriate onboarding emails using the provided templates.
8. After all organizations have been processed successfully through the iterative sub-workflow execution, the workflow transitions to the **END** task.
9. The workflow concludes with the **END** task, which uses the **noop** action to formally terminate the workflow execution and mark the email campaign process as complete across all organizations.

## Unpack the Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of your Rewst platform.
2.  Search for `Post Onboarding Email Campaign`.​\
    &#x20; ​

    <div align="left"><figure><img src="../../../.gitbook/assets/image (295).png" alt=""><figcaption></figcaption></figure></div>
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on for the **Cron Job** accordion menu under **Configure Triggers**. Note that you have the option to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] User: Post Onboarding Email Campaign - Stage 2: Run Email Campaign`.<br>

    <figure><img src="../../../.gitbook/assets/image (298).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to view it in the Workflow Builder.<br>

    <figure><img src="../../../.gitbook/assets/image (299).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own. Check if emails were sent as expected.

#### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[ROC] User: Post Onboarding Email Campaign - Stage 2: Run Email Campaign`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.



    <figure><img src="../../../.gitbook/assets/image (268).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
