# Actions & Endpoints

## Introduction

The Xero Integration with Rewst delivers a robust set of actions and endpoints for interacting with Xero. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Xero Integration:

* [**Accounts**](actions-and-endpoints.md#accounts)
* [**Employees**](actions-and-endpoints.md#employees)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Invoices**](actions-and-endpoints.md#invoices)

## Actions

### Accounts

## List Accounts

<mark style="color:blue;">`GET`</mark> `xero.com/api.xro/2.0/Accounts`

List all accounts

## Get Account

<mark style="color:blue;">`GET`</mark> `xero.com/api.xro/2.0/Accounts/{account_id}`

Get account by ID

## Create Account

<mark style="color:orange;">`PUT`</mark> `xero.com/api.xro/2.0/Accounts`

Create an account

## Update Account

<mark style="color:green;">`POST`</mark> `xero.com/api.xro/2.0/Accounts/{account_id}`

Update an account

### Employees

## List Employees

<mark style="color:blue;">`GET`</mark> `xero.com/api.xro/2.0/Employees`

List all employees

## Get Employee

<mark style="color:blue;">`GET`</mark> `xero.com/api.xro/2.0/Employees/{employee_id}`

Get a specific employee

## Create Employee

<mark style="color:green;">`POST`</mark> `xero.com/api.xro/2.0/Employees`

Create a new employee

## Update Employee

<mark style="color:blue;">`GET`</mark> `xero.com/api.xro/2.0/Employees/{employee_id}`

Update an existing employee

### Generic Request

## Xero API Request

<mark style="color:blue;">`GET`</mark> `xero.com/<url_path>`

Generic action for making authenticated requests against the Xero API

### Invoices

## List Invoices

<mark style="color:blue;">`GET`</mark> `xero.com/api.xro/2.0/Invoices`

List all invoices

## Get Invoice

<mark style="color:blue;">`GET`</mark> `xero.com/api.xro/2.0/Invoices/{invoice_id_or_number}`

Get a specific invoice

## Create Invoice

<mark style="color:green;">`POST`</mark> `xero.com/api.xro/2.0/Invoices`

Create a new invoice

## Delete/Void Invoice

<mark style="color:green;">`POST`</mark> `xero.com/api.xro/2.0/Invoices/{invoice_id_or_number}`

Delete/Void an existing invoice

## Update Invoice

<mark style="color:green;">`POST`</mark> `xero.com/api.xro/2.0/Invoices/{invoice_id_or_number}`

Update an existing invoice
