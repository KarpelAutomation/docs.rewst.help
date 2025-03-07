# Just in Time Admin Access Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Just in Time Admin Access Crate in our Crate Marketplace.
{% endhint %}

## What does the **Just in Time Admin Access** Crate do?

Our Just in Time Admin Access Crate provides Just-in-Time (JIT) administrative access, temporarily granting Global Admin rights in Microsoft 365, or domain admin rights in on-premises Active Directory though the use of a form.\


<figure><img src="../../.gitbook/assets/Screenshot 2025-02-12 at 11.08.59 AM (1).png" alt=""><figcaption><p>The Just in Time Admin Access Crate, as it appears in Crate Marketplace</p></figcaption></figure>

The Just in Time Admin Access Crate automates the following processes.

1. Granting Temporary Administrative Access
   * For Microsoft 365, it assigns Global Admin privileges for a specified duration.
   * For on-premises, it assigns Domain Admin rights within Active Directory.
   * It creates or re-enables accounts as needed.
2. Automatic Documentation
   * The user must select the ticket they are working on and provide a reason for requesting temporary admin access. This ensures proper oversight and accountability for the use of privileged access.
3. Automated Expiration & Cleanup
   * After the set duration:
     * Microsoft 365 accounts have Global Admin revoked, and are deleted.
     * On-premises accounts have Domain Admin removed, are disabled, and have their passwords reset.
   * Status updates are added to the ticket when access is granted and revoked.

## Why use the Just in Time Admin Access Crate?

This Crate is ideal for MSPs managing client environments securely and efficiently. It ensures that admin access is time-limited, reducing security risks while streamlining support operations. Common use cases include:

* Emergency troubleshooting – Quickly assign temporary M365 or Domain Admin access to resolve critical issues.
* Routine maintenance – Provide short-term admin rights for patching, updates, or Active Directory tasks.
* System migrations – Grant Global or Domain Admin access for seamless infrastructure transitions.
* Third-party vendor access – Offer controlled admin access without permanent account creation.
* Security audits & compliance – Ensure admin access is documented, temporary, and automatically revoked.

By automating account provisioning and de-provisioning, this Crate enhances security, compliance, and efficiency, while reducing manual workload.

## Crate prerequisites

* For Microsoft 365 setup, our [Microsoft Cloud integration bundle](https://docs.rewst.help/documentation/integrations/cloud/-cloud-integration-bundle) must be set up first.
* For Active Directory setup, you’ll need to first set up your [RMM integration](https://docs.rewst.help/documentation/integrations/rmm), or [Agent Smith](https://docs.rewst.help/documentation/agent-smith).
* Your PSA must be [integrated with Rewst](https://docs.rewst.help/documentation/integrations/psa).
* An open ticket must exist in your PSA.

## Unpack the **Just in Time Admin Access** Crate

1. Navigate to **Crates > Crate Marketplace** in the Rewst platform.
2. Search for **Just in Time Admin Access Crate.**
3. Click on the Crate tile to begin unpacking.
4. Change the name of the Workflow to suit your needs, if desired.
5. Leave all the form options as the default.
6. Click **Unpack**. The Crate will now unpack the workflow, trigger and form ready to be used.

### Example: Unpack the Just in Time Admin Access Crate

<figure><img src="../../.gitbook/assets/Just in Time Admin Access.gif" alt=""><figcaption></figcaption></figure>

## **Navigate to the Just in Time Admin Access form**

To get to the form to create a Temporary Administrative Account:

1. Navigate to **Automations > Forms**.
2. Select the **Search** field and enter the form name **`[Rewst] Just In Time Admin Access` .**
3. Click on the **Options** menu to the right of the form.
4. Click **Usages**.
5. Click on the **Dynamic Form URL** to open the form as the parent organization.

## **Fill out the form**

Once you're in the form, you’ll need to enter information into the following fields:

1. Identity Provider
   * Choose the environment where administrative access is needed from the drop down list:
     * **M365 (Microsoft 365)**: Grants Global Admin rights within the client’s Microsoft 365 tenant.
     * **On Prem AD (Active Directory)**: Grants Domain Admin rights in the client’s on-premises Active Directory environment.
   * Choose the correct option based on whether the client’s infrastructure is cloud-based or on-premises.
2. **Customer**
   * Select the client for whom administrative privileges will be granted.
   * Example: `pedroaviary`
   * This ensures the access request is linked to the correct client environment.
3. **Ticket**
   * Choose the ticket number related to the access request from the drop down list.
   * This links the admin access session to an active support ticket, for tracking and audit purposes.
4. **Duration**
   * Specify the duration in minutes for which administrative access should be granted.
   * Use only the time necessary to complete the task to minimize security risks.
5. **Reason**
   * Provide a detailed explanation of why administrative access is needed.
   * Example: `Admin access is required to apply security patches and restart domain controllers in the client's on-premises Active Directory.`
   * This creates accountability, and helos with compliance by documenting the justification for elevated access.&#x20;
6. **Temporary Password**
   * Click the Refresh button to generate a one-time-use temporary password for the session.

{% hint style="danger" %}
**Important**: Copy this password to your clipboard before submitting the request, as it won't be retrievable later by any forms users. This password will be used to log in to the temporary admin account for the duration of the session.

**Note:** A Rewst Admin account can retrieve the password, as explained in the troubleshooting section at the end of this guide.
{% endhint %}

### Example: Use the \[Rewst] Just In Time Admin Access form

<figure><img src="../../.gitbook/assets/Kapture 2025-02-12 at 22.34.21.gif" alt=""><figcaption></figcaption></figure>

## Retrieve the username from the ticket

When the Just in Time Admin Access Crate completes, your ticket will be updated with the username of the temporary administrative account. This username can be found in the following formats, depending on whether it’s for Microsoft 365 or Active Directory (AD).

### For Microsoft 365 Accounts

When the temporary account is enabled with Global Admin rights, the ticket will include:\
`The account [username] is now enabled and has been added to the Global Admin role.`

To retrieve the username:

* The user principal name (UPN) is typically the email address of the temporary account.
* The username can be extracted by using the first part of the email address, before the **@**, and the domain, after the **@**. For example: **Username**: `example.user@pedroaviary.com`

### For Active Directory accounts

When the temporary account is enabled with Domain Admin rights, the ticket will include:

`The tech account [tech_account] is now enabled`.

If you need to retrieve the username, the tech account username is generated by combining the user's name with the client's domain prefix.

For example:\
&#x20;The email example.user@pedroaviary.local would have a tech account of `example.user-pedroaviary .`

## What happens once the time runs out?

{% hint style="info" %}
The Crate ensures that administrative access is automatically revoked once the specified time limit has been reached. The cleanup process differs based on whether access was granted for on-premises Active Directory or Microsoft 365.
{% endhint %}

### **On-premises Active Directory cleanup**

Once the time limit expires:

1. Admin Privileges Removed – The account is removed from the **Domain Admins** group, revoking elevated permissions.
2. Account Disabled – The user account is disabled to prevent further access.
3. Password Reset – The password is automatically reset to prevent unauthorized reactivation.
4. Ticket Update – A status update is added to the ticket, confirming that access has been revoked. The user account is disabled, however still exists and is not deleted.

This ensures that no lingering admin access remains, maintaining security within the on-premises environment.

### **Microsoft 365 Cleanup**

Once the time limit expires:

1. Global Admin Privileges Revoked – The account is removed from the Global Admin role, eliminating elevated permissions.
2. Account Deleted – The temporary admin account is **permanently deleted** from Microsoft 365, preventing further use.
3. Ticket Update – A status update is added to the ticket, confirming that access has been revoked and the account has been removed.

Since Microsoft 365 operates in a cloud environment, deleting the account ensures there is no lingering access or risk of reactivation.

Both processes are fully automated, reducing manual workload while enforcing security best practices and compliance.

## Troubleshoot the **Just in Time Admin Access** Crate

If you need to retrieve the username and password for the temporary admin account from Rewst directly for any reason, follow these steps. The process differs slightly depending on whether the request was for On-Premises Active Directory or Microsoft 365.

### **Step-by-step guide**

1. Navigate to **Automations > Forms**.
2. Search for the form **\[Rewst] Just In Time Admin Access.**
3. Open the form’s options by clicking the ⋮ menu to the right.
4. Click **Usages**.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-12 at 12.14.12 PM.png" alt=""><figcaption></figcaption></figure>

5. Click on the link **\[Rewst] Just-In-Time Admin Access v2**, in the **Workflow** column.
6. Click the Chart button next to the pencil icon in the top toolbar to select **View results for this workflow**\*,\* as shown in the image below.\
   ![](<../../.gitbook/assets/image (1).png>)
7.  If multiple workflows exist, verify the approximate submission time of the \[Rewst] Just In Time Admin Access form with the requester. Then, locate the workflow result under the Created At column, and open it by clicking the Status result or the > button.\
    \


    <figure><img src="../../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>
8. To identify the user who submitted the request:
   * &#x20;Click **Load Context**.\
     ![](<../../.gitbook/assets/image (3).png>)
   * Expand the **first dictionary object** in the list.
   * Expand **user** to find the **username** of the requester. \
     For example: `*john.smith@rewst.io*`
9. In the **inputs** list, locate the **password** that was generated.
10. Find the username of the temporary admin account based on the identity provider:
    * For On-Prem AD:
      * Expand the execution results of **start\_on\_prem\_jit.**
      * Check the **activate\_admin\_user** result to find the username of the temporary **Domain Admin** account.
    * For Microsoft 365:
      * Expand the execution results of **start\_m365\_jit.**
      * In the **create\_m365\_user** action, locate the **userPrincipalName**—this is the login username.

### Example: Retrieve username and password

Below is an example of retrieving both the username and password for a Microsoft 365 workflow by following the process outlined in the guide above.

<figure><img src="../../.gitbook/assets/Kapture 2025-02-12 at 23.00.53.gif" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

