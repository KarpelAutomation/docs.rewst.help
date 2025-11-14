# Configure Out of Office on Mailbox Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Configure Out of Office on Mailbox Crate do?

This Crate lets you select a user to enable, disable, or schedule both internal and external out-of-office messages. All actions are duly logged in a ticket within your PSA for full audit capabilities.

* Provide an effortless way to manage out-of-office messages for users
* Ensure that all out-of-office management actions are tracked and auditable
* Enhance operational efficiency by automating the out-of-office message handling process

### How the Crate works

* You use the form unpacked with the Crate to select the user whose OoO settings you wish to modify.
* Choose to enable, disable, or schedule the message as required.
* The completed form submission kicks off the workflow.
* The corresponding action is automatically logged in a PSA ticket, providing a reliable record for future audits.

## Crate prerequisites

* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.
* For ticketing functionality, set up one of the following PSA integrations:
  * [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
  * [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
  * [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
  * [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)
  * [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)

## Unpack the Configure Out of Office on Mailbox Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2. Search for `Configure Out of Office on Mailbox`.\
   \
   ![](<../../../.gitbook/assets/image (129).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Choose your relevant PSA from the drop-down selector.
6. Click **Continue**.
7. Note that you have the option under the Form Submission accordion menu to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
8. Click **Unpack**.

### Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `M365: Set Out of Office Message for Users`.
3. Click **⋮** **> Usages > View Direct URLs.**
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5. Fill out the form as follows:
   1. The **Client** drop-down selector should already be populated with the organization name for your user.&#x20;
   2. Leave the **Ticket** field blank to create a new ticket, or select the existing ticket from the drop-down selector.
   3. Use the **Users** drop-down selector to choose one or more users for your form submission.
   4. Click **Submit**.\
      \
      <img src="../../../.gitbook/assets/Screenshot 2025-08-18 at 3.57.25 PM.png" alt="Form interface titled “A totallyBrand New Company – [ROC] M365: Set Out of Office Message for Users Form.” It contains three dropdown fields: “Client” (required, pre-filled with “A totallyBrand New Company”), “Ticket” (empty, for selecting or creating a ticket), and “Users” (required, empty, for selecting mail-enabled users). Each dropdown has a refresh button on the right. At the bottom, there is a purple “Submit” button. The background is dark with white text." data-size="original">

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
