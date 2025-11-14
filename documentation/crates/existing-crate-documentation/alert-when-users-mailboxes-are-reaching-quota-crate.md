# Alert when Users' Mailboxes are Reaching Quota Crate

## What does the Alert when Users' Mailboxes are Reaching Quota Crate do?

This Crate monitors user mailboxes in Microsoft Exchange Online for reaching their storage quota. When a user's mailbox reaches a defined percentage of its total capacity, a ticket with details about the user's license and archive information will be generated in your PSA system to alert you. If the PSA is not configured, an email notification will be sent instead.

{% hint style="warning" %}
This Crate does not modify or manage the mailbox quota settings, clean the mailbox, or archive emails. It is solely responsible for alerting when the quota percent is reached and does not perform any mailbox maintenance tasks.
{% endhint %}

The Crate workflow is triggered by a cron job based on the configured schedule.

### Workflow breakdown

1. The workflow begins at the **START** task which serves as the entry point for execution.
2. The workflow proceeds to the **check\_quota\_var** task which validates that a quota percentage variable exists and is greater than 1 percent.
3. If the quota variable validation passes, the workflow moves to the **list\_user\_mailboxes** task which executes a Microsoft Exchange Online command to retrieve all user mailboxes with the RecipientTypeDetails parameter set to UserMailbox.
4. If the mailbox listing fails, the workflow transitions to the **failed** task and logs an error message indicating that Exchange may not be installed or the client mapping is incorrect.
5. When mailbox listing succeeds, the workflow publishes the retrieved mailbox data to the user\_mailboxes context variable and proceeds to both the **check\_for\_mailboxes** task and a **core\_noop\_7** task simultaneously.
6. The **check\_for\_mailboxes** task evaluates whether any user mailboxes were found by checking if the length of the user\_mailboxes array is greater than zero.
7. If no mailboxes are found, the workflow logs an error message stating that no user mailboxes could be located and transitions to the **failed** task.
8. If mailboxes exist, the workflow proceeds to the **format\_mailbox\_data** task which transforms the raw mailbox data into a structured format containing email addresses, display names, and external directory object IDs.
9. The formatted data is published to the mail\_users context variable, and the workflow continues to the **get\_users\_mailbox\_and\_report\_if\_nearing\_quota** task.
10. This task runs as a with\_items loop with a concurrency of 1, processing each user from the mail\_users array individually using a sub-workflow that checks mailbox quota usage and generates alerts if thresholds are exceeded.
11. Each iteration of the loop receives user-specific parameters including user GUID, email address, display name, quota percentage, alert actions, and optional board ID override.
12. After all users have been processed, the workflow transitions to the **END** task regardless of individual user processing results.
13. The **END** task compiles a comprehensive automation log that aggregates all task results, status codes, errors, and warnings from the entire workflow execution.
14. The workflow concludes by publishing the final automation log containing the overall execution status, success indicators, collected data, and detailed entries from all completed tasks.

## Crate prerequisites

The Microsoft Exchange integration must first be successfully installed. This is a part of the Rewst [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/).

If you wish for a ticket to be generated in your PSA, your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst before unpacking this Crate.

## Unpack the Alert when Users' Mailboxes are Reaching Quota Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for the `Unpack the Alert when Users' Mailboxes are Reaching Quota` Crate.

    \
    ![](<../../../.gitbook/assets/image (104).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack**.
5. Enter your desired percentage capacity threshold for the mailbox quota.
6. Use the drop-down selector to choose if you want the Crate to create a ticket or contact the user via the ticket.
7. Click **Continue**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-06-16 at 1.02.35 PM.png" alt=""><figcaption></figcaption></figure>

8.  Ensure that the cron job trigger is enabled. If desired, set integration overrides.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-16 at 1.04.57 PM.png" alt=""><figcaption></figcaption></figure>
9. Click **Unpack**.

{% hint style="info" %}
**Optional - update tickets**

Set the [org variable](../../configuration/organization-variables.md) **`mail_quota_ticket_matching_enabled`** to enable ticket consolidation. This will update existing tickets if found, instead of always creating new ones.
{% endhint %}

### Test the Alert when Users' Mailboxes are Reaching Quota Crate

To test if the Crate is working properly, you'll want to use the test function directly in the workflow for the Crate.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `Alert when Users' Mailboxes are Reaching Quota`.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-16 at 3.34.41 PM.png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the workflow builder.&#x20;
4. Click **Test** in the top right corner of the builder canvas.
5.  Choose the organization you'd like to use to test the workflow.\


    <figure><img src="../../../.gitbook/assets/image (118).png" alt=""><figcaption></figcaption></figure>
6. Click **Test**.
7. Allow the workflow to run.
8. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.
9. If using PSA ticketing with this workflow, check in your PSA to ensure that the ticket was created as expected. If not using PSA ticketing, check your inbox to ensure that the email was sent.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
