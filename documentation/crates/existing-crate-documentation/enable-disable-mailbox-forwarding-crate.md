# Enable / Disable Mailbox Forwarding Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Enable / Disable Mailbox Forwarding Crate do?

This Crate allows for straightforward enablement or disablement of mailbox forwarding while maintaining a comprehensive audit log in your PSA.

### How the Crate works

1. Users or techs fill out a simple form to enable or disable mailbox forwarding.
2. The action is executed according to the user's input.
3. A log of the action taken is appended to the associated ticket in your PSA, providing a full audit trail.

## Crate prerequisites

* Your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst before unpacking this Crate.&#x20;
* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Enable / Disable Mailbox Forwarding Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Enable / Disable Mailbox Forwarding`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-23 at 3.42.35 PM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Click **Unpack**.

### Use the Crate

The Crate runs off of form submission.&#x20;

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[ROC] Set Email Forwarding`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains your relevant user and computer. This will launch the form in a new tab.
5. Choose your relevant PSA ticket from the **Ticket** drop-down selector, or leave it blank to create a new ticket.
6. Choose your relevant **Mailbox** where the forwarding will be sent from the drop-down selector.
7. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-23 at 4.07.28 PM.png" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
