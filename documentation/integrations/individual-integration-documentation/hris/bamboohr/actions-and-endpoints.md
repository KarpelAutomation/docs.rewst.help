# Actions & Endpoints

## Introduction

The BambooHR Integration with Rewst delivers a robust set of actions and endpoints for interacting with BambooHR. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the BambooHR Integration:

* [**Account Information**](actions-and-endpoints.md#account-information)
* [**Employees**](actions-and-endpoints.md#employees)
* [**Generic Request**](actions-and-endpoints.md#generic-request)

## Actions

### Account Information

## List Fields

<mark style="color:blue;">`GET`</mark> `api.bamboohr.com/meta/fields`

Get a list of fields that are available in the account

### Employees

## Get Company Information

<mark style="color:blue;">`GET`</mark> `api.bamboohr.com/company_information`

Gets Company Information

## Get Employee

<mark style="color:blue;">`GET`</mark> `api.bamboohr.com/employees/{id}`

Get employee data by specifying a set of fields.

## Update Employee

<mark style="color:green;">`POST`</mark> `api.bamboohr.com/employees/{id}`

Update an employee, based on employee ID

## Add Employee

<mark style="color:green;">`POST`</mark> `api.bamboohr.com/employees`

Add an employee. New employees must have at least a first name and a last name

## Get Employee Directory

<mark style="color:blue;">`GET`</mark> `api.bamboohr.com/employees/directory`

Gets Employee Directory

### Generic Request

## BambooHR API Request

<mark style="color:blue;">`GET`</mark> `api.bamboohr.com/<url_path>`

Generic action for making authenticated requests against the BambooHR API
