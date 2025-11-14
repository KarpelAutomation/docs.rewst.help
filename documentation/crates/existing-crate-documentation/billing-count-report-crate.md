# Billing Count Report Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Billing Count Report Crate do?

Our Billing Count Report Crate is designed to streamline and enhance the process of compiling billing counts from various integrations. This tool iterates through multiple integrations, collects relevant billing data, and generates a comprehensive report, ensuring accuracy, efficiency, and consistency.&#x20;

### Workflow breakdown

1. The workflow begins with the **BEGIN** task which initializes the output structure with empty data, success status, and automation log arrays.
2. The **Check Running Org** task validates whether the workflow should continue execution based on the organization context, and if validation passes, the workflow proceeds to the next step.
3. The **Get Integration Ids** task retrieves all integration identifiers for companies within the organization and publishes this data to the workflow context.
   1. The workflow checks if Datto RMM is installed, and if so, executes the **Get Datto RMM Counts** task to retrieve device count information from the Datto RMM integration.
   2. The workflow checks if ConnectWise Automate is installed, and if so, executes the **Get CWA Device Counts** task to gather device count data from the ConnectWise Automate integration.
   3. The workflow checks if NinjaOne is installed, and if so, executes the **Get Ninja Device Counts** task to collect device count information from the NinjaOne integration.
   4. The workflow checks if Microsoft Graph is installed, and if so, executes the **Get 365 License Counts** task which runs with items iteration to gather Microsoft 365 license data for each organization.
   5. The workflow checks if Huntress is installed, and if so, executes the **Get Huntress License Counts** task to retrieve license count information from the Huntress integration.
   6. The workflow checks if SentinelOne is installed, and if so, executes the **Get Sentinel One Counts** task to gather license count data and also creates SentinelOne SKU count data.
   7. The workflow checks if Duo is installed, and if so, executes the **Get Duo User Counts** task to collect user count information from the Duo integration.
   8. The workflow checks if Pax8 is installed, and if so, executes the **Get Pax8 License Counts** task to retrieve subscription and license count data from the Pax8 integration.
   9. The workflow checks if IT Glue is installed, and if so, executes the **Get MyGlue License Counts** task to gather license count information from the IT Glue integration.
   10. The workflow checks if Auvik is installed, and if so, executes the **Get Auvik Counts** task to collect count data from the Auvik integration.
   11. The workflow checks if Proofpoint is installed, and if so, executes the **Get Proofpoint Counts** task to retrieve user count information from the Proofpoint integration.
   12. The workflow checks if ImmyBot is installed, and if so, executes the **Get ImmyBot Counts** task to gather user count data from the ImmyBot integration.
   13. The workflow checks if Cork is installed, and if so, executes the **get\_cork\_counts** task to retrieve device count information from the Cork integration.
   14. The workflow checks if Dropsuite is installed, and if so, executes the **get\_dropsuite\_counts** task to collect seat count data from the Dropsuite integration.
4. The **Begin Consolidation** task creates the initial integration output structure by consolidating data from various integrations including Duo, SentinelOne, IT Glue, Huntress, Auvik, Proofpoint, and SentinelOne SKU data.
5. The **check\_pax\_append** task determines if Pax8 data should be appended, and if so, the **Append\_pax8\_data** task merges Pax8 subscription data with the existing output.
6. The **check\_cork\_append** task determines if Cork data should be appended, and if so, the **Append\_cork\_data** task merges Cork device count, user count, and warranty status information with the existing output.
7. The **check\_dropsuite\_append** task determines if Dropsuite data should be appended, and if so, the **Append\_dropsuite\_data** task merges Dropsuite seat information including active seats, organization details, and shared mailboxes with the existing output.
8. The **check\_rmm\_append** task evaluates if any RMM integration data exists, and if so, the **Append\_rmm\_data** task consolidates data from ConnectWise Automate, NinjaOne, Datto RMM, and ImmyBot integrations.
9. The **Remove Integration Ids** task cleans up the output by removing internal integration identifier fields from the final dataset.
10. The **create\_csv** task converts the final output data into CSV format with proper field ordering, ensuring the Company field appears first.
11. The **choose delivery method** task evaluates the billing\_report\_delivery\_mechanism parameter to determine how to deliver the report.
12. If PSA delivery is selected, the **workflows\_dev\_process\_psa\_create\_ticket** task creates a ticket in the configured PSA system, followed by the **workflows\_upload\_csv\_to\_ticket** task which attaches the CSV report to the created ticket.
13. If email delivery is selected and recipients are specified, the **workflows\_function\_send\_email\_with\_attachment** task sends the CSV report via email to the specified recipients.
14. If no delivery method is configured, the **no\_delivery\_method\_set** task handles this scenario.
15. The **build automation log** task compiles logging information from all executed tasks throughout the workflow.
16. The workflow concludes with the **END** task which finalizes the output structure by updating it with the generated CSV data and returns the complete result.

## Crate prerequisites

Your [RMM integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) with Rewst must be set up before unpacking this Crate.

If choosing to deliver the report via PSA ticket, you'll also need to set up your [PSA integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) before unpacking this Crate.

## Unpack the Billing Count Report Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2.  Search for the `Billing Count Report` Crate.

    \
    ![](<../../../.gitbook/assets/image (110).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Scroll to the bottom of the page. Choose how you want the billing report delivered by selecting your option from the **Billing Report Delivery Mechanism** drop-down. Fill out the other required information fields, depending on your delivery method.

<figure><img src="../../../.gitbook/assets/image (111).png" alt=""><figcaption></figcaption></figure>

6. Click **Continue**.
7. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.\


1. Navigate to **Automations > Workflows**.
2. Search for `billing count` .
3. Click on the workflow to open it in the workflow builder.
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own then. A ticket or email will be generated if the workflow is successful.

<figure><img src="../../../.gitbook/assets/image (49).png" alt=""><figcaption></figcaption></figure>

## Troubleshoot the Billing Count Report Crate

This workflow is meant to run from your parent organization only. If you’re seeing workflow failures for child organizations, disable the trigger for child organizations.

<figure><img src="../../../.gitbook/assets/image (48).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

