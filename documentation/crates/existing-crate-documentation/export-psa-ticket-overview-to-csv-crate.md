# Export PSA Ticket Overview to CSV Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Export PSA Ticket Overview to CSV Crate do?

When a form is filled out, generate a CSV Report of PSA tickets created between two dates. When the report is ready, a link to download it will be sent to the user who filled in the form.

### How the Crate works

* The workflow is triggered via form submission.
* In the form, indicate your start and end date.
* A CSV file is generated in the required format, and sent to the user indicated in the form.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which serves as the entry point for the workflow execution.
2. The **check\_input\_psa** task uses the **noop** action to validate the PSA system configuration by checking if a PSA is specified in the context variable or if a default PSA is set in the organization variables.
3. If no PSA is configured, the workflow transitions to the **FAIL** task using the **noop** action, which then leads to workflow termination.
4. When a valid PSA is found, the **adjust\_dates** task uses the **noop** action to format the start and end dates by converting them to proper datetime strings with start date set to 00:00:00.000Z and end date set to 23:59:59.999Z.
5. The **select\_psa** task uses the **noop** action to route the workflow to the appropriate PSA-specific data retrieval task based on the configured PSA system.
6. Depending on the PSA system, one of the following tasks executes to retrieve ticket data:
   * **cw\_psa\_list\_ticket\_data** task uses the **\[REWST - TASK] PSA-ConnectWise: List Ticket Data** action for ConnectWise Manage
   * **datto\_list\_ticket\_data** task uses the **\[REWST - TASK] PSA-Datto: List Ticket Data** action for Datto Autotask PSA
   * **freshdesk\_list\_ticket\_data** task uses the **\[REWST - TASK] PSA-Freshdesk: List Ticket Data** action for Freshdesk
   * **halo\_list\_ticket\_data** task uses the **\[REWST - TASK] PSA-Halo: List Ticket Data** action for Halo PSA
   * **kaseya\_bms\_list\_ticket\_data** task uses the **Retrieve Kaseya BMS Tickets by Date Range** action for Kaseya BMS
7. If the PSA data retrieval fails, the workflow transitions to the **FAIL** task using the **noop** action and terminates.
8. Upon successful ticket data retrieval, the **set\_csv\_data** task uses the **Set Variable** action to convert the ticket data into CSV format by creating headers from the first row's keys and formatting all rows with proper CSV structure including quotes and line breaks.
9. The **create\_csv\_webhook** task uses the **Create Webhook** action to generate a temporary webhook URL that will serve the CSV data with appropriate headers, setting it to expire in 600 seconds and allowing only GET requests.
10. After webhook creation, two tasks execute in parallel:
    * The **send\_csv\_in\_email** task uses the **sendmail** action to send an email notification to the user containing details about the export including date range, PSA system, time logging inclusion status, and a download link to the webhook
    * The **await\_webhook\_get** task uses the **Await Webhook Request** action to wait for someone to access the webhook URL to download the CSV file
11. Both parallel tasks eventually converge to the **END** task using the **noop** action, which marks the successful completion of the workflow.

## Crate prerequisites

You must first successfully integrate your PSA with Rewst before unpacking this Crate. The Crate works with the following PSAs:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)
* [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
* [ServiceNow](../../configuration/integrations/integration-guides/servicenow-integration-setup.md)

## Unpack the Export PSA Ticket Overview to CSV Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Export PSA Ticket Overview to CSV`.<br>

    ![](<../../../.gitbook/assets/Screenshot 2025-12-19 at 10.48.49 AM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that you have the option to activate the Crate for all future organizations in addition to the current one. You may also set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).&#x20;
7. Click **Unpack**.

### Use the Crate

#### Fill out the form&#x20;

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[ROC] Organization Variables to CSV Form` .
3. Click on the form name.&#x20;
4. Click **View Usages > View Direct URLs.**
5. Click on the organization where you'd like to use the form.
6. Choose or enter the required information into its relevant field:
   1. **PSA** - leave this as **DEFAULT**&#x20;
   2. Check **Exclude Parent Organization (MSP)** to exclude your parent organization from the report
   3. Check **Include Time Logged** to add this information to your report
   4. **Filter** the report to **All Tickets**, **Only Open Tickets**, or **Only Closed Tickets**
   5. Choose your **Start Date** and **End Date** for the report's date range
   6. Enter a number for **Link Timeout**
7. Click **Submit**. This will begin the generation and sending of the CSV, which may take several minutes depending on the amount of tickets specified in your timeframe.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-12-19 at 10.53.05 AM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
