# Report on Disabled M365 Users with Licenses Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Report on Disabled M365 Users with Licenses Crate do?

Our Report on Disabled M365 Users with Licenses Crate is designed to go through each customer's Microsoft Entra tenant and find users that are disabled and have a license assigned, which will create a ticket when actionable items are found.&#x20;

For each user that is discovered to fit this criteria, that is, the user is disabled and and a license is assigned, a ticket will be created. If the ticket already exists, then the existing ticket will be updated. Each ticket note will contain details about the user that can be pulled from Microsoft Entra or Exchange Online, as well as a link to add the user to a list of users to ignore from future runs.

### How the Crate works

* Based on the configured cron schedule, the default frequency is weekly on Monday at 3:00 AM UTC. Disabled users in the customer tenant will be checked to ensure they do not have licenses assigned. Alerts are only sent out when actionable items are found.
* This Crate will integrate with Microsoft Entra and Rewst supported PSAs.
* This Crate will help with reviewing tenants for licenses that are assigned to users that may not need them due to them being disabled.

The Crate is kicked off with the following main workflow:

1. On first run for the managed organization, an organization variable is created for the webhook trigger on the workflow. This trigger is used to update the organization variable for the ignore list. If a customer org attempts to execute prior to this being created, the workflow will exit the main workflow after hitting the `missing_org_var_and_not_top_level_org noop`.
2. After the first step runs, an organization variable `disabled_user_license_ignore` is created with a default value of an empty list. If this is a subsequent run and the organization variable exists, then it will load the value of the existing organization variable.
3. Microsoft Graph is queried for a list of users who match the following criteria: Account is disabled, and assigned license count is not equal to 0.
4. The list of matching users is returned and then compared against the list to ignore. If the user is in the ignore list, the user is removed from the list of users to process.
5. The user is directed to a subworkflow that does the info gathering and ticket submission or update.
6. The following user details are obtained:
   * Assigned SKUs to be translated to friendly names
   * Graph user details
   * Exchange user details
7. These are then compiled and then a ticket note is formatted.
8. An existing ticket is checked on all PSAs based on the summary and whether the PSA-related ticket is open or not. If any is found, the existing one is updated.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Report on Disabled M365 Users with Licenses Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Report on Disabled M365 Users with Licenses`.

    \
    ![](<../../../.gitbook/assets/image (200) (1).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter **Time Saved** under **Crate Configuration**.
7. Expand both **Cron Job** and **Webhook** accordion menus under **Configure Triggers**, and then ensure that **Enabled** is toggled on for both. Note that for both triggers, you also have the option to activate the Crate for all future organizations in addition to the current one.
8. Click **Unpack**.

{% hint style="info" %}
**Organization variables needed**

For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Setting the following variables will allow the Crate to work without further client-specific setup:

* **Microsoft Cloud Integration Bundle**: Required for Microsoft Graph API access.

Refer to the following workflow-specific organization variables:

* **`disabled_user_license_ignore_trigger_id`**: This organization variable only gets set at the top level (MSP) organization. Set automatically on first run for the MSP. The organization variable is set to be used as a default, so inheritance can be used by customer organizations.
* **`disabled_user_license_ignore`**: This organization variable is in the format of a JSON list. This is used to pull ignored users from the Microsoft Graph return so that they are not processed later in the workflow.
{% endhint %}

## Use the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. To edit a cron trigger in the workflow to either test it once or change the timing it will routinely run:

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] Check for Disabled Users With Licenses`.

    \


    <figure><img src="../../../.gitbook/assets/image (200).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Use the trigger drop-down selector to choose the **Weekly Check** trigger.&#x20;
5. Click ![](<../../../.gitbook/assets/image (2) (8).png>) to open the **Edit Trigger** menu.
6. The default **Cron Schedule** under **Trigger Parameters** is currently set to Monday at 3:00 AM UTC. This may be kept as is or if desired, be modified. To modify, update the timing of the cron trigger in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
7. It is recommended that you manually execute the workflow with the **Weekly Check** trigger selected using the **Test** button for your main org. This will complete the first step, where the organization variable for the webhook trigger ID is created. If this is not performed, on the first run, the customer organizations will gracefully exit the workflow, and the main organization will create the variable and run normally. The subsequent runs will function normally for the customer organization.
8. Click **Submit**.
9. Click **Save**.
10. You'll see a green message at the top of your screen indicating the trigger is saved.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
