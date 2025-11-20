# Microsoft Azure Tables Connection Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Microsoft Azure Tables Connection Crate do?

Along with a form to assist in the creation of the Azure tables instances, this Crate provides a subworkflow that can be used as a workflow action to interact with the data in tables, allowing full capabilities of Azure tables as a data storage mechanism within Rewst workflows.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

{% hint style="warning" %}
Using the form in this Crate will provision a Microsoft Azure Table storage account. Learn about the costs [here](https://azure.microsoft.com/en-us/pricing/details/storage/tables/) before proceeding.
{% endhint %}

## Unpack the Microsoft Azure Tables Connection Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Microsoft Azure Tables Connection`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-26 at 11.14.31 AM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.&#x20;
6. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](https://docs.rewst.help/documentation/automations/intro-to-triggers/trigger-criteria), or for integration overrides.
7. Click **Unpack**.&#x20;

### Use the form

1. Navigate to **Automations > Forms**.
2. Search for `Azure Tables: Create Table`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Copy the URL and paste it into a new tab or browser window.
5. Choose the action you'd like to take from the drop-down selector.&#x20;
6. Choose your subscription to deploy in from the **Azure Subscription** drop-down selector.
7. Choose if you want to create a new resource group or use an existing one.
8. Choose if you want to create a new storage account or use an existing one.
9. Choose your desired tier from the **Storage Account SKU** drop-down selector.
   1. **Locally Redundant Storage** - stores three copies of data within a single physical location in the primary region
   2. **Geo-Redundant Storage** - stores data in two regions with six total copies
   3. **Read-Access Geo-Redundant Storage** - same as above, but provides read-only access in the secondary region
   4. **Zone-Redundant Storage** - stores three copies of data across two to three facilities, either within a single region or across two regions
10. Enter a name for your new table in the **Table Name** field.
11. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-26 at 11.19.59 AM.png" alt=""><figcaption></figcaption></figure>

### Use the subworkflow

This Crate provides a [subworkflow](../../automations/subworkflows/) that can be used as a workflow [action](../../automations/actions-in-rewst/) to interact with the data in tables.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
