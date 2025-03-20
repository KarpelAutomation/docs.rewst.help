# Common issues with Microsoft Bundle

Overview

Microsoft integrations, such as those with Microsoft CSP, Microsoft Graph, or Microsoft Exchange Online, are among the most intricate and complex due to the diversity of products and services involved, each having slightly different authentication endpoints and required permissions. This guide serves as a comprehensive resource for common problems that may arise during integration, listing common issues and their resolutions. Understanding these challenges will enable administrators and users to manage and troubleshoot integration issues more effectively.

***

## **Microsoft CSP Authentication Errors**

* **Error Message:** Forbidden (403), MFA Required (401)
* **Cause:** Often related to Multi-Factor Authentication (MFA). Absence of MFA, incorrect MFA configuration, or unsupported third-party MFA provider.
* **Requirements:** Microsoft mandates the use of the `StrongAuthClaim` method in MFA requests, confirming additional security checks beyond username and password.
* **Potential Resolutions:**
  1. **Enable MFA with StrongAuthClaim:** Make sure the user account for Microsoft CSP integration has MFA enabled using the StrongAuthClaim method (usually with Microsoft MFA).
  2. **Confirm MFA at Sign-In:** If using Microsoft MFA and encountering errors, ensure MFA confirmation at sign-in. Try incognito browsing or sign out and back in if needed.
  3. **Create a Dedicated User Account:** Recommended for Microsoft CSP integration with specific requirements (e.g., Global Administrator permissions, MFA with StrongAuthClaim, `AdminAgents` role added in Partner Center to enable API access).

{% hint style="info" %}
**Duo / Third Party MFA Notice:** Duo MFA was removed from Microsoft's supported list in 2022. Users must switch to Microsoft MFA to comply with requirements. See [Microsoft Partner Account - MFA Requirements](https://docs.microsoft.com/en-us/powershell/partnercenter/test-partner-security-requirements?view=partnercenterps-3.0)
{% endhint %}

***

## **Client Error: 400 (Bad Request)**

Client error `400 Bad Request` means there's an issue with the request. It's most likely that an incorrect value is being sent. Please verify the correctness of the values in the request.

{% hint style="warning" %}
When in the context of authorizing the Microsoft Cloud Bundle this error can sometimes be related to Conditional Access policies. Either on the MSP tenant (if failing to authorize) or on the customer tenant (when performing CPV consent aka clicking the blue shield).

If the issue is during the initial authorization then it is important to check your conditional access policies and modify them to either exclude the user used to authorize the integration (typically the Rewst@ user) or to address the conflict (as an example, limiting access by location).

If the issue is during CPV consent of a customer then you will need to check the customer's conditional access policies and modify them to exclude the service provider tenant or address the conflict (example from above could apply).

For more information please see the authorization best practices documentation located [HERE](https://docs.rewst.help/documentation/integrations/cloud/microsoft-cloud-integration-bundle/authorization-best-practices#conditional-access)
{% endhint %}

***

## Entra UI Pagination and Permissions Display Issues

We've identified a recurring issue within the Entra UI concerning the inconsistent permissions display on the Enterprise App Permissions page. Users may encounter situations where the permissions are either fully paginated and visible or not all permissions are displayed as expected.

### **Incomplete Display of Permissions**

If what you see resembles the screenshot below, it indicates that not all permissions are being displayed. In such cases, the seemingly absent permissions are assigned but not visible due to a limitation within the UI. This known issue stems from a bug on Microsoft's end, which unfortunately is beyond our ability to directly resolve. For visibility into the complete set of permissions under these circumstances, using the API is the recommended approach.

<figure><img src="../../../../../../.gitbook/assets/entra-ui-not-all-permissions-shown.png" alt=""><figcaption></figcaption></figure>

### **Complete Display of Permissions**

If your Entra UI matches the below screenshot, this suggests that all permissions are being properly shown. So if any are missing, they are actually missing. Should there be any unexpected permissions missing in this scenario, it likely points to an bug or failure in the permissions assignment process on the Rewst side.

<figure><img src="../../../../../../.gitbook/assets/entra-ui-all-permissions-shown.png" alt=""><figcaption></figcaption></figure>

## Consent to Client Permissions

* **Error Context:** Pertains to errors when consenting on a client (e.g., green shield button on CSP/Graph/EXO integration table).
* **Common Issue:** Transition to Microsoft's [Granular Delegated Admin Privileges (GDAP)](https://learn.microsoft.com/en-us/partner-center/gdap-introduction) introduces complexities in tenant access control.
* **About GDAP:**
  * **Purpose:** GDAP enables fine-grained control over tenant access, allowing the creation of groups in your MSP tenant, assignment of permissions, and user allocation.
  * **Example:** Create specific groups like "Standard M365 Clients - Exchange Administrator" or "Strict M365 Clients - Exchange Administrator" to manage access levels across different clients.
* **Rewst's Role:** Since Rewst can interact with various endpoints, the correct permissions in both your tenant and client tenant are essential.
* **Potential Resolution:**
  1. **Understand and Implement GDAP:** Utilize GDAP to create groups and assign permissions, ensuring compliance with your security policies.
  2. **Refer to Best Practices:** Detailed guidance on recommended role permissions for GDAP is available on the [Best Practices for Microsoft Integrations](../authorization-best-practices.md#recommended-roles-for-gdap) page.

## **Task Level Permissions for Microsoft Graph & Exchange Online**

* **Error Message:** Access Denied - HTTP Status code 403
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

## **Handling CSP Delegated Permissions Errors**

* **Error Message & Context:** `Request_BadRequest`, `Unsupported token. Unable to initialize the authorization context`. This manifests as a **"Bad Request"** error when making calls to Graph, despite seemingly correct integration and tenant delegation credentials.
* **Suspected Cause:** The error may stem from a cached token or from the integration being authorized prior to setting the checkbox for CSP delegation in CSP, Graph, or Exchange Online.
* **Potential Resolution:**
  1. **Uninstall & Reinstall CSP Integration:** Go to CSP integration, click "Uninstall," wait, then click "Install."
  2. **Reauthorize CSP with Admin Access:** Use the [recommended service account](../authorization-best-practices.md) with admin access for reauthorization.
  3. **Repeat for Other Integrations:** Follow steps 1-2 for Exchange Online and Graph, checking `Use CSP Delegated Consent` before authorizing.
  4. **Re-Consent on Behalf of Managed Tenants:** Return to CSP integration and click the green shield to re-consent.

## Additional CSP Error Troubleshooting

This section lists some of the most common errors. For each error, specific steps and guidelines are available to understand the cause and find the right solution. Check the corresponding subsection for detailed information.

### **Request not applicable to target tenant**

This error is mainly seen around security tasks and is likely due to a missing license such as M365 BP or Azure AD P1. Check the tenant's license information to ensure that the necessary licenses are available for the requested operation.

### **Neither tenant is B2C or tenant doesn't have a premium license**

This feature requires a P1 license or higher. Check the client's tenant license information to ensure that the necessary licenses are in place.

### **Microsoft.Skype.Sync.Pstn.Tnm.Common.Http.HttpResponseException**

Unable to connect to Teams Admin center? This might mean the tenant is missing a Teams license. Check to ensure the necessary licenses are available.

### **Provide valid credential**

If GDAP has been deployed and you're seeing this error, it may be because the user is not in any GDAP groups. Verify the user's GDAP group membership.

### **Subscription within the tenant has lapsed**

No Exchange subscription? This means that Exchange connections are no longer possible. Please verify Exchange subscription availability.

### **User was not found**

This could indicate that the relationship between the tenant and the partner has been dissolved from the client side, or that a GDAP relationship has expired. Check the partner relationship information and ensure it is still active.

### **The user or administrator has not consented to use the application & AADSTS50020**

Multiple causes could lead to this error, such as the user not authorizing the Rewst CSP integration or not being in the `AdminAgents` group. If you're using GDAP, ensure that the user is added to the correct group(s) for Rewst to function.

### **Invalid or malformed**

The request might be malformed if the body doesn't contain JSON or if variables haven't expanded. Look for syntax errors or incorrect bracket usage.

### **AppLifecycle\_2210**

Failed to call Intune APIs? Check if the tenant has the necessary license available.

### **Insufficient access rights to perform the operation**

If the user lacks sufficient access rights or is missing the necessary Exchange role, check the user's rights and Exchange role information. When using GDAP, the user must be in the "Exchange Administrators" group.

### **Device object was not found in the tenant 'xxxxxxxxxx'**

This might occur when a trusted device used for the first authorization has been deleted from the Intune portal. Reauthorization is required.

### **The provided grant has expired due to it being revoked, a fresh auth token is needed. The user might have changed or reset their password**

Password changes, session revocations, or account disabling may lead to this error. Reauthorization will be needed.

### **Due to a configuration change made by your administrator, or because you moved to a new location, you must use multi-factor authentication to access**

The absence of MFA setup or Conditional Access policies blocking Rewst's access may lead to this error. Check MFA settings and Conditional Access policies.

### **Presented multi-factor authentication has expired to the policies configured by your administrator, you must refresh your multi-factor authentication to access**

A Conditional Access Policy may have set the maximum session time, causing this error. Consider changing the policy or following guidance under Conditional Access.

### **The token has expired**

If the refresh token couldn't be retrieved or stored, reauthorization must occur.

### **Updating the password profile of a user fails with a forbidden error**

As per Microsoft documentation the following needs to be true for resetting a user's password/modifying their password profile.

See [Microsoft Documentation](https://learn.microsoft.com/en-us/graph/api/user-update?view=graph-rest-1.0\&tabs=http#permissions)

In a delegated scenario the Rewst enterprise applications need to have the 'Directory.AccessAsUser.All' permission (and corresponding GDAP roles)

In a application call scenario(MSP Level/Integration installed at the customer level standalone from CSP) the application must be assigned a priviledged role such as Authentication Administrator or Priviledged Authentication Administrator.
