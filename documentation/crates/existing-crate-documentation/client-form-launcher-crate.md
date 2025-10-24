# Client Form Launcher Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Client Form Launcher Crate do?

The Client Form Launcher Crate allows for browsing of existing Rewst forms by customer and form name, and adding a link to the form to existing service tickets for such customer.

### How the Crate works

* The Crate monitors forms using trigger criteria to identify which service ticket links to attach.
* Forms are filtered based on predefined criteria such as customer name, form name, type/subtype, or other attributes.
* When a matching form is found, it automatically inserts clickable links for the form.

The automation kicks off via form submission:

1. Fill out the form.
2. Submit the form.
3. The Crate's workflow kicks off upon form submission, which acts as a trigger.

## Unpack the Client Form Launcher Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Client Form Launcher`.

    \
    ![](<../../../.gitbook/assets/Screenshot 2025-10-24 at 12.52.07 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on under **Configure Triggers**.\
   Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one.  You may also set activation to certain [tags](../../settings/tags-in-rewst.md).&#x20;
7. Click **Unpack**.

### Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `Get Form Links and Add to Ticket`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5.  Fill out the form as follows:

    1. **Organization** - choose the relevant organization from the drop-down selector
    2. **Form** - choose the relevant form from the drop-down selector
    3. **Add Link to PSA Ticket** - select **Yes** or **No** to denote if you wish to add a link to this form to the selected open ticket

    \
    ![](<../../../.gitbook/assets/image (196).png>)
6. Click **Submit** to run the workflow. The workflow will run and automatically add notes to your PSA with the results of the software operation.

### Test the Crate

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[[Rewst Master v3] PSA: Update Ticket – Actual`.\


    <figure><img src="../../../.gitbook/assets/image (195).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.&#x20;
4. Click **Test** in the top right corner of the Workflow Builder Canvas.
5. Click **Test**.
6. Allow the workflow to run.
7. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
