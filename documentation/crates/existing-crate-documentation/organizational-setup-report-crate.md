# Organizational Setup Report Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Organizational Setup Report Crate do?

The Organizational Setup Report Crate offers a report of your managed organizations, including their installed integrations, mapping IDs, users, and organization variables. This can be helpful during the onboarding process to track your setup progress.

Find the [webhook](https://docs.rewst.help/documentation/automations/intro-to-triggers/use-cases-and-examples/using-webhook-triggers#what-is-a-webhook-trigger) trigger URL to view the report, updated nightly.&#x20;

## Unpack the Organizational Setup Report Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Organizational Setup Report`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-05-14 at 3.32.52 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.&#x20;
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
2.  Search for `View Org Setup Report`.\
    \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-05-23 at 3.59.12 PM.png" alt=""><figcaption></figcaption></figure>
3. Click the workflow to launch it in the Workflow Builder.
4. Select the **Web GET** trigger from the trigger drop-down selector.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-05-23 at 4.00.05 PM.png>)
5. Click <img src="../../../.gitbook/assets/Screenshot 2025-05-21 at 2.57.06 PM.png" alt="" data-size="line"> to open the trigger.
6. Under **Trigger Configuration**, click **View Webhook URLs**.
7. Copy the URL and launch it in a new tab.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-05-14 at 5.00.28 PM.png" alt=""><figcaption></figcaption></figure>

8. View the report. If desired after making changes, click **Background Refresh Data** to push the workflow to update the report.&#x20;

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
