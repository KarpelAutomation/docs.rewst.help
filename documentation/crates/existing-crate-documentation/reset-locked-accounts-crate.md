# Reset Locked Accounts Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Reset Locked Accounts Crate do?

The Reset Locked Out Accounts Crate automates the process of unlocking user accounts and resetting passwords for organizations in Rewst. It ensures seamless account recovery by verifying locked-out accounts, updating credentials, and creating or updating support tickets if an existing ticket is provided.

This Crate does not send email notifications to users or administrators.

### How the Crate works

1. The workflow collects organization name, email, and new password via form submission from the user.
2. The workflow checks Active Directory and identifies if the user account is locked.
3. It updates the account with the provided new password and restores user access by removing the account lock.
4. If an existing ticket is provided, it is updated. Otherwise, a new ticket is created.
5. Via activity log, it maintains a record of all actions for security auditing.

## Crate prerequisites

* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.
* This Crate requires one of the following PSA integrations:
  * [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
  * [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
  * [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)
  * [SuperOps](../../configuration/integrations/integration-guides/superops-integration.md)

## Unpack the Reset Locked Accounts Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Reset Locked Accounts`**.**\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-22 at 11.00.42 AM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
6. Ensure that **Enabled** is toggled on.
7. Click **Unpack**.

### Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[REWST - CRATE] Reset Locked-Out Accounts`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5. Select the org you want to reset authentication for via the **Organization** drop-down selector.
6. Choose your ticket from the **Existing Ticket** drop-down selector list, or leave the field empty to create a new ticket.
7. Select the locked-out user from the **Account** list.
8. Select or type a new password for the user in the **New Password** field.
9. Check **New Password Is Temporary** if you want the user to be required to enter a new password when they log in.
10. Check **Add New Password to Ticket Notes** to add the new password to the notes section of the ticket in your PSA.
11. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-22 at 11.21.05 AM.png" alt=""><figcaption></figcaption></figure>

## Organization variables associated with this Crate <a href="#organization-variables-associated-with-this-crate" id="organization-variables-associated-with-this-crate"></a>

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

* `agent_smith_is_installed`
* `azure_iothub_name`
* `azure_iothub_resource_group`
* `azure_iothub_subscription_id`
* `cwControl_CompanyName`
* `cw_automate_client_id`
* `cw_control_session_group_override`
* `cw_manage_company_id`
* `datto_company_id`
* `datto_note_type`
* `datto_rmm_site_id`
* `default_psa`
* `default_rmm`
* `failure_email`
* `freshdesk_company_id`
* `halo_psa_client_id`
* `halo_ticket_site_name`
* `immybot_tenant_id`
* `kaseya_bms_account_id`
* `kaseya_vsa_10_scriptid`
* `kaseya_vsa_org_id`
* `kaseya_vsa_x_org_id`
* `nable_customer_id`
* `nable_device_filter_id`
* `nable_rewst_powershell_script_id`
* `ninja_org_id`
* `ninja_run_as_user`
* `no_azure_ad`
* `no_ticket_time`
* `onprem_no_adsync`
* `preferred_domain_controller`
* `primary_domain_controller`
* `primary_identity_provider`
* `priority`
* `psa_alert_ticket_type`
* `psa_all_notes_internal`
* `psa_datto_default_issue_type`
* `psa_datto_default_sub_issue_type`
* `psa_datto_default_ticket_category`
* `psa_datto_default_ticket_type`
* `psa_default_agreement_name`
* `psa_default_board_id`
* `psa_default_tech_id`
* `psa_default_tech_workrole`
* `psa_default_tech_worktype`
* `psa_default_ticket_impact`
* `psa_default_ticket_priority`
* `psa_default_ticket_source`
* `psa_default_ticket_status`
* `psa_default_ticket_urgency`
* `psa_halo_cab_id`
* `psa_halo_cab_type`
* `psa_halo_ticket_outcome_completed_task`
* `psa_new_user_ticket_item`
* `psa_new_user_ticket_subtype`
* `psa_new_user_ticket_type`
* `psa_no_ticket_time`
* `psa_ticket_status_completed_task`
* `psa_ticket_status_waiting_input`
* `rmm_preferred_adconnect_server`
* `servicenow_account_id`
* `time_entry_ticket_status`

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
