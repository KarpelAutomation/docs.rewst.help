# Install Acronis Backup Agent on Devices Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Install Acronis Backup Agent on Devices Crate do?

The Crate starts by listing all devices in the RMM. Each device then undergoes a software audit to identify installed software and potential issues. If any problems are found, they are reported back to the PSA. In the case of significant issues, an option to request manual intervention is activated in the PSA ticket.

* Achieve a unified and up-to-date view of software installations across all managed devices.
* Automate the process of identifying and flagging potential software-related issues.
* Facilitate seamless communication between RMM and PSA for quick issue resolution.

## Crate prerequisites

* You must have the [Acronis](../../configuration/integrations/integration-guides/acronis-integration.md) integration set up before unpacking this Crate.
* Optionally, you could integrate your RMM with Rewst, which would allow for problem reporting capabilities. RMM types compatible with this Crate are:
  * [Datto RMM](../../configuration/integrations/integration-guides/datto-rmm-integration-setup.md)
  * [ConnectWise Automate](../../configuration/integrations/integration-guides/connectwise-automate-integration-setup.md)
  * [Ninja One RMM](../../configuration/integrations/integration-guides/ninjaone-integration-setup.md)
  * [Immybot](../../configuration/integrations/integration-guides/immybot-integration-setup.md)
  * [Kaseya VSA](../../configuration/integrations/integration-guides/kaseya-vsa-integration-setup.md)

## Unpack the Install Acronis Backup Agent on Devices Crate

1. Navigate to **Crates > Crate Marketplace** in the Rewst platform.
2. Search for `Install Acronis Backup Agent on Devices`**.**
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/image (161).png>)
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter your **Time Saved (seconds)**.
7.  Expand the **New Computer** accordion menu under **Configure Triggers** if you are using this Crate in conjunction with your integrated RMM. Toggle **Enabled** to on.\


    <figure><img src="../../../.gitbook/assets/image (162).png" alt=""><figcaption></figcaption></figure>
8. Click **Unpack**.



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
