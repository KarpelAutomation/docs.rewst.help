# Actions & Endpoints

## Introduction

The Kaseya VSA X Integration with Rewst delivers a robust set of actions and endpoints for interacting with Kaseya VSA X. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Kaseya VSA X Integration:

* [**Device**](actions-and-endpoints.md#device)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Script**](actions-and-endpoints.md#script)

## Actions

### Devices

#### List Devices

<mark style="color:blue;">`GET`</mark> `example.kaseyalab.com/v3/devices`

Returns a list of devices.

#### Get Device by ID

<mark style="color:blue;">`GET`</mark> `example.kaseyalab.com/v3/devices/{id}`

Returns the device details.

### Generic Request

#### Kaseya VSA X API Request

<mark style="color:blue;">`GET`</mark> `example.kaseyalab.com/<url_path>`

Generic action for making authenticated requests against the Kaseya VSA X API

### Scripts

#### List All Automation Scripts

<mark style="color:blue;">`GET`</mark> `example.kaseyalab.com/v3/automation/scripts`

Returns a list of automation scripts.

#### Get a Specific Automation Script by ID

<mark style="color:blue;">`GET`</mark> `example.kaseyalab.com/v3/automation/scripts/{id}`

Returns the automation script details.

#### Run Automation Script

<mark style="color:green;">`POST`</mark> `example.kaseyalab.com/v3/automation/scripts/{id}/run`

Runs a specific automation script
