# Bulk Move Users to Specified OU Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Bulk Move Users to Specified OU Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Bulk Move Users to Specified OU Crate simplifies the task of moving Active Directory users to different organizational units by allowing you to select multiple users and then move them to the desired organizational unit in one automation, directly from your PSA ticket.&#x20;

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Scans the network to collect information on all relevant devices and infrastructure components
* Converts the collected data into a well-structured CSV file
* Generates a new ticket in your chosen PSA
* Attaches the generated CSV file to the PSA ticket for future reference or auditing

### Workflow breakdown

The workflow requires three input parameters: a ticket ID for tracking, the selected user with labels for identification, and the destination organizational unit with labels for the move operation.&#x20;

1. The workflow begins with the **noop** action in the BEGIN task, which serves as the starting point and processes the input parameters including ticket\_id, selected\_user\_wlabels, and destination\_ou\_wlabels.
2. The **BEGIN** task parses the input data by splitting the selected\_user\_wlabels and destination\_ou\_wlabels parameters to extract the user identifier, user label, destination OU identifier, and destination OU label, then publishes these values to the workflow context.
3. The workflow transitions to the **Move\_Selected\_User\_new** task, which executes the **\[Rewst Master v3] On-Prem: Run PowerShell on Org Domain Controller-Actual-No Really-This One** action to run a PowerShell script on the customer's domain controller that moves the specified Active Directory user to the designated organizational unit.
4. Upon successful completion of the user move operation, the workflow captures the results from the PowerShell execution and publishes the output message as ticket\_note\_results to the workflow context.
5. The workflow then proceeds to the **Update\_Ticket** task, which runs the **\[\[Rewst Master v3] PSA: Update Ticket - Actual** action to update the specified PSA ticket with an internal note documenting the user move attempt, including the user details, destination OU information, and the results from the PowerShell operation.
6. After successfully updating the ticket, the workflow transitions to the **FINISH** task, which executes a final **noop** action to mark the completion of the workflow process.

## Crate prerequisites <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

Before unpacking this Crate, you'll need to have successfully integrated your [RMM](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) and [PSA](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.

{% hint style="warning" %}
Note that this Crate does not work with SuperOps PSA. \
For RMM integration, you'll also need to import the appropriate PowerShell script component into your RMM platform to enable remote PowerShell execution on domain controllers.\
Your RMM must have agents installed on or access to your Active Directory domain controllers
{% endhint %}

## Unpack the Bulk Move Users to Specified OU Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Bulk Move Users to Specified OU`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (273).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on under **Configure Triggers**. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Use the Crate <a href="#use-the-crate" id="use-the-crate"></a>

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `Move User OU`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5. Choose the applicable options from the following drop-down selectors:
   * **Ticket ID** - This is the ticket where the notes regarding this operation are documented.
   * **User** - This is the user to be moved.
   * **Destination OU** - ​This is the destination where the user should be moved.
6. Click **Submit** to run the workflow. The workflow will run and automatically add notes to your PSA with the results of the software operation.

### Test the Crate <a href="#test-the-crate" id="test-the-crate"></a>

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] RMM: Move AD Users to Specified OU`.\
    &#x20;&#x20;

    <figure><img src="../../../.gitbook/assets/image (274).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Click **Test** in the top right corner of the builder canvas.
5. Click **Test**.
6. Allow the workflow to run.
7. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.
8. Verify that the specified users have been moved to the target organizational unit. Also, confirm that no users were moved incorrectly.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
