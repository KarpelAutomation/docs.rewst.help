# Document User Details V2 Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://app.rewst.io/marketplace/crates/ad23cb3a-d4fb-4066-91d1-719ea95a6355).
{% endhint %}

## What does the Document User Details V2 Crate do?

Our Document User Details V2 Crate streamlines the documentation of user information in Microsoft 365. This crate automatically records critical user details such as licenses, aliases, and permission levels into your documentation tool.

* Keep up-to-date records of a clients users base in their M365 environment.
* Provide ad-hoc and QBR reporting to your clients.

## Crate prerequisites

[IT Glue](../../integrations/integration-guides/it-glue-integration-setup.md), [SyncMonkey](../../integrations/integration-guides/syncmonkey-integration.md), or [Hudu](../../integrations/integration-guides/hudu-integration-setup.md) must be integrated with Rewst prior to unpacking this Crate.

The [Microsoft Cloud Bundle](../../integrations/integration-guides/microsoft-cloud-integration-bundle/) must be integrated, and configured, with GDAP Relationships established for your customers.

## Unpack the Document User Details V2 Crate

1. Navigate to **Marketplace > Crates** in the left side menu of the Rewst platform.
2. Search for the `Document User Details V2` Crate.\
   \
   ![](<../../../.gitbook/assets/image (157).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6.  Change the **Workflow name**, if desired.<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-03-24 at 2.54.27 PM.png" alt=""><figcaption></figcaption></figure>
7. Click **Unpack**.

{% hint style="info" %}
The workflow is designed to run at the MSP level organization. The workflow will automatically iterate through your Rewst child organizations and populate their specific form URLs in the documentation platform.
{% endhint %}

### Test the Crate

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[Rewst Master v3] ITG: Document Users - [Part 1`.
3. Click on the workflow to view it in the Workflow Builder.
4. Click **Run** in the top right corner of the Workflow Builder Canvas.
5. Select your MSP organization and click **Run Test**.
6. Execution results for the workflow run will appear in the right side menu. Click into any of the success or failure tiles for a more detailed breakdown of each.

### Update the cron trigger

{% hint style="info" %}
To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. Check in ITGlue to see if the flexible asset is created.
{% endhint %}

The Crate runs on a cron trigger, and will execute the workflow to check and generate the flexible asset content at the same time each day. You can adjust the chosen time for execution in the workflow itself.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[Rewst Master v3] ITG: Document Users - [Part 1`.
3. Click on the workflow to view it in the Workflow Builder.
4. Click on the trigger to open its settings in the right side menu.
5. Adjust the cron trigger's schedule to your desired time.
6. Click **Save Trigger**.

## Troubleshoot the Document User Details V2 Crate

### Forbidden error on Microsoft Graph actions

Check your Microsoft Cloud Bundle to make sure the client is configured correctly. Click the green shield icon next to your client to re-consent to delegate admin permission. If errors continue, check GDAP permissions.

### Forbidden error on IT Glue actions

Enable [password access to the API user in IT Glue](https://support.itglue.com/hc/en-us/articles/360017660198-Password-Access-Workflow-in-IT-Glue).

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
