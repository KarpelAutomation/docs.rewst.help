# TD Synnex Stellr integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the TD Synnex Stellr integration do?

Our TD Synnex Stellr integration enables automation of supply chain and business processes. Use the TD Synnex Stellr API within Rewst workflows to manage subscriptions, customers, and vendors.

## Set up the TD Synnex Stellr integration

### Set up steps in TD Synnex

1. Log in to ECexpress with your reseller account information.&#x20;
2.  Click the tile on the screen to access **StreamOne** Stellr.<br>

    ![](<../../../../.gitbook/assets/Screenshot 2025-05-05 at 5.00.24 PM.png>)
3. Navigate to **Integration > Developer Resource**.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-05 at 5.01.43 PM.png>)
4. Click **Go to Developer Portal.**
5. Click your profile in the top-right corner.
6. Navigate to **My Account > Client Credentials**.
7. Choose whether you want to use the Sandbox or Production environment.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-05-05 at 5.11.05 PM.png" alt=""><figcaption></figcaption></figure>

8. Copy the Client ID and Client Secret and store them somewhere secure. You'll need these for further set up steps in Rewst. <br>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `TD Synnex Stellr` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-05 at 5.14.52 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from Synnex into the relevant fields:
   1. **Client ID**
   2. **Client Secret**
   3. **Region**
5. In the **Enable Sandbox?** drop-down selector, choose if you will be using the Sandbox environmen&#x74;**,** with **True** for yes and **False** for n&#x6F;**.**
6. Click **Save Configuration**.
7. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;



## Synnex integration limitations

{% hint style="danger" %}
Note that in order to purchase licences via the New User Employee automation, you must follow the below instructions
{% endhint %}

When you purchase a license, Rewst validates the number of licenses that are available in the Microsoft Tenant. The Graph API returns the quantity, SkuID, and several other properties related to the license. When you need to purchase a license via your distributor, such as Synnex, we need to match that license to the product and subscription in the distributor.  Some distributors have a way to say the XYZ SkuID is the ABC Subscription, which then allows us to match, and therefore update the relevant subscription.

Currently, Synnex does not have a way for us to match the license in M365, to their own product or subscription. This limitation on the Synnex end, means Rewst must give you a choice about which subscription you wish to update. The fix is to use a field on the New User form that returns the subscriptions from Synnex itself, and choose which is the relevant sub you want to update.

### Set up the Synnex limitation workaround

There is a single requirement, an org variable to be created either at the MSP Level with default set or an org variable created at the customer level.  The former means that the field will appear for all customers, the latter will just appear for the single org you select.

#### Step 1: Create the org variable

`Org Variable Name: licencing_choose_subscription`

`Org Variable Value:` `1`

<figure><img src="https://i.ibb.co/pdTk7jk/Peek-2024-05-13-23-36.gif" alt=""><figcaption><p>Create the Org Var Gif</p></figcaption></figure>

<figure><img src="https://i.ibb.co/2n8XCwy/Adam-Synnex.png" alt=""><figcaption><p>Org Var Example - All Customers</p></figcaption></figure>

#### Step 2: Choose the subscription

Once the org variable has been created, navigate to the New User form as normal.  You will notice a new field, as outlined in the image below.

<figure><img src="https://i.ibb.co/P1TkvTK/Screenshot-20240513-234203.png" alt=""><figcaption><p>Example Sub via Synnex</p></figcaption></figure>

{% hint style="warning" %}
Note there is a limitation on only being able to select a single licence at this stage, so we correctly increase the correct sub.&#x20;
{% endhint %}

Ensure that you correctly select the Direct M365 License Assignment, which is from the M365 tenant itself and reflects the quantity.  In License Subscription, ensure that you select the Sub returned from Synnex that matches the one you want to increase.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category            | Action                               | Description                                                                                                                                             |
| ------------------- | ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Agreement**       | Accept Agreement                     | Accepts an agreement of the specified agreement type                                                                                                    |
| **Agreement**       | Get Agreement                        | Get agreement of the specified agreement type.                                                                                                          |
| **Consumption**     | Get Reseller's Azure Consumption     | Get a Reseller's Azure consumption                                                                                                                      |
| **Customer**        | Create Customer                      | Create a customer                                                                                                                                       |
| **Customer**        | List Customers                       | Get a list of Customers                                                                                                                                 |
| **Customer**        | Get Customer                         | Get a customer's information using it's ID                                                                                                              |
| **Generic Request** | Synnex API Request                   | Generic action for making authenticated requests against the Synnex API                                                                                 |
| **Invoice**         | List Invoices                        | Get list of invoices.                                                                                                                                   |
| **Invoice**         | Invoice Report                       | Gets an invoice report for a reseller                                                                                                                   |
| **Operation**       | Get Subscription Operation Details   | Gets a Subscription operation's details                                                                                                                 |
| **Product**         | List Vendor Products                 | Lists a vendor's individual product data                                                                                                                |
| **Product**         | Get Product                          | Get a product's details of vendor by product ID.                                                                                                        |
| **Product**         | Get Product By SKU Number            | Get a product's details by sku number                                                                                                                   |
| **Product**         | List Related Products                | Lists related product details for a primary product using it's product ID.                                                                              |
| **Product**         | List Google Transferable Products    | Get a list of transferable products details from a Google                                                                                               |
| **Subscribed**      | List Vendor's Subscribed Users       | Lists users subscribed to the specified Vendor's products                                                                                               |
| **Subscription**    | List Customer's Subscriptions        | List subscriptions for a specified Customer                                                                                                             |
| **Subscription**    | Create New Subscription              | Creates a new subscriptions. A reseller can batch create the subscriptions, decided by vendor. The Google vendor can not create multiple subscriptions. |
| **Subscription**    | Create Add-On Subscription           | Create an add-on subscription for a specified customer's subscription                                                                                   |
| **Subscription**    | Add Or Reduce Seats For Subscription | Changes the number of seats of a subscription                                                                                                           |
| **Subscription**    | Cancel Subscription                  | Cancel a user's subscription                                                                                                                            |
| **Subscription**    | Reactivate Subscription              | Reactivates a customer's subscription plan                                                                                                              |
| **Subscription**    | Upgrade Subscription                 | Upgrades a customer's subscription plan                                                                                                                 |
| **Subscription**    | Downgrade Subscription               | Downgrade the subscription plan.                                                                                                                        |
| **Subscription**    | Change Subscription's Plan           | Change the plan of a customer's subscription                                                                                                            |
| **Subscription**    | Suspend Subscription                 | Suspends a customer's subscription.                                                                                                                     |
| **Subscription**    | Activate Subscription                | Activates a customer's subscription.                                                                                                                    |
| **Subscription**    | Transfer Subscription                | Transfers a customers subscription                                                                                                                      |
| **Subscription**    | Get Subscription Details             | Get a customer's subscription information by subscription ID                                                                                            |
| **Subscription**    | Get Subscription Transition Products | Get a collection of the subscription transition product.                                                                                                |
| **Subscription**    | Get Renewal Option                   | Get a subscription's renewal option                                                                                                                     |
| **Subscription**    | Update Renew Setting                 | Updates a customer's subscription renewal setting                                                                                                       |
| **Vendor**          | List Vendors                         | This API is used to get a list of authorized vendors for current reseller.                                                                              |
| **Vendor**          | Check Vendor Account Data            | Check vendor datas using the check type specified by the "checkType" parameter.                                                                         |
| **Vendor Account**  | Create Or Update Vendor Account      | Adds or updates a vendor account for Reseller/Customer in Microsoft/Google.                                                                             |
| **Vendor Account**  | Get Vendor Accounts                  | Gets reseller/customer Vendor accounts.                                                                                                                 |
