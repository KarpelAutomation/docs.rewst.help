# Identify Users in Bypass Mode Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Identify Users in Bypass Mode Crate do?

Our Identify Users in Bypass Mode Crate identifies all users that are in bypass mode and creates a ticket to ensure that the granting of bypass mode is intentional and tracked. The Crate’s workflow has a weekly cron trigger. Guarantee that any user in bypass mode is regularly identified, and not missed or forgotten.

## Crate prerequisites

Our [Duo](../../configuration/integrations/integration-guides/duo-integration-setup.md) integration must be set up before unpacking this Crate.

## Unpack the Identify Users in Bypass Mode Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Identify Users in Bypass Mode`\
   \
   ![](<../../../.gitbook/assets/image (160).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Enter your estimated time saved.
6. Click **Unpack**.

<figure><img src="../../../.gitbook/assets/image (49) (1).png" alt=""><figcaption></figcaption></figure>

### Test the Crate

1. Navigate to **Automations > Workflows**.
2. Search **Duo:** **Identify Users In Bypass Mode**.
3.  Click into the workflow.<br>

    <figure><img src="../../../.gitbook/assets/image (50) (1).png" alt=""><figcaption></figcaption></figure>
4.  The trigger has the workflow set to run at 12 am on Fridays. This can be changed by clicking ![](<../../../.gitbook/assets/image (200).png>). You also have the option to set an email send to notify you if the workflow fails.<br>

    <figure><img src="../../../.gitbook/assets/image (51) (1).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

