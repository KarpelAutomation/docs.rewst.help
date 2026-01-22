---
hidden: true
noIndex: true
---

# Network Devices Reporting Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Network Devices Reporting Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Network Devices Reporting Crate automates the collection of critical information from network devices such as switches, firewalls, access points, and controllers, and then compiles it into a CSV file that is attached to a newly created PSA ticket.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Scans the network to collect information on all relevant devices and infrastructure components
* Converts the collected data into a well-structured CSV file
* Generates a new ticket in your chosen PSA
* Attaches the generated CSV file to the PSA ticket for future reference or auditing

## Crate prerequisites

The [Auvik integration](../../configuration/integrations/integration-guides/auvik-integration-setup.md) must be successfully set up before unpacking this Crate.

Your [PSA must be successfullly integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.

### Unpack the Network Devices Reporting Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Network Devices Reporting`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (275).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that the **Enabled** toggle button is toggled on by default for the **Cron Job** accordion menu under **Configure Triggers**. Also, **Activate for selected organization** and   &#x20;**Activate for all current and future managed organizations** toggle buttons are toggled on by default. You may also set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

## Network device data collection

The Auvik integration for network devices retrieves and quantifies all network devices tracked in Auvik across your client base through the `[PROD - TASK] Auvik: Get Counts` workflow.

Here's the breakdown of how the workflow runs:

* Retrieves all tenant details from Auvik
* Calls a device listing task for each tenant
* Merges device counts with company information
* Produces comprehensive device statistics by client

The integration retrieves information for supported device categories: firewalls, switches, Layer-3 switches, access points, and controllers.

For each device type, the workflow collects:

* Description
* Device Name
* Device Type
* Firmware Version
* IP Addresses
* Make / Model
* Serial Number
* Software Version
* Vendor Name

Note that the contents of the exported CSV will depend on the information present for the workflow to use. Here's an example of what the CSV Report may look like:

<figure><img src="../../../.gitbook/assets/image (286).png" alt=""><figcaption></figcaption></figure>

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] Auvik: Network Device Report`.<br>

    <figure><img src="../../../.gitbook/assets/image (3) (3) (1).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to view it in the Workflow Builder.



    <figure><img src="../../../.gitbook/assets/image (4) (2).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own. Check in your Auvik network management software portal to ensure that the workflow is able to attach a CSV file containing network device data as expected.

#### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[ROC] Auvik: Network Device Report`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.



    <figure><img src="../../../.gitbook/assets/image (2) (4).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
