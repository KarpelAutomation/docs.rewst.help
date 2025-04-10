# Alert on Expiring App Reg Certificates Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Expiring App Reg Certificates Crate do?

Our Alert on Expiring App Reg Certificates Crate identifies any expiring certificates in your Application Registrations and logs individual tickets for each client as well as a detailed overall summary ticket. Reduce disruptions by getting notified on expiring application registration certificates.

## Crate prerequisites

* The [Microsoft Graph integration](../../documentation/integrations/individual-integration-documentation/cloud/microsoft-cloud-integration-bundle/microsoft-graph/) must be set up before unpacking this Crate
* default\_psa organization variable

## Unpack the Alert on Expiring App Reg Certificates Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst Platform.
2. Search for `Alert on Expiring App Reg Certificates`.
3. Click **Unpack Crate**.\


<figure><img src="../../.gitbook/assets/image (54) (2).png" alt="Screenshot of the Rewst platform showing the unpacking screen for a workflow crate titled &#x22;[Rewst Master v3] Azure: Alert on Expiring App Certs [Part 1]&#x22;. The page displays a description: &#x22;Identify any Application Registrations that have expiring certificates and log a ticket per client, with an overall ticket with all detailed information.&#x22; Below that, there&#x27;s a &#x22;Crate Configuration&#x22; section with fields for &#x22;Workflow Name&#x22; (pre-filled), &#x22;Time Saved (seconds)&#x22; (set to 0), and a trigger configuration showing a Cron Job marked as &#x22;Enabled&#x22;. Buttons for &#x22;Previous&#x22; and &#x22;Unpack&#x22; appear at the bottom right."><figcaption><p>The Crate's configuration page</p></figcaption></figure>

4. Enter your **Time Saved**.
5. Click **Unpack**.

## Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows**.
2.  Search for `Alert on Expiring App Certs [Part 1]`.\
    \


    <figure><img src="../../.gitbook/assets/image (55) (2).png" alt="Screenshot of the Workflows page in the Rewst platform. A search for &#x22;expiring&#x22; is active in the top-right search bar. The results show one workflow: [Rewst Master v3] Azure: Alert on Expiring App Certs [Part 1], last updated on 2025-03-29 at 17:20. To the right of the workflow name are buttons for Configure, Triggers (1), Clone (Sync), and a link to the related crate Alert on Expiring App Reg Cer…. There are also options for more actions via a three-dot menu and a right-arrow icon for further navigation."><figcaption><p>The workflow, in a search result<br></p></figcaption></figure>
3.  Click on the workflow to open it in the workflow builder.\
    \


    <figure><img src="../../.gitbook/assets/image (56) (2).png" alt="Screenshot of the Cron Trigger configuration for the workflow [Rewst Master v3] Azure: Alert on Expiring App Certs [Part 1] in the Rewst platform. The trigger type is fixed and cannot be modified. Under Integration Overrides, three visible UUIDs are shown with 6 hidden items. The External Status indicates &#x22;No errors detected&#x22; with a green checkmark.  In the Trigger Parameters section:  Timezone Canonical Names is set to UTC.  Cron Schedule is set to 0 1 * * 1.  Below, the parsed cron expression confirms: &#x22;At 01:00 AM, only on Monday.&#x22; The layout includes multiple icons for editing, syncing, and navigation at the top."><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own, and tickets will be created if expiring certs are found.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
