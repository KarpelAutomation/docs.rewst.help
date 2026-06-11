# Organizational Setup Report Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Organizational Setup Report Crate do?

The Organizational Setup Report Crate offers a report of your managed organizations, including their installed integrations, mapping IDs, users, and organization variables. This can be helpful during the onboarding process to track your setup progress.

Find the [webhook](https://docs.rewst.help/documentation/automations/intro-to-triggers/use-cases-and-examples/using-webhook-triggers#what-is-a-webhook-trigger) trigger URL to view the report, updated nightly.

## Unpack the Organizational Setup Report Crate

1. Navigate to **Marketplace > Crates** in the left side menu of the Rewst platform.
2. Search for `Organizational Setup Report`.\
   \
   ![](<../../../.gitbook/assets/image (184).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Edit your workflow name in the **Workflow Name** field, if desired.
7. Enter your estimate into the **Time Saved** field.
8. Note that you have the option under both the **Webhook** and **Cron Job** trigger accordion menus to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), trigger criteria, or for integration overrides.
9. Click **Unpack**.

## View the Crate report

{% hint style="info" %}
The first run of the report usually takes some time, with subsequent runs completing more quickly. You can watch the progress in the results page.
{% endhint %}

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platfor,.
2. Search for `View Org Setup Report`.
3. Click on the workflow to launch it in the Workflow Builder.
4. Click on the trigger in the workflow to open its settings in the right side menu.
5. Click on the **Web GET** trigger from the trigger list.
6. Click **Copy URL**. Copy the URL in the dialog that appears.
7. Paste and launch the URL in a new browser tab.
8. View the report. If desired after making changes, click **Background Refresh Data** to push the workflow to update the report.&#x20;
9. View the report. If desired after making changes, click **Background Refresh Data** to push the workflow to update the report.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-06-02 at 11.17.26 AM.png" alt=""><figcaption><p>An example of a completed report</p></figcaption></figure>

## Troubleshoot the Organizational Setup Report Crate

If the error `x-Rewstsecret header not provided` is given when pasting the webhook URL into a new tab to view the report:

1. Scroll down the trigger page in Rewst to locate the **Secret Key** field.
2. Clear the field.
3. Click **Submit**.
4. Refresh the tab where you pasted the webhook URL. The report should now appear.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-05-23 at 4.02.31 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
