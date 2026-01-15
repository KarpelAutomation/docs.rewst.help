# QuickBooks Online integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## **What does the QuickBooks Online integration do?**

Our QuickBooks Online integration automates financial and operational, workflows. Use the Quickbooks Online API within Rewst workflows to enable automatic invoicing, real-time synchronization of customer and financial data, and reduce manual data entry.

## **Set up the Quickbooks Online integration**

### **Set up steps in QuickBooks Online**

1. Log in to your QuickBooks account.
2. Navigate to this address: [https://developer.intuit.com/app/developer/dashboard](https://developer.intuit.com/app/developer/dashboard) . You may need to switch to **classic view** if you aren't able to see the dashboard.
3. Navigate to **My Hub > App Dashboard**.
4. Click **+** to add a new app.
5. Enter `Rewst` in the **Tell us about your app** field.
6. Click **Next**.
7.  Check the box for **com.intuit.quickbooks.accounting** under **Authorization scope**.<br>

    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-05-01 at 12.19.43 PM.png" alt=""><figcaption></figcaption></figure>
8. Click **Done**.
9. Click **Confirm** in the **Add these permissions?** Dialog that appears.&#x20;
   1. If you wish to add the app to Intuit's Production environment rather than Development, you'll need to complete this additional step.
   2. Click ⋮to open the app.
   3. Click the slider to toggle **Production**.
   4.  &#x20;Fill out all required information in the accordion menus. The required questions may differ from the image below depending on your previous use of Production with Intuit.<br>

       <figure><img src="../../../../.gitbook/assets/Screenshot 2025-11-05 at 1.54.01 PM.png" alt=""><figcaption></figcaption></figure>
   5. If prompted to fill out a questionnaire under **App Information**, check the last option under question 1. This will shorten the required information needed. Other selections under this question will lead to longer, more involved additional questions.\
      ![](<../../../../.gitbook/assets/image (76) (1).png>)
   6. Click **Show credentials**.<br>
10. Copy your Client ID and Client Secret. Store them somewhere secure. You’ll need these for further set up steps in Rewst.\
    \
    ![](<../../../../.gitbook/assets/Screenshot 2025-05-01 at 12.20.37 PM.png>)
11. Navigate to **Settings** in the left side menu.
12. Click the **Redirect URIs** tab.
13. Click **+ Add URI**.
14. Leave this page open in one tab in your browser; do not close this page. Start a new tab, navigate to Rewst, and proceed to the set up steps below.&#x20;

### Set up steps in Rewst

1. Navigate to Configuration > Integrations in the left side menu of your Rewst platform.
2. Search for `QuickBooks` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-11-05 at 1.59.51 PM.png>)<br>
3. Click on the integration tile to launch the configuration setup page.
4. At the top of the new page that appears, you'll find a URL unique to you and your Rewst instance. Copy this URL.
5. Return to the browser tab where you completed your QuickBooks setup steps. Paste the copied URL into the field and **save**.
6. Return to your browser tab where you're using Rewst.

{% hint style="warning" %}
Note that if you ever choose to uninstall and reinstall the QuickBooks integration, a new link will be generated and appear at the top of your configuration screen in Rewst. You'll need to update this link in QuickBooks for the integration to successfully reinstall
{% endhint %}

7. Under **Parameters:**
8. Choose your hostname from the drop-down selector - set as `quickbooks.api.intuit.com` for production or `sandbox-quickbooks.api.intuit.com` for development
9. Enter your copied information into the following relevant fields:
   1. Quickbooks Online App Client Secret
   2. Quickbooks Online Client ID

{% hint style="warning" %}
&#x20;If you are using the sandbox environment, use the appropriate sandbox hostname. This will direct API calls to the QuickBooks Online sandbox environment. Note: Sandbox credentials are different from Production credentials. They are under Development Settings and Production Settings respectively.
{% endhint %}

10. Click **Save Configuration**.
11. Click **Authorize**. A dialog will appear from QuickBooks Online to authorize the connection. You may be prompted to log in.&#x20;
12. Choose a company from the drop-down selector. This is the company that Rewst will interact with.\
    \
    ![](<../../../../.gitbook/assets/Screenshot 2025-05-01 at 12.50.40 PM.png>)
13. Click **Next**.
14. Click **Connect**.\
    \
    ![](<../../../../.gitbook/assets/Screenshot 2025-05-01 at 12.50.50 PM.png>)



{% hint style="info" %}
The QuickBooks integration does not require you to complete the organization mapping process.
{% endhint %}

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category            | Action                        | Description                                                                                                                                                                                                     |
| ------------------- | ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Accounts**        | Create Account                | Creates an account, then returns the Account object                                                                                                                                                             |
| **Accounts**        | Read Account                  | Returns the account object, given the ID                                                                                                                                                                        |
| **Accounts**        | Update Account                | Fully update an account, then return the Account object                                                                                                                                                         |
| **Accounts**        | List Accounts                 | Lists all accounts                                                                                                                                                                                              |
| **Customers**       | Create Customer               | Creates a customer, then returns the Customer object. The DisplayName attribute or at least one of Title, GivenName, MiddleName, FamilyName, or Suffix attributes is required during object create.             |
| **Customers**       | Read Customer                 | Returns the customer object, given the ID                                                                                                                                                                       |
| **Customers**       | Update Customer               | Fully update an customer, then return the Customer object                                                                                                                                                       |
| **Customers**       | List Customers                | Lists all customers                                                                                                                                                                                             |
| **Deposit**         | Create Deposit                | Creates a Deposit, then returns the Deposit object                                                                                                                                                              |
| **Deposit**         | Read Deposit                  | Returns the deposit object, given the ID                                                                                                                                                                        |
| **Deposit**         | Update Deposit                | Fully update an deposit, then return the Deposit object. If sparse update, only the provided fields will be updated. If sparse is false, the entire deposit will be updated and empty fields will be nullified. |
| **Deposit**         | Delete Deposit                | Delete an deposit                                                                                                                                                                                               |
| **Deposit**         | List Deposits                 | Lists all deposits                                                                                                                                                                                              |
| **Generic Request** | Quickbooks Online API Request | Generic action for making authenticated requests against the Quickbooks Online API                                                                                                                              |
| **Invoice**         | Create Invoice                | Creates an Invoice, then returns the Invoice object                                                                                                                                                             |
| **Invoice**         | Read Invoice                  | Returns the invoice object, given the ID                                                                                                                                                                        |
| **Invoice**         | Update Invoice                | Fully update an invoice, then return the Invoice object. If sparse update, only the provided fields will be updated. If sparse is false, the entire invoice will be updated and empty fields will be nullified. |
| **Invoice**         | Delete Invoice                | Delete an invoice                                                                                                                                                                                               |
| **Invoice**         | List Invoices                 | Lists all invoices                                                                                                                                                                                              |
