# Document BitLocker Information Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Document BitLocker Information Crate do?

Our Document BitLockers Crate automates the collection and documentation of BitLocker encryption details for computers managed through your RMM. Maintain visibility and compliance by syncing key encryption attributes into your preferred documentation platform.  BitLocker details are collected by running a PowerShell script via the RMM, so only computers that are online during execution will have their BitLocker information documented. This Crate not delete BitLocker asset records that are no longer associated with active computers.

* Keep documentation in sync with actual system configurations through scheduled execution.
* Work with supported RMM and documentation platforms to automate asset management.
* Save time by automating data collection and reducing manual documentation tasks.
* Ensure critical disk encryption data like recovery keys and protection status are properly recorded.

## Crate prerequisites

Before unpacking this Crate, you'll first need to have:

* An active [PSA integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst
* An active [RMM integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) with Rewst

## Unpack the Document BitLocker Information Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2. Search for `Document BitLocker Information`.\
   \
   ​![](<../../../.gitbook/assets/image (152).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Click **Continue**.
6. If desired, customize settings for:
   1. **Include Unprotected Devices**: A trigger variable that defines whether to include computers without BitLocker enabled.
   2. **RMM Platform**: A trigger variable that specifies which RMM to use for device listing and PowerShell execution.
   3. **Documentation Platform**: A trigger variable that selects where BitLocker details are documented.
   4. **Cron Schedule**: A trigger parameter that defines when the workflow will be executed. This determines the frequency at which computer configurations and BitLocker data updated.
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the [cron trigger](https://docs.rewst.help/documentation/automations/intro-to-triggers#core-cron-job)'s schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. The cron trigger for this Crate is set to trigger daily at 7:00 AM (UTC).

1. Navigate to **Automations > Workflows**.
2. Search for `[REWST - CRATE] Docs: Document Bitlockers` .
3. Click on the workflow to open it in the workflow builder.
4. Click ![](<../../../.gitbook/assets/image (199).png>) to **Edit Trigger**.
5. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own then.
6. Verify documented results. Depending on your configured documentation platform:
   1. Check for computer assets/configurations and verify they match with your RMM.
   2. Check for BitLocker assets/documents and verify they are correct for each computer.
7. Re-adjust the time of the cron trigger to when you would like it to routinely ru&#x6E;**.**

<figure><img src="../../../.gitbook/assets/Screenshot 2025-07-25 at 3.51.53 PM.png" alt="Screenshot of the Rewst automation interface titled “[REWST – CRATE] Docs: Document Bitlockers,” showing an enabled cron job trigger named “Cron Job.” The configuration includes integration overrides like ConnectWise Automate and others. The cron schedule is set to run daily at 7:00 AM UTC, with no errors detected in the external status."><figcaption></figcaption></figure>

## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](../../configuration/organization-variables.md).&#x20;

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](configure-organization-variables.md), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

* `agent_smith_is_installed`&#x20;
* `azure_iothub_name`&#x20;
* `azure_iothub_resource_group`&#x20;
* `azure_iothub_subscription_id`&#x20;
* `cwControl_CompanyName`&#x20;
* `cw_automate_client_id`
* `cw_control_session_group_override`&#x20;
* `datto_rmm_site_id`&#x20;
* `default_rmm`&#x20;
* `documentation_platform`&#x20;
* `hudu_company_id`&#x20;
* `immybot_tenant_id`&#x20;
* `itglue_org_id`&#x20;
* `kaseya_vsa_10_scriptid`&#x20;
* `kaseya_vsa_org_id`&#x20;
* `kaseya_vsa_x_org_id`&#x20;
* `nable_customer_id`&#x20;
* `nable_device_filter_id`&#x20;
* `nable_rewst_powershell_script_id`&#x20;
* `ninja_org_id`&#x20;
* `ninja_run_as_user`&#x20;
* `preferred_domain_controller`&#x20;
* `superops_client_id`&#x20;
* `syncmonkey_company_id`

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
