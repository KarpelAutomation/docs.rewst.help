# Report Offline Servers to Teams Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Report Offline Servers to Teams Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Report Offline Servers to Teams Crate is designed to track offline servers across different monitoring tools and synchronize the status of ConnectWise Automate servers with ConnectWise ScreenConnect.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Identifies all ConnectWise Automate servers that are offline
* Cross-references the offline status with ConnectWise ScreenConnect
* Tries to restart the agent twice if the server is confirmed offline in both platforms
* If the server remains offline after two restart attempts, a message is posted in the designated Microsoft Teams channel via webhook
* If no offline servers are detected, the workflow ends successfully and will not post a message in Microsoft Teams

### Workflow breakdown

The workflow unpacked from this Crate will identify the offline ConnectWise Automate servers and validate them against ConnectWise ScreenConnect. This helps confirm if the servers are actually offline or experiencing communication issues.&#x20;&#x20;The workflow will attempt to restart the ConnectWise Automate agent service twice. If the status is still offline, the workflow will use a webhook URL to post the notification to Microsoft Teams. The workflow will require the fully qualified domain name or the FQDN of your ConnectWise Automate server.

## Crate prerequisites

The following integrations must be set up before unpacking this Crate:

* [ConnectWise Automate](../../configuration/integrations/integration-guides/connectwise-automate-integration-setup.md)
* [ConnectWise ScreenConnect](../../configuration/integrations/integration-guides/connectwise-control-screenconnect.md)

### Unpack the Report Offline Servers to Teams Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

{% hint style="info" %}
The configuration page for this Crate requires you to have two pieces of information from Microsoft Teams and ConnectWise Automate before unpacking in Rewst:

1. Microsoft Teams - webhook URL
2. ConnectWise Automate - Fully Qualified Domain Name, or FQDN
{% endhint %}

#### In Microsoft Teams

You'll need to create a Microsoft Teams webhook URL within Microsoft Teams using an incoming webhook connector before you can paste it into a required field in the Crate's configuration screen.

In Microsoft Teams:

1. Navigate to the Microsoft Teams channel where you want to receive the offline server reports.
2. Click the three dots next to the channel name.
3. Select **Manage channel**.
4. Under **Connectors**, click **Edit**.
5. Search for `Incoming Webhook`, then click **Configure**.
6. Configure the webhook connector:
   1. Give it a name.
   2. Optionally upload an icon.
   3. Click **Create.**
7. Copy the webhook URL that the Microsoft Teams generates. This is what you'll use in Rewst to configure and unpack the Crate.

#### In ConnectWise Automate

The FQDN tells the Crate's workflow which ConnectWise Automate server to monitor and manage. FQDN components are as follows:

Format: `hostname.subdomain.domain.tld`

* `hostname`: The specific computer/server name
* `subdomain`: Optional subdomain
* `domain`: The organization's domain name
* `tld`: Top-level domain

Refer to the following FQDN examples:

* exchange01.company.com
* fileserver01.contoso.com
* app01.company.com

To obtain the FQDN, sign in to your organization's ConnectWise Automate account. The FQDN is the portion of the URL that appears before `/automate`. Copy the FQDN and store it somewhere secure. You'll need this for further steps in Rewst.&#x20;

#### In Rewst

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Report Offline Servers to Teams`.​



    ![](<../../../.gitbook/assets/image (248).png>)
3. Click on the Crate tile to begin unpacking.
4.  Click **Unpack Crate**.\


    <figure><img src="../../../.gitbook/assets/image (250).png" alt=""><figcaption></figcaption></figure>
5. Enter your copied Microsoft Teams webhook URL in the first field of the configuration screen. The webhook URL allows the workflow to send notifications directly to your Microsoft Teams channel. The workflow will use this URL to send formatted messages to your Teams channel when servers are detected as offline.
6. The webhook URL from Teams typically has this format:\
   `https://outlook.office.com/webhook/[unique-identifier]/IncomingWebhook/[channel-identifier]`
7. Enter your copied FQDN into the second field of the configuration screen.
8. Click **Continue**.
9. Ensure that **Enabled** is toggled on for the **Cron Job** accordion menu under **Configure Triggers**. Note that you have the option to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
10. Click **Unpack**.

### Test the Crate

You can test this Crate to ensure that the workflow executes correctly. However, a message will only post to your Microsoft Teams channel if offline servers are detected, which is something you can't control or include in your test. A successful test run of the workflow will likely mean no message is posted.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] RMM: Report Offline Servers to Teams`.



    <figure><img src="../../../.gitbook/assets/image (246).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Click **Test** in the top right corner of the builder canvas.
5. Choose the applicable organization from the **Trigger Context Organization** drop-down selector.
6. Click **Test**.
7. Allow the workflow to run.
8. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.

#### Update the cron trigger schedule

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `[ROC] RMM: Report Offline Servers to Teams`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (189).png" alt="" data-size="line"> to open the edit trigger menu.



    <figure><img src="../../../.gitbook/assets/image (1) (5).png" alt=""><figcaption></figcaption></figure>

    <figure><img src="../../../.gitbook/assets/image (247).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
