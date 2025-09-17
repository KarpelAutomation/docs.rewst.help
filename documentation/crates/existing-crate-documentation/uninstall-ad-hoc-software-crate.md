# Uninstall Ad-Hoc Software Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Uninstall Ad-Hoc Software Crate do?

This Crate allows your team to select a ticket, identify the software in question, and choose the device for uninstallation, all in one smooth workflow. Post completion, the ticket status is automatically updated in ImmyBot.

### Why use the Uninstall Ad-Hoc Software Crate?

* Simplify the software uninstallation process for both end-users and technicians.
* Ensure seamless integration with ImmyBot for ticket management.
* Automate mundane tasks, allowing your team to focus on more complex issues.

### How the Crate works

1. Initiate the process by selecting the ticket related to the software uninstallation in the form unpacked from the Crate.
2. Choose the specific software to uninstall and the device to perform the action on.
3. Commence the uninstallation process.
4. The relevant ticket in ImmyBot is updated automatically once the uninstallation is complete.

## Crate prerequisites

* Your [ImmyBot integration](../../configuration/integrations/integration-guides/immybot-integration-setup.md) with Rewst must successfully be set up before unpacking this Crate.
* You'll need a successfully installed PSA integration for one of the following PSAs:
  * [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)
  * [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
  * [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
  * [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
  * [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)&#x20;

### Unpack the Uninstall Ad-Hoc Software Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Uninstall Ad-Hoc Software`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-17 at 10.42.46 AM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Choose your relevant PSA from the drop-down selector.
6. Click **Continue**.
7. Note the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. This is defaulted to on for the Crate. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
8. Click **Unpack**.

### Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[ROC] ImmyBot - Uninstall Ad-Hoc Software`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains your relevant device. This will launch the form in a new tab.
5. Select the ticket number from the drop-down selector. Alternatively, leave the **Ticket Number** field blank to create a new ticket.
6. Choose which environment to pull the software list from: **Global** or **Local**.
7. Choose the device to uninstall the software from via the **Choose Device** drop-down selector.
8. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-17 at 10.57.47 AM.png" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
