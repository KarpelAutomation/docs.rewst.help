# Notify on Conditional Access Policy Changes Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Notify on Conditional Access Policy Changes Crate do?

This Crate monitors Microsoft 365 Conditional Access Policy changes and generates notifications via ticket creation and email alerts. It leverages OpenAI to provide a clearer, human-readable summary of policy modifications.

* Get notified about unauthorized Conditional Access policy changes.
* Ensure security policies are consistently reviewed and modified only by authorized personnel.
* Streamline incident response by automatically creating tickets or sending email notifications for policy changes.

## Crate prerequisites

Before unpacking this Crate:

* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.
* You must have access to Conditional Access Policies via Microsoft Graph API
* Set up email configuration for notifications, if using email alerts
* Your [PSA integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) must be configured, if using ticket notifications

## Unpack the Notify on Conditional Access Policy Changes Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Notify on Conditional Access Policy Changes`.\
   \
   ![](<../../../.gitbook/assets/image (180).png>)
3. Click on the Crate tile to open its details page.
4. Click **Unpack Crate.**
5. Click **Continue**.
6.  Customize settings for

    1. Sending an email, including who to send the reports to
    2. Creating a PSA Ticket
    3. Choosing to use OpenAI\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-04-14 at 10.30.39 AM.png" alt=""><figcaption></figcaption></figure>
7. By default, the cron job trigger will be enabled. If desired, open the **Cron Job** accordion menu under **Configure Triggers** and disable or change these settings.
8. Enter your **Time Saved (seconds)**.
9. Click **Unpack**.

### How the Crate triggers

This Crate can be triggered in one of two ways.

#### **Cron job trigger**

* The Cron Trigger schedules periodic checks for Conditional Access policy changes.
* Configured using UTC cron expressions (default: `/42 * * * *`).

#### **New directory audit log: Policy trigger**

* Monitors Microsoft Entra ID audit logs
* Fires when a Conditional Access policy is modified
* Checks for events where:
  * `trigger.loggedByService == "Conditional Access"`
  * `trigger.targetResources.0.type == "Policy"`

### Optional: Use OpenAI for enhanced insights&#x20;

The **OpenAI integration** can be used for enhanced notifications by analyzing policy changes and summarizing them in a clear, human-readable format. This helps administrators quickly understand:

* What changes were made.
* Who initiated the changes.
* Whether the changes introduce potential security risks.
* Recommendations on whether further investigation is needed.

When OpenAI is enabled — `vars.use_openai = "yes"` — notifications will include AI-generated insights to provide contextual explanations of the modifications.

### Data included in notifications

Each notification, whether email or ticket, includes:

* **Policy Name** – The name of the modified Conditional Access policy.
* **Change Type** – Whether the policy was added, removed, or updated.
* **Modified By** – The identity of the user or system that made the change.
* **Timestamp** – When the change was detected.
* **Summary of Changes** – A structured breakdown of what was altered in the policy.
* **OpenAI Analysis, if enabled** – AI-generated interpretation of the change's impact.

## CTX variables reference

CTX variables hold dynamic, user-specific data used though out this automation and can be configured on the cron trigger, and the New Directory Audit Log - Policy Trigger.

| Variable Name                 | Type   | Description                                        |
| ----------------------------- | ------ | -------------------------------------------------- |
| `vars.actions`                | Array  | Defines notification method (ticket, email, chat). |
| `vars.use_openai`             | String | Enables OpenAI for policy change summaries.        |
| `vars.org_var_name`           | String | Organization variable override.                    |
| `vars.email_recipient_string` | String | Comma-separated list of email recipients.          |

## Test the Crate

To verify that the Crate functions as expected:

1. Trigger a policy change
   1. Manually modify a Conditional Access Policy in Microsoft 365.
   2. Ensure a relevant event appears in the audit logs.
2. Check the trigger execution
   1. Navigate to **Automations > Results** in Rewst.
   2. Locate the workflow execution logs for this Crate.
   3. Ensure that the workflow detects the policy change.
3. Verify notifications
   1. If configured for email alerts, check the recipient inbox.
   2. If configured for ticket creation, locate the new ticket in your PSA system.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
