# Consolidate and Manage Duplicate Configurations Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find this Crate in our Crate Marketplace.
{% endhint %}

## What does the Consolidate and Manage Duplicate Configurations Crate do?

This Crate identifies duplicate configurations in ConnectWise PSA and ensures that only the latest version, based on last updated device information, is retained. It can also remediate the data if needed.

### How the Crate works

* The workflow **s**earches through all configurations in ConnectWise PSA for duplicates.
* It uses the last updated device information to identify the most recent configuration.
* It keeps the latest configuration and deletes the duplicates.
* Optionally, use the last updated device information to correct any discrepancies in the configuration.

## Crate prerequisites

This Crate works with our [ConnectWise PSA integration](../../configuration/integrations/integration-guides/connectwise-integration-setup.md). Before unpacking, you'll need to have successfully integrated your ConnectWise PSA with Rewst.

## Unpack the Consolidate and Manage Duplicate Configurations Crate

1. Navigate to **Crates > Crate Marketplace** in the Rewst platform.
2. Search for `Consolidate and Manage Duplicate Configurations`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-22 at 4.57.49 PM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Note that you have the option under the Form Submission accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), trigger criteria, or for integration overrides. Ensure that **Enabled** is toggled o&#x6E;**.**
6. Click **Unpack Crate**.

### Use the Clean up Global Address List from Disabled Users Crate

1. Navigate to **Automations > Forms**.
2. Search for `[Form Name - This will be indicated on the Crate's details page]`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click the form link for your desired organization. This will open it in a new browser tab.
5. Choose the organization you'd like to run the form on from the **Client** drop-down selector.
6. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
