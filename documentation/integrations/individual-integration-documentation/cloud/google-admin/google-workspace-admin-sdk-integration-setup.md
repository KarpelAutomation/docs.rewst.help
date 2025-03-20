# Google Workspace Admin SDK Integration Setup

{% hint style="info" %}
Note: Rewst supports multi-instance for Google Workspace Admin, but generally one instance of Google Workspace Admin is not multi-tenant. You may need a 1:1 relationship between an instance of this integration and a sub-tenant or a Rewst sub-org.
{% endhint %}

## **Creating a New Project**

{% hint style="info" %}
To complete these steps in Google Cloud Console, project Editor or Owner permissions are required.
{% endhint %}

1. **Navigate** to the Google Cloud Console: Open your web browser and go to [https://console.cloud.google.com/](https://console.cloud.google.com/)
2. **Open** the Manage Resources Page: Locate the navigation menu (hamburger icon) in the top left corner and click on it. Then, select "IAM & Admin" and choose "Manage Resources."
3. **Create** a New Project: Click the "CREATE PROJECT" button at the top of the page.
4. **Name** Your Project: Provide a descriptive name for your project. This name will help you identify it later.
5. **Select** Organization (Optional): If applicable, choose the organization that this project will belong to. You can also leave this as "No organization" if necessary.
6. **Choose** Location (Optional): Select a location for your project. This choice may affect resource availability and pricing.
7. **Create** the Project: Click the "CREATE" button to finalize the project creation process.

## **Obtaining Client ID and Secret**

{% hint style="info" %}
The user who is authorizing this integration in Rewst must have Super Admin access in Google Workspace Admin.
{% endhint %}

1. **Select** Your Project: From the project drop-down menu at the top of the page, choose the GCP project you just created.
2. **Access** the API Library: In the left-hand navigation menu, locate and click on "APIs & Services," then select "Library."
3. **Search** for the Admin SDK API: Within the API Library, use the search bar to find the "Admin SDK API" and select it from the results.
4. **Enable** the Admin SDK API: On the Admin SDK API page, click the "ENABLE" button to activate the API for your project.
5. **Create** OAuth Consent Screen: Go back to the "APIs & Services" menu and select "OAuth consent screen."
6. **Choose** User Type: Select the appropriate user type for your application. Choose "Internal" for this.
7. **Configure** OAuth Consent Screen: Provide the necessary information about your application, including the App name, User support email, and optionally an App logo. Click "SAVE AND CONTINUE."
8. **Add** Scopes: In the "Scopes" tab, click "ADD OR REMOVE SCOPES." Select the specific scopes that your application requires access to.
9. **Search** Admin SDK in the search box, and select all related scopes.
10. **Click** "UPDATE" once you've selected the necessary scopes.
11. **Create** Credentials: Navigate to the "Credentials" tab within "APIs & Services." Click on "CREATE CREDENTIALS" and choose "OAuth client ID" from the drop-down menu.
12. **Choose** Application Type: Select the type of application you are building (e.g., Web application, Android, iOS, etc.).
13. **Configure** Client ID: Provide a name for your client ID and enter the following URL under "Authorized Redirect URIs":

[`https://engine.rewst.io/integrations/google_workspace_admin_sdk/callback`](https://engine.rewst.io/integrations/google\_workspace\_admin\_sdk/callback)

14. **Obtain** Client ID and Secret: After creation, you will be presented with a pop-up window containing your client ID and client secret.

