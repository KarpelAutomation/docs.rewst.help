# Export Org Vars to CSV for Import Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Export Org Vars to CSV for Import Crate do?

Our Export Org Vars to CSV Crate helps in effortlessly managing your organization variables by exporting them into a CSV file, which is sent to the location of your choice and added to a PSA ticket. The exported CSV is automatically formatted to be compatible with our related import Crate, [Mass Update Organization Variables via CSV](mass-update-org-variables-via-csv-crate.md).

### How the Crate works

* Choose the organization whose variables you wish to export.
* The system will extract all relevant organization variables.
* A CSV file is generated in the required format, selected via form submission, ready for import via the accompanying Mass Update Organization Variables via CSV Crate.

### Workflow breakdown

1. The workflow begins with the **BEGIN** task, which uses the **noop** action to initialize the workflow execution.
2. The workflow transitions to the **rewst\_list\_organization\_variables** task, which executes the **List Organization Variables** action from Rewst to retrieve all organization variables visible to the current organization using the organization ID.
3. Upon successful completion, the retrieved organization variables are published to the workflow context as `org_vars` and the workflow moves to the **results\_of\_org\_var** task.
4. The **results\_of\_org\_var** task uses the **noop** action to process and transform the organization variables data into a structured list format, creating a new list called `my_list` that contains dictionaries with variable name, value, organization ID, and organization name for each variable.
5. The workflow then proceeds to the **create\_csv** task, which uses the **noop** action to convert the processed list data into CSV format using a Jinja2 template that applies the CSV filter with field names derived from the dictionary keys.
6. Finally, the workflow concludes with the **END** task, which uses the **noop** action to mark the completion of the workflow execution, with the CSV data available in the workflow context for output or further processing.

## Crate prerequisites

If you intend to have the CSV attached to a PSA ticket, you must first successfully [integrate your PSA](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst before unpacking this Crate.

## Unpack the Export Org Vars to CSV for Import Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Export Org Vars to CSV for Import`.

    \
    ![](<../../../.gitbook/assets/image (260).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter **Time Saved** under **Crate Configuration**.
7. Ensure that **Enabled** is toggled on in the **Always Pass** accordion menu, under **Configure Triggers**.\
   Note that you have the option to activate the Crate for all future organizations in addition to the current one. You may also set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).&#x20;
8. Click **Unpack**.

### Use the Crate

#### Fill out the form to select CSV delivery

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[ROC] Organization Variables to CSV Form` .
3. Click on the form name.&#x20;
4. Click **View Usages > View Direct URLs.**
5. Click on the organization where you'd like to use the form.
6. Choose the **Location** where the CSV should be sent: **Both, PSA,** or **Email**.
7. Choose an existing PSA ticket from the drop-down selector to attach the CSV to.
8. Click **Submit**. This will begin the generation and sending of the CSV.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-12-18 at 2.16.35 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
For more on how CSVs can be generated with Jinja, see our documentation [here](https://docs.rewst.help/~/revisions/IAv4UYPrwRFrpB0SUQW8/documentation/jinja/common-jinja-examples/creating-csvs).&#x20;
{% endhint %}

### Troubleshoot the Export Org Vars to CSV for Import Crate <a href="#troubleshoot-the-billing-count-report-crate" id="troubleshoot-the-billing-count-report-crate"></a>

This workflow is meant to run from your parent organization only. If you’re seeing workflow failures for child organizations, disable the trigger for child organizations.

<div align="left"><figure><img src="../../../.gitbook/assets/image (2) (5).png" alt=""><figcaption></figcaption></figure></div>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
