# CIPP: Microsoft Desired State / Standards Compliance Crate

What does the CIPP: Microsoft Desired State /\
Standards Compliance Crate do?
------------------------------

Our CIPP: Microsoft Desired State/Standards Compliance Crate monitors Microsoft 365 tenant\
configurations against a desired state baseline using the CIPP (CyberDrain Improved Partner\
Portal) integration. It runs on a scheduled basis across all managed tenants, evaluating each\
tenant for standards alignment drift and reporting compliance status. When configured\
thresholds are breached, it delivers targeted alerts, and also produces comprehensive standards\
compliance reports on demand or on schedule. All activity is fully logged with structured\
automation logs for auditing and upstream consumption.

This Crate does not remediate or enforce standards, apply changes to tenant configurations, or manage CIPP API authentication, webhook configuration, or integration setup. It won't automatically resolve or close tickets when previously breached standards return to compliance, or support parallel multi-channel delivery. Tenants excluded via cipp\_desired\_state\_exclude\_tenants during cron-triggered runs won't process.

### How the Crate works

* Monitors Microsoft 365 tenant standards alignment using CIPP's ListTenantAlignment endpoint and evaluates results against configurable thresholds
* Detects alignment drift and triggers targeted breach alerts when tenants fall below minimum alignment scores, combined alignment scores, or exceed maximum license missing percentages
* Delivers drift alerts via up to four channels — email, Microsoft Teams, Slack, and PSA ticket creation — based on per-tenant org variable configuration
* Generates comprehensive standards compliance reports per tenant covering org info, Secure Score, licenses, devices, Conditional Access policies, standards compliance, and tenant drift
* Delivers compliance reports via up to three channels — email (HTML), Microsoft Teams (Adaptive Card), and Slack (mrkdwn) — based on per-tenant org variable configuration
* Deduplicates PSA tickets using tenant-scoped MD5 hashes to prevent ticket flooding for recurring breaches
* Resolves each CIPP tenant to its corresponding Rewst child organization using the cipp\_tenant\_id org variable, ensuring variables and routing are scoped correctly per customer
* Excludes specific tenants from scheduled cron runs via the cipp\_desired\_state\_exclude\_tenants org variable
* Excludes specific standards from drift alerting via the cipp\_drift\_exclude\_standards org variable
* Provides a configuration form for technicians to set or update all org variables per organization without modifying workflows
* Produces structured automation logs at every workflow tier for auditing, debugging, and parent workflow consumption
* The alerting workflow generates a unique deduplication hash for each breach using a tenant-\
  scoped MD5 hash of the standard's identifying attributes
  * This hash is included in the ticket\
    payload and passed to the CIPP: Create or Update Ticket sub-workflow, which uses it to check for existing open tickets before creating new ones — preventing ticket flooding for recurring or persistent breaches

### Workflow breakdown

{% hint style="info" %}
The workflow can be started by three triggers:

* Form Trigger: CIPP: MS Desired State - Create or Update ORG Variables - On-demand enabled, this trigger is launched when a technician submits the org variable configuration form. It routes to\
  org variable upsert subworkflow.
* Cron Trigger - Scheduled but disabled by default, this trigger runs on a schedule and fetches all CIPP\
  tenants, filters exclusions, while fanning out to Process Single Tenant at concurrency 2.
* Always Pass Trigger - Manually triggered and disabled by default, this trigger is available for ad-hoc execution outside of the form or cron paths.
{% endhint %}

1. The workflow begins at the **check\_trigger\_source** action, which uses a noop action to determine how the workflow was initiated. This action uses follow-first transition mode, meaning it will take only the first matching path. If the workflow was started by a form submission, it routes down the "Form Trigger" path. Otherwise, it defaults to the "Cron Trigger" path.
2. If the cron trigger path is followed, the workflow proceeds to the **get\_tenants** action, which executes the **List Tenants** action to retrieve all tenants from CIPP with the AllTenantSelector flag enabled. The result is published into context as `get_tenants_result`.
3. After retrieving tenants, the **get\_tenants** action filters the results against an organization variable called `cipp_desired_state_exclude_tenants` to remove any tenants that should be skipped. If valid tenants remain after filtering, the workflow publishes them as `valid_tenants` and transitions to the **process\_tenants** action. If no valid tenants remain, it transitions to the **no\_valid\_tenants\_exit** action instead. If the **List Tenants** action fails entirely, the workflow transitions to the **FAILURE** task with an error log entry.
4. The **process\_tenants** action invokes the subworkflow **\[REWST - TASK] CIPP: Process Single Tenant** using a with-items loop over the `valid_tenants` list at a concurrency of 2, passing each tenant's default domain name as input. This means up to two tenants are processed in parallel at a time. On success, it publishes a structured log entry as `log_process_tenants` and transitions to the **END** action. On failure, it publishes the same structured log and transitions to the **FAILURE** action.
5. If the form trigger path is followed instead, the workflow proceeds to the **get\_organization\_variable** action, which executes the Get Organization Variable action. This action searches for an organization variable named `cipp_tenant_id` whose value matches the CIPP tenant name provided by the form. The result is published into context as `get_organization_variable`.
6. The **get\_organization\_variable** action then evaluates its results using follow-first transition mode. If a matching organization is found with a non-empty value, it publishes the matched organization ID as `organization_id` and transitions to the **run\_org\_variables\_workflow** action with a success log. If no match is found or the workflow is not configured to run for a child org, it falls back to using the parent organization's ID and transitions to the same **run\_org\_variables\_workflow** action with a warning log. If the action fails, it transitions to the **FAILURE** action with an error log.
7. The **run\_org\_variables\_workflow** action invokes the subworkflow **\[REWST - UTILITY] CIPP: MS Desired State - Create or Update ORG Variables**, passing along the resolved organization ID and all CIPP configuration values from context such as report email addresses, Slack channels, Teams webhooks, drift alert settings, alignment score thresholds, and standards board configuration. On success, it publishes a structured log as `log_run_org_variables_workflow` and transitions to the **END** action. On failure, it publishes the same structured log and transitions to the **FAILURE** action.
8. If the workflow reached the **no\_valid\_tenants\_exit** action from the cron path, this noop action simply transitions directly to the **END** action with no additional processing.
9. If any task routed to the **FAILURE** action, this noop action serves as a convergence point for all error paths and transitions directly to the **END** action.
10. The **END** action is the final convergence point for all paths in the workflow, configured with a join of 1 so it waits for at least one inbound transition to arrive. It uses a noop action and on its terminal transition it publishes the `automation_log` variable, which aggregates all `log_` prefixed context variables into a structured report containing an overall status code, a success flag, collected data, a list of warnings, a list of errors, and all individual log entries. The workflow then outputs this `automation_log` along with any `output` variable from context as its final results.

## Crate prerequisites

* Your [CIPP integration](../../integrations/integration-guides/cipp-cyberdrain-improved-partner-portal-integration.md) must successfully be set up in Rewst.
* Optional: Your[ PSA must be integrated](../../integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst if `alert_ticket` is enabled.&#x20;

Unpack the CIPP: Microsoft Desired State /\
Standards Compliance Crate
--------------------------

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `CIPP: Microsoft Desired State /`\
   `Standards Compliance`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2026-04-28 at 9.09.54 AM (1).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Determine how you would like the Crate to trigger and set that trigger to **Enabled**. At a minimum, you must set this for the form trigger, or you won't be able to use the form.
6. Click **Unpack**.

### Use the form

Run the configuration form unpacked with the Crate to set per-tenant variables. At minimum, configure the desired state alert and report toggles— cipp\_desired\_state\_alert, cipp\_desired\_state\_report— and the relevant channel settings for each tenant.&#x20;

{% hint style="info" %}
The `cipp_tenant_id` org variable must be set on each child organization to map CIPP tenant domain names to Rewst organizations. This is typically set during initial CIPP integration setup.
{% endhint %}

1. Navigate to **Automations > Assets > Forms** in the left side menu of your Rewst platform.
2. Search for `[REWST] CIPP: Microsoft Desired State/Standards Compliance - Create or Update ORG Variables`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the link for the desired organization. This will launch the form in a new tab.
5. Fill out the form as follows:
   1. For **View Current Config** - Select **Yes** to retrieve and display the current org variable values for this organization. To refresh, set back to **No** and then **Yes** again.
      1. A new **Current Configuration** drop-down selector will appear if you choose Yes, listing current org variable values for this organization. This field is read-only. Values shown here are for reference only and will not be submitted.
   2. For **Run for Child Organization** - Select **Yes** to run the workflow for a specific child organization. Leave as **No** to run for the parent organization.
      1. A new Select CIPP Tenant drop-down selector will appear if you choose Yes, with a list for you to choose the CIPP Tenant associated with the child organization to configure.
   3. For **Enable Alerting** - Select **Yes** to enable or **No** to disable drift alerting for this organization.
      1. New fields will appear if you choose Yes. Fill in the fields accordingly to select how you would like your drift alerting to behave. Select which channels to use, then fill in the required destination details for each enabled channel.
      2. Threshold defaults - If no threshold values are provided below, the workflow will default to 80% for Minimum Alignment Score, 80% for Minimum Combined Alignment Score, and 20% for Maximum License Missing Percentage.\
         \
         ![](<../../../.gitbook/assets/Screenshot 2026-04-28 at 9.27.46 AM.png>)
   4. For **Enable Reporting** - Select **Yes** to enable or **No** to disable reporting for this organization.
      1. New fields will appear if you choose Yes. Fill in the fields accordingly to select how you would like your reporting to behave. Configure how standards reports are sent. Select which channels to use, then fill in the required destination details for each enabled channel.\
         \
         ![](<../../../.gitbook/assets/Screenshot 2026-04-28 at 9.26.57 AM.png>)
6.  Click **Submit**.





    <figure><img src="../../../.gitbook/assets/Screenshot 2026-04-28 at 9.18.40 AM.png" alt=""><figcaption></figcaption></figure>

## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

| Variable Name                             | Purpose                                                                                                                     |
| ----------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `cipp_desired_state_alert`                | Master toggle to enable/disable drift alerting for a tenant                                                                 |
| `cipp_desired_state_report`               | Master toggle to enable/disable standards compliance reporting for a tenant                                                 |
| `cipp_drift_alert_email`                  | Flag to enable email notifications for drift alerts                                                                         |
| `cipp_drift_alert_email_address`          | Email address to send drift alert notifications to                                                                          |
| `cipp_drift_alert_slack`                  | Flag to enable Slack notifications for drift alerts                                                                         |
| `cipp_drift_alert_slack_channel`          | Slack channel ID for drift alert notifications                                                                              |
| `cipp_drift_alert_teams`                  | Flag to enable Teams notifications for drift alerts                                                                         |
| `cipp_drift_alert_teams_webhook`          | Teams incoming webhook URL for drift alert notifications                                                                    |
| `cipp_drift_alert_ticket`                 | Flag to enable PSA ticket creation for drift alerts                                                                         |
| `cipp_drift_exclude_standards`            | List of standard labels to exclude from drift alerting                                                                      |
| `cipp_drift_max_license_missing_pct`      | Maximum allowed license missing percentage before triggering a breach alert                                                 |
| `cipp_drift_min_alignment_score`          | Minimum alignment score threshold; tenants scoring below this trigger a breach alert                                        |
| `cipp_drift_min_combined_alignment_score` | Minimum combined alignment score threshold; tenants scoring below this trigger a breach alert                               |
| `cipp_report_email`                       | Flag to enable email delivery of standards compliance reports                                                               |
| `cipp_report_email_address`               | Email address to send standards compliance reports to                                                                       |
| `cipp_report_slack`                       | Flag to enable Slack delivery of standards compliance report summaries                                                      |
| `cipp_report_slack_channel`               | Slack channel ID for standards compliance report summaries                                                                  |
| `cipp_report_teams`                       | Flag to enable Teams delivery of standards compliance report summaries                                                      |
| `cipp_report_teams_webhook`               | Teams incoming webhook URL for standards compliance report summaries                                                        |
| `cipp_standards_board_id`                 | PSA board ID for standards drift alert tickets                                                                              |
| `cipp_desired_state_exclude_tenants`      | List of tenant domain names to exclude from processing during cron-triggered runs                                           |
| `cipp_tenant_id`                          | Maps a CIPP tenant default domain name to a Rewst managed organization; used to resolve which child org a tenant belongs to |
| `default_psa`                             | Default PSA provider identifier; determines ticket note formatting (HTML for Halo/Freshdesk, plain text otherwise)          |
