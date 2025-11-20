# Triage SentinelOne Tickets Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Triage SentinelOne Tickets Crate do?

Our Triage SentinelOne Tickets Crate streamlines the process of matching SentinelOne alert tickets with their corresponding companies in ConnectWise PSA. It automatically scans ticket subjects for SentinelOne alert patterns, identifies the company via SentinelOne API, and links it to the correct company in ConnectWise PSA.

* Quickly identify which client company is affected by a SentinelOne security alert
* Reduce response time for security incidents by eliminating manual lookup processes
* Ensure security alerts are properly routed to the correct company in ConnectWise PSA
* Improve security incident tracking by maintaining accurate company associations
* Save time for technicians who would otherwise need to manually cross-reference devices

## Crate prerequisites

* An active [SentinelOne integration](../../configuration/integrations/integration-guides/sentinelone-integration-setup.md) with Rewst
* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md) integration with Rewst

## Unpack the Triage SentinelOne Tickets Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for **Triage SentinelOne Tickets Crate**.\
   \
   ![](<../../../.gitbook/assets/image (193).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Click **Continue**.
6.  Configure Trigger Criteria. Trigger criteria should trigger the workflow when `Entity.summary` starts with `SentinelOne` .<br>

    <figure><img src="../../../.gitbook/assets/CleanShot 2025-03-05 at 22.37.01@2x.png" alt=""><figcaption></figcaption></figure>
7. Click **Unpack**.

### Test the Crate

1. Create a test ticket in ConnectWise PSA with a subject line matching the SentinelOne alert pattern-e.g., SentinelOne - Malware detected on `DEVICE-NAME-123`.
2. After creating the test ticket, the workflow will automatically trigger based on the trigger criteria you set during setup. The workflow trigger monitors for new tickets with SentinelOne alert patterns in the subject line.
3. To verify the workflow executed properly, navigate to **Automations** > **Results** in the Rewst platform.
4. Locate the most recent workflow result with workflow named "Triage SentinelOne Tickets" in your result list.
5. Click the **>** next to the workflow to open the workflow dialog page.
6. This will open the result details page.
7. Navigate back to ConnectWise PSA and verify that the ticket has been associated with the correct company and contains any additional information added by the workflow.

## Troubleshoot the Triage SentinelOne Tickets Crate

* Confirm that the trigger criteria is correct for your environment.
* For tickets that aren't being processed, confirm that the ticket subject follows the expected SentinelOne alert pattern.
* Check the workflow result logs for any API errors that might indicate permission issues with your integrations.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
