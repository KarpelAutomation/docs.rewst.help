# Huntress EDR: AD Account Lockdown Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Huntress EDR: AD Account Lockdown Crate do?

This Crate identifies the last logged-on user from a compromised Huntress device and automatically adds a ticket note with a direct link to disable the corresponding Active Directory account.\
This is only applicable to non-administrator accounts.

### How the Crate works

1. The device name and Huntress organization name are parsed from the Isolated Critical EDR ticket title created by Huntress, using regex. You must have your PSA setup as an integration within huntress.
2. The correct Rewst organization ID is pulled from the mapped Huntress integration using the Huntress organization name.
3. It queries the RMM to identify the last logged-in user.
4. It pulls user group membership from Active Directory through PowerShell.
5. A webhook updates the ticket with a link to disable the user.
6. When clicked, a PowerShell script disables the user’s on-premises Active Directory account.
7. A note is added to the ticket confirming the action.
8. If the account belongs to an administrator group, it is not disabled.
9. The ticket is updated to indicate the account’s administrator status.

## Crate prerequisites

* Your PSA must be successfully integrated with Rewst before unpacking this Crate. \
  PSAs that are compatible with this Crate are:&#x20;
  * [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
  * [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
  * [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
  * [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
* Your RMM must be successfully integrated with Rewst before unpacking this Crate. RMMs that are compatible with this Crate are:&#x20;
  * [ConnectWise Automate](../../configuration/integrations/integration-guides/connectwise-automate-integration-setup.md)
  * [Datto RMM](../../configuration/integrations/integration-guides/datto-rmm-integration-setup.md)
  * [NinjaOne](../../configuration/integrations/integration-guides/ninjaone-integration-setup.md)
  * [Immybot](../../configuration/integrations/integration-guides/immybot-integration-setup.md)
  * [Kaseya VSA](../../configuration/integrations/integration-guides/kaseya-vsa-integration-setup.md)
  * [N-able N-Central](../../configuration/integrations/integration-guides/nable-integration-setup.md)
* Your Rewst [Huntress integration](../../configuration/integrations/integration-guides/huntress-integration-setup.md) must be set up and operational before unpacking this Crate.

## Unpack the Huntress EDR: AD Account Lockdown Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Huntress EDR: AD Account Lockdown` .\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-08-29 at 12.44.03 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack**.
5. Click **Continue**.
6. Choose the PSA that corresponds with your tool stack. Click on its accordion menu to expand its settings.
7. Toggle the trigger for your PSA on.
8. Click **Unpack**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-03 at 3.14.47 PM.png" alt=""><figcaption></figcaption></figure>

## Test the Crate

Huntress' documentation on how to simulate an EDR event can be found [here](https://support.huntress.io/hc/en-us/articles/30950483531539-EDR-ITDR-Incident-Simulation).&#x20;

1. Log in to your Huntress account.
2. Simulate an EDR incident to create a dummy ticket in your PSA.
3. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
4. Search for the workflow `[REWST - TASK] Huntress EDR: AD Account Lockdown`.
5. Click on the workflow to open it in the workflow builder.
6. Click to view workflow results.
7. Examine the results to ensure that actions were executed as expected.&#x20;
8. Return to your Huntress account. Check the ticket to confirm that it contains updated information after the running of the workflow.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
