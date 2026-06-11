# Document BitLocker Information Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Document BitLocker Information Crate do?

Our Document BitLockers Crate automates the collection and documentation of BitLocker encryption details for computers managed through your RMM. Maintain visibility and compliance by syncing key encryption attributes into your preferred documentation platform. BitLocker details are collected by running a PowerShell script via the RMM, so only computers that are online during execution will have their BitLocker information documented. This Crate not delete BitLocker asset records that are no longer associated with active computers.

* Keep documentation in sync with actual system configurations through scheduled execution.
* Work with supported RMM and documentation platforms to automate asset management.
* Save time by automating data collection and reducing manual documentation tasks.
* Ensure critical disk encryption data like recovery keys and protection status are properly recorded.

{% hint style="warning" %}
Note that multiple workstation types for ITGlue are not supported by this Crate. The Crate only facilitates collecting BitLocker records for a single workstation configuration type.
{% endhint %}

## Crate prerequisites

Before unpacking this Crate, you'll first need to have:

* An active [PSA integration](../../integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst
* An active [RMM integration](../../integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) with Rewst

## Unpack the Document BitLocker Information Crate

1. Navigate to **Marketplace > Crates** in the Rewst platform.
2. Search for `Document BitLocker Information`.\
   \
   ​![](<../../../.gitbook/assets/image (151).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Click **Continue**.
6. If desired, customize settings for:
   1. **Include Unprotected Devices**: A trigger variable that defines whether to include computers without BitLocker enabled.
   2. **RMM Platform**: A trigger variable that specifies which RMM to use for device listing and PowerShell execution.
   3. **Documentation Platform**: A trigger variable that selects where BitLocker details are documented.
   4. **Cron Schedule**: A trigger parameter that defines when the workflow will be executed. This determines the frequency at which computer configurations and BitLocker data updated.
7. Click **Unpack**.

### Update the cron trigger

{% hint style="info" %}
To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.&#x20;

Verify documented results. Depending on your configured documentation platform:

1. Check for computer assets/configurations and verify they match with your RMM.
2. Check for BitLocker assets/documents and verify they are correct for each computer.
{% endhint %}

1. Navigate to **Automations > Workflows**.
2. Search for `[REWST - CRATE] Docs: Document Bitlockers` .
3. Click on the workflow to open it in the Workflow Builder.
4. Click on the trigger to open its settings in the right side menu.
5. Adjust the cron trigger's schedule to your desired time. The cron trigger for this Crate is set to trigger daily at 7:00 AM (UTC) if left on its default setting.
6. Click **Save Trigger**.

## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](../../integrations/organization-variables.md).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](configure-organization-variables.md), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

* `agent_smith_is_installed`
* `azure_iothub_name`
* `azure_iothub_resource_group`
* `azure_iothub_subscription_id`
* `cwControl_CompanyName`
* `cw_automate_client_id`
* `cw_control_session_group_override`
* `datto_rmm_site_id`
* `default_rmm`
* `documentation_platform`
* `hudu_company_id`
* `immybot_tenant_id`
* `itglue_org_id`
* `itg_bitlocker_computer_config_type` - default is `computer` and doesn't use your RMM-mapped types, custom configuration type names require setting this org variable. Note that multiple workstation types for ITGlue are not supported by this Crate.
* `kaseya_vsa_10_scriptid`
* `kaseya_vsa_org_id`
* `kaseya_vsa_x_org_id`
* `nable_customer_id`
* `nable_device_filter_id`
* `nable_rewst_powershell_script_id`
* `ninja_org_id`
* `ninja_run_as_user`
* `preferred_domain_controller`
* `superops_client_id`
* `syncmonkey_company_id`

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
