# Update Ticket With Form Link - Generic Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Update Ticket With Form Link - Generic Crate do?

This Crate will allow you to provide a variable configuration— via trigger variable—  or input configuration— via workflow input— at runtime, with the name of a form you would like to use to update single or multiple tickets.

## How the Crate works

* This Crate uses PSA ticket triggers to receive ticket updates and update the ticket with a note containing a link to the specific form.
* This Crate uses trigger criteria to determine what ticket updates to take actions on.

## Crate prerequisites

Before unpacking this Crate, you'll need to have your PSA successfully integrated with Rewst. This Crate works with the following PSAs:

* [Connectwise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
* [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)

## Unpack the Update Ticket With Form Link - Generic Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst Platform.
2.  Search for `Update Ticket With Form Link - Generic`.\


    ![](<../../../.gitbook/assets/Screenshot 2025-10-16 at 3.22.16 PM.png>)\

3. Click on the Crate tile to begin the unpacking process.
4. Click **Unpack Crate**.
5. Click **Continue.**
6. Notice that there are multiple accordion menus, each pertaining to a separate brand of PSA. By default, each PSA's triggers will be defaulted to off. Click to expand your relevant PSA's accordion menu.
7. Toggle **Enabled** to on. If desired, add any [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or integration overrides.
8. Click **Unpack.**

Now, you'll need to go to the workflow unpacked with the Crate and set up your trigger variables.

{% hint style="warning" %}
If you do not have a trigger variable configured before running the workflow in the Crate, the workflow will not run. Trigger variable configuration is a necessary part of this workflow's success.
{% endhint %}

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[REWST - PROCESS] PSA: Update Ticket With Form Link - Generic`.&#x20;
3. Click on the workflow to open it in the Workflow Builder Canvas.
4. Click ![](<../../../.gitbook/assets/image (2) (8).png>) to edit your trigger.
5.  Update your trigger variable under the **Trigger Variables** submenu. Enter the name of the form you would like to provide a link to in the **Form Name** field\
    \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-10-16 at 4.00.22 PM.png" alt="Form interface labeled “Trigger Parameters” and “Trigger Variables.” Under “Trigger Parameters,” there are two required fields: “Level,” set to “Owner,” and “Object ID,” set to “1.” Both fields include descriptions explaining their purpose and turquoise refresh icons on the right. Under “Trigger Variables,” there is a required “Form Name” field set to “[REWST – EXAMPLE] Rewst: Example Form,” with a note stating it is an overrideable field. The interface has a dark background with white text and gray input boxes."><figcaption></figcaption></figure>
6. Recommended: Add trigger criteria that limits what tickets the workflow will run for when the trigger kicks off based on criteria you define. This could be criteria such as board, queue, type, subtype, item, etc.
7. Click **Submit**.

{% hint style="info" %}
If you would like to use this Crate for several forms, you'll need to create a separate trigger instance for each form. See our documentation for how to create and update triggers [here](https://docs.rewst.help/documentation/automations/intro-to-triggers#create-a-trigger).  Repeat the above steps 1-6 for each of the forms you wish to use with the Crate.
{% endhint %}

### Example ticket update

Updates to the ticket will have a body similar to the below, with a valid link to the form:

To initiate the \[REWST - EXAMPLE] Rewst: Example form for this request, please use this form.

## Organization variables associated with this Crate

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

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
