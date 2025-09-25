# Detailed MFA Enforcement Reporting Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Detailed MFA Enforcement Reporting Crate do?

This Crate allows you to easily check if MFA is enforced in a Microsoft Entra tenant. Triggered via form submission for individual organizations or a cron trigger for all activated organizations, the workflow will gather a list of users and check whether the user has MFA enforced through Security Defaults, Per User MFA, or Conditional Access. If a user is covered by conditional access, it will report on whether they are protected on all apps or only select apps.\


This Crate does not auto-remediate users who do not have MFA enforced.

## How the Crate works

The way we determine whether or not MFA is enforced is by checking:

1. If the user has per user MFA enabled
2. If Security Default is in use.
3. If the user is covered by a Conditional Access policy where:
   * Built-In control requires MFA
   * Built-In control requires DUO MFA
   * Built-In control has a strong authentication strength requirement of MFA
   * Any of the above and the policy is covering all apps or select apps

Some endpoints used by this workflow require P1 licensing or greater, namely registration details, conditional access, etc. If the customer org does not have P1 or greater, then some reporting information may not be available.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Detailed MFA Enforcement Reporting Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2. Search for `Detailed MFA Enforcement Reporting`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-25 at 11.15.43 AM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Enter the email where you want the report to be sent in the **Cron Recipient** field.&#x20;
6. Use the **Send as CSV** drop-down selector to choose your preference:
   1. **True** if you want the report format to be in CSV
   2. **False** if you prefer to view in an HTML page
7. Click **Continue**.
8. You have the option to run this Crate on a schedule via cron job. Expand the **Cron Job** accordion menu and toggle **Enabled** on if you wish to have this Crate run regularly. Leave this as-is if you wish to use the Crate with manual form trigger submission.&#x20;
9. Click **Unpack**.

## Use the Crate

### Fill out the form

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[Rewst - PROC] Detailed MFA Reporting`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains your relevant user. This will launch the form in a new tab.
5. Enter the email address where you'd like the report to be sent in the **Email Recipient** field.
6. Check **CSV Format** if you want the report to be sent in a CSV. The report will be sent as an HTML page via link if the box is left unchecked. Note that download links for HTML pages are one-time use, and will expire after 24 hours.
7. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-25 at 11.37.40 AM.png" alt=""><figcaption></figcaption></figure>

### Adjust the cron trigger and schedule

If you chose to run the workflow in this Crate on a schedule rather than manually triggering via form submission, you can adjust the timing of when the run will be scheduled. The cron trigger for this Crate is set to trigger once monthly, on the first day of the month.

1. Navigate to **Automations > Workflows**.
2. Search for `[REWST - PROC] Detailed MFA Reporting` .
3. Click on the workflow to open it in the workflow builder.
4. Click ![](<../../../.gitbook/assets/image (183).png>) to **Edit Trigger**.
5. Adjust the cron trigger's schedule to your desired time.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
