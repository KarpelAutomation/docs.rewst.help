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

* `cw_manage_company_id`
* `datto_bill_ticket_time`
* `datto_note_type`
* `default_psa`
* `default_ticket_subcause`
* `no_ticket_time`
* `psa_all_notes_internal`
* `psa_default_tech_id`
* `psa_default_tech_workrole`
* `psa_default_tech_worktype`
* `psa_default_ticket_category`
* `psa_default_ticket_cause`
* `psa_default_ticket_status`
* `psa_default_ticket_subcategory`
* `psa_default_ticket_subcause`
* `psa_default_ticket_urgency`
* `psa_halo_ticket_outcome_completed_task`
* `psa_no_ticket_time`
* `psa_ticket_status_completed_task`
* `psa_ticket_status_waiting_input`
* `superops_client_id`
* `superops_site_id`
* `time_entry_ticket_status`
* `user_offboard_form_default_trigger_id` - set to the value of a trigger ID of the form you want added to the ticket note
* `user_offboard_form_name`
* `psa_offboarding_user_ticket_type`
* `psa_offboarding_user_ticket_subtype`

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
