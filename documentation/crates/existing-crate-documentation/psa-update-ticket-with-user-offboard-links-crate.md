# PSA: Update Ticket with User Offboard Links Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.

This Crate is our newest version of an older Crate which was called Add Rewst Form Link to Offboarding Request Tickets. That Crate is now [deprecated](../../../prebuilt-automations/crates/crate-deprecation-faq.md). New Rewst users should only unpack this version of the Crate. Previous Rewst users are recommended to remove the older version of the Crate and unpack this Crate.
{% endhint %}

## What does the PSA: Update Ticket with User Offboard Links Crate do?

Our PSA: Update Ticket with User Offboard Links Crate filters and detects tickets that are created or updated that match the set trigger criteria, and inserts a clickable link for the User Offboarding Form into the ticket. Capture all actions for compliance and security tracking, while identifying if the ticket already has the generated ticket note.

## Crate prerequisites

Before unpacking this Crate, you'll need to successfully complete your PSA integration with Rewst. This Crate works with any of the following PSAs:

* HaloPSA
* Kaseya BMS
* Freshdesk
* ConnectWise PSA
* Datto Autotask PSA

## Unpack the PSA: Update Ticket with User Offboard Links Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst Platform.
2. Search for `Add Rewst Form Link to Offboarding Request Tickets`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-08-18 at 3.09.22 PM.png>)\

3. Click on the Crate tile to begin the unpacking process.
4. Click **Continue**.
5. Expand each of the sections under **Configure Triggers** to toggle **Enabled** to on for your desired PSA triggers. By default, all available PSA triggers are disabled.
6. You may also set activation to adhere to trigger criteria, or for integration overrides.
7. Click **Unpack.**
8. Set your criteria\

9. Enter your **Time Saved**.
10. Click **Unpack**.

## Test the Crate

Create a dummy ticket in your PSA to make sure the Crate behaves as expected.

## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](../../configuration/organization-variables.md).&#x20;

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](configure-organization-variables.md), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

* cw\_manage\_company\_id
* datto\_bill\_ticket\_time
* datto\_note\_type
* default\_psa
* default\_ticket\_subcause
* no\_ticket\_time
* psa\_all\_notes\_internal
* psa\_default\_tech\_id
* psa\_default\_tech\_workrole
* psa\_default\_tech\_worktype
* psa\_default\_ticket\_category
* psa\_default\_ticket\_cause
* psa\_default\_ticket\_status
* psa\_default\_ticket\_subcategory
* psa\_default\_ticket\_subcause
* psa\_default\_ticket\_urgency
* psa\_halo\_ticket\_outcome\_completed\_task
* psa\_no\_ticket\_time
* psa\_ticket\_status\_completed\_task
* psa\_ticket\_status\_waiting\_input
* superops\_client\_id
* superops\_site\_id
* time\_entry\_ticket\_status
* user\_offboard\_form\_default\_trigger\_id
* user\_offboard\_form\_name
* psa\_offboarding\_user\_ticket\_type
* psa\_offboarding\_user\_ticket\_subtype

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
