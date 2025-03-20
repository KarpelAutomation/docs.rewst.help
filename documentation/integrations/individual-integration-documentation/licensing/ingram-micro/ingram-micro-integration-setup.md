# Ingram Micro Integration Setup

Integrating Rewst with Ingram Micro Cloud Marketplace offers users a seamless and efficient way to access and manage cloud services and subscriptions. With the integration, Rewst users can leverage the vast catalog of cloud solutions available in the Ingram Micro Cloud Marketplace, making it easier to discover, provision, and manage cloud services within the Rewst platform. Users can streamline the procurement and provisioning processes, track usage and billing, and efficiently manage their cloud subscriptions, all from a single integrated platform. The integration empowers users to maximize the value of cloud services, simplify their workflows, and ensure a seamless experience when working with cloud solutions through Rewst and the Ingram Micro Cloud Marketplace.

## Setup

{% hint style="info" %}
Contact Ingram Micro Integration Support at [marketplacepsa@ingrammicro.com](mailto:marketplacepsa@ingrammicro.com) if you don’t have access to your marketplace API credentials.
{% endhint %}

1. **Create** a new [Staff Account](https://kb.cloud.im/support/solutions/articles/66000396732-01-a-how-to-add-a-staff-user-to-unified-reseller-control-panel) for the Rewst Application.
2. **Name** this user `rewst` and ensure that you generate a safe, unique password.
3. **Activate** the API from the [Ingram Cloud Marketplace.](https://kb.cloud.im/support/solutions/articles/66000489946-how-to-get-cloud-marketplace-api-subscription-key) You can only have a single user assigned to the Marketplace API App that you create.
   * The user must be activated in the portal on the main "Users" page.
   * When you click the user, it may have an orange bar that says the user needs to accept the invite in their mail.
   * As an admin, you can activate the account manually for them and then reset the password if required.
4. **Navigate** to the integrations page in [Rewst](https://app.rewst.io/).
5. **Click** on the Ingram Micro Cloud integration.
6. **Fill out** the configuration form:
   * **Username**: This is the username of the user associated with the API. Clicking on the "Marketplace API" menu on the left navigation will show you the username.
   * **Password**: The password is the password of that account. This can be set in the "Users" section of the control panel. The right user will match the "Username" under "User Settings".
   * **Subscription Key**: The subscription key can then be found on the Marketplace API.
7. **Click** on the Save Configuration button.

## Actions

### Customers

#### List Customers[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-customers) <a href="#list-customers" id="list-customers"></a>

Get a list of customers and their basic details.

GET `/customers`

| Key        | Type                 | Description                                                                |
| ---------- | -------------------- | -------------------------------------------------------------------------- |
| name       | String (?)           | Find customers that are similar to the provided name.                      |
| email      | String (?)           | Find customers that have a contact person with the provided email address. |
| externalId | String (?)           | Find customers that have an external ID assigned equal to the provided ID. |
| resellerId | Im Cloud Reseller id | None Provided                                                              |

#### Create Customer[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#create-customer) <a href="#create-customer" id="create-customer"></a>

Create a customer in the platform and associate it with the reseller that sends this request.

POST `/customers`

| Key        | Type       | Description                                                                                            |
| ---------- | ---------- | ------------------------------------------------------------------------------------------------------ |
| externalId | String (?) | Find customers that have an external ID assigned equal to the provided ID.                             |
| attributes | String (?) | None Provided                                                                                          |
| status     | String     | None Provided                                                                                          |
| name       | String (?) | The name of the account's company                                                                      |
| language   | String (?) | The language for the account's notifications and the defaultlanguage for the user panel login          |
| taxRegId   | String (?) | The tax registration ID that is used by the platform in tax calculation and determining tax exemption. |

#### Get Customer[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#get-customer) <a href="#get-customer" id="get-customer"></a>

Get extended details about a specific customer in the platform.

GET `/customers/{id}`

| Key | Type                 | Description   |
| --- | -------------------- | ------------- |
| id  | Im Cloud Customer id | None Provided |

#### Update Customer[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#update-customer) <a href="#update-customer" id="update-customer"></a>

Update details and status of the existing customer.

PATCH `/customers/{id}`

| Key        | Type                 | Description                                                                                            |
| ---------- | -------------------- | ------------------------------------------------------------------------------------------------------ |
| id\*       | Im Cloud Customer id | None Provided                                                                                          |
| externalId | String (?)           | Find customers that have an external ID assigned equal to the provided ID.                             |
| attributes | String (?)           | None Provided                                                                                          |
| status     | String               | None Provided                                                                                          |
| name       | String (?)           | The name of the account's company                                                                      |
| language   | String (?)           | The language for the account's notifications and the defaultlanguage for the user panel login          |
| taxRegId   | String (?)           | The tax registration ID that is used by the platform in tax calculation and determining tax exemption. |

#### List Reseller Customer(S)[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-reseller-customers) <a href="#list-reseller-customers" id="list-reseller-customers"></a>

Get a list of customers and their basic details for the specified reseller.

GET `/resellers/{id}/customers`

| Key        | Type                 | Description                                                                |
| ---------- | -------------------- | -------------------------------------------------------------------------- |
| id\*       | Im Cloud Reseller id | None Provided                                                              |
| name       | String (?)           | Find customers that are similar to the provided name.                      |
| email      | String (?)           | Find customers that have a contact person with the provided email address. |
| externalId | String (?)           | Find customers that have an external ID assigned equal to the provided ID. |

#### Create Reseller Customer[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#create-reseller-customer) <a href="#create-reseller-customer" id="create-reseller-customer"></a>

Create a customer in the platform and associate it with the specified reseller.

POST `/resellers/{id}/customers`

| Key        | Type                 | Description                                                                                            |
| ---------- | -------------------- | ------------------------------------------------------------------------------------------------------ |
| id\*       | Im Cloud Reseller id | None Provided                                                                                          |
| externalId | String (?)           | Find customers that have an external ID assigned equal to the provided ID.                             |
| attributes | String (?)           | None Provided                                                                                          |
| status     | String               | None Provided                                                                                          |
| name       | String (?)           | The name of the account's company                                                                      |
| language   | String (?)           | The language for the account's notifications and the defaultlanguage for the user panel login          |
| taxRegId   | String (?)           | The tax registration ID that is used by the platform in tax calculation and determining tax exemption. |

***

#### Objects[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#objects) <a href="#objects" id="objects"></a>

**Address - Customers**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#address---customers)

| Key              | Type       | Description                                                              |
| ---------------- | ---------- | ------------------------------------------------------------------------ |
| streetAddress    | String (?) | None Provided                                                            |
| addressExtension | String (?) | Secondary information in the address such as apartment or suite number.  |
| postalCode       | String (?) | The postal code for the specified street address.                        |
| city             | String (?) | The city of the postal address.                                          |
| state            | String (?) | The state (if applicable) of the city (mandatory for certain countries). |
| countryCode      | String     | None Provided                                                            |

***

**Contactperson - Customers**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#contactperson---customers)

| Key         | Type       | Description                                                                                                                                                                                                                                                                 |
| ----------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type        | String     | This defines the contact type.                                                                                                                                                                                                                                              |
| firstName   | String (?) | This is the first name of the contact.                                                                                                                                                                                                                                      |
| lastName    | String (?) | This is the last name of the contact.                                                                                                                                                                                                                                       |
| email       | String (?) | This is the email address of the contact.                                                                                                                                                                                                                                   |
| phoneNumber | String (?) | This is the phone number of the contact in ITU-T E.164 notation. Extension numbers may be added by adding a '#' at the end.                                                                                                                                                 |
| login       | String (?) | This is an optional parameter (only for the contactPerson of type `admin`) used when you musthave a certain login name for a customer administrator instead of an automatically generated one.                                                                              |
| password    | String (?) | This is a password assigned to the administrator login.The password strength must comply with the quality level requirements in the platform. Typically, it must beat least 7-character length, including letters in upper and lower cases, digits, and special characters. |

### Orders

#### Get Order[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#get-order) <a href="#get-order" id="get-order"></a>

Get extended details of a specific order.

GET `/orders/{id}`

| Key | Type              | Description   |
| --- | ----------------- | ------------- |
| id  | Im Cloud Order id | None Provided |

#### Update Order[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#update-order) <a href="#update-order" id="update-order"></a>

Update existing order properties and status.

PATCH `/orders/{id}`

| Key              | Type                       | Description                                                              |
| ---------------- | -------------------------- | ------------------------------------------------------------------------ |
| id\*             | Im Cloud Order id          | None Provided                                                            |
| customerId       | Im Cloud Customer id       | None Provided                                                            |
| subscriptionId   | Im Cloud Subscription id   | None Provided                                                            |
| orderNumber      | Im Cloud Order orderNumber | None Provided                                                            |
| type             | String                     | None Provided                                                            |
| poNumber         | String (?)                 | The purchase order number provided by the customer.                      |
| creationDate     | String (?)                 | The date and time when the order was created in the platform.            |
| provisioningDate | String (?)                 | The date and time when the order was provisioning in the platform.       |
| status           | String                     | None Provided                                                            |
| attributes       | String (?)                 | The dictionary of custom attributes                                      |
| creditCheck      | String (?)                 | Defines whether customer's credit should be checked on order processing. |
| autorenewal      | String (?)                 | Migration Order - Subscription Auto Renewal Flag                         |
| startDate        | String (?)                 | None Provided                                                            |
| migrationDate    | String (?)                 | None Provided                                                            |
| expirationDate   | String (?)                 | None Provided                                                            |
| lastBillingDate  | String (?)                 | None Provided                                                            |
| nextBillingDate  | String (?)                 | None Provided                                                            |
| migrationProgram | String (?)                 | None Provided                                                            |
| planId           | Im Cloud Service Plan id   | None Provided                                                            |
| billingModel     | String                     | None Provided                                                            |
| scheduledOn      | String (?)                 | None Provided                                                            |

#### List Orders[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-orders) <a href="#list-orders" id="list-orders"></a>

Get basic details of orders on the platform.

GET `/orders`

| Key              | Type                              | Description                                                                                                   |
| ---------------- | --------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| customerId       | Im Cloud Customer id              | None Provided                                                                                                 |
| subscriptionId   | Im Cloud Subscription id          | None Provided                                                                                                 |
| orderNumber      | Im Cloud Order Number orderNumber | None Provided                                                                                                 |
| status           | String (?)                        | None Provided                                                                                                 |
| creationTimeFrom | String (?)                        | This is the beginning of a specific period of time used to search for orders created during that same period. |
| creationTimeTo   | String (?)                        | This is the end of a specific period of time used to search for orders                                        |
| statusCode       | String (?)                        | Internal status code of the order                                                                             |

#### Create Order[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#create-order) <a href="#create-order" id="create-order"></a>

Place an order for a set of products for a specific customer.

POST `/orders`

| Key              | Type                       | Description                                                              |
| ---------------- | -------------------------- | ------------------------------------------------------------------------ |
| customerId       | Im Cloud Customer id       | None Provided                                                            |
| subscriptionId   | Im Cloud Subscription id   | None Provided                                                            |
| orderNumber      | Im Cloud Order orderNumber | None Provided                                                            |
| type             | String                     | None Provided                                                            |
| poNumber         | String (?)                 | The purchase order number provided by the customer.                      |
| creationDate     | String (?)                 | The date and time when the order was created in the platform.            |
| provisioningDate | String (?)                 | The date and time when the order was provisioning in the platform.       |
| status           | String                     | None Provided                                                            |
| attributes       | String (?)                 | The dictionary of custom attributes                                      |
| creditCheck      | String (?)                 | Defines whether customer's credit should be checked on order processing. |
| autorenewal      | String (?)                 | Migration Order - Subscription Auto Renewal Flag                         |
| startDate        | String (?)                 | None Provided                                                            |
| migrationDate    | String (?)                 | None Provided                                                            |
| expirationDate   | String (?)                 | None Provided                                                            |
| lastBillingDate  | String (?)                 | None Provided                                                            |
| nextBillingDate  | String (?)                 | None Provided                                                            |
| migrationProgram | String (?)                 | None Provided                                                            |
| planId           | Im Cloud Service Plan id   | None Provided                                                            |
| billingModel     | String                     | None Provided                                                            |
| scheduledOn      | String (?)                 | None Provided                                                            |

#### Estimate An Order Price[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#estimate-an-order-price) <a href="#estimate-an-order-price" id="estimate-an-order-price"></a>

Get estimated prices of an order.

POST `/orders/estimate`

| Key              | Type                       | Description                                                              |
| ---------------- | -------------------------- | ------------------------------------------------------------------------ |
| customerId       | Im Cloud Customer id       | None Provided                                                            |
| subscriptionId   | Im Cloud Subscription id   | None Provided                                                            |
| orderNumber      | Im Cloud Order orderNumber | None Provided                                                            |
| type             | String                     | None Provided                                                            |
| poNumber         | String (?)                 | The purchase order number provided by the customer.                      |
| creationDate     | String (?)                 | The date and time when the order was created in the platform.            |
| provisioningDate | String (?)                 | The date and time when the order was provisioning in the platform.       |
| status           | String                     | None Provided                                                            |
| attributes       | String (?)                 | The dictionary of custom attributes                                      |
| creditCheck      | String (?)                 | Defines whether customer's credit should be checked on order processing. |
| autorenewal      | String (?)                 | Migration Order - Subscription Auto Renewal Flag                         |
| startDate        | String (?)                 | None Provided                                                            |
| migrationDate    | String (?)                 | None Provided                                                            |
| expirationDate   | String (?)                 | None Provided                                                            |
| lastBillingDate  | String (?)                 | None Provided                                                            |
| nextBillingDate  | String (?)                 | None Provided                                                            |
| migrationProgram | String (?)                 | None Provided                                                            |
| planId           | Im Cloud Service Plan id   | None Provided                                                            |
| billingModel     | String                     | None Provided                                                            |
| scheduledOn      | String (?)                 | None Provided                                                            |

#### List Reseller's Orders[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-resellers-orders) <a href="#list-resellers-orders" id="list-resellers-orders"></a>

Get basic details of orders in the platform for the specified reseller.

GET `/resellers/{id}/orders`

| Key              | Type                     | Description                                                                                                   |
| ---------------- | ------------------------ | ------------------------------------------------------------------------------------------------------------- |
| id               | Im Cloud Reseller id     | None Provided                                                                                                 |
| customerId       | Im Cloud Customer id     | None Provided                                                                                                 |
| subscriptionId   | Im Cloud Subscription id | None Provided                                                                                                 |
| status           | String (?)               | None Provided                                                                                                 |
| creationTimeFrom | String (?)               | This is the beginning of a specific period of time used to search for orders created during that same period. |
| creationTimeTo   | String (?)               | This is the end of a specific period of time used to search for orders                                        |

***

#### Objects - Orders[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#objects---orders) <a href="#objects---orders" id="objects---orders"></a>

**Total - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#total---orders)

| Key      | Type       | Description                                |
| -------- | ---------- | ------------------------------------------ |
| currency | String (?) | The currency code to be used for charging. |
| amount   | String (?) | Amount of order.                           |

***

**Orderdetail - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#orderdetail---orders)

| Key         | Type                 | Description   |
| ----------- | -------------------- | ------------- |
| type        | String               | None Provided |
| mpn         | String (?)           | None Provided |
| productId   | Im Cloud Product mpn | None Provided |
| description | String (?)           | None Provided |
| quantity    | String (?)           | None Provided |

***

**Subscriptionperiod - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#subscriptionperiod---orders)

| Key      | Type       | Description               |
| -------- | ---------- | ------------------------- |
| type     | String (?) | The period duration type. |
| duration | String (?) | The period duration.      |

***

**Product - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#product---orders)

| Key            | Type                     | Description                          |
| -------------- | ------------------------ | ------------------------------------ |
| mpn            | String (?)               | None Provided                        |
| vendor         | String (?)               | None Provided                        |
| newMPN         | String (?)               | None Provided                        |
| name           | String (?)               | None Provided                        |
| quantity       | String (?)               | The number of ordered product items. |
| subscriptionId | Im Cloud Subscription id | None Provided                        |

***

**Durationoforderdetail - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#durationoforderdetail---orders)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| type     | String (?) | None Provided |
| duration | String (?) | None Provided |

***

**Unitprice - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#unitprice---orders)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String (?) | None Provided |
| amount   | String (?) | None Provided |

***

**Astructurerepresentingthetotalcalculatedprice - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#astructurerepresentingthetotalcalculatedprice---orders)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String (?) | None Provided |
| amount   | String (?) | None Provided |

***

**Astructurerepresentingthediscount - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#astructurerepresentingthediscount---orders)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| type   | String     | None Provided |
| value  | String (?) | None Provided |
| amount | String (?) | None Provided |

***

**Astructurerepresentingthetaxamount - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#astructurerepresentingthetaxamount---orders)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String (?) | None Provided |
| amount   | String (?) | None Provided |

***

**Billingperiod - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#billingperiod---orders)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| type     | String (?) | None Provided |
| duration | String (?) | None Provided |

***

**Extendedprice - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#extendedprice---orders)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String (?) | None Provided |
| amount   | String (?) | None Provided |

***

**Deal - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#deal---orders)

| Key          | Type       | Description   |
| ------------ | ---------- | ------------- |
| freezePrices | String (?) | None Provided |

***

**Parameter - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#parameter---orders)

| Key               | Type       | Description   |
| ----------------- | ---------- | ------------- |
| name              | String (?) | None Provided |
| value             | String (?) | None Provided |
| structured\_value | String (?) | None Provided |

***

**Agreement - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#agreement---orders)

| Key      | Type                 | Description   |
| -------- | -------------------- | ------------- |
| sellerId | Im Cloud Reseller id | None Provided |
| buyerId  | Im Cloud Customer id | None Provided |

***

**Price - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#price---orders)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String (?) | None Provided |
| amount   | String (?) | None Provided |
| type     | String     | None Provided |

***

**Discount - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#discount---orders)

| Key          | Type  | Description                   |
| ------------ | ----- | ----------------------------- |
| applicableTo | Array | Applicability to order types. |

***

**Discountprice - Orders**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#discountprice---orders)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String (?) | None Provided |
| amount   | String (?) | None Provided |
| type     | String     | None Provided |

### Products

#### List Products[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-products) <a href="#list-products" id="list-products"></a>

Get a list of products available for the requester to sell or resell with details included.

GET `/products`

| Key         | Type       | Description   |
| ----------- | ---------- | ------------- |
| name        | String (?) | None Provided |
| serviceName | String (?) | None Provided |
| mpn         | String (?) | MPN value     |
| vendor      | String (?) | None Provided |

### Reports

#### List Reports[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-reports) <a href="#list-reports" id="list-reports"></a>

Get a list of the reseller's rated data reports exported during the specified period.

GET `/reports`

| Key    | Type       | Description                                |
| ------ | ---------- | ------------------------------------------ |
| name   | String (?) | The name of the requested reports.         |
| format | String (?) | The format filter of the requested reports |
| status | String (?) | The status filter of the requested reports |
| type   | String (?) | The type filter of the requested reports   |
| from   | String (?) | The first day of the requested period.     |
| to     | String (?) | The last day of the requested period.      |

#### Schedule A One Time Report[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#schedule-a-one-time-report) <a href="#schedule-a-one-time-report" id="schedule-a-one-time-report"></a>

Schedule the generation of a one-time report.

POST `/reports`

| Key               | Type       | Description                                                                   |
| ----------------- | ---------- | ----------------------------------------------------------------------------- |
| name              | String (?) | The preconfigured report name as defined in the platform. (i.e. Daily Report) |
| customizationName | String (?) | None Provided                                                                 |
| status            | String     | The report generation status.                                                 |
| type              | String     | The report generation type.                                                   |
| format            | String     | The report file format.                                                       |
| creationDate      | String (?) | The report file creation date and time.                                       |
| startDate         | String (?) | The report period start date and time.                                        |
| endDate           | String (?) | The report period end date and time.                                          |
| downloadUrl       | String (?) | The URL of a specific report file.                                            |

#### Get Report[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#get-report) <a href="#get-report" id="get-report"></a>

Get extended details about a specific report in the platform.

GET `/reports/{reportId}`

| Key        | Type               | Description   |
| ---------- | ------------------ | ------------- |
| reportId\* | Im Cloud Report id | None Provided |

### Resellers

#### List Resellers[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-resellers) <a href="#list-resellers" id="list-resellers"></a>

Get a list of resellers and their basic details.

GET `/resellers`

| Key        | Type       | Description                                                                |
| ---------- | ---------- | -------------------------------------------------------------------------- |
| name       | String (?) | None Provided                                                              |
| email      | String (?) | None Provided                                                              |
| externalId | String (?) | Find customers that have an external ID assigned equal to the provided ID. |

#### Create Reseller[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#create-reseller) <a href="#create-reseller" id="create-reseller"></a>

POST `/resellers`

| Key                  | Type       | Description                                                                                            |
| -------------------- | ---------- | ------------------------------------------------------------------------------------------------------ |
| externalId           | String (?) | Find customers that have an external ID assigned equal to the provided ID.                             |
| attributes           | String (?) | None Provided                                                                                          |
| status               | String     | None Provided                                                                                          |
| name                 | String (?) | The name of the account's company                                                                      |
| language             | String (?) | The language for the account's notifications and the defaultlanguage for the user panel login          |
| taxRegId             | String (?) | The tax registration ID that is used by the platform in tax calculation and determining tax exemption. |
| currency             | String (?) | Reseller currency                                                                                      |
| taxationProviderName | String (?) | Reseller taxation engine name                                                                          |
| customerClass        | String (?) | None Provided                                                                                          |

#### Get Reseller[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#get-reseller) <a href="#get-reseller" id="get-reseller"></a>

Get extended details about a specific reseller in the platform.

GET `/resellers/{id}`

| Key  | Type                 | Description   |
| ---- | -------------------- | ------------- |
| id\* | Im Cloud Reseller id | None Provided |

#### Update Reseller[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#update-reseller) <a href="#update-reseller" id="update-reseller"></a>

Update details of the existing reseller.

PATCH `/resellers/{id}`

| Key                  | Type                 | Description                                                                                            |
| -------------------- | -------------------- | ------------------------------------------------------------------------------------------------------ |
| id\*                 | Im Cloud Reseller id | None Provided                                                                                          |
| externalId           | String (?)           | Find customers that have an external ID assigned equal to the provided ID.                             |
| attributes           | String (?)           | None Provided                                                                                          |
| status               | String               | None Provided                                                                                          |
| name                 | String (?)           | The name of the account's company                                                                      |
| language             | String (?)           | The language for the account's notifications and the defaultlanguage for the user panel login          |
| taxRegId             | String (?)           | The tax registration ID that is used by the platform in tax calculation and determining tax exemption. |
| currency             | String (?)           | Reseller currency                                                                                      |
| taxationProviderName | String (?)           | Reseller taxation engine name                                                                          |
| customerClass        | String (?)           | None Provided                                                                                          |

***

#### Objects - Resellers[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#objects---resellers) <a href="#objects---resellers" id="objects---resellers"></a>

**Address - Resellers**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#address---resellers)

| Key              | Type       | Description                                                              |
| ---------------- | ---------- | ------------------------------------------------------------------------ |
| streetAddress    | String (?) | None Provided                                                            |
| addressExtension | String (?) | Secondary information in the address such as apartment or suite number.  |
| postalCode       | String (?) | The postal code for the specified street address.                        |
| city             | String (?) | The city of the postal address.                                          |
| state            | String (?) | The state (if applicable) of the city (mandatory for certain countries). |
| countryCode      | String     | None Provided                                                            |

***

**Contactperson - Resellers**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#contactperson---resellers)

| Key         | Type       | Description                                                                                                                                                                                                                                                                 |
| ----------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type        | String     | This defines the contact type.                                                                                                                                                                                                                                              |
| firstName   | String (?) | This is the first name of the contact.                                                                                                                                                                                                                                      |
| lastName    | String (?) | This is the last name of the contact.                                                                                                                                                                                                                                       |
| email       | String (?) | This is the email address of the contact.                                                                                                                                                                                                                                   |
| phoneNumber | String (?) | This is the phone number of the contact in ITU-T E.164 notation. Extension numbers may be added by adding a '#' at the end.                                                                                                                                                 |
| login       | String (?) | This is an optional parameter (only for the contactPerson of type `admin`) used when you musthave a certain login name for a customer administrator instead of an automatically generated one.                                                                              |
| password    | String (?) | This is a password assigned to the administrator login.The password strength must comply with the quality level requirements in the platform. Typically, it must beat least 7-character length, including letters in upper and lower cases, digits, and special characters. |

### Service Plans

#### List Service Plans[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-service-plans) <a href="#list-service-plans" id="list-service-plans"></a>

Get basic details of service plans in the platform.

GET `/plans`

#### Get Service Plan[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#get-service-plan) <a href="#get-service-plan" id="get-service-plan"></a>

Get extended details about a specific service plan with all possible switches in the platform.

GET `/plans/{id}`

| Key  | Type                     | Description   |
| ---- | ------------------------ | ------------- |
| id\* | Im Cloud Service Plan id | None Provided |

### Subscriptions

#### List Subscriptions[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#list-subscriptions) <a href="#list-subscriptions" id="list-subscriptions"></a>

Get a list of subscriptions belonging to the customers of the reseller that sends the request.

GET `/subscriptions`

| Key              | Type                 | Description                                                                                                   |
| ---------------- | -------------------- | ------------------------------------------------------------------------------------------------------------- |
| customerId       | Im Cloud Customer id | None Provided                                                                                                 |
| creationDateFrom | String (?)           | This is the beginning of a specific period of time used to search for orders created during that same period. |
| creationDateTo   | String (?)           | This is the end of a specific period of time used to search for orders                                        |
| status           | String (?)           | None Provided                                                                                                 |

#### Get Subscription[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#get-subscription) <a href="#get-subscription" id="get-subscription"></a>

Get extended details of a specific subscription from the platform.

GET `/subscriptions/{id}`

| Key  | Type                     | Description   |
| ---- | ------------------------ | ------------- |
| id\* | Im Cloud Subscription id | None Provided |

#### Update Subscription Pricing Details[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#update-subscription-pricing-details) <a href="#update-subscription-pricing-details" id="update-subscription-pricing-details"></a>

PATCH `/subscriptions/{id}/specialPricing`

| Key  | Type                     | Description   |
| ---- | ------------------------ | ------------- |
| id\* | Im Cloud Subscription id | None Provided |

#### Update Subscription[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#update-subscription) <a href="#update-subscription" id="update-subscription"></a>

Update some of the subscription details.

POST `/subscriptions/{id}`

| Key           | Type                     | Description   |
| ------------- | ------------------------ | ------------- |
| id\*          | Im Cloud Subscription id | None Provided |
| attributes    | String (?)               | None Provided |
| renewalStatus | String (?)               | None Provided |

***

#### Objects - Subscriptions[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#objects---subscriptions) <a href="#objects---subscriptions" id="objects---subscriptions"></a>

**Product - Subscriptions**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#product---subscriptions)

| Key | Type                 | Description   |
| --- | -------------------- | ------------- |
| mpn | String (?)           | None Provided |
| id  | Im Cloud Product mpn | None Provided |

***

**Unitprice - Subscriptions**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#unitprice---subscriptions)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String     | None Provided |
| amount   | String (?) | None Provided |

***

**Unitcost - Subscriptions**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#unitcost---subscriptions)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String     | None Provided |
| amount   | String (?) | None Provided |

***

**Unitprovidercost - Subscriptions**[**​**](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#unitprovidercost---subscriptions)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| currency | String     | None Provided |
| amount   | String (?) | None Provided |

### Validations

#### Validate Product Activation Parameters[​](http://localhost:3000/docs/integrations/Distribution/distribution-im-cloud-integration#validate-product-activation-parameters) <a href="#validate-product-activation-parameters" id="validate-product-activation-parameters"></a>

Validate activation parameters for a set of products.

POST `/validation/parameters`
