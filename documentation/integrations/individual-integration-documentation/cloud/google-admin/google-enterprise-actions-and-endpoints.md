# Google Enterprise actions and endpoints

The Google Enterprise License Manager Integration with Rewst delivers a robust set of actions and endpoints for interacting with Google Enterprise License Manager. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Google Enterprise License Manager Integration.

## Actions

### Get license

<mark style="color:blue;">`GET`</mark> `https://licensing.googleapis.com/apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}`

Get a specific user's license by product SKU

### List license assignments for product and SKU

<mark style="color:blue;">`GET`</mark> `https://licensing.googleapis.com/apps/licensing/v1/product/{productId}/sku/{skuId}/users`

List all users assigned licenses for a specific product SKU

### Assign license

<mark style="color:green;">`POST`</mark> `https://licensing.googleapis.com/apps/licensing/v1/product/{productId}/sku/{skuId}/user`

Assign a license

### Revoke license

<mark style="color:red;">`DELETE`</mark> `https://licensing.googleapis.com/apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}`

Revoke a license

### List license assignments for product

<mark style="color:blue;">`GET`</mark> `https://licensing.googleapis.com/apps/licensing/v1/product/{productId}/users`

List all users assigned licenses for a specific product
