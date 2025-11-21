# CIPP: CyberDrain Improved Partner Portal integration

## **What does the** CIPP integration **do?**

Our CIPP (CyberDrain Improved Partner Portal) integration enables automation of Microsoft 365 multi-tenant management. Use the CIPP API within Rewst workflows to automate tasks such as add, edit, and delete users, offboard users, change calendar permissions, and manage shared mailboxes.

## Set up the CIPP integration

### Set up steps in CIPP

1. Log in to your CIPP Portal.
2. Navigate through the sidebar and click **CIPP**.
3. Click **Integrations** under CIPP.
4. You should be able to see the **API URL** and **Tenant ID**.
5. Click **Actions**, and then create a new client. Select the **Admin** Role.  Ensure that the new client is enabled.
6. After creating the client, the client secret will be generated. The **Client ID** should be visible next to the app name of the new API client you have just added.
7. Copy the following information and store it someplace secure.  You'll need it for further setup steps in Rewst.
   * **CIPP API URL** - The URL of your CIPP instance
   * **Client ID** - The Application ID -Client ID- from your Azure AD app registration
   * **Client Secret -** The Client Secret from your Azure AD app registration
   * **Tenant ID** - Your Azure AD Tenant ID

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `CIPP` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/image (308).png>)
3. Click on the integration tile to launch the configuration setup page.
4. Enter the following details under the **Parameters** section:
   * **CIPP API URL** - The URL of your CIPP instance
   * **Client ID** - The Application ID (Client ID) from your Azure AD app registration
   * **Client Secret -** The Client Secret from your Azure AD app registration
   * **Tenant ID** - Your Azure AD Tenant ID
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for [organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category        | Action                     | Description                                                                                                              |
| --------------- | -------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| GDAP            | Create GDAP Invite         | Creates a new GDAP invite.                                                                                               |
| GDAP            | List GDAP Roles            | Retrieves a list of existing GDAP role templates.                                                                        |
| GDAP            | List GDAP Role Templates   | Retrieves a list of existing GDAP role templates.                                                                        |
| Generic Request | CIPP API Request           | Generic action for making authenticated requests against the CIPP API                                                    |
| Security        | Send MFA Push              | Sends an MFA push notification to a user                                                                                 |
| Security        | List Application Queue     | Retrieves a list of applications in the consent queue to keep tabs on application consent requests from users            |
| Security        | List MFA Users             | Retrieves a list of users with MFA information to generate compliance reports and flag who's enabled and who isn't       |
| Sharepoint      | Set SharePoint Member      | Add or remove a user as a member of a SharePoint site                                                                    |
| Sharepoint      | Set SharePoint Permissions | Add or remove a user as a site admin for SharePoint or add/remove permissions for OneDrive                               |
| Sharepoint      | List Sites                 | Lists SharePoint sites                                                                                                   |
| Tenants         | List Tenants               | Retrieves a list of tenants                                                                                              |
| Tenants         | List Graph Request         | Generic endpoint for making Graph API requests with different parameters                                                 |
| Tools           | List Domain Analyser       | This action is used to check general health diagnostics and comprehensive domain security assessments.                   |
| Tools           | List Domain Health         | This action is used to check the health of a domain, this can check for the SPF, NS, DMARC, DKIM, and other DNS records. |
| Users           | List Users                 | List users for selection in forms                                                                                        |
