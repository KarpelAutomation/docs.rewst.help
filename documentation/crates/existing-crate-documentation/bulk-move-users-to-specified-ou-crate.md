# Bulk Move Users to Specified OU Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

### What does the Bulk Move Users to Specified OU Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Bulk Move Users to Specified OU Crate simplifies the task of moving users to different organizational units by allowing you to select multiple users and then move them to the desired organizational unit in one go directly from your PSA ticket.

#### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Scans the network to collect information on all relevant devices and infrastructure components
* Converts the collected data into a well-structured CSV file
* Generates a new ticket in your chosen PSA
* Attaches the generated CSV file to the PSA ticket for future reference or auditing

### Unpack the Bulk Move Users to Specified OU Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Bulk Move Users to Specified OU`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (234).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on under **Configure Triggers**. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

#### Use the Crate <a href="#use-the-crate" id="use-the-crate"></a>

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `Move User OU`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5. Choose the applicable options from the following drop-down selectors:
   * **Ticket ID** - This is the ticket where the notes regarding this operation are documented.
   * **User** - This is the user to be moved.
   * **Destination OU** - ​This is the destination where the user should be moved.
6. Click **Submit** to run the workflow. The workflow will run and automatically add notes to your PSA with the results of the software operation.

#### Test the Crate <a href="#test-the-crate" id="test-the-crate"></a>

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] RMM: Move AD Users to Specified OU`.\
    &#x20;&#x20;

    <figure><img src="../../../.gitbook/assets/image (235).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Click **Test** in the top right corner of the builder canvas.
5. Click **Test**.
6. Allow the workflow to run.
7. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.
8. Verify that the specified users have been moved to the target organizational unit. Also, confirm that no users were moved incorrectly.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
