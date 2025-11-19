# Update User Attributes (On-Prem/Azure) V2 Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Update User Attributes (On-Prem/Azure) V2 Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Update User Attributes (On-Prem/Azure) V2 Crate is used to update the users' attributes in Microsoft Entra, formerly known as Microsoft Azure, or on-premises. The Crate will automatically determines where to pull and update information from based on the configured primary identity provider. Currently, this Crate supports the following identify provider configurations:

* On-Prem only
* Microsoft Azure only
* On-Prem synchronized with Microsoft Entra

The supported identity providers are as follows:

* Microsoft Entra
* On-prem Active Directory

Hybrid environments without syncing are not supported at this time.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* The main point of execution for this crate is through a form, which is called \[REWST - CRATE] M365/On-Prem: Update On-Prem or Azure Attributes
* In the form, the submitter will select a user to update and the current values for the attributes will be displayed in the form.
* The submitter will submit the form and the workflow will attempt to update the values.

### Workflow breakdown

1\. The workflow begins execution with the START task, which initiates the process flow.

2\. The workflow examines the organization's primary identity provider variable to determine if Azure AD is configured as the identity provider.

3\. If Azure AD is the identity provider, the workflow executes the task to update user attributes in Microsoft Entra ID, handling both success and failure scenarios with appropriate logging.

4\. The workflow checks if the primary identity provider is configured as on-premises Active Directory—  on\_prem\_ad or on\_prem.

5\. If on-premises AD is the identity provider, the workflow executes the task to update user attributes in the on-premises AD environment, with proper error handling and logging.

6\. If any of the attribute update tasks fail, the workflow routes through a failure check task that handles the error condition before proceeding to completion.

7\. The workflow concludes by compiling automation logs from all executed tasks and publishing the final results, including status codes, success indicators, and comprehensive logging information.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Update User Attributes (On-Prem/Azure) V2 Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Update User Attributes (On-Prem/Azure) V2`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (283).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on under **Configure Triggers**. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Use the Crate <a href="#use-the-crate" id="use-the-crate"></a>

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[REWST - CRATE] M365/On-Prem: Update On-Prem or Azure Attributes`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5. Choose the user you'd like to run the form on from the **User to Update** drop-down selector.
6.  Update the following user attributes as necessary:

    * **User to Update**
    * **Display Name**
    * **Job Title**
    * **Department**
    * **Manager**
    * **Company Name**
    * **Office Number**
    * **Mobile Phone Number**
    * **Address**
    * **City**
    * **State**
    * **Zip**

    Take note that the fields default to `[Do Not Change],` and the current values for the attributes are  displayed and kept as-is. If `[Clear Value]` is selected, the value will be cleared.
7. Click **Submit** to run the workflow.&#x20;

### Test the Crate <a href="#test-the-crate" id="test-the-crate"></a>

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[REWST - PROC] Update User Attributes in IDP`.\
    &#x20;&#x20;

    <figure><img src="../../../.gitbook/assets/image (282).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Click **Test** in the top right corner of the builder canvas.
5. Click **Test**.
6. Allow the workflow to run.
7. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
