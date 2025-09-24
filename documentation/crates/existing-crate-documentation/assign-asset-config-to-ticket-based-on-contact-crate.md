# Assign Asset/Config to Ticket Based on Contact Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Assign Asset/Config to Ticket Based on Contact Crate do?

This Crate automates the task of associating tickets to correct devices by tagging tickets with the user's device, pulled from the Last Logged In field in your PSA.

### How the Crate works

1. The workflow extracts the Last Logged In field for the user associated with a ticket from the PSA.
2. It determines the correct device based on this data.
3. It automatically tags the ticket with the identified device, ensuring the ticket is correctly associated for any subsequent actions.

## Crate prerequisites

Prior to unpacking this Crate, you'll need to have successfully integrated one of the following PSAs with Rewst:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)

## Unpack the Assign Asset/Config to Ticket Based on Contact Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Assign Asset/Config to Ticket Based on Contact`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-24 at 2.47.12 PM.png>)\

3. Click on the Crate tile to open its details page.
4. Click **Unpack Crate**.
5. Choose your relevant PSA from the drop-down selector list.
6. Click **Continue**.
7. Make sure that only your relevant PSA is toggled to **Enabled.**&#x20;
8. If desired, add any trigger criteria or integration overrides to your PSA's accordion menu.
9. Click **Unpack**.



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
