# Cork Compliance Event to PSA Ticket Crate

{% hint style="info" %}
&#x20;If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Cork Compliance Event to PSA Ticket Crate do?

The Cork Compliance Event to PSA Ticket Crate scans Cork compliance events daily and automatically creates PSA tickets for any detected issues. It checks for existing open tickets to prevent duplicates, ensuring efficient tracking. If a previous ticket has been closed and a new event is found, it generates a new ticket. If all events in the ticket have been resolved, the ticket will be automatically closed.

## Crate prerequisites

Before unpacking this Crate, you must first:

* Set up the [Cork integration](../../configuration/integrations/integration-guides/cork-integration.md)
* Set up your[ PSA integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations)

## Unpack the Cork Compliance Event to PSA Ticket Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2. Search for `Cork: Compliance Event To PSA Ticket`.\
   \
   ![](<../../../.gitbook/assets/image (132).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Enter your estimate into the **Time Saved (seconds)** field.
6. By default, both triggers should be toggled on. Note that under the **Configure Triggers** and **Cron Job** accordion menus, you have the option to activate for all current and future managed organizations, or for specific organizations chosen from the **Activate for organizations** drop-down selector. You may also activate for organizations with specific tags.&#x20;
7. Click **Unpack**.
8. Navigate to **Automations > Forms**.
9.  Search for `[REWST] Cork Compliance Setup Form`.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-09 at 11.46.48 AM.png" alt=""><figcaption></figcaption></figure>
10. Click **⋮**, then **Usages**.
11. Click **View Direct URLs**.
12. Click on the URL to launch the form.
13. Select a **Reporting Type** from the drop-down selector.
14. Select a **Board ID** from the drop-down selector.
15. Select a **Ticket Creation Status**.
16. Check the **(Optional) Ticket Type** box, if desired, and choose the type from the **Ticket Type** drop-down selector.
17. Select a **Ticket Closure Status**.
18. Click **Submit**.

<figure><img src="../../../.gitbook/assets/image (70).png" alt="Screenshot of the REWST Cork Compliance Setup Form interface, displaying dropdown configuration fields including reporting type (set to “One Ticket With All Combined Events/Assets”), board ID (set to “IT:Level I”), ticket creation status (set to “New”), ticket closure status (set to “Complete”), and an optional ticket type section enabled with the ticket type set to “IT:Hardware.” Each field includes a refresh icon for dynamic updates, and required fields are marked with red asterisks."><figcaption></figcaption></figure>

## Use the Cork Compliance Event to PSA Ticket Crate

After submitting the form during the unpacking process, the Crate will function as long as triggers are enabled. If triggers are disabled, open the workflow and enable them.

### Schedule

* By default, he workflow runs daily at 5:00 AM, but this is adjustable via the Crate's cron trigger.
* The Crate is designed to run once per day.

### Reporting

* The setup form creates the org variable: `cork_compliance_reporting_type` when a reporting type is selected.
* To change this, rerun the form or manually edit via organization variables in Rewst.

#### Reporting types

* **Company (default):** One ticket for all device events per company.
* **Device:** Separate ticket for each device with compliance events.



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
