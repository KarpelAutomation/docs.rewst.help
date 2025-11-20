# Google Enterprise License Manager integration setup

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

### What does the Google Enterprise License Manager integration do?

This integration allows you to automate the management of Google Workspace licenses for clients, via assigning, revoking, and monitoring licenses. Streamline your operations, reduce manual workload, and improve accuracy in license management.

### Prerequisites

Before setting up your Rewst integration, you'll need to set up the Google Workspace Admin SDK API in your Google Cloud Console. Please refer to the [Google Workspace Admin SDK API documentation](https://docs.rewst.help/documentation/integrations/cloud/google-admin/google-workspace-admin-sdk-integration-setup) for detailed instructions on how to set up the API.

{% hint style="warning" %}
Note: Rewst supports multiple instances for Google Enterprise License Manager, but one instance of Google Enterprise License Manager is generally not multi-tenant. You may need a 1:1 relationship between an instance of this integration and a subtenant or a Rewst suborganization. Editor or owner permissions are needed to complete these steps in your Google Cloud Console.
{% endhint %}

### **Update your Google Cloud API connector**

In your Google Cloud console:

1. Choose the GCP project you want to update from the project drop-down menu at the top of the page.
2. Locate and click on **APIs and services** in the **Quick access** menu, then select **Library**.
3.  Find the **Enterprise License Manager** via the search bar within the API Librar&#x79;**.** Select it from the results.<br>

    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-01-14 at 3.50.27 PM.png" alt=""><figcaption></figcaption></figure>
4. Click **Manage**.
5.  Verify that the API is enabled for your project on the **API/Service details** page. You should see a blue button to **Disable API** if it is enabled. If not, click the **Enable** button.<br>

    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-01-14 at 3.54.25 PM.png" alt=""><figcaption></figcaption></figure>
6. Return to the **APIs and Services** menu. Select **OAuth consent screen.**
7. Ensure that the correct user type for your application is selected: **Internal** or **External**.
8. Click **EDIT APP**. Review and update the necessary information about your application, including the **App name**, **User support email**, and optionally an **App logo**. Click **SAVE AND CONTINUE**.
9. You should automatically be navigated to step **2,** in the **Scopes** tab of that same screen. Click **ADD OR REMOVE SCOPES** to open the **Update selected scopes** dialog. Ensure that the specific scopes that your application requires access to are selected.
10. Search for **Enterprise License Manager** in the search box, and select all related scopes.<br>

    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-01-14 at 4.00.36 PM (1).png" alt=""><figcaption></figcaption></figure>
11. Click **UPDATE** once you've reviewed the necessary scopes.
12. Navigate to **Credentials** within the **APIs and Services** menu. Click on **+CREATE CREDENTIALS** and choose **OAuth client ID** from the drop-down menu if new credentials are needed.\
    \
    ![](<../../../../../.gitbook/assets/Screenshot 2025-01-14 at 4.03.32 PM.png>)
13. Ensure that the type of application you are building is correctly selected from the **Application type** drop down menu (e.g., Web application, Android, iOS, etc.).
14. Provide a name for your client ID and check that the following URL is entered under **Authorized Redirect URIs**:\
    [`https://engine.rewst.io/integrations/google_enterprise_license_manager/callback`](https://engine.rewst.io/integrations/google_enterprise_license_manager/callback)
15. After updating, you'll be presented with a dialog containing your client ID and client secret.

### Integration setup in Rewst

1. Navigate to **Configuration** > **Integrations** in the left side menu of your Rewst platform.
2. In the **Find Integrations** search bar, search for `Google Enterprise License Manager` **.**
3. Click on the integration tile to launch the configuration setup page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-01 at 3.25.51 PM.png>)
4. Enter the information you received from Google Cloud into the relevant **Client ID**, **Client Secret**, and **Email / User ID** fields.
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category      | Action                                       | Description                                                 |
| ------------- | -------------------------------------------- | ----------------------------------------------------------- |
| **Licensing** | Get License                                  | Get a specific user's license by product SKU                |
| **Licensing** | List License Assignments for Product and SKU | List all users assigned licenses for a specific product SKU |
| **Licensing** | Assign License                               | Assign a license                                            |
| **Licensing** | Revoke License                               | Revoke a license                                            |
| **Licensing** | List License Assignments for Product         | List all users assigned licenses for a specific product     |
