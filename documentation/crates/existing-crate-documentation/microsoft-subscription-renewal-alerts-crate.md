# Microsoft Subscription Renewal Alerts Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Microsoft Subscription Renewal Alerts Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Microsoft Subscription Renewal Alerts Crate monitors Microsoft 365 subscriptions and generates alerts when subscriptions approach expiration.&#x20;

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* If the organization variable `default_psa` is set to mail-only, the system will send email notifications to the address specified in the `no_psa_mail_address` variable.
* If a PSA is configured, the workflow creates a ticket only when no matching ticket exists, based on these criteria:
  * Ticket status is open
  * Summary matches the current alert
* If no PSA is integrated, the workflow sends email notifications for each expiring license.

### Workflow breakdown

1. The workflow begins with the **BEGIN** task which serves as the entry point and immediately transitions to retrieve configuration settings.
2. The **get\_ignored\_skus** task attempts to retrieve an organization variable called renewal\_alerts\_ignored\_skus that contains a list of SKU IDs to exclude from renewal alerts. If the variable is successfully retrieved, it stores the list for later filtering. If the variable retrieval fails or the variable doesn't exist, the workflow continues with an empty list as the default, ensuring the process doesn't halt due to missing configuration.
3. The **ms\_get\_expired\_licenses** task makes a Microsoft Graph API request to the "/directory/subscriptions" endpoint to retrieve all Microsoft 365 subscriptions for the organization. Upon successful retrieval, it processes the subscription data to identify subscriptions that are expiring soon by comparing their nextLifecycleDateTime against the current date and filtering out any subscriptions with "lockedout" status or SKU IDs that appear in the ignored SKUs list.
4. The **Email\_Only\_Check** task evaluates the organization's PSA configuration by checking if the "default\_psa" organization variable is set to "mail\_only". This determines whether the workflow should send email notifications or create PSA tickets for the expiring subscriptions.
5. If the organization is configured for mail-only notifications, the workflow proceeds to the **send\_mail\_update** task, which iterates through each expiring subscription and sends individual email notifications to the address specified in the "no\_psa\_mail\_address" organization variable. Each email contains detailed information about the expiring subscription including the SKU part number, SKU ID, expiration date, OCP subscription ID, and total licenses.
6. If the organization is not configured for mail-only notifications, the workflow proceeds to the **m365\_subscription\_expiring\_create\_psa\_ticket** task, which iterates through each expiring subscription and creates individual PSA tickets containing the subscription details for tracking and resolution by the MSP team.
7. Both the email and PSA ticket creation tasks process subscriptions with a concurrency of 1, ensuring they are handled sequentially rather than simultaneously.
8. If any task fails during execution, the workflow transitions to the **failed** task, which serves as a centralized error handling point before proceeding to completion.
9. The workflow concludes with the **END** task, which compiles a comprehensive automation log containing status codes, success indicators, error details, and warnings from all executed tasks, providing a complete audit trail of the workflow execution.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

To use ticket creation when no matching ticket is found in the workflow's result, your PSA must be successfully integrated with Rewst. PSAs that work with this Crate are:

* [ServiceNow](../../configuration/integrations/integration-guides/servicenow-integration-setup.md)
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
* [SuperOps](../../configuration/integrations/integration-guides/superops-integration.md)
* [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)

## Unpack the Microsoft Subscription Renewal Alerts Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Microsoft Subscription Renewal Alerts`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (278).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on for **Cron Job** under **Configure Triggers**. Note that you have the option under the accordion menus of both triggers to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[REWST - CRATE] M365 Subscription Renewal Alerts`.



    <figure><img src="../../../.gitbook/assets/image (270).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to view it in the Workflow Builder.



    <figure><img src="../../../.gitbook/assets/image (280).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own. Check in your PSA's portal to ensure that the workflow is able to move new devices to their correct location as expected.
5. If using ticket creation for your PSA with this workflow, check in your PSA to confirm that tickets are being created when conditions are met.&#x20;

### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[REWST - CRATE] M365 Subscription Renewal Alerts`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.<br>

    <figure><img src="../../../.gitbook/assets/image (281).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](../../configuration/organization-variables.md).&#x20;

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](configure-organization-variables.md), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

#### Set variables when running Configure Organizational Variables Crate

| Variable                      | Description               | Required |
| ----------------------------- | ------------------------- | -------- |
| `default_psa`                 | Selected default PSA      | Yes      |
| `psa_default_ticket_impact`   | Default PSA configuration | Yes      |
| `psa_default_ticket_priority` | Default PSA configuration | Yes      |
| `psa_default_ticket_source`   | Default PSA configuration | Yes      |
| `psa_default_ticket_status`   | Default PSA configuration | Yes      |
| `psa_default_ticket_urgency`  | Default PSA configuration | Yes      |

#### Set variables if default\_PSA is set to email\_only&#x20;

| Variable              | Description                                             | Required                 |
| --------------------- | ------------------------------------------------------- | ------------------------ |
| `no_psa_mail_address` | Email address for subscription expiration notifications | Yes, if using email only |

#### Additional optional configurations

| Variable                | Description                                              | Required |
| ----------------------- | -------------------------------------------------------- | -------- |
| `psa_alert_ticket_type` | Custom ticket type for alerts, if different from default | No       |

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
