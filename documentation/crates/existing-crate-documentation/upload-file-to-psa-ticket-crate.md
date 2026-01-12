# Upload File to PSA Ticket Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Upload File to PSA Ticket Crate do?

Our Upload File to PSA Ticket Crate automatically identifies the relevant files based on specific criteria and uploads raw file contents to the corresponding PSA ticket. It is compatible with a wide range of file formats. The workflow provides a unified interface for uploading files to tickets across three different PSA platforms, automatically routing to the correct integration based on the organization's default PSA configuration.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* The Crate identifies raw file contents based on set parameters or user directives.
* The identified files are attached to the designated PSA ticket.
* Details of the file upload such as filename and timestamp are noted in the ticket for a comprehensive audit trail.

### Workflow breakdown <a href="#unpack-the-find-inactive-computers-in-rmm-crate" id="unpack-the-find-inactive-computers-in-rmm-crate"></a>

1. The workflow begins when triggered with four required inputs: file, title, ticket\_id, and attachment\_name.
2. The **BEGIN** task executes the **noop** action, which serves as a flow control point to determine which PSA system to use based on the organization's configuration.
3. The workflow evaluates the organization variable default\_psa to determine which PSA integration path to follow, using three conditional transitions.
4. If the default\_psa variable equals "datto\_psa", the workflow transitions to the **datto\_psa\_datto\_psa\_api\_request** task which executes the **Datto PSA API Request** action to upload the file as a Base64-encoded attachment to the specified Datto PSA ticket.
5. If the default\_psa variable equals "cw\_manage", the workflow transitions to the **workflows\_cwm\_upload\_document\_to\_ticket** task which executes the **CWM\_UPLOAD\_DOCUMENT\_TO\_TICKET** action to upload the document to the specified ConnectWise Manage ticket.
6. If the default\_psa variable equals "halo\_psa", the workflow transitions to the **halo\_psa\_add\_or\_update\_attachments** task which executes the **Add or Update Attachments** action to upload the file as a Base64-encoded attachment to the specified Halo PSA ticket.
7. Each PSA-specific task uses the provided inputs to construct the appropriate API request, including the ticket ID, file data converted to Base64 format, attachment name, and title where applicable.
8. Upon successful completion of the selected PSA upload task, the workflow terminates with the file successfully attached to the specified ticket in the organization's configured PSA system.

## Crate prerequisites <a href="#unpack-the-find-inactive-computers-in-rmm-crate" id="unpack-the-find-inactive-computers-in-rmm-crate"></a>

This Crate requires one or more of the following PSAs to be successfully integrated with Rewst before unpacking:

* [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)

## Unpack the Upload File to PSA Ticket Crate <a href="#unpack-the-find-inactive-computers-in-rmm-crate" id="unpack-the-find-inactive-computers-in-rmm-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Upload File to PSA Ticket`.​



    &#x20;![](<../../../.gitbook/assets/image (323).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Click **Unpack**.

### Test the Crate

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[ROC] PSA: Upload File To Ticket`.



    <figure><img src="../../../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.&#x20;
4. Click **Test** in the top right corner of the Workflow Builder Canvas.
5. Fill in the following fields:
   * **file** - This is the raw data
   * **title** - Enter the title for the raw data
   * **ticket\_id** - Enter the unique identifier assigned to support ticket
   * **attachment\_name** - Add the file extension into the name
6. Click **Test**.
7. Check in your PSA to see if the file is uploaded to the ticket as expected.&#x20;
8. If the file isn't uploaded, check the workflow's results for the error and contact Rewst Support.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
