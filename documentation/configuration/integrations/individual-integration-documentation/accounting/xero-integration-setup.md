# Xero integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Xero integration do?

Our Xero integration enables the automation of finance processes by seamlessly connecting Xero and Rewst. Automate workflows for managing client financial data, invoices, and more.

## Set up the Xero integration

### Set up steps in Xero

1. Login to your [Xero Developer Apps Portal](https://developer.xero.com/app/manage)
2. Navigate to **My Apps.**
3. Click to add a **New App**.
4. Fill in the required fields and click **Create App**.
   * Select **Web App** as the Integration Type
   *   For the Redirect URI, you'll need to enter the following URL as a callback URL:

       ```
       ttps://engine.rewst.io/integrations/xero/callback/01943e7a-fe5b-7732-93be-ad884ebf2dec
       ```
5. Navigate to the configuration of the app you just created and copy the **Client ID** and **Client Secret** . Store both of these for later use in Rewst. Note that once you leave the page, you won't be able to see the Client Secret again.
   1. If there is no client secret, you can generate one by clicking **Generate a Secret**.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Xero` in the integrations page.

<figure><img src="../../../../../.gitbook/assets/Screenshot 2025-05-01 at 2.02.18 PM.png" alt="A dark-themed information card titled &#x22;Xero&#x22; with a circular Xero logo at the top. The card explains that the Xero integration for Rewst automates finance processes, enabling users to connect their Xero account with Rewst for managing client financial data, invoices, and workflows. It notes the last update date as December 7th, 2024, and includes a labeled tag at the bottom that says &#x22;Accounting.&#x22;"><figcaption></figcaption></figure>

3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**:
   1. Set your **Zero API Scopes** - default scopes are already set, but reference Xero's [documentation about scopes here](https://developer.xero.com/documentation/guides/oauth2/scopes/), if you wish to modify as needed
   2. Enter the **Xero App Secret** and **Xero App Client ID** you copied previously
   3. Specify the default tenant name you want to use for the connection
      1. Return to your my.xero.com dashboard and copy the name of the organization you want to use
      2. This is case sensitive - make sure to enter the name exactly as it appears in Xero
5. Click **Save Configuration**.
6. Click **Authorize** to connect your Xero account
7. Rewst will do a quick validation of your input.
8. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

## Actions and endpoints

Xero's own API documentation can be found [here](https://developer.xero.com/documentation/api/accounting/overview).&#x20;

| Category            | Action              | Description                                                           |
| ------------------- | ------------------- | --------------------------------------------------------------------- |
| **Accounts**        | List Accounts       | List all accounts                                                     |
| **Accounts**        | Get Account         | Get account by ID                                                     |
| **Accounts**        | Create Account      | Create an account                                                     |
| **Accounts**        | Update Account      | Update an account                                                     |
| **Employees**       | List Employees      | List all employees                                                    |
| **Employees**       | Get Employee        | Get a specific employee                                               |
| **Employees**       | Create Employee     | Create a new employee                                                 |
| **Employees**       | Update Employee     | Update an existing employee                                           |
| **Generic Request** | Xero API Request    | Generic action for making authenticated requests against the Xero API |
| **Invoices**        | List Invoices       | List all invoices                                                     |
| **Invoices**        | Get Invoice         | Get a specific invoice                                                |
| **Invoices**        | Create Invoice      | Create a new invoice                                                  |
| **Invoices**        | Delete/Void Invoice | Delete/Void an existing invoice                                       |
| **Invoices**        | Update Invoice      | Update an existing invoice                                            |

{% hint style="info" %}
**Important**

Make sure to copy the client secret and store it in a secure location. You will not be able to view the client secret again after you close the dialog box.
{% endhint %}
