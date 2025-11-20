# Google Workspace Admin integration setup

{% hint style="info" %}
Note: Rewst supports multi-instance for Google Workspace Admin, but generally one instance of Google Workspace Admin is not multi-tenant. You may need a 1:1 relationship between an instance of this integration and a sub-tenant or a Rewst sub-org.

Currently, Rewst does not support domain-wide delegation. The integration will only have access to resources that the user who authorized the integration has access to. In particular, there will be no Mailbox Delegation or personal Drive access for other user accounts.

If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

As of May 2025, this integration now supports the following APIs using the generic request action:

* Google Drive
* Gmail
* Group Settings

Rewst customers who set up this integration prior to the additional API support can take advantage of this development by enabling the corresponding API services in the Google Cloud Console, then re-authorizing their integration in Rewst. Set up steps for these API services can be found further down in this document, under the section titled Enable Google APIs.

## **Set up steps in Google**

### **Create a new project**

{% hint style="info" %}
To complete these steps in Google Cloud Console, project Editor or Owner permissions are required.
{% endhint %}

1. Log in to your Google Cloud Console at [https://console.cloud.google.com/](https://console.cloud.google.com/).&#x20;
2. Navigate to **Navigation Menu > IAM & Admin > Manage Resources**.
3. Click the **CREATE PROJECT**.
4. Enter a descriptive name for your project that will help you identify it later.
5. If applicable, choose the organization that this project will belong to. You can also leave this as **No organization** if necessary.
6. Optionally, select a **location** for your project. This choice may affect resource availability and pricing.
7. Click **CREATE**.

### Obtain client ID and secret

{% hint style="info" %}
The user who is authorizing this integration in Rewst must have Super Admin access in Google Workspace Admin.
{% endhint %}

1. Choose the GCP project you just created from the project drop-down menu at the top of the page
2. **Click APIs & Services** in the left side menu.&#x20;
3. Select **Library**.
4. Use the search bar within the API Library to find the `Admin SDK API` and select it from the results.
5. Click **Enable**.
6. Navigate back to the APIs & Services menu. Click **OAuth consent screen**.
7. Select the appropriate user type for your application. Choose **Internal** for this.
8. Enter the necessary information about your application into the relevant fields, including the **App name**, and **User support email.**
9. Click **SAVE AND CONTINUE**.
10. Click **Data Access > Scopes**.
11. Click **ADD OR REMOVE SCOPES**. Select the specific scopes that your application requires access to.
12. Search for `Admin SDK` in the search box, and select all related scopes.
13. Click **UPDATE**.
14. Navigate to the **Credentials** tab within APIs & Services. Click **CREATE CREDENTIALS** and choose **OAuth client ID** from the drop-down selector.
15. Select **Web Application** as the type of application you're building. This is the most broad and generic option and will always work with Rewst. Other options may not allow the integration to successfully set up.
16. Enter a name for your ID in the **Client ID** field.
17. Enter the following URL under **Authorized Redirect URIs**:

[`https://engine.rewst.io/integrations/google_workspace_admin_sdk/callback`](https://engine.rewst.io/integrations/google_workspace_admin_sdk/callback)

14. After creation, you will be presented with a pop-up window containing your client ID and client secret. Make sure to copy both of these.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of the Rewst platform.
2. Search for `Google Workspace Admin`.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-04-17 at 3.34.50 PM.png>)
3. Click on the integration tile to launch set up.
4. Enter the API credentials copied from Google into the relevant fields:
   1. **Client ID**
   2. **Client Secret**
   3. Email / User ID: this should be the one used to authenticate with the API
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

<figure><img src="../../../../../.gitbook/assets/Screenshot 2025-04-17 at 3.51.49 PM.png" alt=""><figcaption></figcaption></figure>

### Final setup steps in Google

#### Add integration as trusted app

1. Navigate to **Security > Access and Data Control > API controls** in your Google console at [admin.google.com](https://admin.google.com).&#x20;
2. Click **Accessed Apps > View List**.
3. Search for `Rewst`.
4. Select **Trusted** under **Status**.
5.  Check on the box **Allowlist for exemption from API access blocks in context-aware access.**<br>

    <figure><img src="../../../../../.gitbook/assets/image (63).png" alt=""><figcaption></figcaption></figure>

**Set reauthentication policy for exemption**

1. Navigate to **Security > Google Cloud session control.**
2. Click to expand the **Google Cloud cloud session control** accordion menu.
3. Select **Require authentication**.
4. Check on the box **Exempt trusted apps**.
5. Choose your method under the **Re-authentication method** menu.
6. Click **Save**.

<figure><img src="../../../../../.gitbook/assets/image (64).png" alt=""><figcaption></figcaption></figure>

### Enable Google APIs

#### Enable Google Drive API

1. Select your Project from the drop-down selector.
2. Select **APIs and Services** from the left side menu.
3. Search for `Google Drive API.`
4.  Click **Enable**.\
    <br>

    <figure><img src="../../../../../.gitbook/assets/image (78).png" alt=""><figcaption></figcaption></figure>

#### Enable Gmail API

1. Select your Project from the drop-down selector.
2. Select **APIs and Services** from the left side menu.
3. Search for `Gmail API.`
4.  Click **Enable**.\
    <br>

    <figure><img src="../../../../../.gitbook/assets/image (77).png" alt=""><figcaption></figcaption></figure>

#### Enable Group Settings API

1. Select your Project from the drop-down selector.
2. Select **APIs and Services** from the left side menu.
3. Search for `Google Drive API.`
4.  Click **Enable**.<br>

    <figure><img src="../../../../../.gitbook/assets/image (85).png" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category  | Action                                       | Description                                                 |
| --------- | -------------------------------------------- | ----------------------------------------------------------- |
| Licensing | Assign License                               | Assign a license                                            |
| Licensing | Get License                                  | Get a specific user's license by product SKU                |
| Licensing | List License Assignments for Product         | List all users assigned licenses for a specific product     |
| Licensing | List License Assignments for Product and SKU | List all users assigned licenses for a specific product SKU |
| Licensing | Revoke License                               | Revoke a license                                            |
