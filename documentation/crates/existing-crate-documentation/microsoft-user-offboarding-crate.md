# Microsoft: User Offboarding Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Microsoft: User Offboarding Crate do?

Our Microsoft: User Offboarding Crate streamlines the offboarding process for users within an organization, for time savings and increased efficiency. The automation is triggered via a form submission, allowing designated personnel to initiate the offboarding tasks.

* **Detailed ticketing**: Automation logging steps that are done throughout the offboarding process are documented by logging entries to the ticket, via a single note, making it easier to tell where an issue occurred and what steps were performed.
* **Efficiency**: Streamline the user offboarding process by increasing time savings and decreasing the potential for user error.
* **Security**: Ensure that necessary offboarding steps are performed when an account is terminated.

{% hint style="warning" %}
This Crate does not handle On-Prem Exchange and will only handle Exchange functionality via Office 365.
{% endhint %}

## Crate prerequisites

Before unpacking this Crate, you'll need to successfully set up the Microsoft Graph integration, now a part of our [Microsoft Cloud Bundle](../../configuration/integrations/integration-guides/cloud/microsoft-cloud-integration-bundle/).

### Identity provider configuration

* Azure AD Only
* Hybrid On-Prem and Azure AD: Synced
* Hybrid On-Prem and Azure AD: No Sync
* On-Prem Only

## Set up the Microsoft: User Offboarding Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2. Search for `Microsoft: User Offboarding`.
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-05-19 at 5.05.26 PM.png>)
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Click **Unpack.**

## Use the Microsoft: User Offboarding Crate

1. Navigate to **Automations > Workflows** in the Rewst platform
2. Search for `Microsoft: User Offboarding`.
3. Click into the workflow.
4.  Click <img src="../../../.gitbook/assets/Screenshot 2025-05-21 at 2.57.06 PM.png" alt="" data-size="line"> to navigate to the trigger.\
    \


    <figure><img src="../../../.gitbook/assets/image (61).png" alt=""><figcaption></figcaption></figure>
5. Click **View Direct URLs.**
6.  Select the company you'd like to use to test the workflow. Copy the URL and paste it into a new window.\
    \


    <figure><img src="../../../.gitbook/assets/image (62).png" alt=""><figcaption></figcaption></figure>
7.  Fill out the form as appropriate for the company and user you are offboarding. Make sure to click **Submit** at the end of the form.\
    \


    <figure><img src="../../../.gitbook/assets/image (63).png" alt=""><figcaption></figcaption></figure>
8.  Once the form is submitted, the workflow will begin to run. To view the results, click ![](<../../../.gitbook/assets/Screenshot 2025-05-21 at 3.04.33 PM.png>) in the workflow editor page.\


    <figure><img src="../../../.gitbook/assets/image (65).png" alt=""><figcaption></figcaption></figure>
9. Click into the results to see the execution results with successes and failures, if there are any.

<figure><img src="../../../.gitbook/assets/image (66).png" alt=""><figcaption></figcaption></figure>



## Org variables in use for the Microsoft: User Offboarding Crate

{% hint style="info" %}
For information specific to these org variables please review our guidance organization variables [here](../../configuration/organization-variables.md).&#x20;

Note that org variables not found in the organization variables documentation are typically system variables that are handled by the integration mappings.

If you haven't done so already, it's recommended that you run the [org variable configuration crate](https://app.rewst.io/marketplace/crates/eb2e46d9-56b1-4561-b9e6-c281a1275c67), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

* `agent_smith_is_installed`
* `automation_task_new_user_time`
* `automation_task_offboard_user_time`
* `azure_iothub_name`
* `azure_iothub_resource_group`
* `azure_iothub_subscription_id`
* `cwControl_CompanyName`
* `cw_automate_client_id`
* `cw_control_session_group_override`
* `cw_manage_company_id`
* `datto_company_id`
* `datto_note_type`
* datto\_rmm\_site\_id
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
* `new_user_approval_email`
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
* `psa_new_user_ticket_subtype`
* `psa_new_user_ticket_type`
* `psa_no_ticket_time`
* `psa_offboarding_user_ticket_item`
* `psa_offboarding_user_ticket_subtype`
* `psa_offboarding_user_ticket_type`
* `psa_ticket_status_completed_task`
* `psa_ticket_status_waiting_input`
* `require_approval_for_offboarding_users`
* `rmm_preferred_adconnect_server`
* `servicenow_account_id`
* `time_entry_ticket_status`
