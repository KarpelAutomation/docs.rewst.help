# Move New Devices to Correct Location Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Move New Devices to Correct Location Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Move New Devices to Correct Location Crate attempts to match a device based on a number of factors, such as gateway IP, when a new device is installed in ConnectWise Automate in the **New Computers** location. The Crate then moves that device into the correct matching client site.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Identifies new devices that have been added to your RMM or PSA system
* Determines the correct location based on predefined rules or mappings
* Moves or updates the device to the correct location

## Crate prerequisites

The [ConnectWise Automate](../../configuration/integrations/integration-guides/connectwise-automate-integration-setup.md) integration must be set up before unpacking this Crate.

## Unpack the Move New Devices to Correct Location Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Move New Devices to Correct Location`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (276).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5.  Ensure that you have the device ID ready as you'll need to enter this in the configuration screen field. The device ID, also referred to as a computer ID within ConnectWise Automate, is a unique identifier that is automatically generated when a device or computer is enrolled or registered with the ConnectWise Automate system. To retrieve the ID for your device:

    1. Log in to ConnectWise Automate.
    2. Click **Browse** > **Computers**.&#x20;
    3. Retrieve the company ID that you can find in the URL. Refer to an example of a company ID below, which appears at the end of the URL.\
       &#x20; \
       &#x20; ![](<../../../.gitbook/assets/image (297).png>)

    With this information obtained, the workflow will match the device to a client based on the latter's domain name. This field is mandatory since the device ID serves as the primary identifier for the device in ConnectWise Automate. Without it, the workflow will likely fail, as the system can't identify which device to match or move.\
    &#x20;&#x20;

    <figure><img src="../../../.gitbook/assets/image (296).png" alt=""><figcaption></figcaption></figure>
6. Click **Continue**.
7. Ensure that **Enabled** is toggled on for the **Cron Job** accordion menu under **Configure Triggers**. Note that you have the option to activate the Crate for all future organizations in addition to the current one. You may also set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
8. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] RMM-Automate: Move Computers From New Location to Matching Clients`.<br>

    <figure><img src="../../../.gitbook/assets/image (266).png" alt=""><figcaption></figcaption></figure>
3.  Click on the workflow to view it in the Workflow Builder.<br>

    <figure><img src="../../../.gitbook/assets/image (267).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to several minutes from your current time. The workflow will run on its own.&#x20;
5. Now, add a new test device in ConnectWise Automate. Once you confirm that the workflow behaves as expected, you can remove this device.

#### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[ROC] RMM-Automate: Move Computers From New Location to Matching Clients`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (205).png" alt="" data-size="line"> to open the edit trigger menu.



    <figure><img src="../../../.gitbook/assets/image (268).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
