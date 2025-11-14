# Sync LastLoggedInUser to PSA Config Item Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Sync LastLoggedInUser to PSA Config Item Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Sync LastLoggedInUser to PSA Config Item Crate helps you keep track of the last login activities on your devices by enabling you to select a client and automatically sync the **LastLoggedIn** field for all RMM devices to update assets in your Datto Autotask PSA.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Uses the form input to choose the client you wish to sync
* Automatically updates the **LastLoggedIn** field for all RMM devices associated with the selected client
* Corresponding assets in the PSA are updated with this newly synced data

### Workflow breakdown

1. The workflow starts by executing a noop action that serves as the initial trigger point for the automation process.
2. Rewst retrieves all active configuration items from Datto Autotask PSA for the specified target organization, then filters the results to include only configuration item type 1 which represents computers and devices. Essential data is extracted including hostname, last logged-in user, current contact ID, and item ID for each device.
3. The workflow iterates through each configuration item using a custom Check Current Autotask Contact action to identify items that need contact updates, specifically targeting devices that either have no contact assigned or have an incorrect contact assignment. It filters out items that already have the correct contact properly assigned.
4. Rewst retrieves all active contacts from Datto Autotask PSA that belong to the target company to create a pool of potential contact matches.
5. The workflow processes the data to match the last logged-in user from each asset to corresponding contacts by comparing the username to the email prefix and checking against user-defined fields in contact records, then creates a mapping of assets to their correct contact IDs based on these matches.
6. The workflow performs the final step by iterating through each matched configuration item and updating it in Datto Autotask PSA to assign the correct contact ID to each asset based on who last logged into that device.

## Crate prerequisites

The [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/) integration must be successfully set up before unpacking this Crate.

### Unpack the Sync LastLoggedInUser to PSA Config Item Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Sync LastLoggedInUser to PSA Config Item`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (236).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on under **Configure Triggers**. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Use the Crate <a href="#use-the-crate" id="use-the-crate"></a>

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `AT Asset Owner Sync`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5. Choose the organization you'd like to run the form on from the **Client to Synchronize** drop-down selector.
6. Click **Submit** to run the workflow. The workflow will run and automatically add notes to your PSA with the results of the software operation.

### Test the Crate <a href="#test-the-crate" id="test-the-crate"></a>

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[Rewst Master v2] Assign Last Logged in User to AT Asset`.\
    &#x20;&#x20;

    <figure><img src="../../../.gitbook/assets/image (237).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Click **Test** in the top right corner of the builder canvas.
5. Choose the applicable options from the following drop-down selectors:
   * **Trigger Context Organization** - The applicable organization&#x20;
   * **target\_org** - A string variable or parameter that holds the textual identifier of the target organization
6. Click **Test**.
7. Allow the workflow to run.
8. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.
9. Verify that the PSA assets are up to date with RMM device data.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
