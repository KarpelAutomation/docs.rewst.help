# Leader Cloud integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## **What does the Leader Cloud integration do?**

Our Leader Cloud integration enables the automation of billing and subscription management through the Leader Cloud API. Use the Leader Cloud API within Rewst workflows to automate tasks such as managing accounts, subscriptions, invoices, and orders.

## Set up the **Leader Cloud** integration

### Set up steps in **Leader Cloud**

1. Log in to [https://hub.leadercloud.com.au/](https://hub.leadercloud.com.au/).
2. Click ![](<../../../../.gitbook/assets/image (191).png>) at the top right to access the **Self-service Marketplace**.
3. Select **API Credentials** under the **Settings** submenu.
4. Click **Add** under the **Application Users** section, then fill out the following fields:
   * **User name**
   * **Email**
   * **Password**
   * **Confirm password**
5. Copy the following information and store it someplace secure. You'll need it for further setup steps in Rewst.
   * **Client ID** - This also known as the client key.
   * **Client Secret**
   * **Username** - Use the created API user credentials.
   * **Password** - Use the created API user credentials.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Leader Cloud` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/image (192).png>)
3. Click on the integration tile to launch the configuration setup page.
4. Enter the following details under the **Parameters** section:
   * **Client ID**
   * **Client Secret**
   * **Username**
   * **Password**
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

### Actions

| Category            | Action                                             | Description                                                                                                    |
| ------------------- | -------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| **Accounts**        | List Accounts                                      | Retrieve a list of all accounts from Leader Cloud                                                              |
| **Accounts**        | Get Account Details                                | Retrieve details of a specific account by ID                                                                   |
| **Accounts**        | Create Account                                     | Create a new account in Leader Cloud                                                                           |
| **Accounts**        | Update Account                                     | Update an existing account using JSON Patch operations                                                         |
| **Accounts**        | Get Account Billing Address                        | Retrieve the billing address for a specific account                                                            |
| **Accounts**        | Get Account Custom Fields                          | Retrieve custom fields for a specific account                                                                  |
| **Accounts**        | Update Account Custom Fields                       | Update custom fields for a specific account                                                                    |
| **Generic Request** | Leader Cloud API Request                           | Generic action for making authenticated requests against the Leader Cloud API with optional pagination support |
| **Invoices**        | List Invoices                                      | Retrieve a list of all invoices from Leader Cloud                                                              |
| **Invoices**        | Get Invoice Details                                | Retrieve details of a specific invoice by ID                                                                   |
| **Invoices**        | Get Invoice Items                                  | Retrieve items of a specific invoice                                                                           |
| **Invoices**        | Get Invoice Custom Fields                          | Retrieve custom fields of a specific invoice                                                                   |
| **Invoices**        | Get Invoice Orders                                 | Retrieve related orders of a specific invoice                                                                  |
| **Orders**          | Create Order                                       | Create a new order for licenses in Leader Cloud                                                                |
| **Orders**          | List Orders                                        | Retrieve a list of all orders from Leader Cloud                                                                |
| **Orders**          | Get Order Details                                  | Retrieve details of a specific order by ID                                                                     |
| **Orders**          | Get Order Items                                    | Retrieve items from a specific order                                                                           |
| **Orders**          | Create Order Item                                  | Creates an order item for an existing order of the current organization based on the given ID                  |
| **Orders**          | Checkout Order                                     | Checkout an order to proceed with license ordering workflow                                                    |
| **Orders**          | Get Order Execution Status                         | Check the execution status of an order in the license ordering workflow                                        |
| **Products**        | List Products                                      | Retrieve a list of all products from Leader Cloud, including Microsoft SKUs where applicable                   |
| **Products**        | Get Product Details                                | Retrieve details of a specific product by ID                                                                   |
| **Products**        | Get Product Addons                                 | Retrieve addons of a specific product                                                                          |
| **Products**        | Get Product Billing Frequency Options              | Retrieve billing frequency options for a specific product                                                      |
| **Products**        | Get Product Pricing                                | Retrieve pricing information for a specific product                                                            |
| **Products**        | Get Product External Prices                        | Retrieve external pricing information for a specific product                                                   |
| **Products**        | Get Product Characteristics                        | Retrieve characteristics of a specific product                                                                 |
| **Products**        | Get Product Custom Fields                          | Retrieve custom fields of a specific product                                                                   |
| **Subscriptions**   | List Subscriptions                                 | Retrieve a list of all subscriptions from Leader Cloud                                                         |
| **Subscriptions**   | Get Subscription Details                           | Retrieve details of a specific subscription by ID                                                              |
| **Subscriptions**   | Get Subscription Addons                            | Retrieve addons of a specific subscription                                                                     |
| **Subscriptions**   | Cancel Subscription Addon at End of Billing Period | Cancel an addon at the end of the billing period                                                               |
| **Subscriptions**   | Get Subscription Custom Fields                     | Retrieve custom fields of a specific subscription                                                              |
| **Subscriptions**   | Get Subscription Characteristics                   | Retrieve characteristics of a specific subscription                                                            |
| **Subscriptions**   | Get Subscription Current Installment Plan          | Retrieve current installment plan of a specific subscription                                                   |
| **Subscriptions**   | Cancel Subscription                                | Cancel a subscription in Leader Cloud                                                                          |
| **Subscriptions**   | Update Subscription Quantity                       | Change the quantity of a specific subscription at a specific date                                              |
| **Subscriptions**   | Get Subscription Quantity Request                  | Retrieve a specific quantity request for a subscription                                                        |
| **Subscriptions**   | Set Subscription Auto Renewal                      | Update auto renewal settings for a specific subscription                                                       |
