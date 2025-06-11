# Install Acronis Backup Agent on Devices Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Install Acronis Backup Agent on Devices Crate do?

The Crate starts by listing all devices in the RMM. Each device then undergoes a software audit to identify installed software and potential issues. If any problems are found, they are reported back to the PSA. In the case of significant issues, an option to request manual intervention is activated in the PSA ticket.

### Why use the Install Acronis Backup Agent on Devices Crate?

* Achieve a unified and up-to-date view of software installations across all managed devices.
* Automate the process of identifying and flagging potential software-related issues.
* Facilitate seamless communication between RMM and PSA for quick issue resolution.

## Crate prerequisites

* You must have the Acronis integration set up before unpacking this Crate.
* Optionally, you could integrate your RMM with Rewst, which would allow for problem reporting capabilities. RMM types compatible with this Crate are:
  * Datto RMM
  * ConnectWise Automate
  * Ninja RMM
  * Immybot
  * Kaseya VSA

## Unpack the Install Acronis Backup Agent on Devices Crate

1. Navigate to **Crates > Crate Marketplace** in the Rewst platform.
2. Search for `Install Acronis Backup Agent on Devices`**.**
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-06-11 at 6.02.28 PM.png>)\

4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter your **Time Saved (seconds)**.
7.  Expand the **New Computer** accordion menu under **Configure Triggers** if you are using this Crate in conjunction with your integrated RMM. Toggle **Enabled** to on.\
    \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-04-07 at 11.36.12 AM.png" alt="Screenshot of the &#x22;Crate Configuration&#x22; interface in Rewst&#x27;s workflow builder. The workflow is titled &#x22;[Rewst Master] Software Audit: Acronis Installation&#x22; and estimates 3600 seconds of time saved. The trigger section shows a &#x22;New Computer&#x22; trigger named &#x22;New RMM Device&#x22; that is currently disabled. Options for adding trigger criteria and integration overrides are visible, along with a dropdown and an &#x22;Add All (14/14)&#x22; button in the bottom right."><figcaption></figcaption></figure>
8. Click **Unpack**.



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
