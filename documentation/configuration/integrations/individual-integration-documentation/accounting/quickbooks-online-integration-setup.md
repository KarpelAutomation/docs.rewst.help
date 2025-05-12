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
7.  Check off the box for **com.intuit.quickbooks.accounting** under **Authorization scope**.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-05-01 at 12.19.43 PM.png" alt=""><figcaption></figcaption></figure>
8. Click **Done**.
9. Click **Confirm** in the **Add these permissions?** Dialog that appears.&#x20;
10. Copy your Client ID and Client Secret. Store them somewhere secure. You’ll need these for further set up steps in Rewst.\
    \
    ![](<../../../../../.gitbook/assets/Screenshot 2025-05-01 at 12.20.37 PM.png>)
11. Navigate to **Settings** in the left side menu.
12. Click the **Redirect URIs** tab.
13. Click **+ Add URI**.
14. Enter the following URL into the field, and click **Save**.

```
https://engine.rewst.io/integrations/quickbooks_online/callback/01954351-002e-7dfd-99d2-db9966733596
```

### Set up steps in Rewst

1. Navigate to Configuration > Integrations in the left side menu of your Rewst platform.
2. Search for `QuickBooks` in the integrations page.\
   \
   ![A visual card for "QuickBooks Online" integration with Rewst. It includes the QuickBooks logo and a description: “Automates financial and operational workflows. Utilize the QuickBooks Online API within Rewst workflows to enable automatic invoicing, real-time synchronization of customer and financial data, and reduce manual data entry.” The card notes it was last updated on December 7th, 2024, and has a tag labeled "Accounting" at the bottom.](<../../../../../.gitbook/assets/Screenshot 2025-05-01 at 11.58.23 AM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters:**
   1. Choose your hostname from the drop-down selector - set as `quickbooks.api.intuit.com` for production or `sandbox-quickbooks.api.intuit.com` for development
   2. enter your copied information into the following relevant fields:
      1. Quickbooks Online App Client Secret
      2. Quickbooks Online Client ID

{% hint style="warning" %}
&#x20;If you are using the sandbox environment, use the appropriate sandbox hostname. This will direct API calls to the QuickBooks Online sandbox environment. Note: Sandbox credentials are different from Production credentials. They are under Development Settings and Production Settings respectively.
{% endhint %}

5. Click **Save Configuration**.
6. Click **Authorize**. A dialog will appear from QuickBooks Online to authorize the connection. You may be prompted to log in.&#x20;
7. Choose a company from the drop-down selector. This is the company that Rewst will interact with.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-01 at 12.50.40 PM.png>)
8. Click **Next**.
9. Click **Connect**.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-01 at 12.50.50 PM.png>)

## Actions and endpoints

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
