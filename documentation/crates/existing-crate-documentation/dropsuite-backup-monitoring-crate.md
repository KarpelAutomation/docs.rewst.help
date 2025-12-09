# Dropsuite: Backup Monitoring Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Dropsuite: Backup Monitoring Crate do?

Dropsuite has three possible backup statuses:&#x20;

* Success
* Failure
* In Progress

This Crate checks your backup statuses and is set so that any status of Failure triggers the creation of a PSA ticket. This Crate does not resolve the backup status failure. Resolution of the failure will need to be completed manually in Dropsuite.

### How the Crate works

Monitoring is done through the statuses' multiple endpoints. A ticket is created or updated in your PSA if the backup status is checked and found to be failing. The workflow in this Crate is triggered through a collection Cron triggers, each with a different schedule. Each runs a specific amount of times per day depending on the interval set in the trigger.

## Crate prerequisites

* Your [Dropsuite integration](../../configuration/integrations/integration-guides/dropsuite-integration.md) with Rewst must successfully be set up before unpacking this Crate.
* Your [PSA must successfully be integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations-offered-by-rewst) with Rewst.

## Unpack the Dropsuite: Backup Monitoring Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Dropsuite: Backup Monitoring`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-12-08 at 12.35.49 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Each of the cron triggers in this Crate should have **Enabled** toggled on. Note that each contains the option to **Activate for all current and future managed organizations**, **Activate for organizations**, **Activate for** [**tags**](../../settings/tags-in-rewst.md), or for specific [**Trigger Criteria**](../../automations/intro-to-triggers/trigger-criteria.md). If you wish to use any of these options, note that you will need to set those options for all cron trigger accordion menus, not just one. The cron triggers included in this Crate are as follows:
   1. Team Domains
   2. Calendar
   3. SharePoint Domains
   4. OneDrive
   5. Contacts
   6. Google Drive
   7. Emails
   8. Tasks
7. Click **Unpack**.

### Use the Crate

{% hint style="info" %}
Since this Crate contains many cron triggers that would need to be repeatedly adjusted, we recommend waiting for the triggers to activate at their normal schedule rather than adjusting each trigger to a few moments in future and readjusting to the normal preferred time. However, if you would like to do this to immediately test the Crate, you can.

Rewst has no way to simiulate a backup failure. To fully test the workflow and ensure that a ticket is created in your PSA, you'll need to initially monitor Dropsuite until a legitimate failure status occurs, then check your PSA  for the workflow's created ticket.
{% endhint %}

1. Wait for the Crate's workflow to trigger and run at its indicated time.
2. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
3. Search for the workflow `[Rewst- PROCESS] Dropsuite: Backup Monitoring`.&#x20;
4. Click on the workflow to view it in the Workflow Builder.
5. Click ![](<../../../.gitbook/assets/Screenshot 2025-12-08 at 12.49.28 PM.png>)to view the workflow's execution results. Ensure that no failures to the Rewst workflow appear in the results.

## Organization variables associated with this Crate <a href="#organization-variables-associated-with-this-crate" id="organization-variables-associated-with-this-crate"></a>

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.&#x20;
{% endhint %}

* `cw_manage_company_id`
* `datto_bill_ticket_time`
* `datto_company_id`
* `datto_note_type`
* `default_psa`
* `default_psa]`
* `default_ticket_subcause`
* `dropsuite_user_id`
* `freshdesk_company_id`
* `halo_general_user_override`
* `halo_psa_client_id`
* `halo_ticket_site_name`
* `kaseya_bms_account_id`
* `ninja_org_id`
* `no_ticket_time`
* `priority`
* `psa_all_notes_internal`
* `psa_datto_default_issue_type`
* `psa_datto_default_sub_issue_type`
* `psa_datto_default_ticket_category`
* `psa_datto_default_ticket_type`
* `psa_default_agreement_name`
* `psa_default_board_id`
* `psa_default_contact_email`
* `psa_default_requester_id`
* `psa_default_tech_id`
* `psa_default_tech_workrole`
* `psa_default_tech_worktype`
* `psa_default_ticket_category`
* `psa_default_ticket_cause`
* `psa_default_ticket_impact`
* `psa_default_ticket_priority`
* `psa_default_ticket_severity`
* `psa_default_ticket_source`
* `psa_default_ticket_status`
* `psa_default_ticket_subcategory`
* `psa_default_ticket_subcause`
* `psa_default_ticket_type`
* `psa_default_ticket_urgency`
* `psa_halo_cab_id`
* `psa_halo_cab_type`
* `psa_halo_ticket_outcome_completed_task`
* `psa_new_user_ticket_subtype`
* `psa_new_user_ticket_type`
* `psa_no_ticket_time`
* `psa_ticket_status_completed_task`
* `psa_ticket_status_waiting_input`
* `service_request_queue_name`
* `servicenow_account_id`
* `superops_client_id`
* `superops_default_requester_id`
* `superops_site_id`
* `time_entry_ticket_status`

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
