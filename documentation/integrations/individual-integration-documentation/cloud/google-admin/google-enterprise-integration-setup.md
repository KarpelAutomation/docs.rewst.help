# Google Enterprise integration setup

{% hint style="info" %}
This integration allows you to automate the management of Google Workspace licenses for clients, via assigning, revoking, and monitoring licenses. Streamline your operations, reduce manual workload, and improve accuracy in license management.
{% endhint %}

### Pre-requisites for integration:

Before setting up your Rewst integration, you'll need to set up the Google Workspace Admin SDK API in your Google Cloud Console. Please refer to the [Google Workspace Admin SDK API documentation](https://docs.rewst.help/documentation/integrations/cloud/google-admin/google-workspace-admin-sdk-integration-setup) for detailed instructions on how to set up the API.

Find this integration [here in your Rewst Platform](https://app.rewst.io/organizations/b6e6c7b9-ff6e-4fff-a875-dfcb6ffc2c2d/integrations/google_enterprise_license_manager).

{% hint style="warning" %}
Note: Rewst supports multiple instances for Google Enterprise License Manager, but one instance of Google Enterprise License Manager is generally not multi-tenant. You may need a 1:1 relationship between an instance of this integration and a subtenant or a Rewst suborganization. Editor or owner permissions are needed to complete these steps in your Google Cloud Console.
{% endhint %}

### **Updating your Google Cloud API connector**

In your Google Cloud console:

1. Choose the GCP project you want to update, from the project drop-down menu at the top of the page.
2. Locate and click on **APIs and services** in the **Quick access** menu, then select **Library**.
3.  Find the **Enterprise License Manager** via the search bar within the API Librar&#x79;**.** Select it from the results.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-01-14 at 3.50.27 PM.png" alt=""><figcaption></figcaption></figure>
4. Click **Manage**.
5.  Verify that the API is enabled for your project on the **API/Service details** page. You should see a blue button to **Disable API** if it is enabled. If not, click the **Enable** button.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-01-14 at 3.54.25 PM.png" alt=""><figcaption></figcaption></figure>
6. Return to the **APIs and Services** menu. Select **OAuth consent screen.**
7. Ensure that the correct user type for your application is selected: **Internal** or **External**.
8. Click **EDIT APP**. Review and update the necessary information about your application, including the **App name**, **User support email**, and optionally an **App logo**. Click **SAVE AND CONTINUE**.
9. You should automatically be navigated to step **2,** in the **Scopes** tab of that same screen. Click **ADD OR REMOVE SCOPES** to open the **Update selected scopes** dialog. Ensure that the specific scopes that your application requires access to are selected.
10. Search for **Enterprise License Manager** in the search box, and select all related scopes.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-01-14 at 4.00.36 PM (1).png" alt=""><figcaption></figcaption></figure>
11. Click **UPDATE** once you've reviewed the necessary scopes.
12. Navigate to **Credentials** within the **APIs and Services** menu. Click on **+CREATE CREDENTIALS** and choose **OAuth client ID** from the drop-down menu if new credentials are needed.\
    ![](<../../../../../.gitbook/assets/Screenshot 2025-01-14 at 4.03.32 PM.png>)
13. Ensure that the type of application you are building is correctly selected from the **Application type** drop down menu (e.g., Web application, Android, iOS, etc.).
14. Provide a name for your client ID and check that the following URL is entered under **Authorized Redirect URIs**:\
    `{engine_url}/integrations/google_enterprise_license_manager/callback`
15. After updating, you'll be presented with a dialog containing your client ID and client secret.

### Integration setup in Rewst

In the Rewst platform:

1. Navigate to **Configuration** > **Integrations**.
2. In the **Find Integrations** search bar, search for **Google Enterprise** and select the integration.\
   ![](<../../../../../.gitbook/assets/Screenshot 2025-01-10 at 3.41.28 PM.png>)
3. Enter the information you received from Google Cloud into the relevant **Client ID**, **Client Secret**, and **Email / User ID** fields.
4. **Save Configuration**.
