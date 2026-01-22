# Configure ConnectWise PSA Agreement for Duo Sync Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Configure ConnectWise PSA Agreement for Duo Sync Crate do?

Our Configure ConnectWise PSA Agreement for Duo Sync Crate provides a simple form-based interface for easy variable configuration. It prepares your system for the Duo-CWM User Sync Crate and ensures secure and accurate input of API keys and other sensitive data. You'll only need to perform the setup once and you're good to go for future syncs.&#x20;

This Crate only deals with configuring variables and does not perform the actual sync operation. Use this as a preparatory step before running the [Sync Duo User Counts with ConnectWise PSA Agreement Crate](sync-duo-user-counts-with-connectwise-psa-agreement-crate.md).

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* The Crate sets up the necessary organization variables for ConnectWise PSA integration
* You can use forms to add, modify, or remove agreement mappings
* The system automatically syncs users based on your mapping configuration
* A scheduled process ensures that mappings stay current

The Crate workflow is triggered by the Duo Agreement Mapping Form.

## Crate prerequisites

The following integrations must be set up before unpacking this Crate:

* [ConnectWise PSA integration](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Duo integration](../../configuration/integrations/integration-guides/duo-integration-setup.md)

## Unpack the Configure ConnectWise PSA Agreement for Duo Sync Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Configure ConnectWise PSA Agreement for Duo Sync Crate`.<br>

    <img src="../../../.gitbook/assets/Screenshot 2026-01-21 at 5.08.45 PM.png" alt="" data-size="original"><br>
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on under **Configure Triggers**. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Use the Crate <a href="#use-the-crate" id="use-the-crate"></a>

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[ROC] ConnectWise Manage - Map & Sync Duo Users w/ Agreement`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the link for the organization that contains the user you wish to manage. This will launch the form in a new tab.
5. Choose the applicable options from the following drop-down selectors:
   * **Company** - Organization that contains the user you wish to manage
   * **Agreement** - PSA Agreement which we will be mapping users to.
6. Click **Submit** to run the workflow. The workflow will run and automatically add notes to your PSA with the results of the software operation.

### Test the Crate

1. Navigate to **Automations > Workflows**.
2. Search for `[ROC] ConnectWise Manage - Duo Agreement Mapping - Set Org Variables.`&#x20;
3.  Click on the workflow to view it in the Workflow Builder.<br>

    <figure><img src="../../../.gitbook/assets/image (328).png" alt=""><figcaption></figcaption></figure>
4. &#x20;Click ![](<../../../.gitbook/assets/image (201).png>).&#x20;
5. Click **View Direct URLs**.
6.  Copy the form URL and paste it in a different browser window.<br>

    <figure><img src="../../../.gitbook/assets/image (330).png" alt=""><figcaption></figcaption></figure>
7. Fill out the form accordingly--see the below section for information on what each selection does. Once the form is fully filled out, click **Submit**.

{% hint style="warning" %}
Note: Once an agreement has been added, a cron trigger runs daily to sync users for each company that has been mapped.
{% endhint %}

## **Map Organization Users to Manage Agreement form information**

<figure><img src="../../../.gitbook/assets/image (329).png" alt=""><figcaption></figcaption></figure>

From the MSP organization, use this form to modify a mapping configuration. When modifying a mapping, you'll make the following choices:

* **Company**: This will be from the list of PSA clients.
* **Agreement**: This is the PSA Agreement, which we will be mapping users to.
* **Line Item**: Also known as the Agreement Addition, this is the item which will have its quantity determined by the collection process.
* **Sync User Names into Description**: If you enable this, the actual names of the users will be put into the **Description** field of each addition.
