# Onboard or Offboard a Device Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Onboard or Offboard a Device Crate do?

This crate allows you to pick a primary user and assign them to a device, while also choosing whether to onboard, offboard or reset onboarding for the device.

### Why use the Onboard or Offboard a Device Crate?

* Simplify the computer onboarding process for both end-users and technicians.
* Ensure seamless integration with ImmyBot for computer and user management.

### How the Crate works

1. Initiate the process by selecting the computer and user who will be associated with that computer in the form unpacked from the Crate.
2. Choose if you wish to begin the onboarding immediately or on a delay.
3. Submit the form.

## Crate prerequisites

Your [ImmyBot integration](../../configuration/integrations/integration-guides/immybot-integration-setup.md) with Rewst must successfully be set up before unpacking this Crate.

### Unpack the Onboard or Offboard a Device Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Onboard or Offboard a Device`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-17 at 11.41.37 AM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. This is defaulted to on for the Crate. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
7. Click **Unpack**.

### Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[Rewst Master v2] ImmyBot - Onboard Computer`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains your relevant user and computer. This will launch the form in a new tab.
5. Select the target computer for onboarding from the drop-down selector.&#x20;
6. Choose the yser who will be primarily associated with this computer from the **Primary User** drop-down selector.
7. The **Onboard** checkbox defaults to checked, and will initiate onboarding immediately. If you wish to delay onboarding, uncheck the box.
8. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-17 at 11.47.26 AM.png" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
