# Deactivate ConnectWise PSA Contacts when their Company is Deactivated Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Detailed MFA Enforcement Reporting Crate do?

This Crate ensure that when a ConnectWise PSA company is set to an inactive status, it also sets the Contacts for that company to inactive.

## Crate prerequisites

Your [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md) must first be successfully integrated with Rewst before unpacking this Crate.

## Unpack the Detailed MFA Enforcement Reporting Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2. Search for `Deactivate ConnectWise PSA Contacts when their Company is Deactivated`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-26 at 10.51.02 AM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Enter the names you use in ConnectWise PSA for statuses to denote inactive customers in the **Status Names** field.&#x20;
6.  Choose if you want to **Remove Contacts from Default before Deactivating** from the drop-down selector.\
    \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-09-26 at 10.55.48 AM.png" alt=""><figcaption></figcaption></figure>
7. Use the **Send as CSV** drop-down selector to choose your preference:
   1. **True** if you want the report format to be in CSV
   2. **False** if you prefer to view in an HTML page
8. Click **Continue**.
9. This Crate runs on a schedule via cron job. Expand the **Cron Job** accordion menu and ensure that **Enabled** is toggled on.&#x20;
10. Ensure that **Enabled** is toggled on in the **Company Record Saved** accordion menu.
11. Click **Unpack**.

### Use the Crate

#### Adjust the cron trigger and schedule

You can adjust the timing of when the run of the Crate's workflow will be scheduled. The cron trigger for this Crate is set to trigger once monthly, on the first day of the month.

1. Navigate to **Automations > Workflows**.
2. Search for `Deactivate Contacts from Deactivated PSA Companies`.
3. Click on the workflow to open it in the workflow builder.
4. Click ![](<../../../.gitbook/assets/image (199).png>) to **Edit Trigger**.
5. Adjust the cron trigger's schedule to your desired time. By default, the Crate runs daily at 3:32 AM.
6. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-26 at 11.01.04 AM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
