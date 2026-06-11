# Alert on Expiring App Reg Secrets Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Expiring App Reg Secrets Crate do?

Our Alert on Expiring App Reg Secrets Crate identifies any expiring client secrets in your application registrations and logs individual tickets for each client, as well as a detailed overall summary ticket. Reduce disruptions by getting notified on expiring application registration secrets.

## Crate prerequisites

* The [Microsoft Cloud Integration Bundle](../../integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate, to enable the Microsoft Graph integration with Rewst.
* Your [PSA](../../integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) must be integrated with Rewst.
* The `psa_default_board_id` [organization variable](../../integrations/organization-variables.md#what-is-an-organization-variable) must be added
* The `default_psa` organization variable must be added

## Unpack the Alert on Expiring App Reg Secrets Crate

1. Navigate to **Marketplace** **> Crates** in the left side menu of the Rewst Platform.
2.  Search for `Alert on Expiring App Reg Secrets`.

    \
    ![](<../../../.gitbook/assets/image (132).png>)
3. Click **Unpack Crate**.
4. Click **Continue.**
5.  Enter your **Time Saved**.

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-04-10 at 4.52.39 PM.png" alt="Screenshot of the Rewst platform showing the unpacking screen for a workflow crate titled &#x22;[Rewst Master v3] Azure: Alert on Expiring App Secrets [Part 1]&#x22;. The page displays a description: &#x22;Identify any Application Registrations that have expiring certificates and log a ticket per client, with an overall ticket with all detailed information.&#x22; Below that, there&#x27;s a &#x22;Crate Configuration&#x22; section with fields for &#x22;Workflow Name&#x22; (pre-filled), &#x22;Time Saved (seconds)&#x22; (set to 0), and a trigger configuration showing a Cron Job marked as &#x22;Enabled&#x22;. Buttons for &#x22;Previous&#x22; and &#x22;Unpack&#x22; appear at the bottom right."><figcaption></figcaption></figure>
6. Click **Unpack**.
7. Navigate to **Automations > Workflows**.
8.  Search for `Alert on Expiring App Client Secrets [Part 1]`.

    <figure><img src="../../../.gitbook/assets/image (109).png" alt=""><figcaption></figcaption></figure>
9.  Click on the workflow to open it in the workflow builder.

    <figure><img src="../../../.gitbook/assets/image (58) (2).png" alt="Screenshot of the Cron Trigger configuration for the workflow [ROC] Azure: Alert on Expiring App Client Secrets [Part 1] in the Rewst platform. The trigger type is fixed as Cron Trigger. Under Integration Overrides, three integration UUIDs are shown, with an indicator that 6 more items are hidden.  The External Status section confirms &#x22;No errors detected&#x22; with a green checkmark.  In the Trigger Parameters section:  Timezone Canonical Names is set to UTC.  Cron Schedule is 0 7 1 * *.  The parsed output for the cron expression is displayed as: &#x22;At 07:00 AM, on day 1 of the month.&#x22; Various top-bar icons are also visible for editing, syncing, and settings."><figcaption></figcaption></figure>
10. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own, and tickets will be created if expiring secrets are found.
11. Navigate to **Automations > Workflows**.
12. Search for `Alert on Expiring App Client Secrets [Part 1]`.



    <figure><img src="/broken/files/TjpornCqdZpPjZe5lgFx" alt=""><figcaption></figcaption></figure>
13. Click on the workflow to open it in the workflow builder.



    <figure><img src="../../../.gitbook/assets/image (58) (2).png" alt="Screenshot of the Cron Trigger configuration for the workflow [ROC] Azure: Alert on Expiring App Client Secrets [Part 1] in the Rewst platform. The trigger type is fixed as Cron Trigger. Under Integration Overrides, three integration UUIDs are shown, with an indicator that 6 more items are hidden.  The External Status section confirms &#x22;No errors detected&#x22; with a green checkmark.  In the Trigger Parameters section:  Timezone Canonical Names is set to UTC.  Cron Schedule is 0 7 1 * *.  The parsed output for the cron expression is displayed as: &#x22;At 07:00 AM, on day 1 of the month.&#x22; Various top-bar icons are also visible for editing, syncing, and settings."><figcaption></figcaption></figure>
14. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own, and tickets will be created if expiring secrets are found.

### Update the cron trigger schedule

{% hint style="info" %}
To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. Tickets will be created if expiring secrets are found.
{% endhint %}

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `Alert on Expiring App Client Secrets [Part 1]`.
3. Click on the workflow to open it in the Workflow Builder.
4. Click on the trigger to open its settings in the right side menu.
5. Update the timing of the cron trigger as desired. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. If necessary, enable [Critical Timing](../../automations/intro-to-triggers/#critical-timing).
7. Click **Save Trigger**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
