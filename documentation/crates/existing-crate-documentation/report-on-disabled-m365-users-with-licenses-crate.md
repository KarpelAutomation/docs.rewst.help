# Report on Disabled M365 Users with Licenses Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Report on Disabled M365 Users with Licenses Crate do?

Our Report on Disabled M365 Users with Licenses Crate is designed to go through each customer's Microsoft Entra tenant to find users that are disabled and have a license assigned. It will then create a ticket when actionable items are found.&#x20;

For each user that is discovered to fit this criteria, the user is disabled, a license is assigned, and a ticket will be created. If the ticket already exists, the existing ticket will be updated. Each ticket note will contain details about the user that can be pulled from Microsoft Entra or Exchange Online, as well as a link to add the user to a list of users to ignore in future runs of the workflow.

This Crate does not automatically remediate user accounts.

### How the Crate works

* Based on the configured cron schedule, the default frequency for the workflow is weekly on Monday at 3:00 AM UTC. Disabled users in the customer tenant will be checked to ensure that they don't have licenses assigned. Alerts are only sent out when actionable items are found.
* This Crate will integrate with Microsoft Entra and Rewst supported PSAs.

The Crate is kicked off with the following main workflow:

1. On first run for the managed organization, an organization variable is created for the webhook trigger on the workflow. This trigger is used to update the organization variable for the ignore list. If a customer organization attempts to execute prior to this being created, the workflow will exit the main workflow after the `missing_org_var_and_not_top_level_org noop`.
2. After the first step runs, an organization variable `disabled_user_license_ignore` is created with a default value of an empty list. If this is a subsequent run of the workflow and the organization variable already exists, it will load the value of the existing organization variable.
3. Microsoft Graph is queried for a list of users who match the following criteria:&#x20;
   1. Account is disabled
   2. Assigned license count is not equal to 0
4. The list of matching users is returned and compared against the list to ignore. If the user is in the ignore list, the user is removed from the list of users to process.
5. The user is directed to a subworkflow that does the info gathering and ticket submission or update.
6. The following user details are obtained:
   * Assigned SKUs to be translated to friendly names
   * Graph user details
   * Exchange user details
7. These are then compiled. A ticket note is formatted.
8. An existing ticket is checked on all PSAs based on the summary and whether the PSA-related ticket is open or not. If any is found, the existing one is updated. If no ticket exists, a new one is created.

{% hint style="info" %}
When the technician clicks on the link in the ticket notes, this will open a browser window and JSON stating that the workflow has been executed will be returned. This can be closed safely once it appears. This click will modify the organization variable for the organization to include the user in the ignore list.
{% endhint %}

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Report on Disabled M365 Users with Licenses Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Report on Disabled M365 Users with Licenses`.

    \
    ![](<../../../.gitbook/assets/image (227).png>)
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
* **`disabled_user_license_ignore`**: This organization variable is in the format of a JSON list. This is used to pull ignored users from the Microsoft Graph return so that they are not processed later in the workflow. Use this to add individual users to an ignore list for each customer organization, either by clicking the link provided in the PSA ticket or by manually adding each user to the organization variable.
  * Note that users must be added to the JSON list by the corresponding GUID, not the email or UPN. Example: \["dff2e679-f51d-4259-a32b-bde6fa918671","eaa2e675-f51d-4259-a32b-bde6fa438671"]
{% endhint %}

### Use the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. To edit a cron trigger in the workflow to either test it once or change the timing it will routinely run:

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] Check for Disabled Users With Licenses`.

    \


    <figure><img src="../../../.gitbook/assets/image (224).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Use the trigger drop-down selector to choose the **Weekly Check** trigger.&#x20;
5. Click ![](<../../../.gitbook/assets/image (226).png>) to open the **Edit Trigger** menu.
6. The default **Cron Schedule** under **Trigger Parameters** is currently set to Monday at 3:00 AM UTC. This may be kept as is or if desired, be modified. To modify, update the timing of the cron trigger in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
7. It is recommended that you manually execute the workflow with the **Weekly Check** trigger selected using the **Test** button for your main org. This will complete the first step, where the organization variable for the webhook trigger ID is created. If this is not performed, on the first run, the customer organizations will gracefully exit the workflow, and the main organization will create the variable and run normally. The subsequent runs will function normally for the customer organization.
8. Click **Submit**.
9. Click **Save**.
10. You'll see a green message at the top of your screen indicating the trigger is saved.

## Organization variables associated with this Crate <a href="#organization-variables-associated-with-this-crate" id="organization-variables-associated-with-this-crate"></a>

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

* `disabled_user_license_ignore_trigger_id` - This organization variable only gets set at the top, MSP level organization, and is set automatically on first run for the MSP. It's set to use as the default so inheritance can be used by customer organizations.
* `disabled_user_license_ignore` - This organization variable is in the format of a JSON list. This is used to pull ignored users from the Microsoft Graph return so they are not processed later in the workflow.&#x20;

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
