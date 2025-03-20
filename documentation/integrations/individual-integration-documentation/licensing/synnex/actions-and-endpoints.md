# Actions & Endpoints

## Actions & Endpoints

### Introduction

The Synnex Integration with Rewst delivers a robust set of actions and endpoints for interacting with Synnex. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Synnex Integration:

* **Agreement**
* **Consumption**
* **Customer**
* **Generic Request**
* **Invoice**
* **Operation**
* **Product**
* **Subscribed**
* **Subscription**
* **Vendor**
* **Vendor Account**

### Actions

#### Agreement

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/agreements/{agreementType}" method="post" summary="Accept Agreement" %}
{% swagger-description %}
Accepts an agreement of the specified agreement type
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/agreements/{agreementType}" method="get" summary="Get Agreement" %}
{% swagger-description %}
Get agreement of the specified agreement type.
{% endswagger-description %}
{% endswagger %}

#### Consumption

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/consumption/azure/summary" method="get" summary="Get Reseller" %}
{% swagger-description %}
Get a Reseller's Azure consumption
{% endswagger-description %}
{% endswagger %}

#### Customer

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/customers" method="post" summary="Create Customer" %}
{% swagger-description %}
Create a customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/customers" method="get" summary="List Customers" %}
{% swagger-description %}
Get a list of Customers
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/customers/{customerNo}" method="get" summary="Get Customer" %}
{% swagger-description %}
Get a customer's information using it's ID
{% endswagger-description %}
{% endswagger %}

#### Generic Request

{% swagger baseUrl="https://us.tdsynnex.com" path="/<url_path>" method="get/put/post/delete" summary="Synnex API Request" %}
{% swagger-description %}
Generic action for making authenticated requests against the Synnex API
{% endswagger-description %}
{% endswagger %}

#### Invoice

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/invoices" method="get" summary="List Invoices" %}
{% swagger-description %}
Get list of invoices.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/invoice/report" method="get" summary="Invoice Report" %}
{% swagger-description %}
Gets an invoice report for a reseller
{% endswagger-description %}
{% endswagger %}

#### Operation

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/subscriptions/operations/{operationId}" method="get" summary="Get Subscription Operation Details" %}
{% swagger-description %}
Gets a Subscription operation's details
{% endswagger-description %}
{% endswagger %}

#### Product

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v2/vendors/{vendorId}/cloud/products" method="get" summary="List Vendor Products" %}
{% swagger-description %}
Lists a vendor's individual product data
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/products/{productId}" method="get" summary="Get Product" %}
{% swagger-description %}
Get a product's details of vendor by product ID.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/products/skuNo/{skuNo}" method="get" summary="Get Product By SKU Number" %}
{% swagger-description %}
Get a product's details by sku number
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/products/{primaryProductId}/related" method="get" summary="List Related Products" %}
{% swagger-description %}
Lists related product details for a primary product using it's product ID.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/vendors/Google/cloud/products/transferable" method="get" summary="List Google Transferable Products" %}
{% swagger-description %}
Get a list of transferable products details from a Google
{% endswagger-description %}
{% endswagger %}

#### Subscribed

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/vendors/{vendorId}/subscribed/products" method="get" summary="List Vendor" %}
{% swagger-description %}
Lists users subscribed to the specified Vendor's products
{% endswagger-description %}
{% endswagger %}

#### Subscription

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions" method="get" summary="List Customer" %}
{% swagger-description %}
List subscriptions for a specified Customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions" method="post" summary="Create New Subscription" %}
{% swagger-description %}
Creates a new subscriptions. A reseller can batch create the subscriptions, decided by vendor. The Google vendor can not create multiple subscriptions.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/addOn" method="post" summary="Create Add-On Subscription" %}
{% swagger-description %}
Create an add-on subscription for a specified customer's subscription
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/changeSeats" method="post" summary="Add Or Reduce Seats For Subscription" %}
{% swagger-description %}
Changes the number of seats of a subscription
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/cancel" method="post" summary="Cancel Subscription" %}
{% swagger-description %}
Cancel a user's subscription
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/reactive" method="post" summary="Reactivate Subscription" %}
{% swagger-description %}
Reactivates a customer's subscription plan
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/upgrade" method="post" summary="Upgrade Subscription" %}
{% swagger-description %}
Upgrades a customer's subscription plan
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/downgrade" method="post" summary="Downgrade Subscription" %}
{% swagger-description %}
Downgrade the subscription plan.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/changePlan" method="post" summary="Change Subscription" %}
{% swagger-description %}
Change the plan of a customer's subscription
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/suspend" method="post" summary="Suspend Subscription" %}
{% swagger-description %}
Suspends a customer's subscription.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/activate" method="post" summary="Activate Subscription" %}
{% swagger-description %}
Activates a customer's subscription.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/transfer" method="post" summary="Transfer Subscription" %}
{% swagger-description %}
Transfers a customers subscription
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}" method="get" summary="Get Subscription Details" %}
{% swagger-description %}
Get a customer's subscription information by subscription ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/transition/products" method="get" summary="Get Subscription Transition Products" %}
{% swagger-description %}
Get a collection of the subscription transition product.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/renew/options" method="get" summary="Get Renewal Option" %}
{% swagger-description %}
Get a subscription's renewal option
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/customers/{customerNo}/subscriptions/{subscriptionId}/renew/setting" method="put" summary="Update Renew Setting" %}
{% swagger-description %}
Updates a customer's subscription renewal setting
{% endswagger-description %}
{% endswagger %}

#### Vendor

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/vendors" method="get" summary="List Vendors" %}
{% swagger-description %}
This API is used to get a list of authorized vendors for current reseller.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/vendors/{vendorId}/check/{checkType}" method="post" summary="Check Vendor Account Data" %}
{% swagger-description %}
Check vendor datas using the check type specified by the "checkType" parameter.
{% endswagger-description %}
{% endswagger %}

#### Vendor Account

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/vendors/account" method="post" summary="Create Or Update Vendor Account" %}
{% swagger-description %}
Adds or updates a vendor account for Reseller/Customer in Microsoft/Google.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://us.tdsynnex.com" path="/api/v1/cloud/vendors/account" method="get" summary="Get Vendor Accounts" %}
{% swagger-description %}
Gets reseller/customer Vendor accounts.
{% endswagger-description %}
{% endswagger %}
