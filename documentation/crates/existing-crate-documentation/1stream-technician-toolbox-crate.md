# 1Stream Technician Toolbox Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

### **What does the 1Stream Technician Toolbox Crate do?**

The **1Stream Technician Toolbox Crate** allows mutual customers of **Rewst** and **1Stream** to launch Rewst forms directly from within the 1Stream interface.

When configured, technicians can open relevant Rewst forms (e.g., password reset, onboarding, offboarding, MFA reset, group membership) from within 1Stream with ticket, company, and contact data automatically populated from the PSA. This enables technicians to quickly execute automations without switching between multiple tools or windows.

This integration helps improve response times, reduce manual data entry, and increase service desk efficiency. The Crate is flexible, allowing for additional forms to be added in the future by customizing the included workflow logic.

***

### **How the Crate works**

The Crate is triggered through a webhook trigger that is called when a technician in 1Stream selects a Rewst action (such as _User Offboarding_ or _Password Reset_).

When invoked, 1Stream passes key data to Rewst through a Screen Pop URL.

Rewst then launches the associated form for the selected workflow and pre-fills as many of the form fields as possible with the related information from the PSA.

Once the technician completes and submits the form in Rewst, the workflow corresponding to that form (e.g., user onboarding, offboarding, etc.) executes as normal.

If additional Crates are added later, this workflow can be extended to include those new forms with minimal changes to the core setup.

***

### **Supported Crates and Prerequisites**

#### Supported Forms

* **password\_reset**
* **user\_onboarding**
* **user\_offboarding**
* **reset\_mfa**
* **group\_membership**

***

#### **Rewst Prerequisites**

Ensure that the following integrations are already configured and mapped in Rewst before using this crate:

* **PSA Integration** (e.g., ConnectWise, Autotask, etc.)
* The specified crates must be unpacked, otherwise, clicking the link will take you directly to the relevant crate so you can unpack it.
* The specified crates must be configured as per their individual specifications in order to function when submitted.

***

#### **1Stream Prerequisites**

Before configuring the Rewst connection, ensure the following are set up in 1Stream:

1.  **PSA Integration configured in 1Stream**

    This allows 1Stream to pass ticket, contact, and company information to Rewst.
2.  **Access to the 1Stream Administration menu**

    You’ll need administrative permissions to modify Connected Accounts and CRM settings.
3.  **Partner Portal Access**

    Ability to log in to 1Stream via **IQ / Integrations Portal**.

***

### **Unpack the 1Stream Technician Toolbox Crate**

1. Navigate to **Crates → Crate Marketplace** in the Rewst platform.
2. Search for **1Stream Technician Toolbox**.
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Expand the trigger accordion and ensure that **Enabled** is toggled on.
6. Click **Unpack** to complete setup.

<figure><img src="../../../.gitbook/assets/image (230).png" alt=""><figcaption></figcaption></figure>

***

### **Configure 1Stream and Rewst**

#### 1. Log into 1Stream

* Click the **IQ / Integrations Portal** link under _Partners_.

<figure><img src="../../../.gitbook/assets/image (231).png" alt=""><figcaption></figcaption></figure>

#### 2. Access organization settings

* From the top menu, open the **Administration** dropdown.
* Choose **Manage Organization**.

<figure><img src="../../../.gitbook/assets/image (232).png" alt=""><figcaption></figcaption></figure>

#### 3. Connect Rewst

* Add Rewst under **Connected Account and CRM settings** .
* _(Optional)_ Add an **API Key** — you can define this as any value.

#### 4. Add Rewst Screen Pop URLs

Under **Screen Pop URLs**, set the **Link Type** to **Custom** and enter each of the following URLs (replace `{rewst_webhook_url}` with your actual Rewst webhook URL which can be found in the 1Stream Initial Webhook Trigger):

Example webhook URL:

<figure><img src="../../../.gitbook/assets/image (233).png" alt=""><figcaption></figcaption></figure>

You can find it by navigating to the `[REWST - TASK] 1Stream Technician Toolbox` workflow, clicking the **Gear Icon**, and selecting **View Webhook URLs**.

| Form Name        | URL Format                                                                                                       |
| ---------------- | ---------------------------------------------------------------------------------------------------------------- |
| Password Reset   | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=password_reset`   |
| User Onboarding  | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=user_onboarding`  |
| User Offboarding | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=user_offboarding` |
| Reset MFA        | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=reset_mfa`        |
| Group Membership | `{rewst_webhook_url}?ticket_id=@ticketid&company_id=@companyid&contact_id=@contactid&form_name=group_membership` |

***

#### 5. (Optional) Create an ORG Variable in Rewst

If you set an API Key in 1Stream, you’ll need to mirror it as a **Secret ORG Variable** in Rewst.

| Field            | Value                                                  |
| ---------------- | ------------------------------------------------------ |
| **Name**         | Any name                                               |
| **Value**        | Same key you used in 1Stream                           |
| **Category**     | `secret`                                               |
| **Organization** | Your top-level organization (check **Use as Default**) |

Then, open the webhook trigger in the `[REWST - TASK] 1Stream Technician Toolbox` workflow and select this secret key. Click **Save**.

***

### **Use the 1Stream Technician Toolbox Crate**

Once setup is complete, technicians can trigger Rewst forms directly from 1Stream while viewing or managing a contact.

When a Screen Pop URL is clicked:

1. A new browser tab opens to the corresponding Rewst form.
2. The form auto-fills information from the PSA.
3. The technician completes any additional required fields and clicks **Submit**.
4. The associated Rewst workflow for that crate executes.

After the first use, verify that forms populate correctly and trigger their workflows as expected.

If failures occur, review the **workflow execution logs** in Rewst for details.

***

### **Customization**

You can extend the functionality of the 1Stream Technician Toolbox Crate by adding new Rewst forms to the workflow.

#### To add a new form:

1. In Rewst, open the `[REWST - TASK] 1Stream Technician Toolbox` workflow.
2. Copy one of the existing form handling branches (e.g., `password_reset`).
3. Update the **form\_name** parameter in the condition node to match your new form’s internal name.
4. In 1Stream, add a new **Screen Pop URL** entry following the same URL format, replacing the `form_name` value with the new form’s name.
5. Test the new link from 1Stream to confirm that it opens your desired Rewst form and auto-fills as expected.

You can repeat this process for as many forms as desired. The logic is designed to be modular, so additional forms can be integrated without editing the core connection between 1Stream and Rewst.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
