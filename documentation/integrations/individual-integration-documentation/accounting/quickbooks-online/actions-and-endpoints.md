# Actions & Endpoints

## Introduction

The QuickBooks Online Integration with Rewst delivers a robust set of actions and endpoints for interacting with QuickBooks Online. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the QuickBooks Online Integration:

* [**Accounts**](actions-and-endpoints.md#accounts)
* [**Customers**](actions-and-endpoints.md#customers)
* [**Deposit**](actions-and-endpoints.md#deposit)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Invoice**](actions-and-endpoints.md#invoice)

## Actions

### Accounts

## Create Account

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/account`

Creates an account, then returns the Account object

## Read Account

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/account/{id}`

Returns the account object, given the ID

## Update Account

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/account`

Fully update an account, then return the Account object

## List Accounts

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/query`

Lists all accounts

### Customers

## Create Customer

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/customer`

Creates a customer, then returns the Customer object. The DisplayName attribute or at least one of Title, GivenName, MiddleName, FamilyName, or Suffix attributes is required during object create.

## Read Customer

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/customer/{id}`

Returns the customer object, given the ID

## Update Customer

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/customer`

Fully update an customer, then return the Customer object

## List Customers

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/query`

Lists all customers

### Deposit

## Create Deposit

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/deposit`

Creates a Deposit, then returns the Deposit object

## Read Deposit

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/deposit/{id}`

Returns the deposit object, given the ID

## Update Deposit

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/deposit`

Fully update an deposit, then return the Deposit object. If sparse update, only the provided fields will be updated. If sparse is false, the entire deposit will be updated and empty fields will be nullified.

## Delete Deposit

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/deposit`

Delete an deposit

## List Deposits

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/query`

Lists all deposits

### Generic Request

## QuickBooks Online API Request

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/<url_path>`

Generic action for making authenticated requests against the QuickBooks Online API

### Invoice

## Create Invoice

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/invoice`

Creates an Invoice, then returns the Invoice object

## Read Invoice

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/invoice/{id}`

Returns the invoice object, given the ID

## Update Invoice

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/invoice`

Fully update an invoice, then return the Invoice object. If sparse update, only the provided fields will be updated. If sparse is false, the entire invoice will be updated and empty fields will be nullified.

## Delete Invoice

<mark style="color:green;">`POST`</mark> `quickbooks.api.intuit.com/invoice`

Delete an invoice

## List Invoices

<mark style="color:blue;">`GET`</mark> `quickbooks.api.intuit.com/query`

Lists all invoices
