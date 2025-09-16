# Rotate Account Passwords Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Rotate Account Passwords Crate do?

This Crate automates the secure rotation of administrative account passwords. It improves security by ensuring credentials are updated on a set schedule and stored safely in Hudu or IT Glue.

This Crate does not update accounts not listed in the configuration, grant or revoke permissions, or perform emergency password resets.

### How the Crate works

The Crate runs on a scheduled rotation, based on configured frequency preference. There's also a manual trigger for immediate rotation, if needed.&#x20;

* Identifies configured admin accounts
* Generates strong, random passwords that meet your policy
* Updates the account password in the target system
* Stores the new password in Hudu or IT Glue

### Crate prerequisites

Before unpacking this Crate, you'll need to successfully integrate either [IT Glue](../../configuration/integrations/integration-guides/it-glue-integration-setup.md) or [Hudu](../../configuration/integrations/integration-guides/hudu-integration-setup.md) with Rewst.

## Unpack the Rotate Account Passwords Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Rotate Account Passwords`**.**\
   \
   ![](<../../../.gitbook/assets/image (175).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Decide if you want the workflow in the Crate to run on a schedule or by manual triggering.
   1. Leave **Enabled** toggled on to use a cron trigger and schedule
   2. Toggle **Enabled** to off to use the workflow with a manual trigger
6. Choose which organizations you would like to activate this Crate for via the **Activate for organizations** drop-down selector.&#x20;
7. Add **Trigger Criteria** and **Integration Overrides**, if desired.
8. Click **Unpack**.

### Set up the organization variable for the Crate

Make an organization variable called `rotate_admins`  for each organization that you want to rotate passwords for. Follow setup instructions here for [how to create new organization variables](../../configuration/organization-variables.md).

In the organization variable, give a list of users for all accounts you want to rotate. Format that list comma delimited. For example, `job_admin,paul_admin,steve_admin`.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-08-19 at 3.52.50 PM.png" alt=""><figcaption></figcaption></figure>

## Use the Crate

{% hint style="warning" %}
Note that if you test or run the workflow in this Crate before setting up the rotate\_admins organization variable, your workflow will still show as successful, but will consider the list of users to be empty.&#x20;
{% endhint %}

To manually run the workflow, create an always trigger with the desired organization enabled, then click the **test** button.&#x20;

1. Navigate to Automations > Workflows in the left side menu of your Rewst platform.
2. Search for `[Rewst - PROCESS] PSA: Update Ticket with New User Onboard Links.`
3. Click the workflow to view it in the workflow builder.
4. Click <img src="../../../.gitbook/assets/Screenshot 2025-08-18 at 1.48.13 PM.png" alt="" data-size="line"> to add a trigger.
5. Enter a descriptive name for your trigger into the **Name** field.
6. Click the **Trigger Type** drop-down selector.&#x20;
7. Select **Core - Always Pass**.
8. Click the **Organizations** drop-down selector under the **Activate Trigger To Run For** submenu.
   1. Choose your relevant organizations for the trigger to run on.&#x20;
   2. To select all managed organizations, click <img src="../../../.gitbook/assets/Screenshot 2025-08-18 at 2.12.27 PM.png" alt="" data-size="line">.
   3. To set up this trigger to run for all future managed organizations, toggle the **All current and future managed organizations** setting on.
9. Click **Submit**.
10. Click **Test**.
11. Click **View Result**.

![](<../../../.gitbook/assets/Screenshot 2025-08-18 at 2.15.02 PM.png>)

To run the workflow on a schedule, you'll need to add the list of users in the organization variable, configure the cron trigger for your desired frequency, and enable it. Note that the default schedule for the cron trigger unpacked with this Crate is monthly.

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[Rewst - PROCESS] PSA: Update Ticket with New User Onboard Links.`
3. Click the workflow to view it in the workflow builder.
4. Click ![](<../../../.gitbook/assets/image (181).png>) to edit the trigger.&#x20;
5.  Update your workflow run frequency as desired in the **Cron Schedule** field. \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-08-18 at 2.17.49 PM.png" alt=""><figcaption></figcaption></figure>
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
