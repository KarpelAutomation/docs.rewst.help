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

Before attempting integration, you’ll need the Ingram Micro Marketplace API for Cloud, including the API URL, username, user password, and Subscription Key. To verify if you have this already, you can visit [Xvantage for Customers](https://nam10.safelinks.protection.outlook.com/?url=https%3A%2F%2Fusa.ingrammicro.com%2FSite%2Fhome\&data=05%7C02%7Clisa.dellaporta%40rewst.io%7C6f0d6a654ec7471bc8d208de4d4052d5%7C5a9dda565beb484083e19afc1ada2388%7C0%7C0%7C639033136247836109%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C\&sdata=cTGqxviQbsDDw7l1Xr2e1NY%2FJB%2B%2FZ6Dmkf4F9my46H4%3D\&reserved=0) . Navigate to **My Business > Cloud Services**. Once the page opens, you may see a tab with 🧩 called **Marketplace API**. This is where you can find the API username, URL, and Subscription Key. Note that the API URL varies by region. The user password would have been set up by the API user, but Ingram Micro can reset this for you if needed by contacting `USXvantageIntegrations@ingrammicro.com`.

1. If you don't have the Marketplace API tile in your Cloud Services popout, you’ll need to follow these instructions to [Get the Marketplace API Subscription Key](https://help.ingrammicro.com/hc/en-us/articles/31739269049108-How-to-get-the-Marketplace-API-Subscription-Key-in-Xvantage).&#x20;
2. If the data is present, copy it and store the values somewhere secure. You'll need this information for further steps in Rewst.&#x20;
3. This process will have you make a $0.00 fake purchase in your Xvantage account to add the API. When you set up your $0.00 product with Ingram, this should send an email to the address of the user on file with a link to activate the API. Assigning a client to the Marketplace API when purchasing the $0.00 product is not necessary.
4. You can only have a single user assigned to the Marketplace API App that you create. The user must be activated in the portal on the main **Users** page. When you click the user, it may have an orange bar that says the user needs to accept the invite in their email. As an admin, you can activate the account manually on that user's behalf, then reset the password if required. <br>

<figure><img src="../../../../.gitbook/assets/Screenshot 2026-01-05 at 4.41.52 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
If you need to change the email address associated with the API user, you'll need to contact Ingram support for assistance.&#x20;

Changing the user may also automatically reset the subscription key. You'll need to refresh your browser and re-copy the key. We recommend waiting a few minutes after the change of the user to refresh and re-copy.
{% endhint %}

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the Ingram Micro Cloud Marketplace integration.
3. Click on the integration tile to begin setup.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-03-19 at 2.50.26 PM.png>)
4. Enter the information copied from Ingram into the following relevant fields:
   1. **Username**: This is the username of the user associated with the API. For example, `youremail.API`. Clicking on the Marketplace API menu on the left navigation will show you the username.&#x20;
   2. **Password**: This is the password of that account. This can be set in the **Users** section of the control panel. The right user will match the **Username** under **User Settings**.
   3. **Subscription Key**: The subscription key can be found on the Marketplace API. Remember, if you updated the user, you'll need to refresh your page and re-copy the key information.
   4. **API URL**: This will be the same for each customer in a region, but different for each region. This is the URL provided to you via the Marketplace API component in Ingram.
   5.  **Marketplace**: Use the drop-down selector to choose your relevant Marketplace.\
       <br>

       <figure><img src="../../../../.gitbook/assets/Screenshot 2026-01-05 at 4.16.15 PM.png" alt=""><figcaption></figcaption></figure>
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;
7. If your integration fails, it's recommended that you wait 24 hours and try again. Ingram's API may require time to refresh and show the success of the integration.

## Test the integration

1. Navigate to **Automation > Workflows** in Rewst.
2. Create a new workflow and name it with something short and descriptive, such as `Test Ingram Integration`.
3.  Add the action **List Customers** to the workflow builder canvas, by dragging it from the left pane.\
    <br>

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
