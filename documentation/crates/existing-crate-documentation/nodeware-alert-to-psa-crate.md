# Nodeware: Alert To PSA Crate

## What does the Nodeware: Alert to PSA Crate Do?

This Crate creates a ticket when a new critical vulnerability is detected by Nodeware. It runs daily and creates tickets for new vulnerability alerts, checking existing tickets to see if the CVE still exists. If resolved, it closes the ticket. If still present, it updates the ticket and leaves it open.

Contents of the ticket include:

* Vulnerability
* UUID
* Severity
* Timestamp
* URL to the CVE within Nodeware

## Crate prerequisites&#x20;

Before unpacking this Crate, you'll need to first successfully set up:

* The [Nodeware](../../configuration/integrations/integration-guides/nodeware-integration.md) integration&#x20;
* Your[ PSA integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations)

## Unpack the Nodeware: Alert To PSA Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Nodeware: Alert to PSA`.\
   \
   ![](<../../../.gitbook/assets/image (179).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Unpack**.
6. Ensure that both triggers have **Enabled** toggled on.
7. Click **Unpack**.
8. You'll now need to run the Crate form once at your top parent level organization to establish organization variables for your PSA and finish Crate set up. Navigate to **Automations > Forms**.
9.  Search for **`[REWST] Nodeware: Set PSA Org Variables`** .<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-13 at 1.41.20 PM.png" alt=""><figcaption></figcaption></figure>
10. Click **⋮** **> Usages > View Direct URLs.**&#x20;
11. Copy the URL and open it in a new browser window or tab.\
    \
    ![](<../../../.gitbook/assets/Screenshot 2025-06-13 at 1.47.43 PM.png>)
12. Choose a **Board ID** from the drop-down selector.
13. Set relevant status choices in the **Ticket Creation Status** and **Ticket Close Status** selector&#x73;**.**
14. Optionally, set a **Ticket Type** if required.&#x20;
15. Click **Submit**.
16. Navigate to **Configuration > Organization Variables** to see the list of organization variables generated from your form submission.

{% hint style="success" %}
After submitting the form, the Crate will function as long as triggers are enabled. If triggers are disabled, open the workflow and enable them.
{% endhint %}

### Crate schedule

* The workflow runs daily at 4:00 AM UTC. This timing is adjustable via Cron trigger.
* The Crate is designed to run once per day in its default configuration.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
