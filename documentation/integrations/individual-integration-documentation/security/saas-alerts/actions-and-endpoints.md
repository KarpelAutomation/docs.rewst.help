# Actions & Endpoints

## Introduction

The Saas Alerts Integration with Rewst delivers a robust set of actions and endpoints for interacting with Saas Alerts. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Saas Alerts Integration:

* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Processed Event Webhooks**](actions-and-endpoints.md#processed-event-webhooks)
* [**Processed Events Data**](actions-and-endpoints.md#processed-events-data)
* [**Raw Event Webhooks**](actions-and-endpoints.md#raw-event-webhooks)
* [**Reports**](actions-and-endpoints.md#reports)

## Actions

### Generic Request

## SaaS Alerts API Request

<mark style="color:blue;">`GET`</mark> `<example>.com/<url_path>`

Generic action for making authenticated requests against the SaaS Alerts API

### Processed Event Webhooks

## List Subscriptions Items

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/subscriptions`

Retrieve list of active subscriptions for current partner

## Create Subscription Item

<mark style="color:green;">`POST`</mark> `<example>.com/outgoingWebhookApi/api/v1/subscriptions`

Create new subscription

## List Of Disabled Subscriptions Items

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/subscriptions/disabled`

Retrieve list of disabled subscriptions for current partner

## Delete Subscription Item

<mark style="color:red;">`DELETE`</mark> `<example>.com/outgoingWebhookApi/api/v1/subscriptions/{channelId}`

Delete subscription

## Update Subscription Item

<mark style="color:purple;">`PATCH`</mark> `<example>.com/outgoingWebhookApi/api/v1/subscriptions/{channelId}`

Update new subscription

## Authorization Get Apikey

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/tools/apiKey`

get ApiKey by idToken (This method is used via the Saas Alerts UI.), idToken - issued by 1 hour, apiKey - long life till reset it manually

## Authorization Reset Apikey

<mark style="color:green;">`POST`</mark> `<example>.com/outgoingWebhookApi/api/v1/tools/apiKey`

reset ApiKey by idToken (This method is used via the Saas Alerts UI)

## Domain Verification List Of Items

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/domains`

Get List of verified domains (This method is used via the Saas Alerts UI)

## Domain Verification Verify And Add Domain

<mark style="color:green;">`POST`</mark> `<example>.com/outgoingWebhookApi/api/v1/domains`

validate domain and save it in success case (This method is used via the Saas Alerts UI)

## Domain Verification Delete Item

<mark style="color:red;">`DELETE`</mark> `<example>.com/outgoingWebhookApi/api/v1/domains/{id}`

delete validated domain (This method is used via the Saas Alerts UI)

## Get Customers

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/misc/customers`

Get List of Customers

## Get Alert Types

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/misc/alertTypes`

Get List of Alert Types

## Subscription Test Event

<mark style="color:green;">`POST`</mark> `<example>.com/outgoingWebhookApi/api/v1/misc/sendTestEvent`

Send Test Event

## Queue List Of Unsent Packs

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/queue`

Retrieve list of unsent packs of events for current partner

## Queue List Of Unsent Packs

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/queue/channels/{channelId}`

Retrieve list of unsent packs of events for current channel

## Queue List Of Events

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookApi/api/v1/queue/{queueId}/channels/{channelId}/events`

Retrieve list of events for current channel

## Queue Delete Item

<mark style="color:red;">`DELETE`</mark> `<example>.com/outgoingWebhookApi/api/v1/queue/{queueId}/channels/{channelId}`

Delete channel from queue

### Processed Events Data

## Event Data Query

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/reports/events/query`

Retrieve events for specific query

## Events Count Query

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/reports/events/count/query`

Retrieve a count of events for a specific query

### Raw Event Webhooks

## Get Subscriptions

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/raw/subscriptions`

Get a list of Saas Alert subcriptions against the Saas Alerts API

## Create Subscription

<mark style="color:green;">`POST`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/raw/subscriptions`

Create a subscription by channelId against the Saas Alerts API

## Get Disabled Subscriptions

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/raw/subscriptions/disabled`

Get a list of disabled SaaS Alert subscriptions.

## Update Subscription

<mark style="color:purple;">`PATCH`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/raw/subscriptions/{channelId}`

Update a subscription by channelId against the Saas Alerts API

## Delete Subscription

<mark style="color:red;">`DELETE`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/raw/subscriptions/{channelId}`

Delete a subscription against the Saas Alerts API

## Raw Send Test Event

<mark style="color:green;">`POST`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/misc/sendTestEvent`

Create a debug test event against the Saas Alerts API

## Get Endpoints

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/misc/endpoints/{productType}`

Get a list of endpoints based on product type

## Get Queues

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/queue`

Get a list of unsent queues against the Saas Alerts API

## Get Queues by Channel Id

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/queue/channels/{channelId}`

Get a list of unsent queues by channel id

## Get Events for Current Channel

<mark style="color:blue;">`GET`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/queue/{queueId}/channels/{channelId}/events`

Retrieve list of events for current channel

## Delete a Channel

<mark style="color:red;">`DELETE`</mark> `<example>.com/outgoingWebhookRawApi/api/v1/queue/{queueId}/channels/{channelId}`

Queue - Delete a channel

### Reports

## Get Scheduled Reports

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/scheduled-report`

Retrieve all the scheduled reports of the partner

## Add Scheduled Report

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/reports/scheduled-report`

Add a scheduled report to the database

## Get Scheduled Report by Id

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/scheduled-report/{scheduledReportId}`

Retrieve a scheduled report by scheduledReportId

## Delete Scheduled Report

<mark style="color:red;">`DELETE`</mark> `<example>.com/reportApi/api/v1/reports/scheduled-report/{scheduledReportId}`

Delete scheduled report by scheduledReportId

## Send Email Mailgun

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/reports/send-email`

Send email via mailgun

## Get Partner Info

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/partners/profile`

Retrieve Partner Profile information\
Name, Address. Phone…etc

## Get MSP User Info

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/msp-user`

Retrieve MSP User Information\
ID, Name, Email, Role, PartnerId

## Get Customer by Id

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/customers/{id}`

Retrieve customer by customer id

## Get List of Customers

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/customers`

Retrieve a list of customers for the authenticated partner

## List Users by Id

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/users`

Retrieve a list of users by Customer

## Get Events by Customer

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/events`

Retrieve events by Customer and additional query values

## Event Data by Query

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/reports/events/query`

Retrieve events for specific query

## Events Count by Query

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/reports/events/count`

Retrieve a count of events using query parameters

## Events Count by Body Query

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/reports/events/count/query`

Retrieve a count of events for a specific query

## Event Data Query with Pagination

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/reports/events/scroll`

Retrieve events using pagination. This is used to pull large data sets. In the \`/event/query\` specify \`scroll\` parameter in seconds determine the length of time the query will run and return data

## Get ApiKey

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/tools/apiKey`

get ApiKey by idToken (This method is used via the Saas Alerts UI.), idToken - issued once per hour, apiKey - persists until reset it manually

## Reset ApiKey by idToken

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/tools/apiKey`

reset ApiKey by idToken (This method is used via the Saas Alerts UI)

## Upload Files

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/files`

Upload a file to cloud storage

## Get Signed URL of Cloud Storage Object

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/files/{file}`

Get signed url of the cloud storage object

## Delete Signed URL of Cloud Storage Object

<mark style="color:red;">`DELETE`</mark> `<example>.com/reportApi/api/v1/files/{file}`

Remove uploaded file from cloud storage

## Delete Customer

<mark style="color:red;">`DELETE`</mark> `<example>.com/reportApi/api/v1/customers/{id}`

Delete customer for the authenticated partner

## Update Customer

<mark style="color:purple;">`PATCH`</mark> `<example>.com/reportApi/api/v1/customers/{id}`

Update customer fields for the authenticated partner

## List Customers

<mark style="color:blue;">`GET`</mark> `<example>.com/reportApi/api/v1/customers`

Retrieve a list of customers for the authenticated partner

## Create Customer

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/customers`

Create customer for the authenticated partner

## Register A Device

<mark style="color:green;">`POST`</mark> `<example>.com/reportApi/api/v1/users/registerDevice/{deviceId}`

Register a device
