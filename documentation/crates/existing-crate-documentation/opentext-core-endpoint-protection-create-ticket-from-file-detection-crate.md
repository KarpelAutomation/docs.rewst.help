# OpenText Core Endpoint Protection: Create Ticket from File Detection Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the OpenText Core Endpoint Protection: Create Ticket from File Detection Crate do?

This Crate contains a workflow that automatically creates a PSA ticket when OpenText detects a malicious file, then runs every 5 minutes until the threat is resolved. The ticket auto-closes if no threats remain after a scheduled scan. If unresolved after 12 hours, the ticket stays open, and the workflow ends.

Ticket information includes:

* Event type and name
* Site details: ID, name, public IP, type
* File details: Name, path, size, MD5, SHA256, malware group, determination

### Crate prerequisites

The [OpenText Core Endpoint Protection](../../configuration/integrations/integration-guides/webroot-integration-setup.md) integration must be successfully set up in Rewst before unpacking this Crate.

### Unpack the OpenText Core Endpoint Protection: Create Ticket from File Detection Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `OpenText Core Endpoint Protection: Create Ticket from File Detection`.
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/image (167).png>)
4. Click **Unpack Crate**.
5. Click **Continue**.
6. &#x20;Enable both  triggers by toggling the File Detection  and Form Setup trigger **Enabled** toggles on.
7. Click **Unpack**.
8. You'll now need to run the Crate form once at your top parent level organization to establish organization variables for your PSA and finish Crate set up. Navigate to **Automations > Forms**.
9.  Search for `[OpenText] Set File Detection Org Vars` .\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-13 at 12.18.27 PM.png" alt=""><figcaption></figcaption></figure>
10. Click **⋮** **> Usages > View Direct URLs.**&#x20;
11. Copy the URL and open it in a new browser window or tab.\
    \
    ![](<../../../.gitbook/assets/Screenshot 2025-06-13 at 12.36.29 PM.png>)
12. Choose a **Board ID** from the drop-down selector.
13. Set relevant status choices in the **Ticket Creation Status**, **Ticket Update Status**, and **Ticket Close Status** selector&#x73;**.**
14. Optionally, set a **Ticket Type** if required. To exclude specific sites from this workflow, specify them in the **Exclude Sites** drop-down selector.
15. Click **Submit**.
16. Navigate to **Configuration > Organization Variables** to see the list of organization variables generated from your form submission.

<figure><img src="../../../.gitbook/assets/image (67).png" alt=""><figcaption><p>An example of set organization variables</p></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
