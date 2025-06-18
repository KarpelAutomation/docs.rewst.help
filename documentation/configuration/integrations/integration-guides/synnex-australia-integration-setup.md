# Synnex Australia integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Synnex Australia integration do?&#x20;

Our Synnex Australia integration enables the automation of supply chain and business processes.

## Set up the Synnex Australia integration

### Set up steps in Synnex Australia

1. Log in to the Synnex Australia API application. Do so from one of the two login links listed below. Note that you should choose the link that matches your situation of using either the production or staging login.&#x20;
   1. Production - [link](https://partnerapi-developer.synnex.com.au/)
   2. Staging - [link](https://api-stage-developer.synnexb2b.com.au/)
2. Click the **Profile** tab in the top right menu.&#x20;
3. Scroll down to **Subscriptions**. Click **Show** next to the Primary key. \
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-04-22 at 9.37.16 AM.png>)
4. Copy the key value to a secure location. You'll need it for the next set up steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the integrations page, search for the `Synnex Australia` integration.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-04-22 at 9.41.59 AM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**:
   1. Click on the arrow to expand your options and select your host name in the **Host Name** drop-down selector. The option you choose should match with your login type, for either production or staging.
   2.  Paste your copied key into the **Primary Key** field.\
       \


       <figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-22 at 9.55.21 AM.png" alt=""><figcaption></figcaption></figure>
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Synnex Australia actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

| Category            | Action                                              | Description                                                                                                                                                                                                                          |
| ------------------- | --------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Azure**           | Check Domain Availability                           | Validates if the specified Domain is available with Microsoft.Specify the domain within the Identifier parameter of the Payload                                                                                                      |
| **Azure**           | Suspend Azure Subscription                          | Suspending AzureSubscription By using MicrosoftSubscriptionResource Object                                                                                                                                                           |
| **Azure**           | Provision An Order                                  | Allows provisioning multiple offers for same or different customers in single order. Order will be split and unique order will be generated for each offer.                                                                          |
| **Azure**           | Reactivate Subscription                             | Reactivate AzureSubscription By using MicrosoftSubscriptionResponseResource object                                                                                                                                                   |
| **Azure**           | List Orders                                         | Lists all the cloud orders. Can be filtered by order id, order code, created Date, Service Id and customer code.                                                                                                                     |
| **Azure**           | Get Subscriptions by AccountID                      | Get Subscriptions by providing AccountId.This API accepts Account Identifier and returns the Subscriptions under the specific account. Use sortDirection in association with sortColumnName to sort results in appropriate direction |
| **Azure**           | Get Subscription Details                            | Get Subscription Details by providing SubscriptionId.This API accepts Subscription Identifier and returns the Subscription details. Use sortDirection in association with sortColumnName to sort results in appropriate direction    |
| **Cloud Products**  | List Accounts                                       | Fetch list of cloud Accounts                                                                                                                                                                                                         |
| **Csp**             | Get Convert Trial To Paid Offer Plans               | Use this API to fetch convert trial to paid offer plans. Get the subscriptionId Refer 'subscriptionId' response in Get Subscription                                                                                                  |
| **Csp**             | Convert Trial To Paid                               | Use this API to convert trial to paid. To convert paid customer's subscription, Get the subscriptionId Refer 'subscriptionId' response in Get subscriptions                                                                          |
| **Csp**             | Purchase Addon Plans CSP                            | Purchase Microsoft Addon Plans for a base subscription.The API accepts Plan Identifier given by Get product plans                                                                                                                    |
| **Csp**             | Change Subscription Auto Renewal                    | Use this API to enable or disable Auto Renewal of Microsoft CSP Subscription on renewal date.To fetch X-CUSTOMER-KEY - Refer "externalCustomerCompanyCode" parameter in Get customer companies                                       |
| **Csp**             | Cancel Subscription                                 | Cancel the specified subscription of Microsoft.The API accepts Subscription Identifier and optionally the reason for the Cancel subscription and returns the updated status.                                                         |
| **Csp**             | Change Subscription Quantity                        | Change quantity/seats for the selected subscriptions.Get the subscriptionId Refer 'subscriptionId' response Get subscriptions                                                                                                        |
| **Csp**             | Create Migration                                    | Use this API to perform Create migration. Legacy subscriptions do not need to be moved to the new commerce experience, They will operate under all the original legacy commerce rules until they come to the end of their term.      |
| **Csp**             | Get Legacy Subscription Plan                        | Use this API to fetch Legacy Subscription plan providing SubscriptionId.                                                                                                                                                             |
| **Csp**             | Get NCE Plans                                       | Use this API to fetch NCE Plans providing SubscriptionId.Get the subscriptionId Refer 'subscriptionId' response in Get subscriptions                                                                                                 |
| **Csp**             | Suspend Microsoft Subscription                      | Suspends the specified subscription of Microsoft.The API accepts Subscription Identifier and optionally the reason for the suspending subscription and returns the updated status.                                                   |
| **Csp**             | Delete Manage Renewal of Microsoft CSP Subscription | Use this API to delete Auto Renewal of Microsoft CSP Subscription.To fetch X-CUSTOMER-KEY - Refer "externalCustomerCompanyCode" parameter in Get customer companies                                                                  |
| **Csp**             | Activate Subscription                               | Activates the specified subscription of Microsoft.The API accepts Subscription Identifier and returns the updated status.                                                                                                            |
| **Customer**        | Create Customer Company                             | Use this API to create new End Customer                                                                                                                                                                                              |
| **Customer**        | List Customer Companies                             | Lists all the customers and their details                                                                                                                                                                                            |
| **Generic Request** | Generic Synnex Australia API Request                | Generic action for making authenticated requests against the Synnex Australia API                                                                                                                                                    |
| **Googleworkspace** | Change Subscription Quantity - Google Workspace     | Changes existing Subscription quantity. Accepts MicrosoftSubscriptionResource object for request.                                                                                                                                    |
| **Googleworkspace** | Suspend Subscription Google Workspace               | Suspends and active. Accepts MicrosoftSubscriptionResource object as request.                                                                                                                                                        |
| **Googleworkspace** | Renewal Settings of Active Subscription             | Updates Renewal settings of an active subscription. Accepts ChangeRenewalSettingsResource object as request                                                                                                                          |
| **Googleworkspace** | Get Google Workspace Domain Availability            | Checks if the provided Domain is available for the purchase.                                                                                                                                                                         |
| **Googleworkspace** | Downgrade Subscription Offer                        | Downgrades the existing offer for an active subscription. Accepts GoogleChangeOfferResource object as request.                                                                                                                       |
| **Googleworkspace** | List Purchasable SKUs For Downgrade                 | Lists all the purchasable SKUs for downgrade for an existing active subscription.                                                                                                                                                    |
| **Googleworkspace** | Upgrade To Paid Service                             | Upgrades subscriptions from Trial to paid.                                                                                                                                                                                           |
| **Googleworkspace** | Transfer Customer And Entitlements                  | Transfers customer and their existing entitlements for transfer types Google Direct, Different Reseller and My own PSC                                                                                                               |
| **Googleworkspace** | Transfer Customer IR1 To IR2                        | Transfers the customers and their existing entitlements for transfer type Indirect Reseller 1 to Indirect Reseller 2                                                                                                                 |
| **Googleworkspace** | List Purchasable Skus For Upgrade                   | Lists all the purchasable SKUs for upgrade for an existing active subscription.                                                                                                                                                      |
| **Googleworkspace** | Purchase Addon for Google Workspace                 | Places an order to purchase addon plans for an existing subscription.                                                                                                                                                                |
| **Googleworkspace** | List Purchasable Offers                             | Lists all the offers that can be changed for the existing subscription under the specified SKU.                                                                                                                                      |
| **Googleworkspace** | Upgrade Subscription Offer Or Change Plan           | Upgrades the existing offer for an active subscription. Accepts GoogleChangeEntitlementResource object as request.                                                                                                                   |
| **Googleworkspace** | List Add On Plans                                   | Lists all the addon plans that are available for the purchase for an existing subscription's plan.                                                                                                                                   |
| **Googleworkspace** | List Offers For Change Plan                         | Lists all the offers for changing payment plan under the Plan/SKU for an existing active subscription.                                                                                                                               |
| **Googleworkspace** | Get Import Customer For Transfer                    | Imports customer for Transfer of any transfer type and returns all transferable SKUs for the imported customer.                                                                                                                      |
| **Googleworkspace** | Activate Suspended Subscription Google Workspace    | Activates suspended Subscription. Accepts MicrosoftSubscriptionResource object as request.                                                                                                                                           |
| **Product**         | List Cloud Products                                 | Use this API to fetch list of products available for provisioning.Products can be filtered based on Service Provider using ServiceId.Use "startingPlan" section to identify price for plan with minimum configuration                |
| **Product**         | Get Product Plans                                   | Use this API to fetch all the plans for a product.                                                                                                                                                                                   |
| **Product**         | List Cloud Services                                 | Provides list of cloud Service Providers available within Synnex Cloud Platform.                                                                                                                                                     |
