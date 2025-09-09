---
description: >-
  How to leverage your own application permissions for customized integration
  control.
---

# Owned app registration

Owned App Registration within your Microsoft tenant allows for a tailored configuration and heightened security settings. This advanced option is suited for users with proficiency in their Microsoft Entra environment who require custom control over their Microsoft integrations. For most cases, Rewst recommends that you not choose this option when configuring your Microsoft Cloud Integration Bundle.

## **Reasons to choose Owned App Registration**

* Specialized access: Your requirements are not natively met via Rewst's Cloud Connector.
* Enhanced security control: You need control over the application for security purposes.
* Utilization of existing applications: You wish to integrate with already existing applications.

## **Configuration instructions**

{% hint style="info" %}
Below is a high-level walkthrough of what you need to configure your owned app in Rewst. For detailed instructions and additional support on registering/managing your own apps, refer to Microsoft's[ Guide to registering an application with the Microsoft identity platform](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app).
{% endhint %}

1. **Access the Azure Portal:**
   * Log into your [Microsoft Entra Admin Center](https://entra.microsoft.com/).
   * Navigate to **Identity** > **Applications** > **App Registrations**.
2. Create or Select an App Registratio&#x6E;**:**
   * To create a new app, click **New registration**.
   * To use an existing app, select one from the **Owned applications** list.
3. Configure redirect URL:
   * To ensure Rewst can communicate with your app registration after authentication, and receive security tokens post-authentication, set the redirect URI to `https://engine.rewst.io/integrations/bundles/microsoft_cloud/callback`
4. Gather essential information:
   * Note the Client ID and generate a Client Secret under **Certificates & Secrets**.
   * Enter these credentials when configuring the application in Rewst.
5. **Decide the auth subject:**
   * Select **common** if your app registration is accessible across multiple tenants.
   * Choose **Tenant ID** if your registration is restricted to your own tenant, and ensure this ID is included in the **Tenant ID** field to generate the correct authentication URL.

## **Minimum Permissions Needed**

### Azure Integration

In order to use the Azure Integration, you will need the following at minimum:&#x20;

<figure><img src="../../../../../.gitbook/assets/azure_permissions_needed.png" alt=""><figcaption></figcaption></figure>

{% hint style="danger" %}
Depending on the use-case, you may require the other two shown above.&#x20;
{% endhint %}

### Microsoft Graph Integration

In order to use the Graph Integration, you'll need the following highlighted in red at minimum to authorize the integration. The following highlighted in yellow are also highly recommended to ensure all expected actions work:&#x20;

<figure><img src="../../../../../.gitbook/assets/graph_permissions_needed.png" alt=""><figcaption></figcaption></figure>

### Microsoft Graph Subscription Triggers&#x20;

In order to use the Microsoft Graph Subscription Triggers, the following permissions are required:&#x20;

<figure><img src="../../../../../.gitbook/assets/MS_Graph_Triggers_permissions_needed.png" alt=""><figcaption></figcaption></figure>

### CSP Integration

These are the permissions required to use the CSP integration:

<figure><img src="../../../../../.gitbook/assets/csp_permissions_needed.png" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Make sure to choose the _Microsoft Partner Center_ API highlighted below as the duplicates will cause issues with your integration.
{% endhint %}

<figure><img src="../../../../../.gitbook/assets/msft-app-ids (1).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../../../../../.gitbook/assets/request-api-permissions-user_impersonation.png" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
When choosing the Auth Subject:

* **If you are using a CSP**: Choose **common** as it's the subject used for multi-tenancy when constructing an auth URL. This will install an enterprise app in the CSP customer tenants and you will be able to run actions for customers.
* **If you're not using a CSP**: Select **Tenant ID** so that you are only exposing your app to your own tenant
{% endhint %}

<figure><img src="../../../../../.gitbook/assets/single-tenant-multi-tenant-owned-app.png" alt=""><figcaption></figcaption></figure>

### EXO Integration

In order to use the EXO Integration, the highlighted permissions are required:

<figure><img src="../../../../../.gitbook/assets/EXO_permissions_needed.png" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
The `full_access_as_app` permission is also recommended in some edge cases.
{% endhint %}

## Troubleshoot owned app registration

### Use of implicit flow, where ID token is not enabled

`Error: Error during callback. error='unsupported_response_type' error_description="AADSTS700054: response_type 'id_token' is not enabled for the application. Trace ID: 276a464d-f9cf-42c1-9549-e0e52f510000 Correlation ID: 246df67a-b874-4ef3-aefc-9046fe6d0c5e Timestamp: 2024-11-19 1846Z`

This error is given when you don't have the id token enabled for the application. To resolve this error, you'll need to:

1. Navigate to the app in Azure.&#x20;
2. Navigate to **Authentication**.
3. Check the **ID tokens** box.

<figure><img src="../../../../../.gitbook/assets/image (72) (1).png" alt=""><figcaption></figcaption></figure>
