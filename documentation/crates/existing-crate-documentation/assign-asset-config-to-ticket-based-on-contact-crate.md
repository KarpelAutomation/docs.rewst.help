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

### Workflow breakdown

Throughout the workflow, error handling routes failed operations to failure detection tasks that log appropriate error messages before terminating.

1. The workflow begins with the **BEGIN** task which initializes an empty automation log array to track the workflow execution progress.
2. The workflow proceeds to the PSAs task which determines the configured PSA system by checking organization variables or context variables for the PSA type.
3. Based on the PSA type detected, the workflow branches to one of the supported PSA systems including Datto PSA, ConnectWise PSA, or Halo PSA, while unsupported PSAs like Kaseya BMS and Freshdesk are routed to a **Not Supported** task.
   1. For ConnectWise PSA, the workflow retrieves the Rewst organization ID by looking up the ConnectWise company ID in organization variables, then extracts the contact logon name from the ticket's contact email address.
   2. For Datto PSA, the workflow retrieves the Rewst organization ID using the Datto company ID, then fetches contact details from the PSA to extract the logon name.
   3. For Halo PSA, the workflow retrieves the Rewst organization ID using the Halo client ID, then sets variables to extract the contact logon name from the user email.
4. The workflow then retrieves configuration items from the respective PSA system by querying for configurations associated with the company on the ticket.
5. Next, the workflow determines the configured RMM system by checking organization variables for the default RMM type.
6. Based on the RMM type, the workflow branches to retrieve RMM site information and then queries the RMM for device lists, supporting Datto RMM, ConnectWise Automate, NinjaOne, and Kaseya VSA.
7. For each RMM system, the workflow retrieves the appropriate site or organization ID from Rewst organization variables, then lists devices from that RMM instance.
8. The workflow filters the device list to find devices where the contact logon name matches the last logged in user, creating a list of matched devices.
9. The workflow then returns to PSA-specific logic to match the devices found in the RMM with configuration items in the PSA by comparing device names with configuration item names or reference titles.
   1. For ConnectWise PSA, it matches configurations where the device name appears in the configuration name and the configuration status is not inactive.
   2. For Datto PSA, it matches configurations where the device name appears in the reference title and the configuration is active, selecting the first match.
   3. For Halo PSA, it matches configurations where device names appear in various asset fields like inventory number or key fields, excluding inactive configurations.
10. The workflow performs a configuration count check to determine if any matching configurations were found.
11. If matching configurations are found, the workflow updates the ticket with the matched configuration items using PSA-specific update methods.
    1. For ConnectWise PSA, it uses the **Add Configuration to Service Ticket** action with the matched configuration IDs in a loop for each matched config.
    2. For Datto PSA, it uses the **Update Ticket** action to set the **configurationItemID** field with the matched configuration ID.
    3. For Halo PSA, it uses the **HaloPSA API Request** action to POST the matched configurations as assets to the ticket.
12. If the ticket update succeeds, the workflow logs success and proceeds to the END task.
13. If no matching configurations are found, the workflow logs this information and proceeds directly to the **END** task without making any changes.
14. The workflow concludes at the **END** task, having either successfully attached configuration items to the ticket based on the last logged-in user or logged why no configurations could be matched.

## Crate prerequisites

Prior to unpacking this Crate, you'll need to have successfully integrated one of the following PSAs with Rewst:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)

You'll also need to have successfully integrated one of the following RMMs with Rewst:

* [Datto RMM](../../configuration/integrations/integration-guides/datto-rmm-integration-setup.md)
* [ConnectWise Automate](../../configuration/integrations/integration-guides/connectwise-automate-integration-setup.md)
* [NinjaOne](../../configuration/integrations/integration-guides/ninjaone-integration-setup.md)
* [Kaseya VSA](../../configuration/integrations/integration-guides/kaseya-vsa-integration-setup.md)

## Unpack the Assign Asset/Config to Ticket Based on Contact Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Assign Asset/Config to Ticket Based on Contact`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-24 at 2.47.12 PM.png>)<br>
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
