# Alert when Users' Mailboxes are Reaching Quota Crate

## What does the Alert when Users' Mailboxes are Reaching Quota Crate do?

This Crate monitors user mailboxes in Microsoft Exchange Online for reaching their storage quota. When a user's mailbox reaches a defined percentage of its total capacity, a ticket with details about the user's license and archive information will be generated in your PSA system to alert you. If the PSA is not configured, an email notification will be sent instead.

{% hint style="warning" %}
This Crate does not modify or manage the mailbox quota settings, clean the mailbox, or archive emails. It is solely responsible for alerting when the quota percent is reached and does not perform any mailbox maintenance tasks.
{% endhint %}

The crate workflow is triggered by a cron job based on the configured schedule.

## Crate prerequisites

The Microsoft Exchange integration must first be successfully installed. This is a part of the Rewst [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/).

## Unpack the Alert when Users' Mailboxes are Reaching Quota Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for the `Unpack the Alert when Users' Mailboxes are Reaching Quota` Crate.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-06-11 at 7.13.13 PM.png>)
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

## Test the Alert when Users' Mailboxes are Reaching Quota Crate

To test if the Crate is working properly, you'll want to use the test function directly in the workflow for the Crate.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `Alert when Users' Mailboxes are Reaching Quota`.\
    \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-16 at 3.34.41 PM.png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the workflow builder.&#x20;
4. Click **Test** in the top right corner of the builder canvas.
5.  Choose the organization you'd like to use to test the workflow.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-16 at 3.34.55 PM (1).png" alt="" width="375"><figcaption></figcaption></figure>
6. Click **Test**.
7. Allow the workflow to run.
8. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
