# Prerequisites and best practices for Microsoft integrations

Understanding Microsoft integrations can be complex due to the multitude of products and services involved. This section provides a comprehensive guide to the recommended setup for Rewst, detailing aspects such as **account usage**, **multi-factor authentication (MFA)**, **GDAP** **groups**, and **Conditional Access Policies**. Proper implementation as described herein ensures smooth integration with the [Microsoft CSP](microsoft-csp/), [Microsoft Graph](microsoft-graph/), or [Microsoft Exchange Online](microsoft-exchange-online/) integrations. Failure to adhere to these instructions may result in integration issues.

## **Setup & Authorization**

1. **Create a Dedicated Account**: Establish a dedicated account with `Global Administrator` permissions during the setup process.
   * **Name**: `Rewst Integration`
   * **Username**: `rewst@domain.tld`
   * **Role**: Assign `Global Administrator` permissions during setup (can be revoked after)
2. **Roles and Permissions**:
   * The Rewst user must be added to the groups you've assigned for GDAP as well as the `AdminAgents` group (`AdminAgents` does not give any roles in a GDAP environment, but it gives access to the partner center and related APIs).
3. **MFA Requirements**:
   * **Enforcement**: Implement Microsoft multi-factor authentication (MFA) for each login, either via `Conditional Access` when available or via [Per User MFA](https://account.activedirectory.windowsazure.com/UserManagement/MultifactorVerification.aspx).
   * **Exclusion and Length Policies**: No excluded locations may be applied nor authentication length policies. Refer to the chapter on conditional access for proper configuration.
   * **Authentication Provider**: Only Microsoft authentication is permissible. providers like Duo are incompatible. For more information, see Microsoft's page on [Supported MFA options](https://learn.microsoft.com/en-us/partner-center/partner-security-requirements-mandating-mfa#supported-mfa-options).

## Conditional Access

Ensuring secure access to your tenants with Rewst requires careful configuration of Conditional Access policies. Follow the guidelines below for both your organization and your clients:

### **Setup Your Policies**

1. **Browse to Azure**: Navigate to the [Conditional Access Policies](https://portal.azure.com/#view/Microsoft_AAD_ConditionalAccess/ConditionalAccessBlade/~/Policies) blade in Azure..
2. **Exclude Rewst Service Account**: Remove the Rewst service account from existing policies.
3. **Create a New Policy**:
   * **Include Rewst User**: Add the Rewst user to the policy.
   * **Enforce MFA**: Mandate Azure Multi-factor Authentication for each login and application.
   * **Policy Name**: Save this policy under the name **"Rewst Conditional Access Policy".**

### **Setup Clients' Policies**

Granular access is influenced by your clients' conditional access policies. To ensure seamless access to your clients using your Rewst integration user, follow these steps:

1. **Browse to Client's Azure**: Navigate to your client's [Conditional Access Policies](https://portal.azure.com/#view/Microsoft_AAD_ConditionalAccess/ConditionalAccessBlade/~/Policies) blade in Azure.
2. **Modify Policies**: For each policy listed, add an exclusion to `Users and Groups` with these settings:
   * Guest or external users
   * Service Provider Users
   * **Tenant ID**: Enter your tenant ID. If unknown, find it at [What Is My Tenant ID](https://whatismytenantid.com/).

{% hint style="info" %}
**Note**: Excluding the MSP from the Conditional Access Policy is recommended as per [Microsoft's GDAP Documentation](https://learn.microsoft.com/en-us/partner-center/gdap-faq#what-is-the-recommended-next-step-if-the-conditional-access-policy-set-by-the-customer-blocks-all-external-access-including-csps-access-aobo-to-the-customers-tenant).
{% endhint %}

### Post-Modification Behavior

* **Propagation Time**: Changes may take up to an hour to become active in the Rewst environment.
* **Quick Refresh**: Click the blue shield icon next to the client's name on the Graph/CSP/Exchange Integration page in Rewst to expedite propagation.

## Recommended Roles for GDAP

Consent to client permissions involves recognizing different group structures like GDAP (Granular Delegated Admin Privileges), which allows more controlled tenant access by creating groups and assigning permissions, aligning with Rewst's requirements.

{% hint style="info" %}
The table below outlines the recommended roles in your Azure environment for Rewst, describing what each role enables. Click on the Role Name to navigate to Microsoft's [Azure AD built-in roles](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#cloud-app-security-administrator) page for detailed information about each specific role.
{% endhint %}

<table data-full-width="false"><thead><tr><th width="336.062656641604">Role Name</th><th>What it allows for</th></tr></thead><tbody><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#application-administrator"><strong>Application Administrator</strong></a></td><td>Can create and manage all applications, service principals, app registration, enterprise apps, consent requests. Cannot manage directory roles, security groups.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#authentication-policy-administrator"><strong>Authentication Policy Administrator</strong></a></td><td>Configures authentication methods policy, MFA settings, manages Password Protection settings, creates/manages verifiable credentials, Azure support tickets. Restrictions on updating sensitive properties, deleting/restoring users, legacy MFA settings.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#cloud-app-security-administrator"><strong>Cloud App Security Administrator</strong></a></td><td>Manages all aspects of the Defender for Cloud App Security in Azure AD, including policies, alerts, and related configurations.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#cloud-device-administrator"><strong>Cloud Device Administrator</strong></a></td><td>Enables, disables, deletes devices in Azure AD, reads Windows 10 BitLocker keys. Does not grant permissions to manage other properties on the device.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#exchange-administrator"><strong>Exchange Administrator</strong></a></td><td>Manages all aspects of Exchange Online, including mailboxes, permissions, connectivity, and related settings. Limited access to related Exchange settings in Azure AD.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#intune-administrator"><strong>Intune Administrator</strong></a></td><td>Manages all aspects of Intune, including all related resources, policies, configurations, and tasks.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#user-administrator"><strong>User Administrator</strong></a></td><td>Manages all aspects of users, groups, registration, and resets passwords for limited admins. Cannot manage security-related policies or other configuration objects.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#privileged-authentication-administrator"><strong>Privileged Authentication Administrator</strong></a></td><td>Sets/resets authentication methods for all users (admin or non-admin), deletes/restores any users. Manages support tickets in Azure and Microsoft 365. Restrictions on managing per-user MFA in legacy MFA portal.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#privileged-role-administrator"><strong>Privileged Role Administrator</strong></a></td><td>Manages role assignments in Azure AD, Azure AD Privileged Identity Management, creates/manages groups, manages all aspects of Privileged Identity Management, administrative units. Allows managing assignments for all Azure AD roles including Global Administrator.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#security-administrator"><strong>Security Administrator</strong></a></td><td>Can read security information and reports, and manages security-related features, including identity protection, security policies, device management, and threat management in Azure AD and Office 365.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#sharepoint-administrator"><strong>SharePoint Administrator</strong></a></td><td>Manages all aspects of SharePoint Online, Microsoft 365 groups, support tickets, service health. Scoped permissions for Microsoft Intune, SharePoint, and OneDrive resources.</td></tr><tr><td><a href="https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#teams-administrator"><strong>Teams Administrator</strong></a></td><td>Manages all aspects of Microsoft Teams, including telephony, messaging, meetings, teams, Microsoft 365 groups, support tickets, and service health.</td></tr></tbody></table>
