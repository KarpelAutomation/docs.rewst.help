# Onboarding Crate process overview

## **Workflow process overview**

Once a form is submitted, the Microsoft: User Onboarding Crate executes the following steps:

### **1. Form submission and validation**

* The process starts when a user submits the **\[Crate] Microsoft: User Onboarding** form.
* The workflow checks if the user already exists in AD or Azure AD.
* The form captures necessary user details, including personal information, group memberships, licensing, and security settings.
* PSA integration retrieves the user's location, if available.
* If the New User Approval System is enabled, an approval request is sent before proceeding.
* All required fields are validated before proceeding.

### **2. Ticket creation and management**

* If no ticket exists, a new one is created.
* If a ticket already exists, it is updated with onboarding progress.

### **3. User account creation**

* The user account is created based on the selected identity provider:
  * On-Prem AD Only: A new AD account is created.
  * Azure AD Only: A new Entra ID (Azure AD) account is created.
  * Hybrid with Sync: A new AD account is created and synced to Azure AD.
  * Hybrid with No Sync: Separate accounts are created in both directories.

### **4. Group and license assignments**

* Security groups are assigned in AD or Azure AD.
* Microsoft 365 licenses are applied via direct assignment or group membership.
* Shared mailbox permissions are configured if applicable.

### **5. Credential and notification handling**

* A secure temporary password is generated.
* The password is securely stored in PSA, ITGlue, Hudu, or sent via email or SMS.
* The user’s manager may optionally be notified of credential details.

### **6. Ticket update and completion**

* Final provisioning details are logged in the PSA ticket.
* The onboarding process is marked complete, and workflow logs are stored.

Ensure that password handling policies align with company security policies.

## **Workflow breakdown by identity provider type**

{% hint style="info" %}
Expand each of the provider types below to see their individual workflow breakdown.
{% endhint %}

<details>

<summary> <strong>On-premise AD only</strong></summary>

* Main workflow: Creates a user in Active Directory.
* Subworkflows:
  * Assigns security groups.
  * Configures mapped drives and home directories.
  * The password is sent via email, SMS, or documented in ITGlue, Hudu, or the PSA system.
  * Updates PSA ticket with user details.

</details>

<details>

<summary>Azure Active Directory only</summary>

* Main workflow: Creates a user in Azure AD (Entra ID).
* Subworkflows:
  * Assigns Microsoft 365 licenses.
  * Adds users to Microsoft 365 groups and shared mailboxes.
  * The password is sent via email, SMS, or documented in ITGlue, Hudu, or the PSA system.
  * Updates PSA ticket with user details.

</details>

<details>

<summary>Hybrid with AD sync</summary>

* Main workflow: Creates a user in Active Directory and syncs to Azure AD.
* Subworkflows:
  * Assigns both on-prem AD and Azure AD groups.
  * Applies Microsoft 365 licensing.
  * The password is sent via email, SMS, or documented in ITGlue, Hudu, or the PSA system.
  * Updates PSA ticket with sync confirmation.

</details>

<details>

<summary>Hybrid with no AD sync</summary>

* Main Workflow: Creates separate accounts in Active Directory and Azure AD.
* Subworkflows:
  * Assigns security groups for each directory independently.
  * Applies Microsoft 365 licensing.
  * The password is sent via email, SMS, or documented in ITGlue, Hudu, or the PSA system.
  * Updates PSA ticket with user details.

</details>

{% hint style="warning" %}
Ensure that the correct organizational variables are set for each configuration to avoid provisioning issues.
{% endhint %}
