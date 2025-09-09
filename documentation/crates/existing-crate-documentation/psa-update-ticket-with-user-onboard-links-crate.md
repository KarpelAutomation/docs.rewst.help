# PSA: Update Ticket With User Onboard Links Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates).&#x20;

This Crate is our newest version of an older Crate which was called Add Rewst Form Link to New User Request Tickets. That Crate is now [deprecated](../../../prebuilt-automations/crates/crate-deprecation-faq.md). New Rewst users should only unpack this version of the Crate. Previous Rewst users are recommended to remove the older version of the Crate and unpack this Crate.
{% endhint %}

## What does the PSA: Update Ticket With User Onboard Links Crate do?

This Crate automatically filters and detects tickets, created or updated in your PSA, that match the set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md). It then inserts a ticket note for the User Onboard Form directly into the ticket, for one clean place to enter everything IT needs.

### Why use the PSA: Update Ticket With User Onboard Links Crate?

Ensure that everyone fills out the same form, the same way, every time. Techs get all the info they need in the same format, speeding up user provisioning.

### How the Crate works

This workflow is initiated when a ticket that matches the set trigger criteria is created or updated.

* Collects ticket data from triggers when a ticket is created or updated
* Retrieves the trigger ID for the onboarding form
* Creates the text for the ticket note using a script
* Identifies if the ticket already has the generated ticket note
* If a note does not exist in the ticket, the note is added to the ticket

### Crate prerequisites <a href="#crate-prerequisites" id="crate-prerequisites"></a>

You'll first need to have your PSA successfully integrated before unpacking. This Crate works with:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
* [Dato Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)
* [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)

## Unpack the Crate <a href="#unpack-the-amend-mailbox-permissions-crate" id="unpack-the-amend-mailbox-permissions-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the Rewst platform.
2. Search for `PSA: Update Ticket With User Onboard Links`.
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/image (2) (5).png>)\

4. Click **Unpack Crate**.
5. Click **Continue**.
6. Expand each of the sections under **Configure Triggers** to toggle **Enabled** to on for your desired PSA triggers. By default, all available PSA triggers are disabled.&#x20;
7. You may also set activation to adhere to trigger criteria, or for integration overrides.
8. Click **Unpack.**

## **Test the Crate**

Create a dummy ticket in your PSA to make sure the Crate behaves as expected.

## Organization variables associated with this Crate <a href="#organization-variables-associated-with-this-crate" id="organization-variables-associated-with-this-crate"></a>

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
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
* `user_onboard_form_default_trigger_id` - set this variable to the value of a trigger ID of the form you want added to the ticket note
* `user_onboard_form_name`
* `psa_new_user_ticket_type`
* `psa_new_user_ticket_subtype`

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
