# Alert on Unused M365 Licenses Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Unused M365 Licenses Crate do?

This Crate checks daily for unused M365 licenses that can be returned to Pax8, then creates a ticket in your PSA with the information. The ticket will include hyperlinks to update the purchased quantity to match the used quantity and remediate unused licenses.

## Crate prerequisites

Before unpacking this Crate:

The[ Pax 8 integration](../../configuration/integrations/integration-guides/pax8-integration-setup.md) must first successfully be set up in Rewst .

The Microsoft Graph integration, part of our Microsoft Cloud integration bundle, must be installed and working.

Your[ PSA must be integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.&#x20;

## Unpack the Alert on Unused M365 Licenses Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst Platform.
2. Search for `Alert on Unused M365 Licenses`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-06-26 at 4.43.10 PM.png>)\

3. Click **Unpack Crate**.
4. Click **Continue.**
5. Enter your **Time Saved**.
6. Expand the **Cron Job** accordion menu and ensure that **Enabled** is toggled on.
7. Click **Unpack**.

## Use the Alert on Unused M365 Licenses Crate

The Crate runs on a cron trigger, and will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `Pax8 Extra License Removal.`
3. Click on the workflow to view it in the workflow builder.
4.  Click <img src="https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2F1835401289-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FAQQ1EHVcEsGKBPVHmiav%252Fuploads%252FJQbFGZbocC7Jk7ySBPT1%252FScreenshot%25202025-02-21%2520at%252011.20.06%25E2%2580%25AFAM.png%3Falt%3Dmedia%26token%3D2ed7009f-dd01-4e73-b32d-7149c72fef8b&#x26;width=36&#x26;dpr=4&#x26;quality=100&#x26;sign=f5bc322a&#x26;sv=2" alt="" data-size="line"> to open the edit trigger menu.\
    &#x20;

    <figure><img src="https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2F1835401289-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FAQQ1EHVcEsGKBPVHmiav%252Fuploads%252FwnXIbYjmeXtTETWFBKkI%252FScreenshot%25202025-06-25%2520at%25205.53.42%25E2%2580%25AFPM.png%3Falt%3Dmedia%26token%3D53680b5e-a0a9-4260-8d31-4802c66355e8&#x26;width=300&#x26;dpr=4&#x26;quality=100&#x26;sign=e56327e1&#x26;sv=2" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example. 18 3, not 3 18.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
