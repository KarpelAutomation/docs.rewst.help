# 1Stream Technician Toolbox Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

### **What does the 1Stream Technician Toolbox Crate do?**

The 1Stream Technician Toolbox Crate allows you to launch Rewst forms directly from within the 1Stream interface. Improve response times, reduce manual data entry, and increase service desk efficiency. When configured, technicians can open relevant Rewst forms— such as password reset, onboarding, offboarding, MFA reset, or group membership forms— from within 1Stream with ticket, company, and contact data automatically populated from the PSA. This enables technicians to quickly execute automations without switching between multiple tools or windows. The Crate is flexible, allowing for additional forms to be added in the future by customizing the included workflow logic.

### **How the Crate works**

* The Crate is triggered through a webhook trigger that's called when a technician in 1Stream selects a Rewst action, such as User Offboarding or Password Reset.
* When invoked, 1Stream passes key data to Rewst through a screen pop URL.
* Rewst then launches the associated form for the selected workflow and pre-fills as many of the form fields as possible with the related information from the PSA.
* Once the technician completes and submits the form in Rewst, the workflow corresponding to that form executes as normal.

{% hint style="info" %}
If additional Crates are added later, this workflow can be extended to include those new forms with minimal changes to the core setup.
{% endhint %}

### **Supported Crates and prerequisites**

#### Rewst forms currently supported in the Crate

* **password\_reset** - unpacked from the [Change a User's Password Crate](change-a-users-password-crate.md)
* **user\_onboarding** - unpacked from the [Microsoft: User Onboarding Crate](microsoft-user-onboarding-crate-v2/)&#x20;
* **user\_offboarding** - unpacked from the [Microsoft: User Offboarding Crate](microsoft-user-offboarding-crate.md)
* **reset\_mfa** - unpacked from the [Reset Microsoft MFA Crate](reset-microsoft-mfa-crate.md)
* **group\_membership** - unpacked from the [Add or Remove Group Membership Crate](add-or-remove-group-membership-crate.md)

#### **Rewst prerequisites**

Ensure that the following integrations are already configured and [mapped](https://docs.rewst.help/documentation/configuration/integrations#how-to-map-organizations-org-mapping) in Rewst before using this Crate:

* Your [PSA integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations)&#x20;
* Each of the supported forms is unpacked from its relevant Crate and added to your Rewst instance. The specified Crates must be unpacked before unpacking this 1Stream Crate. Otherwise, clicking the link will take you directly to the relevant Crate so you can unpack it.
* The specified Crates containing the supported forms must be configured as per their individual specifications in order to function when submitted.

#### **1Stream prerequisites**

Before unpacking this Crate, ensure that the following are set up in your 1Stream interface:

* PSA Integration configured in 1Stream - This allows 1Stream to pass ticket, contact, and company information to Rewst.
* Access to the 1Stream administration menu - You’ll need administrative permissions to modify Connected Accounts and CRM settings.
* Partner portal access - You'll need the ability to log in to 1Stream via IQ / Integrations Portal.

{% hint style="info" %}
Note that since you can choose which of the supported forms is used for 1Stream, the Rewst prerequisite checker in your Crate details page will not block you from unpacking the 1Stream Technician Toolbox Crate if the prerequisite Crates needed to unpack their relevant forms are not successfully unpacked in Rewst. To determine if you have these Crates and forms unpacked:

1. Determine which forms you wish to use for the 1Stream Technician Toolbox Crate.
2. Navigate to **Crates > Crate Marketplace** in the left side menu of your Rewst platform.
3. Search for each of the Crates related to your desired forms.
4. Ensure that their status is listed as **Unpacked**.
5. Click on that Crate's **What's being unpacked** tab of the Crate details page.
6. Scroll to the **Forms** section. Here you'll see a clickable link to the form for that Crate.
{% endhint %}

### **Unpack the 1Stream Technician Toolbox Crate**

1. Navigate to **Crates > Crate Marketplace** in the left side menu of your Rewst platform.
2. Search for `1Stream Technician Toolbox`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-11-04 at 10.01.45 AM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Expand the **Webhook** accordion menu under **Configure Triggers.**
6. Ensure that **Enabled** is toggled on. Note that you have the option to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), organizations, or [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md).
7. Click **Unpack**.

### **Configure 1Stream and Rewst**

1. Log in to 1Stream.
2. Click the **IQ / Integrations Portal** link under **Partners**.

<figure><img src="../../../.gitbook/assets/image (231).png" alt=""><figcaption></figcaption></figure>

3. Click **Administration >** **Manage Organization**.

<figure><img src="../../../.gitbook/assets/image (232).png" alt=""><figcaption></figcaption></figure>

4. Scroll down to **Connected Account and CRM settings**.
5. Click <img src="../../../.gitbook/assets/Screenshot 2025-11-04 at 10.28.05 AM.png" alt="" data-size="line">.
6. Choose **Rewst** from the **CRM Platform** drop-down selector in the dialog that appears.\
   ![](<../../../.gitbook/assets/Screenshot 2025-11-04 at 10.28.31 AM.png>)
7. Click **Save**.
8. Optionally, add an **API Key**. This would be used for the specific webhook in the Crate's workflow.
   1. Click <img src="../../../.gitbook/assets/Screenshot 2025-11-04 at 10.28.05 AM.png" alt="" data-size="line"> under the **Client API Keys** menu.
   2. Enter any desired value into the **Reference Name** field.
   3. Click **Save**.
   4. Copy the value for the API Key. Once you navigate away from the dialog that displays this information, you won't be able to view the key again.
9. Scroll down to the **Screen Pop URLs** submenu.
10. Click <img src="../../../.gitbook/assets/Screenshot 2025-11-04 at 10.28.05 AM.png" alt="" data-size="line">. Enter the name of the form you will be using into the **Link Name** field. Click **Save**.
11. Set the **Link Type** to **Custom**.&#x20;
12. Set the **Status** to **Active**, and **Do Screen Pop** to **Yes**.\
    ![](<../../../.gitbook/assets/Screenshot 2025-11-04 at 10.35.29 AM.png>)
13. Enter each of the URLs referenced in the table below into the **Link Template** field, replacing `{rewst_webhook_url}` with your actual Rewst webhook URL. This can be found by navigating to the `[REWST - TASK] 1Stream Technician Toolbox` workflow unpacked with the Crate, opening the workflow's settings, and scrolling to the **Trigger Configuration** menu. Then, click **View Webhook URLs**.

<figure><img src="../../../.gitbook/assets/image (233).png" alt=""><figcaption><p>Example webhook URL</p></figcaption></figure>

| Form Name        | URL Format                                                                                                       |
| ---------------- | ---------------------------------------------------------------------------------------------------------------- |
| Password Reset   | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=password_reset`   |
| User Onboarding  | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=user_onboarding`  |
| User Offboarding | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=user_offboarding` |
| Reset MFA        | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=reset_mfa`        |
| Group Membership | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=group_membership` |



14. Optionally, add an [organizaton variable](../../configuration/organization-variables.md#manually-add-a-new-organization-variable) in Rewst.&#x20;
    1. If you set an API Key in 1Stream, you’ll need to mirror it as a [secret org variable](../../configuration/organization-variables.md#create-secret-values-for-organization-variables) in Rewst.
    2. Open the webhook trigger in the `[REWST - TASK] 1Stream Technician Toolbox` workflow.
    3. Select this secret key.&#x20;
    4. Click **Save**.

| Field            | Value                                                  |
| ---------------- | ------------------------------------------------------ |
| **Name**         | Any name                                               |
| **Value**        | Same key you used in 1Stream                           |
| **Category**     | `secret`                                               |
| **Organization** | Your top-level organization (check **Use as Default**) |



### **Use the 1Stream Technician Toolbox Crate**

Once setup is complete, technicians can trigger Rewst forms directly from 1Stream while viewing or managing a contact.

When a screen pop URL is clicked:

1. A new browser tab opens to the corresponding Rewst form.
2. The form auto-fills information from the PSA.
3. The technician completes any additional required fields and clicks **Submit**.
4. The associated Rewst workflow for that Crate executes.

After the first use, verify that forms populate correctly and trigger their workflows as expected.

If failures occur, review the **workflow execution logs** in Rewst for details.

### **Crate customization**

You can extend the functionality of the 1Stream Technician Toolbox Crate by adding new Rewst supported forms to the workflow.

#### To add a new form:

1. In Rewst, open the `[REWST - TASK] 1Stream Technician Toolbox` workflow.
2. Copy one of the existing form handling branches— for example, `password_reset`.
3. Update the **form\_name** parameter in the condition node to match your new form’s internal name.
4. In 1Stream, add a new **Screen Pop URL** entry following the same URL format, replacing the `form_name` value with the new form’s name.
5. Test the new link from 1Stream to confirm that it opens your desired Rewst form and auto-fills as expected.

You can repeat this process for as many forms as desired. The logic is designed to be modular, so additional forms can be integrated without editing the core connection between 1Stream and Rewst.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
