# ConnectWise PSA Agreement Mapping Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the ConnectWise PSA Agreement Mapping Crate do?

Our ConnectWise PSA Agreement Mapping Crate synchronizes users into Connectwise PSA agreement additions by license, department, or group membership. This Crate allows a user to map user groupings to those agreements to facilitate automated billing reconciliation, based on a selection of criteria. Based on the user categorization, these can be mapped to existing additions in the agreements, to populate the **Quantity** field for those additions.

## Crate prerequisites

Rewst’s [ConnectWise PSA integration](../../configuration/integrations/integration-guides/connectwise-integration-setup.md) must be set up.

## Unpack the ConnectWise PSA Agreement Mapping Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `ConnectWise PSA Agreement Mapping`.\
   \
   ![](<../../../.gitbook/assets/image (146).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-27 at 12.36.16 PM.png" alt=""><figcaption></figcaption></figure>

5. Enter **Time Saved**.&#x20;
6. Click **Unpack**.

### Test the Crate

{% hint style="info" %}
A form unpacked from this Crate is used to maintain mappings between environments and PSA agreements. These are stored in organizational variables in Rewst, based on the form inputs.&#x20;
{% endhint %}

1. Navigate to **Automations > Workflows**.
2.  Search for **Map Organization Users to Manage Agreement**. Click on the workflow.<br>

    <figure><img src="../../../.gitbook/assets/image (46) (1).png" alt=""><figcaption></figcaption></figure>
3. Click the trigger drop-down and select **Form Trigger.**\
   \
   ![](<../../../.gitbook/assets/image (147).png>)
4. &#x20;Click ![](<../../../.gitbook/assets/image (201).png>).&#x20;
5. Click **View Direct URLs**.
6. Copy the form URL and paste it in a different browser window.\
   \
   ![](<../../../.gitbook/assets/image (47) (1).png>)
7. Fill out the form to add, modify, or remove an agreement--see the below section for information on what each selection does. Once the form is fully filled out, click **Submit**.

{% hint style="warning" %}
Note: Once an agreement has been added, a cron trigger runs daily to sync users for each company that has been mapped.
{% endhint %}

## **Map Organization Users to Manage Agreement form information**

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-27 at 5.11.29 PM.png" alt=""><figcaption></figcaption></figure>

From the MSP organization, use this form to **Add**, **Modify**, or **Remove** a mapping configuration. When adding or modifying a mapping, you'll make the following choices:

* **Customer**: This will be from the list of PSA clients
* **Agreement**: PSA Agreement which we will be mapping users to
* **Line Item**: Also known as the Agreement Addition, this is the item which will have its quantity determined by the collection process
* **Mapping Type**:
  * **Group**: Choose this to map users according to membership within an EntraAD Group
  * **License**: Use this to map the users according to a Microsoft 365 License that is applied to them
  * **Department**: This will use the **Department** field as it is filled in users' EntraAD properties
* Depending on the mapping type, you'll be presented with a field to choose from the options that are available in the specific customer's environment to map users by: **Group**, **License**, or **Department**.
* **Sync User Names into Description**: If you enable this, the actual names of the users will be put into the **Description** field of each addition.
* **Split User Names by**: This will allow you to choose between **Comma** and **New Line** to fine-tune how the list of users appears on the invoice. Commas will use fewer lines when you have many users, but new line may be easier to read.

## Limitations

* **Department** fields are free-form text. If you aren't automating the filling-in of these, there's always the chance that spellings or formatting may vary, resulting in incomplete data.
* The **Description** field in PSA Agreement Additions is limited to 6000 characters. Large sets of users can easily exceed that maximum and usernames won't appear in the Addition. When this happens, an email will be sent to the person who created the mapping to let them know that this is the case.&#x20;

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
