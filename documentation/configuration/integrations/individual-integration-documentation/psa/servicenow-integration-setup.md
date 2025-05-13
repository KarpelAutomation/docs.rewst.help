# ServiceNow integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the ServiceNow integration do?

Our ServiceNow integration enables the automation of IT service management and business processes. Use the ServiceNow API within Rewst workflows to create and update incidents, manage change requests, retrieve and modify user information, and streamline approval processes.

## Set up the ServiceNow integration

Before you complete integration setup, you'll need to obtain a developer instance from ServiceNow. This is a request process documented on their own website [here](https://developer.servicenow.com/dev.do#!/guides/yokohama/now-platform/devsite_account_guide_yokohama_developer-site-account-guide/DAG_DevSiteAcctGuide). The steps listed below won't work until you have this completed. If you already had a [developer or partner instance granted at the time of your ServiceNow onboarding](https://developer.servicenow.com/dev.do#!/guides/yokohama/developer-program/dev-program/dev-program-guide), this should be sufficient. Actions taken within the developer instance won't affect what's in your customer or partner instances

### Set up steps in ServiceNow

1. Log in to your ServiceNow account.
2.  Click on the **Developer Program** tile under the **My Apps** menu.\


    <figure><img src="../../../../../.gitbook/assets/image (2) (1).png" alt=""><figcaption></figcaption></figure>
3. Click **Start Building** if prompted. This will appear if this is your first time logging in to the Developer Portal.
4. Find the hostname for your ServiceNow instance. This would be the part of the URL that appears before the first / . For example, in a URL that reads as `dev12345.service-now.com/abc123/4567` , the host name would be `dev12345.service-now.com` .
5. Copy the hostname someplace secure. You'll need this for further steps in Rewst.
6. Navigate to **All > User Administration > Users**.
7.  Click **New** to add a new user.\


    <figure><img src="../../../../../.gitbook/assets/image (1) (1).png" alt=""><figcaption><p>The new user set up page</p></figcaption></figure>
8. Enter `RewstAPI` into the **User ID** field. Save this information with your hostname. You'll need it for further steps in Rewst.&#x20;
9. Check the **Active** box.&#x20;
10. Click **Submit**.
11. Click on the new user that appears in the total user table to re-open its record.&#x20;
12. Click **Set Password**.
13. Click **Generate** to create a new secure password. Copy this password and save the information with your hostname and username.&#x20;
14. Click **Save Password**.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `ServiceNow` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-05 at 11.14.58 AM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information you copied out of ServiceNow into the relevant fields:
   1. **Hostname**
   2. **Password**
   3. **User Name**
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

### Endpoint plugin requirements

These endpoints requires the following plugins:

* Customer Service plugin (`com.sn_customerservice`) + `csm_ws_integration` role and is provided within the now namespace.
* Order Management for Customer Service Management (`app-csm-order-mgmt`) + `sn_csm_order_mgmt` role.
* Order Management for Telecommunications (`sn_ind_tmt_orm`) - Optional.
* Telecommunications Assurance Workflows.
* Customer Service (`com.sn_customerservice`).
* Customer Service Install Base Management (`com.snc.install_base`).

### Account

## List Accounts

<mark style="color:blue;">`GET`</mark> `example.service-now.com/now/account`

Retrieves a specified set of Customer Service Management (CSM) accounts.

## Get Account by ID

<mark style="color:blue;">`GET`</mark> `example.service-now.com/now/account/{id}`

Retrieves the specified Customer Service Management (CSM) account.

### Consumer

## List Consumers

<mark style="color:blue;">`GET`</mark> `example.service-now.com/now/consumer`

Retrieves a specified set of Customer Service Management (CSM) consumer records.

## Get Consumer by ID

<mark style="color:blue;">`GET`</mark> `example.service-now.com/now/consumer/{id}`

Retrieves the specified Customer Service Management (CSM) consumer record.

## Create New Consumer

<mark style="color:green;">`POST`</mark> `example.service-now.com/now/consumer`

Creates a new Customer Service Management (CSM) consumer.

### Contact

## List Contacts

<mark style="color:blue;">`GET`</mark> `example.service-now.com/now/contact`

Retrieves a specified set of Customer Service Management (CSM) contacts.

## Get Contact by ID

<mark style="color:blue;">`GET`</mark> `example.service-now.com/now/contact/{id}`

Retrieves the specified Customer Service Management (CSM) contact.

## Create New Contact

<mark style="color:green;">`POST`</mark> `example.service-now.com/now/contact`

Creates a new Customer Service Management (CSM) contact.

### Generic Request

## Generic API Request

<mark style="color:blue;">`GET`</mark> `example.service-now.com/<url_path>`

Generic action for making authenticated requests against the ServiceNow API

### Order

## Get Order by ID

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_csm_order_mgmt/order/{id}`

Retrieves complete order details by specifying the sys\_id or order number.

## Create New Order

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_csm_order_mgmt/order`

Creates a new order with line items and characteristics.

## List Product Order

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_ind_tmt_orm/order/productOrder`

Retrieves all product orders

## List Product Order by ID

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_ind_tmt_orm/order/productOrder/{id}`

Retrieves the specified product order.

## Update Customer Order

<mark style="color:purple;">`PATCH`</mark> `example.service-now.com/sn_ind_tmt_orm/order/productOrder/{id}`

Updates the specified customer order.

## Cancel Customer Order

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_ind_tmt_orm/cancelproductorder`

Cancel the specified customer order.

## Create Customer Order

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_ind_tmt_orm/order/productOrder`

Creates the specified customer order.

## List Service Orders

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_ind_tmt_orm/order/serviceorder`

Retrieves all service orders

## Get Service Order

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_ind_tmt_orm/order/serviceorder/{id}`

Retrieves specific service orders

## Cancel Service Order

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_ind_tmt_orm/cancelserviceorder`

Cancel the specified service order.

## Create Service Order

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_ind_tmt_orm/order/serviceorder`

create new service order

## Update Service Order

<mark style="color:purple;">`PATCH`</mark> `example.service-now.com/sn_ind_tmt_orm/order/serviceorder/{id}`

Update specific service order

### Service Catalog

## Delete Item from Cart

<mark style="color:red;">`DELETE`</mark> `example.service-now.com/sn_sc/servicecatalog/cart/{cart_item_id}`

Deletes the specified item from the current cart.

## Delete Cart

<mark style="color:red;">`DELETE`</mark> `example.service-now.com/sn_sc/servicecatalog/cart/{sys_id}/empty`

Deletes a specified cart and the contents of the cart.

## Get Cart\_Content

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/cart`

Retrieves the details of the items within the logged in user's cart.

## Get Shipping Address by User ID

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/cart/delivery_address/{user_id}`

Retrieves the shipping address of the specified user based on the glide.sc.req\_for.roles property and the default behavior configured in the glide.sc.req\_for.roles.defaultproperty.

## List Catalogs

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/catalogs`

Retrieves a list of catalogs to which the user has access based on the passed in parameters.

## List Categories by Catalog

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/catalogs/{sys_id}/categories`

Retrieves the list of available categories for the specified catalog.

## Get Catalog Information

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/catalogs/{sys_id}`

Retrieves the available information for a specified catalog.

## Get Category Information

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/categories/{sys_id}`

Retrieves the available information for a specified category.

## List Catalog Items

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/items`

Retrieves a list of catalog items based on the specified parameters.

## Verify User Acquisition Rights to Catalog Item

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{item_sys_id}/delegation/{user_sys_id}`

Verifies whether the specified delegated user has acquisition rights to the specified service catalog item.

## Get Catalog Item by ID

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{sys_id}`

Retrieves a specified catalog item.

## List Wish List Items - Current User

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/wishlist`

Retrieves the list of items in the logged in user's wish list.

## Get Item Detail from Wish List

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_sc/servicecatalog/wishlist/{cart_item_id}`

Retrieves the details of the specified item stored in the wish list cart.

## Process Checkout

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_sc/servicecatalog/cart/checkout`

Retrieves and processes the checkout for the current cart based on whether the two-step checkout process is enabled.

## Submit Order

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_sc/servicecatalog/cart/submit_order`

Checks out the user cart, based on the current check-out type (one-step or two-step ).

## Add Item to Cart

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{sys_id}/add_to_cart`

Adds the specified item to the cart of the current user.

## Add Item to Wish List

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{sys_id}/add_to_wishlist`

Adds the specified item to the wish list cart.

## Get Contents for Checkout

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{sys_id}/checkout_guide`

Retrieves an array of contents requested for checkout.

## List Users with sUndelegated Item Request

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{item_sys_id}/get_invalid_delegated_users`

Returns a list of users whose request for the specified item cannot be delegated (requested by another user.) Can call before Add to Cart or Order Now

## Order Item

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{sys_id}/order_now`

Orders the specified catalog item.

## Submit Record Producer

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{sys_id}/submit_producer`

Creates a record and returns the Table API relative path and redirect URL to access the created record.

## Display Value

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn/sc/servicecatalog/variables/{sys_id}/display_value`

Returns the display value of the specified variable.

## Update Item in Cart

<mark style="color:orange;">`PUT`</mark> `example.service-now.com/sn_sc/servicecatalog/cart/{cart_item_id}`

Updates the specified item in the logged in user's cart.

## List Items Needed by Order Guide

<mark style="color:orange;">`PUT`</mark> `example.service-now.com/sn_sc/servicecatalog/items/{sys_id}/submit_guide`

Retrieves a list of items based on the needs described for an order guide.

### Trouble Ticket Open

## List All Trouble Tickets

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_ind_tsm_sdwan/ticket/troubleTicket`

Retrieves a list of all trouble ticket records from the Case \[sn\_customerservice\_case] and Incident \[incident] tables.

## Get Trouble Ticket by ID

<mark style="color:blue;">`GET`</mark> `example.service-now.com/sn_ind_tsm_sdwan/ticket/troubleTicket/{id}`

Retrieves a specified record from the Case \[sn\_customerservice\_case] or Incident \[incident] table.

## Update Trouble Ticket by ID

<mark style="color:purple;">`PATCH`</mark> `example.service-now.com/sn_ind_tsm_sdwan/ticket/troubleTicket/{id}`

Updates a specified record in the Case \[sn\_customerservice\_case] or Incident \[incident] table.

## Create Trouble Ticket

<mark style="color:green;">`POST`</mark> `example.service-now.com/sn_ind_tsm_sdwan/ticket/troubleTicket`

Creates a record in the Case \[sn\_customerservice\_case] or Incident \[incident] table.

