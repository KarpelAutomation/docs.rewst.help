# Ingram Micro integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Ingram Micro integration do?

Our Ingram Micro integration offers users a seamless and efficient way to access and manage cloud services and subscriptions. Users can streamline the procurement and provisioning processes, track usage and billing, and efficiently manage their cloud subscriptions, all from a single integrated platform.

### Why use the Ingram Micro integration?

* Add and remove licenses for users
* License monitoring and management

## Set up the Ingram Micro integration

### Set up steps in Ingram Micro

{% hint style="info" %}
Contact Ingram Micro Integration Support at usxvantageintegrations@ingrammicro.com if you don’t have access to your marketplace API credentials.
{% endhint %}

1. Create a new [Staff Account](https://nam10.safelinks.protection.outlook.com/?data=05|02|lisa.dellaporta@rewst.io|786393803c5746832f9c08ddebcb3001|5a9dda565beb484083e19afc1ada2388|0|0|638925980473020030|Unknown|TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ==|0|||\&reserved=0\&sdata=Fq6NvtafNIWFCqsoDUvwPWxUQLjHq1OkDRcCqnsu6Tk=\&url=https://kb.cloud.im/support/solutions/articles/66000396732-01-a-how-to-add-a-staff-user-to-unified-reseller-control-panel) for the Rewst Application.
2. Name this user `Rewst` and ensure that you generate a safe, unique password.
3. Activate the API from the [Ingram Cloud Marketplace](https://help.ingrammicro.com/hc/en-us/articles/31739269049108-How-to-get-the-Marketplace-API-Subscription-Key-in-Xvantage).&#x20;
   1. Note: You can only have a single user assigned to the Marketplace API App that you create. To check if you already have a Marketplace API created, please log into [Xvantage for Customers](https://nam10.safelinks.protection.outlook.com/?url=https%3A%2F%2Fusa.ingrammicro.com%2FSite%2Fhome\&data=05%7C02%7Clisa.dellaporta%40rewst.io%7C786393803c5746832f9c08ddebcb3001%7C5a9dda565beb484083e19afc1ada2388%7C0%7C0%7C638925980473094001%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C\&sdata=lBwyJJNDoNM%2BrbONB6oC0UtvCXGFaWpdyu1zufcB1GI%3D\&reserved=0) and use the left panel to navigate to **My Business > Cloud Services**. This will open a new window where you can then navigate to **Marketplace API** and obtain your API user and secret key. If there is no data, or no option for Marketplace API, then you can follow the above steps. With any issues, you can reach out to Ingram Micro support.
   2. The user must be activated in the portal on the main Users page.
   3. When you click the user, it may have an orange bar that says the user needs to accept the invite in their mail.
   4.  As an admin, you can activate the account manually for them and then reset the password if required.



### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the Ingram Micro Cloud Marketplace integration.
3. Click on the integration tile to begin setup.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-03-19 at 2.50.26 PM.png>)
4. Fill out the configuration form as follows:
   1. **Username**: This is the username of the user associated with the API. Clicking on the Marketplace API menu on the left navigation will show you the username.
   2. **Password**: The password is the password of that account. This can be set in the "Users" section of the control panel. The right user will match the "Username" under "User Settings".
   3. **Subscription Key**: The subscription key can then be found on the Marketplace API.
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

## Test the integration

1. Navigate to **Automation > Workflows** in Rewst.
2. Create a new workflow and name it with something short and descriptive, such as `Test Ingram Integration`.
3.  Add the action **List Customers** to the workflow builder canvas, by dragging it from the left pane.\
    \


    <figure><img src="../../../../.gitbook/assets/image (63) (1).png" alt=""><figcaption></figcaption></figure>
4. If the workflow succeeds and you see customers listed in the results, then you’re all set. If it fails, review the setup instructions and make sure customers are mapped in the integration in Rewst.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

You can access Ingram Micro’s own API documentation [here](https://apidocs.cloud.im/1.15/).

| Action Name                            | Description                                                                                    | Endpoint Related to Action |
| -------------------------------------- | ---------------------------------------------------------------------------------------------- | -------------------------- |
| Create Customer                        | Create a customer in the platform and associate it with the reseller that sends this request.  | /customers                 |
| Create Order                           | Place an order for a set of products for a specific customer.                                  | /resellers                 |
| Create Reseller                        |                                                                                                | /resellers                 |
| Create Reseller Customer               | Create a customer in the platform and associate it with the specified reseller.                | /resellers                 |
| Estimate an Order Price                | Get estimated prices of an order.                                                              | /resellers                 |
| Get Customer                           | Get extended details about a specific customer in the platform.                                | /customers                 |
| Get Order                              | Get extended details of a specific order.                                                      | /resellers                 |
| Get Report                             | Get extended details about a specific report in the platform.                                  | /reports                   |
| Get Reseller                           | Get extended details about a specific reseller in the platform.                                | /resellers                 |
| Get Reseller’s Customers               | Get a list of customers and their basic details for the specified reseller.                    | /reseller                  |
| Get Service Plan                       | Get extended details about a specific service plan with all possible switches in the platform. | /plans                     |
| Get Subscription                       | Get extended details of a specific subscription from the platform.                             | /subscriptions             |
| Ingram Micro API Request               | Generic action for making authenticated requests against the IM Cloud API                      |                            |
| List Customers                         | Get a list of customers and their basic details.                                               | /customers                 |
| List Orders                            | Get basic details of orders in the platform.                                                   | /resellers                 |
| List Products                          | Get a list of products available for the requester to sell or resell with details included.    | /products                  |
| List Reports                           | Get a list of the reseller's rated data reports exported during the specified period.          | /reports                   |
| List Reseller Customers                | Get a list of customers and their basic details for the specified reseller.                    | /customers                 |
| List Reseller’s Orders                 | Get basic details of orders in the platform for the specified reseller.                        | /resellers                 |
| List Resellers                         | Get a list of resellers and their basic details.                                               | /resellers                 |
| List Service Plans                     | Get basic details of service plans in the platform.                                            | /plans                     |
| List Subscriptions                     | Get a list of subscriptions belonging to the customers of the reseller that sends the request. | /subscriptions             |
| Schedule a One Time Report             | Schedule generation of a one-time report.                                                      | /reports                   |
| Update Customer                        | Update details and status of the existing customer.                                            | /customers                 |
| Update Order                           | Update existing order properties and status.                                                   | /resellers                 |
| Update Reseller                        | Update details of the existing reseller.                                                       | /resellers                 |
| Update Some of the Description Details | Update some of the subscription details.                                                       | /subscriptions             |
| Update Subscription                    | Update some of the subscription details.                                                       | /subscriptions             |
| Update Subscription Pricing Details    |                                                                                                | /subscriptions             |
| Validate Product Activation Parameters | Validate activation parameters for a set of products.                                          | /products                  |
