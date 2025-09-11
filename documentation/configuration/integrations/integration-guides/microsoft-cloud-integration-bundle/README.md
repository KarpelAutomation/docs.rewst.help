# Microsoft Cloud Integration Bundle

{% hint style="warning" %}
Rewst's previous setup for Microsoft was separate integrations for each Microsoft app. If you are an older Rewst customer and have not yet migrated from our individual integration to bundle configuration, please see the below section for how to Migrate to the [Microsoft Cloud Integration Bundle](https://app.gitbook.com/u/kmMNMlugUvf2cfCtyBQgNnIYH1H2).&#x20;
{% endhint %}

## What is the Microsoft Cloud Integration Bundle?

The Microsoft Cloud Bundle is Rewst’s solution for integrating your most common Microsoft tools. It’s a little different from our other integrations in that we group multiple integrations together, by brand, to allow for easier and more custom integration options during setup.

{% hint style="info" %}
Though you’ll be working from one integration menu tile to set up all integrations, each integration will appear as its own section with its own actions in the actions list of the workflow builder.

For detailed permission breakdown for all Microsoft integrations in the bundle, see our separate documentation [here](microsoft-cloud-permissions.md).&#x20;
{% endhint %}

## Why use the Microsoft Cloud Integration Bundle?

* Customize permissions tailored to your organization’s needs.
* Centralize the management of all Microsoft integrations through the Rewst platform.
* Protect your data with enhanced security measures.
* Keep your integrations current with continuous updates and enhancements.

## **What integrations are in the Microsoft Cloud Integration Bundle?**

You'll be prompted to check off any or all of the following integrations to be included in your setup process. The Microsoft Cloud Integration Bundle contains integrations for:

<figure><img src="../../../../../.gitbook/assets/Screenshot 2025-06-24 at 3.36.15 PM (1).png" alt="&#x22;Microsoft Cloud Integration Bundle” setup interface. At the top, icons represent Rewst, a link, and Microsoft Cloud. A progress bar shows four steps: 1) Select Integrations, 2) Configuration Parameters, 3) Tenant Permissions, and 4) Authorize Integrations, with step 1 highlighted. The main section lists integration options with checkboxes: Microsoft Graph (checked, required), Microsoft Exchange Online, Microsoft CSP, and Microsoft Azure. Each option includes its logo and a description of what the integration enables. At the bottom right, there is a turquoise “Next” button. The interface has a dark background with white text."><figcaption><p>The <strong>Select Integrations</strong> screen of the Microsoft Cloud Integration Bundle's configuration process</p></figcaption></figure>

1. **Microsoft Graph:** A unified API that provides a single endpoint for accessing and managing data and intelligence across Microsoft 365, Windows, and Enterprise Mobility and Security.\
   :point\_right: You should check this box to install the integration to allow Rewst to make API calls. This is necessary for the bundle to work.
2. **Microsoft Exchange Online:** The cloud-hosted version of the traditional Microsoft Exchange Server, offering similar functionalities but without the need for on-premises server infrastructure.\
   :point\_right: You should check this box to install the integration to allow you to send Exchange Online PowerShell commands.
3. **Microsoft Cloud Solution Provider (CSP)**: This allows for the resale of Microsoft cloud services like Azure, Microsoft 365, and Dynamics 365 to businesses, often with added value services. It's a subscription-based model where MSPs can bill customers.\
   :point\_right: You should check this box to install the integration to allow you to send Exchange Online PowerShell commands.
4. **Microsoft Azure**: A cloud computing platform, Azure offers a range of cloud infrastructure services, including computing, analytics, storage, networking, and AI. Note that Microsoft formerly called a different tool Azure, and renamed that tool Microsoft Entra.\
   :point\_right: You should check this box to install the integration if you are already an Azure user and have an existing [Azure key vault ](https://learn.microsoft.com/en-us/azure/key-vault/general/basic-concepts)set up with Microsoft.&#x20;

## What is GDAP and why is it important to the setup process?

In 2024, Microsoft moved away from regular user-based access, where users logged into Microsoft Entra with an individually permissioned account. Instead, they now operate via delegated admin permissions, where permissions are assigned from the top level down, for more secure access management. This is known as _Granulated Delegated Admin Permissions_, or _GDAP_.

As part of the bundle setup process, you’ll be asked to create a dedicated user to act as your Microsoft service account. The way this is done and the roles you adopt are important, as GDAP dictates that this will now have a direct effect on how Rewst interacts with Microsoft.

For example, let’s say that 12 roles map to 177 permissions.

* Rewst will try to make an API call.
* The enterprise app will look for permissions.
* The enterprise app will ask if it is making the call at customer level, and if there are roles at the customer level.

To ensure that your GDAP is properly set to allow Rewst automation, you’ll need to unpack our [Configure New GDAP Relationship Crate](../../../../crates/existing-crate-documentation/configure-new-gdap-relationship-crate.md) during a step later on in this document as part of the Microsoft Cloud Bundle setup process. Read more about Crates [here](https://docs.rewst.help/documentation/crates) if you’re new to them as a concept in Rewst.

## Migrate legacy Microsoft integrations to the new Microsoft Cloud Integration Bundle

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for the `Microsoft Cloud Bundle`.
3. Click on the integration tile.
4. Select the Microsoft services you wish to integrate.
5. Enter the necessary details to establish a connection.
6. Modify permissions as needed for enhanced control.
7. Complete the setup by authorizing the selected integrations.

{% hint style="info" %}
For users of the legacy setup, it's important to note that the static permissions associated with the legacy App Registration cannot be modified during this transition. Transitioning to the new bundle is highly recommended for continued functionality and security.
{% endhint %}

### Post-transition configuration

After migrating, you'll configure each integration according to your needs, including setting up OAuth configurations and mapping CSP customers to Rewst organizations.

* **Use CSP Delegated Admin permissions**: Manage permissions for Cloud Solution Provider integrations, ensuring they align with delegated admin roles.
* **Microsoft Graph OAuth configuration**: Set up OAuth configurations for Microsoft Graph to ensure seamless integration and data access.
* **CSP Customer to Rewst organization mapping**: Map CSP customers to Rewst organizations for streamlined management and reporting.
* **Microsoft Exchange Online OAuth configuration**: Configure OAuth for Exchange Online, enabling advanced email and calendar integration functionalities.

## Set up the Microsoft Cloud Integration Bundle

{% hint style="info" %}
We've broken down instructions into four larger steps, each with its own section. Read through the entire process before starting step 1 to familiarize yourself with what will be needed.
{% endhint %}

### Step 1: Create a Microsoft service account in Microsoft Entra

#### Create a user in Microsoft Entra to use as your Rewst service account.

1.  Navigate to **Overview > +Add > User > Create new user** in Microsoft Entra.



    <figure><img src="../../../../../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>

    1. Name the user `Rewst`.
    2. Check the box **derive from user principal name**.
    3. Enter a display name of `Rewst Service Account`.
    4. Auto generate a password.&#x20;
    5. Document all the user's information within your documentation platform. Be sure to note the user principal name.\
       \
       ![](<../../../../../.gitbook/assets/image (72).png>)
2. Click the **Properties** tab. Leave all the options on this screen as default.
3. Click **Assignments > Add Role**.
4. Search for **`Global Administrator`** in the role selection. Select the role.
5.  Click **Select**. Verify that the role is now listed in the main pane.\


    <figure><img src="../../../../../.gitbook/assets/image (73).png" alt=""><figcaption></figcaption></figure>
6. Click **Review and Create**, then **Create**.

#### Turn on MFA requirement for the user

1. Log in to the Microsoft 365 Admin Center.
2. Navigate to **Users > Active Users > Multifactor Authentication**.
3. Locate and select your Rewst service account user in the list that appears.
4. Click **Enable** under the **Quick Steps** menu.
5. Select the Rewst service account user again.
6. Click **Enforce** under the **Quick Steps** menu.&#x20;
7. Click **Enforce multi-factor**.

{% hint style="warning" %}
Only Microsoft authentication is permissible. Providers like Duo are incompatible. For more information, see Microsoft's page on [Supported MFA options](https://learn.microsoft.com/en-us/partner-center/partner-security-requirements-mandating-mfa#supported-mfa-options).
{% endhint %}

#### Modify conditional access policy in Microsoft Azure

Granular access is influenced by your clients' conditional access policies. To ensure seamless access to your clients using your Rewst integration user, follow these steps

1. Navigate to your client's [Conditional Access Policies](https://portal.azure.com/#view/Microsoft_AAD_ConditionalAccess/ConditionalAccessBlade/~/Policies) blade in Azure.
2. &#x20;For each policy listed, add an exclusion to **Users and Groups** with these settings:
   * Guest or external users
   * Service Provider Users
   * **Tenant ID**: Enter your tenant ID. If unknown, find it at [What Is My Tenant ID](https://whatismytenantid.com/).

{% hint style="info" %}
**Note**: Excluding the MSP from the Conditional Access Policy is recommended as per [Microsoft's GDAP Documentation](https://learn.microsoft.com/en-us/partner-center/gdap-faq#what-is-the-recommended-next-step-if-the-conditional-access-policy-set-by-the-customer-blocks-all-external-access-including-csps-access-aobo-to-the-customers-tenant).
{% endhint %}

3\. Post-Modification Behavior

* **Propagation Time**: Changes may take up to an hour to become active in the Rewst environment.
* **Quick Refresh**: Click the blue shield icon next to the client's name on the Microsoft Cloud Integration Bundle page in Rewst to expedite propagation.

### Step 2: Register the enterprise app and authorize the Rewst integration

1.  Choose how to register the app.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-06-18 at 3.16.36 PM.png" alt=""><figcaption></figcaption></figure>

    1. Most users should select the Rewst-created enterprise app. It simplifies setup, includes the required permissions, and is secure. Unless you’re absolutely sure you need your own, choose the default option.
    2. If you are absolutely certain that you must bring your own app rather than using the Rewst-created one, choose this registration option. Owned app registration instructions can be found here: [https://docs.rewst.help/documentation/configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/owned-app-registration](https://docs.rewst.help/documentation/configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/owned-app-registration)
    3. Click **Next**.
2.  Set permissions for Microsoft Graph.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-08-12 at 4.08.52 PM.png" alt=""><figcaption></figcaption></figure>

    1. You can pick and choose from a set of pre-selected Graph permissions, or edit based on your org’s security preferences.
    2. These permissions are carefully chosen to support Crates without authentication issues.
    3. If you modify permissions from the stock ones suggested by Rewst, it’s your responsibility to verify that your custom permissions don’t interfere with Rewst’s functionality.
    4. For more detail, consult Microsoft Graph’s [official permissions documentation](https://learn.microsoft.com/en-us/graph/permissions-reference).
3. Grant additional access for other Microsoft integrations
   1. Exchange, CSP, and Azure, if needed, are simpler and allow you to toggle access as desired.
   2. Microsoft Graph includes \~177 APIs, and gives you broad access to users, groups, and licensing from one endpoint.
4. Click **Next**.
5.  Review your configuration decisions in the **Authorize Integrations** screen. Click **Back** f you wish to make updates. Click **Authorize** when satisfied with your choices.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-08-12 at 4.12.50 PM.png" alt=""><figcaption></figcaption></figure>
6. After authorizing, you’ll see:
   1. What authorized successfully
   2. Which user was used
   3. The tenant ID
   4. A corresponding Enterprise App created in Entra

### Step 3: Set up GDAP relationships

{% hint style="info" %}
If you haven’t yet done so, read our section on GDAP and its importance [here](./#what-is-gdap-and-why-is-it-important-to-the-setup-process).
{% endhint %}

{% hint style="info" %}
For this step, you have two options:

1. Unpack the [Configure New GDAP Relationship Crate](../../../../crates/existing-crate-documentation/configure-new-gdap-relationship-crate.md). This will create the relationship and generate a link for your customer to accept the relationship. Once the customer manually accepts, you'll be given a second link to kick off another workflow that adds all groups to the relationship, and maps them to the relevant roles.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-09-04 at 3.57.31 PM.png>)\

2. The rest of the instructions below walk you through how to do this process manually without unpacking the Crate. It is much more time-consuming, but is still an option. Click the accordion menu to expand and read those directions.

We strongly recommend that you use the Crate to complete this step.
{% endhint %}

<details>

<summary>Set up GDAP relationships without the Configure New GDAP Relationship Crate</summary>

#### Assign the security group to the service account user you created previously&#x20;

1. Navigate to **Manage > Groups**. Click **+New Group**.
   1. Choose **security group** as the group type.&#x20;
   2. Name the group `Rewst GDAP-[ROLE NAME]`.
   3. Enter `for SCP GDAP role assignment` as the description.
   4. Choose **Yes** for **Microsoft Entra roles can be assigned to the group**.
   5. Add the Rewst user you created in the previous steps as a member of the group.
   6. Click **Create**.
   7. Click **Yes** in the dialog that appears.
2. You will need to complete step 1 a total of 12 times, to create 12 security groups, each named differently to indicate the role it is associated with. For example, `Rewst GDAP-[NEXT ROLE NAME]`, etc.
3. Wait for the status to change to **Active**. Note that this can take anywhere from a few minutes to 24 hours depending on Microsoft's response time.&#x20;

#### Assign recommended roles for GDAP

1. Navigate to [partner.microsoft.com](http://partner.microsoft.com) and sign in.
2. Click **Partner Center > Customers > Customer List**.\
   ![](<../../../../../.gitbook/assets/image (74).png>)
3. Click on the name of the customer you would like to create the admin relationship for once the customer list loads.\
   ![](<../../../../../.gitbook/assets/image (75).png>)
4. Click **Admin Relationships > Request a New Relationship**.
5. Name the relationship, keeping in mind that this name must be unique for each customer or relationship. We suggest the `customer's initials`, followed by `GDAP`. For example, `ABC-GDAP.`
6. Enter the maximum duration of `730` days in the **Duration in Days** field.
7. Click **Select Microsoft Entra roles**.\
   ![](<../../../../../.gitbook/assets/image (76).png>)
8. Add the 12 roles explained in this list by checking off the boxes. Note that the total list of roles is not alphabetized. Use control + F or command + F to search for your relevant roles.
   1. [**Application Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#application-administrator) **-** Can create and manage all applications, service principals, app registration, enterprise apps, consent requests. Cannot manage directory roles, security groups.
   2. [**Authentication Policy Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#authentication-policy-administrator) **-** Configures authentication methods policy, MFA settings, manages Password Protection settings, creates/manages verifiable credentials, Azure support tickets. Restrictions on updating sensitive properties, deleting/restoring users, legacy MFA settings.
   3. [**Cloud App Security Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#cloud-app-security-administrator) **-** Manages all aspects of the Defender for Cloud App Security in Azure AD, including policies, alerts, and related configurations.
   4. [**Cloud Device Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#cloud-device-administrator) **-** Enables, disables, deletes devices in Azure AD, reads Windows 10 BitLocker keys. Does not grant permissions to manage other properties on the device.
   5. [**Exchange Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#exchange-administrator) **-** Manages all aspects of Exchange Online, including mailboxes, permissions, connectivity, and related settings. Limited access to related Exchange settings in Azure AD.
   6. [**Intune Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#intune-administrator) **-** Manages all aspects of Intune, including all related resources, policies, configurations, and tasks.
   7. [**User Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#user-administrator) **-** Manages all aspects of users, groups, registration, and resets passwords for limited admins. Cannot manage security-related policies or other configuration objects.
   8. [**Privileged Authentication Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#privileged-authentication-administrator) **-** Sets and resets authentication methods for all users (admin or non-admin), deletes/restores any users. Manages support tickets in Azure and Microsoft 365. Restrictions on managing per-user MFA in legacy MFA portal.
   9. [**Privileged Role Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#privileged-role-administrator) **-** Manages role assignments in Azure AD, Azure AD Privileged Identity Management, creates/manages groups, manages all aspects of Privileged Identity Management, administrative units. Allows managing assignments for all Azure AD roles including Global Administrator.
   10. [**Security Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#security-administrator) **-** Can read security information and reports, and manages security-related features, including identity protection, security policies, device management, and threat management in Azure AD and Office 365.
   11. [**SharePoint Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#sharepoint-administrator) **-** Manages all aspects of SharePoint Online, Microsoft 365 groups, support tickets, service health. Scoped permissions for Microsoft Intune, SharePoint, and OneDrive resources.
   12. [**Teams Administrator**](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#teams-administrator) **-** Manages all aspects of Microsoft Teams, including telephony, messaging, meetings, teams, Microsoft 365 groups, support tickets, and service health.
9. Click **Save**.
10. Review your selection and click **Finalize Request**. \
    ![](<../../../../../.gitbook/assets/image (78).png>)
11. You'll be redirected to a page that shows the request. Copy the link in that page.&#x20;
12. Email the link to your customer. They will need to accept the request to continue your bundle set up steps. Once approved, the relationship will show as **Active** in the **Admin Relationships** list. \
    You may also approve on the customer's behalf since you have Global Administrative privileges. To do this, choose to send the email to yourself. Note that if you choose this option, it will still send an email to your customer. You may want to notify them that they can disregard the email.

</details>

### Step 4: Link customers and validate GDAP access

1. Return to your Rewst platform.
2. Use the drop-down organization selector to choose your relevant child organization for your customer.
3. Complete the authorization process as prompted on the screen.
   1. Check off all boxes in the **Select Integrations** screen.
   2. Choose **Rewst Microsoft Cloud Connector**.\
      \
      ![](<../../../../../.gitbook/assets/Screenshot 2025-09-05 at 12.19.46 PM.png>)
   3. &#x20;Click **Next**.
   4. Choose your tenant permissions. Click the **Microsoft Graph Permissions** accordion menu to expand and view the total permission list. Unless you have specific, verified reasons for unchecking any of these boxes, we recommend leaving our stock settings checked.
   5. Click **Next**.
   6. Double check your choices and click **Authorize**.\
      \
      ![](<../../../../../.gitbook/assets/Screenshot 2025-09-05 at 12.20.33 PM.png>)
   7.  Once Rewst has received the successful authorization callback from Microsoft, a background process will be initiated to authorize each of the integrations you installed for the bundle. Once that is complete, the permissions that you previously selected will be assigned to the Enterprise App installed in your tenant for the Rewst MS Cloud Connector.

       This process may take a few moments to complete. Don't navigate away from this page until the process is finished.
4. Repeat these delegated admin permission consent steps for each customer organization you where wish to set up the Microsoft Cloud integration bundle.
5.  Check on the integration's page for each of your organizations to ensure that the consent process was successful.&#x20;

    1. A green shield to the right of the integration name means the GDAP relationship is working and API access is valid.
    2. A blue shield or error means setup failed, and permissions are missing or incorrectly configured.



    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-09-05 at 12.22.37 PM.png" alt=""><figcaption></figcaption></figure>

## **Troubleshoot the Microsoft Cloud Integration Bundle**

### Common installation errors

{% hint style="info" %}
**If you set up your Microsoft integrations Prior to April 2024,** you are most likely leveraging the legacy Rewst Prod App Registration for authenticating with your Microsoft Tenant. This setup uses a fixed set of permissions and is scheduled for future deprecation. We recommend [transitioning to the newer Microsoft Cloud Integration Bundle](./#migrate-legacy-microsoft-integrations-to-the-new-microsoft-cloud-integration-bundle).
{% endhint %}

<details>

<summary>Issue: Auth app registration error</summary>

* **Symptom**: Failure to proceed past the authentication step, not even reaching the Microsoft Auth login screen.

- **Common Cause**: This may occur due to a delay on Microsoft's end  where the system is still processing the app registration.

* **Solution**: Wait a minute or two before attempting to re-authenticate. This allows time for the backend processes to complete.

</details>

<details>

<summary>Issue: Legacy app registration conflicts</summary>

* **Symptom**: Successful authentication only after switching between the new Rewst Cloud Connector and the legacy Rewst Prod App Registration.

- **Potential Cause**: Existing Rewst Prod installations in the Microsoft tenant might interfere with the new setup.

* **Solution**:
  * Restart the integration wizard from the beginning.
  * Make sure all configuration steps are correctly completed. Pay extra attention to step 2 and confirm that a notification appears, indicating that the configurations have been updated.

{% hint style="warning" %}
The Rewst Prod App is necessary for authentication and might already be installed in your Microsoft Tenant. Existing installations could influence the new authorization processes.

**Note**: The Rewst Prod App is mainly used for authentication purposes. It should be maintained but with limited permissions, only necessary for Rewst login.

**Future Updates**: The Rewst Prod App remains essential for Rewst login authentication. Upcoming updates will restrict its permissions to those strictly needed for logging in, improving security.
{% endhint %}

</details>

### **Authorization issues**

If you encounter problems during the authorization step, ensure that you are using the correct account, and that all permissions are properly set.

### **Permission configuration errors**

Double-check the permissions if there are issues with accessing certain functionalities. Ensure that the appropriate permissions are enabled and correctly configured.

<details>

<summary>Issue: Consent to Client Permissions</summary>

* **Error Context:** Pertains to errors when consenting on a client (e.g., green shield button on CSP/Graph/EXO integration table).
* **Common Issue:** Transition to Microsoft's [Granular Delegated Admin Privileges (GDAP)](https://learn.microsoft.com/en-us/partner-center/gdap-introduction) introduces complexities in tenant access control.
* **About GDAP:**
  * **Purpose:** GDAP enables fine-grained control over tenant access, allowing the creation of groups in your MSP tenant, assignment of permissions, and user allocation.
  * **Example:** Create specific groups like "Standard M365 Clients - Exchange Administrator" or "Strict M365 Clients - Exchange Administrator" to manage access levels across different clients.
* **Rewst's Role:** Since Rewst can interact with various endpoints, the correct permissions in both your tenant and client tenant are essential.
*   **Potential Resolution: Understand and Implement GDAP**\
    Utilize GDAP to create groups and assign permissions, ensuring compliance with your security policies.



</details>

<details>

<summary>Issue: Access Denied - HTTP Status code 403</summary>

* **Root Cause:** Most commonly related to a misunderstanding of Application vs. Delegated permissions within Microsoft Graph Integration.
  * **Application Permissions:** Granted to applications, not tied to users. Allows access to data without user consent.
  * **Delegated Permissions:** Tied to specific users, requiring their consent for data access.
* **Microsoft's Direction:** Microsoft is shifting from Application permissions to Delegated permissions for security reasons. Application permissions lack an audit trail, hiding who accessed data and when. They also allow Microsoft Partners to have a tenant in their organization without the client's awareness.
* **Relevance to Tasks:**
  * **User Permissions:** For user-related endpoints, such as reading calendar items, or sending mail as a user, the authenticating account must have the necessary permissions.
  * **Example:** To send as `SendfromMe@rewstdemo.com` via Rewst, ensure `Rewst-Service Account` has **Send As** permission on the `SendfromMe` account.

{% hint style="info" %}
If you have a user in your tenant that needs permissions within a client tenant (e.g., to a mailbox, SharePoint site, etc.), granting those permissions directly to your user wont be possible due to the users belonging to different tenants. In this case, instead of using an integration override for that workflow, consider configuring the integration under that client's organization directly.
{% endhint %}

</details>

<details>

<summary>Issue: Request_BadRequest, Unsupported token. Unable to initialize the authorization context</summary>

* **Error Message & Context:** `Request_BadRequest`, `Unsupported token. Unable to initialize the authorization context`. This manifests as a **"Bad Request"** error when making calls to Graph, despite seemingly correct integration and tenant delegation credentials.
* **Suspected Cause:** The error may stem from a cached token or from the integration being authorized prior to setting the checkbox for CSP delegation in CSP, Graph, or Exchange Online.
* **Potential Resolution:**
  1. **Uninstall and Reinstall CSP Integration:** Go to CSP integration, click "Uninstall," wait, then click "Install."
  2. **Reauthorize CSP with Admin Access:** Use the recommended service account with admin access for reauthorization.
  3. **Repeat for Other Integrations:** Follow steps 1-2 for Exchange Online and Graph, checking `Use CSP Delegated Consent` before authorizing.
  4. **Re-Consent on Behalf of Managed Tenants:** Return to CSP integration and click the green shield to re-consent.

</details>

### Additional errors

<details>

<summary>Issue: Updating the password profile of a user fails with a forbidden error</summary>

As per Microsoft documentation the following needs to be true for resetting a user's password/modifying their password profile.

See [Microsoft Documentation](https://learn.microsoft.com/en-us/graph/api/user-update?view=graph-rest-1.0\&tabs=http#permissions)

In a delegated scenario the Rewst enterprise applications need to have the 'Directory.AccessAsUser.All' permission (and corresponding GDAP roles)

In a application call scenario(MSP Level/Integration installed at the customer level standalone from CSP) the application must be assigned a priviledged role such as Authentication Administrator or Priviledged Authentication Administrator.

</details>

<details>

<summary>Issue: The token has expired</summary>

If the refresh token couldn't be retrieved or stored, reauthorization must occur.

</details>

<details>

<summary>Issue: Presented multi-factor authentication has expired to the policies configured by your administrator, you must refresh your multi-factor authentication to access</summary>

A Conditional Access Policy may have set the maximum session time, causing this error. Consider changing the policy or following guidance under Conditional Access.

</details>

<details>

<summary>Issue: Due to a configuration change made by your administrator, or because you moved to a new location, you must use multi-factor authentication to access.</summary>

The absence of MFA setup or Conditional Access policies blocking Rewst's access may lead to this error. Check MFA settings and Conditional Access policies.

</details>

<details>

<summary>Issue: The provided grant has expired due to it being revoked. A fresh auth token is needed. The user might have changed their password.</summary>

Password changes, session revocations, or account disabling may lead to this error. Reauthorization will be needed.

</details>

<details>

<summary>Issue: Device object was not found in the tenant xxxxxxxxxx</summary>

This might occur when a trusted device used for the first authorization has been deleted from the Intune portal. Reauthorization is required.

</details>

<details>

<summary>Issue: Insufficient access rights to perform the operation</summary>

If the user lacks sufficient access rights or is missing the necessary Exchange role, check the user's rights and Exchange role information. When using GDAP, the user must be in the "Exchange Administrators" group.

</details>

<details>

<summary>Issue: AppLifecycle_2210</summary>

This is likely a failure to call Intune APIs. Check if the tenant has the necessary license available.

</details>

<details>

<summary>Issue: Invalid or malformed</summary>

The request might be malformed if the body doesn't contain JSON or if variables haven't expanded. Look for syntax errors or incorrect bracket usage.

</details>

<details>

<summary>Issue: The user or administrator has not consented to use the application - AADSTS50020</summary>

Multiple causes could lead to this error, such as the user not authorizing the Rewst CSP integration or not being in the `AdminAgents` group. If you're using GDAP, ensure that the user is added to the correct group(s) for Rewst to function.

</details>

<details>

<summary>Issue: User was not found</summary>

This could indicate that the relationship between the tenant and the partner has been dissolved from the client side, or that a GDAP relationship has expired. Check the partner relationship information and ensure it is still active.

</details>

<details>

<summary>Issue: Subscription within the tenant has lapsed</summary>

This means that Exchange connections are no longer possible. Please verify Exchange subscription availability.

</details>

<details>

<summary>Issue: Provide valid credential</summary>

If GDAP has been deployed and you're seeing this error, it may be because the user is not in any GDAP groups. Verify the user's GDAP group membership.

</details>

<details>

<summary>Issue: Microsoft.Skype.Sync.Pstn.Tnm.Common.Http.HttpResponseException</summary>

If you're unable to connect to Teams Admin cente, this might mean the tenant is missing a Teams license. Check to ensure the necessary licenses are available.

</details>

<details>

<summary>Issue: Request not applicable to target tenant</summary>

This error is mainly seen around security tasks and is likely due to a missing license such as M365 BP or Azure AD P1. Check the tenant's license information to ensure that the necessary licenses are available for the requested operation.

</details>

<details>

<summary>Issue: Forbidden (403), MFA Required (401)</summary>

* **Cause:** Often related to Multi-Factor Authentication (MFA). Absence of MFA, incorrect MFA configuration, or unsupported third-party MFA provider.
* **Requirements:** Microsoft mandates the use of the `StrongAuthClaim` method in MFA requests, confirming additional security checks beyond username and password.
* **Potential Resolutions:**
  1. **Enable MFA with StrongAuthClaim:** Make sure the user account for Microsoft CSP integration has MFA enabled using the StrongAuthClaim method (usually with Microsoft MFA).
  2. **Confirm MFA at Sign-In:** If using Microsoft MFA and encountering errors, ensure MFA confirmation at sign-in. Try incognito browsing or sign out and back in if needed.
  3. **Create a Dedicated User Account:** Recommended for Microsoft CSP integration with specific requirements (e.g., Global Administrator permissions, MFA with StrongAuthClaim, `AdminAgents` role added in Partner Center to enable API access).

**Duo / Third Party MFA Notice:** Duo MFA was removed from Microsoft's supported list in 2022. Users must switch to Microsoft MFA to comply with requirements. See [Microsoft Partner Account - MFA Requirements](https://docs.microsoft.com/en-us/powershell/partnercenter/test-partner-security-requirements?view=partnercenterps-3.0)

</details>

<details>

<summary>Issue: Neither tenant is B2C or tenant doesn't have a premium license</summary>

This feature requires a P1 license or higher. Check the client's tenant license information to ensure that the necessary licenses are in place.

</details>

<details>

<summary>Issue: Client error 400 (Bad Request)</summary>

Client error `400 Bad Request` means there's an issue with the request. It's most likely that an incorrect value is being sent. Please verify the correctness of the values in the request.

When in the context of authorizing the Microsoft Cloud Bundle this error can sometimes be related to Conditional Access policies, either on the MSP tenant (if failing to authorize) or on the customer tenant (when performing CPV consent aka clicking the blue shield).

If the issue is during the initial authorization, then it is important to check your conditional access policies and modify them to either exclude the user used to authorize the integration (typically the Rewst@ user) or to address the conflict (as an example, limiting access by location).

If the issue is during CPV consent of a customer then you will need to check the customer's conditional access policies and modify them to exclude the service provider tenant or address the conflict (example from above could apply).



</details>

<details>

<summary>Issue: Client error 401 Unauthorized for...</summary>



</details>

<details>

<summary>Issue: invalid_client - Failed to authorize one or more integrations: Permissions configuration not found for Azure integration</summary>



</details>

<details>

<summary>Issue: There was an error configuring delegated admin… Client error ‘400 Bad Request’…</summary>



</details>

<details>

<summary>Issue: Entra UI pagination and permissions display </summary>

We've identified a recurring issue within the Entra UI concerning the inconsistent permissions display on the Enterprise App Permissions page. Users may encounter situations where the permissions are either fully paginated and visible or not all permissions are displayed as expected.

#### **Incomplete display of permissions** <a href="#incomplete-display-of-permissions" id="incomplete-display-of-permissions"></a>

If what you see resembles the screenshot below, it indicates that not all permissions are being displayed. In such cases, the seemingly absent permissions are assigned but not visible due to a limitation within the UI. This known issue stems from a bug on Microsoft's end, which unfortunately is beyond our ability to directly resolve. For visibility into the complete set of permissions under these circumstances, using the API is the recommended approach.

![](https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2F1835401289-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FAQQ1EHVcEsGKBPVHmiav%252Fuploads%252FNHYWwCfHOfPPzEzUXens%252Fentra-ui-not-all-permissions-shown.png%3Falt%3Dmedia%26token%3D54e204ec-8bdb-4f97-9703-5557ece7a5ad\&width=768\&dpr=4\&quality=100\&sign=2d30e14d\&sv=2)

#### **Complete display of permissions** <a href="#complete-display-of-permissions" id="complete-display-of-permissions"></a>

If your Entra UI matches the below screenshot, this suggests that all permissions are being properly shown. So if any are missing, they are actually missing. Should there be any unexpected permissions missing in this scenario, it likely points to an bug or failure in the permissions assignment process on the Rewst side.

![](https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2F1835401289-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FAQQ1EHVcEsGKBPVHmiav%252Fuploads%252FWTDzmTA6FgPmNIY4IBm4%252Fentra-ui-all-permissions-shown.png%3Falt%3Dmedia%26token%3Dedd0db06-85eb-43d7-9be8-9f760e4d7575\&width=768\&dpr=4\&quality=100\&sign=95906007\&sv=2)

</details>

<details>

<summary>Issue: Failed to get tenant resource id for… Please try again later.</summary>



</details>

<details>

<summary>Issue: Error assigning application permission…</summary>



</details>

<details>

<summary>Issue: Error during callback. error='invalid_client' error_description="AADSTS650051: Value length '8060' is out of the valid range of '1' to '8000' for property 'DelegationScope'.</summary>



</details>

<details>

<summary>Issue - Delegated admin consent creation failed - Forbidden</summary>



</details>

<details>

<summary>Issue: Failed to refresh options</summary>



</details>

<details>

<summary>Issue: Delegated admin consent creation failed… Due to a configuration change made by your administrator, or because you moved to a new location, you must use multi-factor authentication to access…</summary>



</details>

<details>

<summary>Issue: Delegated admin consent creation failed… Access has been blocked by Conditional Access Policies</summary>



</details>

<details>

<summary>Issue: Unsupported token. Unable to initialize the authorization context</summary>



</details>

<details>

<summary>Issue: User is trying to authenticate Azure integration (may apply to other in the bundle) and gets example error:</summary>



</details>

<details>

<summary>Issue: Invalid Tokens - Invalid_grant - device object was not found</summary>



</details>

<details>

<summary>Issue: Invalid Tokens - Invalid_grant - The provided grant has expired</summary>



</details>

<details>

<summary>Issue: User account [tenant name] does not exist in tenant. The account needs to be added as an external user in the tenant first.</summary>



</details>

<details>

<summary>Issue: "Unknown auth_app_registration: None" Error</summary>



</details>

<details>

<summary>Issue: Delegated admin consent re-creation failed for ID {‘error’: {‘response’: {‘code’: 400, ‘message’: 'Application ID doesn’t exist</summary>



</details>

<details>

<summary>Issue: Company Using Owned APP Registration and getting errors in crates.</summary>



</details>

<details>

<summary>Issue: 403 - Authorization_RequestDenied (Duo External Authentication)</summary>



</details>

<details>

<summary>Issue: <strong>Error -3 while decompressing data: incorrect header check -</strong> Microsoft EXO </summary>

If you get this error while running EXO commands, check if the dedicated account linked to the Microsoft Cloud Integration Bundle for authorization has the Exchange Administrator Role.



</details>

{% hint style="info" %}
For troubleshooting tips, check out the [Broken link](broken-reference "mention") and [Broken link](broken-reference "mention") pages.
{% endhint %}
