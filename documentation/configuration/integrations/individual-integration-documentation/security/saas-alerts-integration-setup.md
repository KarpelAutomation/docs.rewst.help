# SaaS Alerts integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the SaaS Alerts integration do?

Our SaaS Alerts integration enables the automation of tasks traditionally siloed within the app. USe the SaaS Alerts API within Rewst workflows to automate tasks such as allowing partners to manage subsciptions with different partners, manage unsend queues at the partner and channel level, and manage endpoints.

## Set up the SaaS Alerts integration

### Set up steps in SaaS Alerts

1. Contact [SaaS Alerts Support](https://saasalerts.zendesk.com/hc/en-us/requests/new) to enable the REST API within your account.
2. Log in to your SaaS Alerts account.
3. Navigate to **Settings > API** in the SaaS Alerts dashboard.
4. Click **Show key**, under **Manage API**.
5. Copy the Private API Key. Save this somewhere secure. You'll need it for further steps in Rewst.

### Set up steps in Rewst.

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `SaaS Alerts` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-06 at 2.49.56 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Enter the value copied from SaaS Alerts into the **Private API Key** field, under **Parameters**.&#x20;
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category                                                                                              | Action                                    | Description                                                                                   |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------- | --------------------------------------------------------------------------------------------- |
| **Generic Request**                                                                                   | SaaS Alerts API Request                   | Generic action for making authenticated requests against the Saas Alerts API                  |
| **Processed Event Webhooks**                                                                          | List Subscriptions Items                  | Retrieve list of active subscriptions for current partner                                     |
| **Processed Event Webhooks**                                                                          | Create Subscription Item                  | Create new subscription                                                                       |
| **Processed Event Webhooks**                                                                          | List Of Disabled Subscriptions Items      | Retrieve list of disabled subscriptions for current partner                                   |
| **Processed Event Webhooks**                                                                          | Delete Subscription Item                  | Delete subscription                                                                           |
| **Processed Event Webhooks**                                                                          | Update Subscription Item                  | Update new subscription                                                                       |
| **Processed Event Webhooks**                                                                          | Authorization Get Apikey                  | get ApiKey by idToken (This method is used via the Saas Alerts UI.),                          |
| idToken - issued by 1 hour,                                                                           |                                           |                                                                                               |
| apiKey - long life till reset it manually                                                             |                                           |                                                                                               |
| **Processed Event Webhooks**                                                                          | Authorization Reset Apikey                | reset ApiKey by idToken (This method is used via the Saas Alerts UI)                          |
| **Processed Event Webhooks**                                                                          | Domain Verification List Of Items         | Get List of verified domains (This method is used via the Saas Alerts UI)                     |
| **Processed Event Webhooks**                                                                          | Domain Verification Verify And Add Domain | validate domain and save it in success case (This method is used via the Saas Alerts UI)      |
| **Processed Event Webhooks**                                                                          | Domain Verification Delete Item           | delete validated domain (This method is used via the Saas Alerts UI)                          |
| **Processed Event Webhooks**                                                                          | Get Customers                             | Get List of Customers                                                                         |
| **Processed Event Webhooks**                                                                          | Get Alert Types                           | Get List of Alert Types                                                                       |
| **Processed Event Webhooks**                                                                          | Subscription Test Event                   | Send Test Event                                                                               |
| **Processed Event Webhooks**                                                                          | Queue List Of Unsent Packs                | Retrieve list of unsent packs of events for current partner                                   |
| **Processed Event Webhooks**                                                                          | Queue List Of Unsent Packs                | Retrieve list of unsent packs of events for current channel                                   |
| **Processed Event Webhooks**                                                                          | Queue List Of Events                      | Retrieve list of events for current channel                                                   |
| **Processed Event Webhooks**                                                                          | Queue Delete Item                         | Delete channel from queue                                                                     |
| **Processed Events Data**                                                                             | Event Data Query                          | Retrieve events for specific query                                                            |
| **Processed Events Data**                                                                             | Events Count Query                        | Retrieve a count of events for a specific query                                               |
| **Raw Event Webhooks**                                                                                | Get Subscriptions                         | Get a list of Saas Alert subcriptions against the Saas Alerts API                             |
| **Raw Event Webhooks**                                                                                | Create Subscription                       | Create a subscription by channelId against the Saas Alerts API                                |
| **Raw Event Webhooks**                                                                                | Get Disabled Subscriptions                | Get a list of disabled SaaS Alert subscriptions.                                              |
| **Raw Event Webhooks**                                                                                | Update Subscription                       | Update a subscription by channelId against the Saas Alerts API                                |
| **Raw Event Webhooks**                                                                                | Delete Subscription                       | Delete a subscription against the Saas Alerts API                                             |
| **Raw Event Webhooks**                                                                                | Raw Send Test Event                       | Create a debug test event against the Saas Alerts API                                         |
| **Raw Event Webhooks**                                                                                | Get Endpoints                             | Get a list of endpoints based on product type                                                 |
| **Raw Event Webhooks**                                                                                | Get Queues                                | Get a list of unsent queues against the Saas Alerts API                                       |
| **Raw Event Webhooks**                                                                                | Get Queues by Channel Id                  | Get a list of unsent queues by channel id                                                     |
| **Raw Event Webhooks**                                                                                | Get Events for Current Channel            | Retrieve list of events for current channel                                                   |
| **Raw Event Webhooks**                                                                                | Delete a Channel                          | Queue - Delete a channel                                                                      |
| **Reports**                                                                                           | Get Scheduled Reports                     | Retrieve all the scheduled reports of the partner                                             |
| **Reports**                                                                                           | Add Scheduled Report                      | Add a scheduled report to the database                                                        |
| **Reports**                                                                                           | Get Scheduled Report by Id                | Retrieve a scheduled report by scheduledReportId                                              |
| **Reports**                                                                                           | Delete Scheduled Report                   | Delete scheduled report by scheduledReportId                                                  |
| **Reports**                                                                                           | Send Email Mailgun                        | Send email via mailgun                                                                        |
| **Reports**                                                                                           | Get Partner Info                          | <p>Retrieve Partner Profile information<br>Name, Address. Phone…etc</p>                       |
| **Reports**                                                                                           | Get MSP User Info                         | <p>Retrieve MSP User Information<br>ID, Name, Email, Role, PartnerId</p>                      |
| **Reports**                                                                                           | Get Customer by Id                        | Retrieve customer by customer id                                                              |
| **Reports**                                                                                           | Get List of Customers                     | Retrieve a list of customers for the authenticated partner                                    |
| **Reports**                                                                                           | List Users by Id                          | Retrieve a list of users by Customer                                                          |
| **Reports**                                                                                           | Get Events by Customer                    | Retrieve events by Customer and additional query values                                       |
| **Reports**                                                                                           | Event Data by Query                       | Retrieve events for specific query                                                            |
| **Reports**                                                                                           | Events Count by Query                     | Retrieve a count of events using query parameters                                             |
| **Reports**                                                                                           | Events Count by Body Query                | Retrieve a count of events for a specific query                                               |
| **Reports**                                                                                           | Event Data Query with Pagination          | Retrieve events using pagination. This is used to pull large data sets. In the `/event/query` |
| specify `scroll` parameter in seconds determine the length of time the query will run and return data |                                           |                                                                                               |
| **Reports**                                                                                           | Get ApiKey                                | get ApiKey by idToken (This method is used via the Saas Alerts UI.),                          |
| idToken - issued once per hour,                                                                       |                                           |                                                                                               |
| apiKey - persists until reset it manually                                                             |                                           |                                                                                               |
| **Reports**                                                                                           | Reset ApiKey by idToken                   | reset ApiKey by idToken (This method is used via the Saas Alerts UI)                          |
| **Reports**                                                                                           | Upload Files                              | Upload a file to cloud storage                                                                |
| **Reports**                                                                                           | Get Signed URL of Cloud Storage Object    | Get signed url of the cloud storage object                                                    |
| **Reports**                                                                                           | Delete Signed URL of Cloud Storage Object | Remove uploaded file from cloud storage                                                       |
| **Reports**                                                                                           | Delete Customer                           | Delete customer for the authenticated partner                                                 |
| **Reports**                                                                                           | Update Customer                           | Update customer fields for the authenticated partner                                          |
| **Reports**                                                                                           | List Customers                            | Retrieve a list of customers for the authenticated partner                                    |
| **Reports**                                                                                           | Create Customer                           | Create customer for the authenticated partner                                                 |
| **Reports**                                                                                           | Register A Device                         | Register a device                                                                             |
