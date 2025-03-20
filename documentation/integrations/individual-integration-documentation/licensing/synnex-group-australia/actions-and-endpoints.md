# Actions & Endpoints

## Introduction

The Synnex Au Integration with Rewst delivers a robust set of actions and endpoints for interacting with Synnex Au. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Synnex Au Integration:

* [**Azure**](actions-and-endpoints.md#azure)
* [**Cloud Products**](actions-and-endpoints.md#cloud-products)
* [**CSP**](actions-and-endpoints.md#csp)
* [**Customer**](actions-and-endpoints.md#customer)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**GoogleWorkspace**](actions-and-endpoints.md#googleworkspace)
* [**Product**](actions-and-endpoints.md#product)

## Actions

### Azure

## Check Domain Availability

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/checkDomainAvailability`

Validates if the specified Domain is available with Microsoft.Specify the domain within the Identifier parameter of the Payload

## Suspend Azure Subscription

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/azureSubscription/suspend`

Suspending AzureSubscription By using MicrosoftSubscriptionResource Object

## Provision An Order

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/bulkOrder`

Allows provisioning multiple offers for same or different customers in single order. Order will be split and unique order will be generated for each offer.

## Reactivate Subscription

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/azureSubscription/activate`

Reactivate AzureSubscription By using MicrosoftSubscriptionResponseResource object

## List Orders

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.aucloud-products/v1/marketplace/orders`

Lists all the cloud orders. Can be filtered by order id, order code, created Date, Service Id and customer code.

## Get Subscriptions by AccountID

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.aucloud-products/v1/marketplace/subscription/subscriptionsByAccountId/{accountId}`

Get Subscriptions by providing AccountId.This API accepts Account Identifier and returns the Subscriptions under the specific account. Use sortDirection in association with sortColumnName to sort results in appropriate direction

## Get Subscription Details

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.aucloud-products/v1/marketplace/subscription/{id}`

Get Subscription Details by providing SubscriptionId.This API accepts Subscription Identifier and returns the Subscription details. Use sortDirection in association with sortColumnName to sort results in appropriate direction

### Cloud Products

## List Accounts

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/cloudAccount`

Fetch list of cloud Accounts

### CSP

## Get Convert Trial To Paid Offer Plans

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/convertTrailToPaid/subscription?subscriptionId={subscriptionId}&serviceId={serviceId}`

Use this API to fetch convert trial to paid offer plans. Get the subscriptionId Refer 'subscriptionId' response in Get Subscription

## Convert Trial To Paid

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/convertTrailToPaid/subscription`

Use this API to convert trial to paid. To convert paid customer's subscription, Get the subscriptionId Refer 'subscriptionId' response in Get subscriptions

## Purchase Addon Plans CSP

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/purchaseAddon`

Purchase Microsoft Addon Plans for a base subscription.The API accepts Plan Identifier given by Get product plans

## Change Subscription Auto Renewal

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/subscription/autoRenewal`

Use this API to enable or disable Auto Renewal of Microsoft CSP Subscription on renewal date.To fetch X-CUSTOMER-KEY - Refer “externalCustomerCompanyCode” parameter in Get customer companies

## Cancel Subscription

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/subscription/cancel`

Cancel the specified subscription of Microsoft.The API accepts Subscription Identifier and optionally the reason for the Cancel subscription and returns the updated status.

## Change Subscription Quantity

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/subscription/changeQuantity`

Change quantity/seats for the selected subscriptions.Get the subscriptionId Refer 'subscriptionId' response Get subscriptions

## Create Migration

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/migration/create`

Use this API to perform Create migration. Legacy subscriptions do not need to be moved to the new commerce experience, They will operate under all the original legacy commerce rules until they come to the end of their term.

## Get Legacy Subscription Plan

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/migration/legacyplan?subscriptionId={subscriptionId}`

Use this API to fetch Legacy Subscription plan providing SubscriptionId.

## Get NCE Plans

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/migration/validate?subscriptionId={subscriptionId}`

Use this API to fetch NCE Plans providing SubscriptionId.Get the subscriptionId Refer 'subscriptionId' response in Get subscriptions

## Suspend Microsoft Subscription

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/subscription/suspend`

Suspends the specified subscription of Microsoft.The API accepts Subscription Identifier and optionally the reason for the suspending subscription and returns the updated status.

## Delete Manage Renewal of Microsoft CSP Subscription

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/subscription/deletemanagerenewal`

Use this API to delete Auto Renewal of Microsoft CSP Subscription.To fetch X-CUSTOMER-KEY - Refer “externalCustomerCompanyCode” parameter in Get customer companies

## Activate Subscription

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/microsoft/subscription/activate`

Activates the specified subscription of Microsoft.The API accepts Subscription Identifier and returns the updated status.

### Customer

## Create Customer Company

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/customerCompany`

Use this API to create new End Customer

## List Customer Companies

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/customerCompany`

Lists all the customers and their details

### Generic Request

## Generic Synnex Australia API Request

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/<url_path>`

Generic action for making authenticated requests against the Synnex Australia API

### Google Workspace

## Change Subscription Quantity - Google Workspace

<mark style="color:orange;">`PUT`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/subscription/changeQuantity`

Changes existing Subscription quantity. Accepts MicrosoftSubscriptionResource object for request.

## Suspend Subscription Google Workspace

<mark style="color:orange;">`PUT`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/subscription/suspend`

Suspends and active. Accepts MicrosoftSubscriptionResource object as request.

## Renewal Settings of Active Subscription

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/changeRenewalSettings`

Updates Renewal settings of an active subscription. Accepts ChangeRenewalSettingsResource object as request

## Get Google Workspace Domain Availability

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/checkDomainAvailability?customerDomain={customerDomain}&serviceId={serviceId}`

Checks if the provided Domain is available for the purchase.

## Downgrade Subscription Offer

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/downgrade/changeOffer`

Downgrades the existing offer for an active subscription. Accepts GoogleChangeOfferResource object as request.

## List Purchasable SKUs For Downgrade

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/downgrade/purchasablesku`

Lists all the purchasable SKUs for downgrade for an existing active subscription.

## Upgrade To Paid Service

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/startPaidService`

Upgrades subscriptions from Trial to paid.

## Transfer Customer And Entitlements

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/transfer`

Transfers customer and their existing entitlements for transfer types Google Direct, Different Reseller and My own PSC

## Transfer Customer IR1 To IR2

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/trasferir1toir2`

Transfers the customers and their existing entitlements for transfer type Indirect Reseller 1 to Indirect Reseller 2

## List Purchasable Skus For Upgrade

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/upgrade/purchasablesku`

Lists all the purchasable SKUs for upgrade for an existing active subscription.

## Purchase Addon for Google Workspace

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/purchaseAddon`

Places an order to purchase addon plans for an existing subscription.

## List Purchasable Offers

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/purchasableoffers`

Lists all the offers that can be changed for the existing subscription under the specified SKU.

## Upgrade Subscription Offer Or Change Plan

<mark style="color:green;">`POST`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/changeOffer`

Upgrades the existing offer for an active subscription. Accepts GoogleChangeEntitlementResource object as request.

## List Add On Plans

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/productPlan/addonPlans`

Lists all the addon plans that are available for the purchase for an existing subscription's plan.

## List Offers For Change Plan

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/getOffersByPlanName`

Lists all the offers for changing payment plan under the Plan/SKU for an existing active subscription.

## Get Import Customer For Transfer

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/transfer/import`

Imports customer for Transfer of any transfer type and returns all transferable SKUs for the imported customer.

## Activate Suspended Subscription Google Workspace

<mark style="color:orange;">`PUT`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/googleworkspace/subscription/activate`

Activates suspended Subscription. Accepts MicrosoftSubscriptionResource object as request.

### Product

## List Cloud Products

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/products`

Use this API to fetch list of products available for provisioning.Products can be filtered based on Service Provider using ServiceId.Use “startingPlan” section to identify price for plan with minimum configuration

## Get Product Plans

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/products/{productId}/plans`

Use this API to fetch all the plans for a product.

## List Cloud Services

<mark style="color:blue;">`GET`</mark> `api-stage.synnexb2b.com.au/cloud-products/v1/marketplace/services`

Provides list of cloud Service Providers available within Synnex Cloud Platform.
