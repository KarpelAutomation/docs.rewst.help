# Action & Endpoints

### Accounts Users

#### List Users[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-users) <a href="#list-users" id="list-users"></a>

Gets a list of users

GET `/users`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Accounts User[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-accounts-user) <a href="#get-accounts-user" id="get-accounts-user"></a>

Gets a specific user by its ID.

GET `/users/{id}`

| Key  | Type                     | Description   |
| ---- | ------------------------ | ------------- |
| id\* | It Glue Accounts User id | None Provided |

#### Update Accounts User[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-accounts-user) <a href="#update-accounts-user" id="update-accounts-user"></a>

PATCH `/users/{id}`

| Key  | Type                     | Description   |
| ---- | ------------------------ | ------------- |
| id\* | It Glue Accounts User id | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects) <a href="#objects" id="objects"></a>

**Filter**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter)

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| name       | String (?) | None Provided |
| email      | String (?) | None Provided |
| role\_name | String (?) | None Provided |

***

**Datum**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute)

| Key         | Type       | Description   |
| ----------- | ---------- | ------------- |
| first\_name | String (?) | None Provided |
| last\_name  | String (?) | None Provided |

***

**Avatar**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#avatar)

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| content    | String (?) | None Provided |
| file\_name | String (?) | None Provided |

### Configuration Interfaces

#### List Configuration Interfaces[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-configuration-interfaces) <a href="#list-configuration-interfaces" id="list-configuration-interfaces"></a>

Gets a list of configuration interfaces

`/configurations/{conf_id}/relationships/configuration_interfaces`

| Key        | Type                     | Description   |
| ---------- | ------------------------ | ------------- |
| conf\_id\* | It Glue Configuration id | None Provided |
| sort       | String (?)               | None Provided |
| sort\_desc | String (?)               | None Provided |

#### Get Configuration Interface[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-configuration-interface) <a href="#get-configuration-interface" id="get-configuration-interface"></a>

Gets a specific configuration interface by its ID.

GET `/configuration_interfaces/{id}`

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| id\* | String (?) | None Provided |

#### Create Configuration Interface[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-configuration-interface) <a href="#create-configuration-interface" id="create-configuration-interface"></a>

Creates a new configuration interface

POST `/configuration_interfaces`

#### Update Configuration Interface[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-configuration-interface) <a href="#update-configuration-interface" id="update-configuration-interface"></a>

PATCH `/configuration_interfaces/{id}`

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| id\* | String (?) | None Provided |

***

#### Objects - Configuration Interfaces[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---configuration-interfaces) <a href="#objects---configuration-interfaces" id="objects---configuration-interfaces"></a>

**Filter - Configuration Interfaces**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---configuration-interfaces)

| Key         | Type       | Description   |
| ----------- | ---------- | ------------- |
| ip\_address | String (?) | None Provided |

***

**Datum - Configuration Interfaces**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---configuration-interfaces)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Configuration Interfaces**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---configuration-interfaces)

| Key               | Type                     | Description   |
| ----------------- | ------------------------ | ------------- |
| configuration\_id | It Glue Configuration id | None Provided |
| name\*            | String (?)               | None Provided |
| ip\_address       | String (?)               | None Provided |
| mac\_address      | String (?)               | None Provided |
| primary           | String (?)               | None Provided |
| notes             | String (?)               | None Provided |

### Configuration Statuses

#### List Configuration Statuses[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-configuration-statuses) <a href="#list-configuration-statuses" id="list-configuration-statuses"></a>

Gets a list of Configuration Statuses

`/configuration_statuses`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Configuration Status[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-configuration-status) <a href="#get-configuration-status" id="get-configuration-status"></a>

Gets a specific Configuration Status by its ID.

GET `/configuration_statuses/{id}`

| Key  | Type                            | Description   |
| ---- | ------------------------------- | ------------- |
| id\* | It Glue Configuration Status id | None Provided |

#### Create Configuration Status[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-configuration-status) <a href="#create-configuration-status" id="create-configuration-status"></a>

Creates a new Configuration Status

POST `/configuration_statuses`

#### Update Configuration Status[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-configuration-status) <a href="#update-configuration-status" id="update-configuration-status"></a>

PATCH `/configuration_statuses/{id}`

| Key  | Type                            | Description   |
| ---- | ------------------------------- | ------------- |
| id\* | It Glue Configuration Status id | None Provided |

***

#### Objects - Configuration Statuses[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---configuration-statuses) <a href="#objects---configuration-statuses" id="objects---configuration-statuses"></a>

**Filter - Configuration Statuses**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---configuration-statuses)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

***

**Datum - Configuration Statuses**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---configuration-statuses)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Configuration Statuses**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---configuration-statuses)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

### Configuration Types

#### List Configuration Types[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-configuration-types) <a href="#list-configuration-types" id="list-configuration-types"></a>

Gets a list of configuration types

`/configuration_types`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Configuration Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-configuration-type) <a href="#get-configuration-type" id="get-configuration-type"></a>

Gets a specific configuration type by its ID.

GET `/configuration_types/{id}`

| Key  | Type                          | Description   |
| ---- | ----------------------------- | ------------- |
| id\* | It Glue Configuration Type id | None Provided |

#### Create Configuration Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-configuration-type) <a href="#create-configuration-type" id="create-configuration-type"></a>

Creates a new configuration type

POST `/configuration_types`

#### Update Configuration Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-configuration-type) <a href="#update-configuration-type" id="update-configuration-type"></a>

PATCH `/configuration_types/{id}`

| Key  | Type                          | Description   |
| ---- | ----------------------------- | ------------- |
| id\* | It Glue Configuration Type id | None Provided |

***

#### Objects - Configuration Types[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---configuration-types) <a href="#objects---configuration-types" id="objects---configuration-types"></a>

**Filter - Configuration Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---configuration-types)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

***

**Datum - Configuration Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---configuration-types)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Configuration Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---configuration-types)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

### Configurations

#### List Configurations[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-configurations) <a href="#list-configurations" id="list-configurations"></a>

Gets a list of configurations

`/configurations`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |
| include    | String (?) | None Provided |

#### Get Configuration[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-configuration) <a href="#get-configuration" id="get-configuration"></a>

Gets a specific configuration by it's ID.

GET `/configurations/{id}`

| Key     | Type                     | Description   |
| ------- | ------------------------ | ------------- |
| id\*    | It Glue Configuration id | None Provided |
| include | String (?)               | None Provided |

#### Create Configuration[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-configuration) <a href="#create-configuration" id="create-configuration"></a>

Creates a new configuration

POST `/configurations`

#### Update Configuration[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-configuration) <a href="#update-configuration" id="update-configuration"></a>

PATCH `/configurations/{id}`

| Key  | Type                     | Description   |
| ---- | ------------------------ | ------------- |
| id\* | It Glue Configuration id | None Provided |

***

#### Objects - Configurations[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---configurations) <a href="#objects---configurations" id="objects---configurations"></a>

**Filter - Configurations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---configurations)

| Key                       | Type                            | Description                                                                                                          |
| ------------------------- | ------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| name                      | String (?)                      | None Provided                                                                                                        |
| organization\_id          | It Glue Organization id         | None Provided                                                                                                        |
| configuration\_type\_id   | It Glue Configuration Type id   | None Provided                                                                                                        |
| configuration\_status\_id | It Glue Configuration Status id | None Provided                                                                                                        |
| contact\_id               | It Glue Contact id              | None Provided                                                                                                        |
| serial\_number            | String (?)                      | None Provided                                                                                                        |
| asset\_tag                | String (?)                      | None Provided                                                                                                        |
| psa\_id                   | String (?)                      | Filter by Organization's ID in the PSA. This must be accompanied by the filter for PSA Type. Comma Separated Values. |
| psa\_integration\_type    | Array                           | Filter by PSA Type                                                                                                   |
| rmm\_id                   | String (?)                      | None Provided                                                                                                        |
| rmm\_integration\_type    | String (?)                      | None Provided                                                                                                        |
| archived                  | String (?)                      | None Provided                                                                                                        |

***

**Datum - Configurations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---configurations)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Configurations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---configurations)

| Key                       | Type                            | Description   |
| ------------------------- | ------------------------------- | ------------- |
| organization\_id\*        | It Glue Organization id         | None Provided |
| configuration\_type\_id\* | It Glue Configuration Type id   | None Provided |
| configuration\_status\_id | It Glue Configuration Status id | None Provided |
| location\_id              | It Glue Location id             | None Provided |
| contact\_id               | It Glue Contact id              | None Provided |
| manufacturer\_id          | It Glue Manufacturer id         | None Provided |
| model\_id                 | It Glue Model id                | None Provided |
| operating\_system\_id     | It Glue Operating System id     | None Provided |
| operating\_system\_notes  | String (?)                      | None Provided |
| name\*                    | String (?)                      | None Provided |
| notes                     | String (?)                      | None Provided |
| hostname                  | String (?)                      | None Provided |
| primary\_ip               | String (?)                      | None Provided |
| mac\_address              | String (?)                      | None Provided |
| default\_gateway          | String (?)                      | None Provided |
| serial\_number            | String (?)                      | None Provided |
| asset\_tag                | String (?)                      | None Provided |
| position                  | String (?)                      | None Provided |
| installed\_by             | String (?)                      | None Provided |
| purchased\_by             | String (?)                      | None Provided |
| purchased\_at             | String (?)                      | None Provided |
| warranty\_expires\_at     | String (?)                      | None Provided |
| installed\_at             | String (?)                      | None Provided |
| restricted                | String (?)                      | None Provided |
| archived                  | String (?)                      | None Provided |

### Contact Types

#### List Contact Types[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-contact-types) <a href="#list-contact-types" id="list-contact-types"></a>

Gets a list of contact types

`/contact_types`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Contact Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-contact-type) <a href="#get-contact-type" id="get-contact-type"></a>

Gets a specific contact type by it's ID.

GET `/contact_types/{id}`

| Key  | Type                    | Description   |
| ---- | ----------------------- | ------------- |
| id\* | It Glue Contact Type id | None Provided |

#### Create Contact Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-contact-type) <a href="#create-contact-type" id="create-contact-type"></a>

Creates a new contact type

POST `/contact_types`

#### Update Contact Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-contact-type) <a href="#update-contact-type" id="update-contact-type"></a>

PATCH `/contact_types/{id}`

| Key  | Type                    | Description   |
| ---- | ----------------------- | ------------- |
| id\* | It Glue Contact Type id | None Provided |

***

#### Objects - Contact Types[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---contact-types) <a href="#objects---contact-types" id="objects---contact-types"></a>

**Filter - Contact Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---contact-types)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

***

**Datum - Contact Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---contact-types)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Contact Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---contact-types)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| name\* | String (?) | None Provided |

### Contacts

#### List Contacts[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-contacts) <a href="#list-contacts" id="list-contacts"></a>

Gets a list of contacts

`/contacts`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |
| include    | String (?) | None Provided |

#### Get Contact[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-contact) <a href="#get-contact" id="get-contact"></a>

Gets a specific contact by its ID.

GET `/contacts/{id}`

| Key     | Type               | Description   |
| ------- | ------------------ | ------------- |
| id\*    | It Glue Contact id | None Provided |
| include | String (?)         | None Provided |

#### Create Contact[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-contact) <a href="#create-contact" id="create-contact"></a>

Creates a new contact

POST `/contacts`

#### Update Contact[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-contact) <a href="#update-contact" id="update-contact"></a>

PATCH `/contacts/{id}`

| Key  | Type               | Description   |
| ---- | ------------------ | ------------- |
| id\* | It Glue Contact id | None Provided |

***

#### Objects - Contacts[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---contacts) <a href="#objects---contacts" id="objects---contacts"></a>

**Filter - Contacts**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---contacts)

| Key                    | Type                    | Description                                                                                                          |
| ---------------------- | ----------------------- | -------------------------------------------------------------------------------------------------------------------- |
| first\_name            | String (?)              | None Provided                                                                                                        |
| last\_name             | String (?)              | None Provided                                                                                                        |
| title                  | String (?)              | None Provided                                                                                                        |
| contact\_type\_id      | It Glue Contact Type id | None Provided                                                                                                        |
| important              | String (?)              | None Provided                                                                                                        |
| primary\_email         | String (?)              | None Provided                                                                                                        |
| organization\_id       | It Glue Organization id | None Provided                                                                                                        |
| psa\_id                | String (?)              | Filter by Organization's ID in the PSA. This must be accompanied by the filter for PSA Type. Comma Separated Values. |
| psa\_integration\_type | Array                   | Filter by PSA Type                                                                                                   |

***

**Datum - Contacts**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---contacts)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Contacts**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---contacts)

| Key                | Type                    | Description   |
| ------------------ | ----------------------- | ------------- |
| organization\_id\* | It Glue Organization id | None Provided |
| contact\_type\_id  | It Glue Contact Type id | None Provided |
| location\_id       | It Glue Location id     | None Provided |
| first\_name        | String (?)              | None Provided |
| last\_name         | String (?)              | None Provided |
| title              | String (?)              | None Provided |
| important          | String (?)              | None Provided |
| notes              | String (?)              | None Provided |
| restricted         | String (?)              | None Provided |

***

**Contactemail - Contacts**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#contactemail---contacts)

| Key         | Type       | Description   |
| ----------- | ---------- | ------------- |
| value       | String (?) | None Provided |
| label\_name | String (?) | None Provided |
| primary     | String (?) | None Provided |

***

**Contactphone - Contacts**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#contactphone---contacts)

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| properties | String (?) | None Provided |

### Countries

#### List Countries[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-countries) <a href="#list-countries" id="list-countries"></a>

Gets a list of countries

`/countries`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Country[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-country) <a href="#get-country" id="get-country"></a>

Gets a specific country by its ID.

GET `/countries/{id}`

| Key  | Type               | Description   |
| ---- | ------------------ | ------------- |
| id\* | It Glue Country id | None Provided |

***

#### Objects - Countries[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---countries) <a href="#objects---countries" id="objects---countries"></a>

**Filter - Countries**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---countries)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |
| iso  | String     | None Provided |

### Domains

#### List Domains[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-domains) <a href="#list-domains" id="list-domains"></a>

Gets a list of domains

`/domains`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |
| include    | String (?) | None Provided |

***

#### Objects - Domains[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---domains) <a href="#objects---domains" id="objects---domains"></a>

**Filter - Domains**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---domains)

| Key              | Type                    | Description   |
| ---------------- | ----------------------- | ------------- |
| id               | It Glue Domain id       | None Provided |
| organization\_id | It Glue Organization id | None Provided |

### Expirations

#### List Expirations[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-expirations) <a href="#list-expirations" id="list-expirations"></a>

`/expirations`

***

#### Objects - Expirations[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---expirations) <a href="#objects---expirations" id="objects---expirations"></a>

**Filter - Expirations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---expirations)

| Key                  | Type                    | Description   |
| -------------------- | ----------------------- | ------------- |
| organization\_id     | It Glue Organization id | None Provided |
| resource\_id         | String (?)              | None Provided |
| resource\_type\_name | String (?)              | None Provided |
| description          | String (?)              | None Provided |
| expiration\_date     | String (?)              | None Provided |

### Flexible Asset Fields

#### List Flexible Asset Fields[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-flexible-asset-fields) <a href="#list-flexible-asset-fields" id="list-flexible-asset-fields"></a>

Gets a list of flexible asset fields

`/flexible_asset_fields`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |
| include    | String (?) | None Provided |

#### Get Flexible Asset Field[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-flexible-asset-field) <a href="#get-flexible-asset-field" id="get-flexible-asset-field"></a>

Gets a specific flexible asset field by its ID.

GET `/flexible_asset_fields/{id}`

| Key  | Type                            | Description   |
| ---- | ------------------------------- | ------------- |
| id\* | It Glue Flexible Asset Field id | None Provided |

#### Create Flexible Asset Field[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-flexible-asset-field) <a href="#create-flexible-asset-field" id="create-flexible-asset-field"></a>

Creates a new flexible asset field

POST `/flexible_asset_fields`

#### Update Flexible Asset Field[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-flexible-asset-field) <a href="#update-flexible-asset-field" id="update-flexible-asset-field"></a>

PATCH `/flexible_asset_fields/{id}`

| Key  | Type                            | Description   |
| ---- | ------------------------------- | ------------- |
| id\* | It Glue Flexible Asset Field id | None Provided |

#### Delete Flexible Asset Field[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#delete-flexible-asset-field) <a href="#delete-flexible-asset-field" id="delete-flexible-asset-field"></a>

DELETE `/flexible_asset_fields/{id}`

| Key  | Type                            | Description   |
| ---- | ------------------------------- | ------------- |
| id\* | It Glue Flexible Asset Field id | None Provided |

***

#### Objects - Flexible Asset Fields[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---flexible-asset-fields) <a href="#objects---flexible-asset-fields" id="objects---flexible-asset-fields"></a>

**Datum - Flexible Asset Fields**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---flexible-asset-fields)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Flexible Asset Fields**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---flexible-asset-fields)

| Key                         | Type       | Description   |
| --------------------------- | ---------- | ------------- |
| flexible\_asset\_type\_id\* | String (?) | None Provided |
| order                       | String (?) | None Provided |
| name                        | String (?) | None Provided |
| kind\*                      | String     | None Provided |
| required                    | String (?) | None Provided |
| use\_for\_title             | String (?) | None Provided |
| expiration                  | String (?) | None Provided |
| show\_in\_list              | String (?) | None Provided |

### Flexible Asset Types

#### List Flexible Asset Types[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-flexible-asset-types) <a href="#list-flexible-asset-types" id="list-flexible-asset-types"></a>

Gets a list of flexible Asset Types

`/flexible_asset_types`

| Key     | Type       | Description   |
| ------- | ---------- | ------------- |
| sort    | String (?) | None Provided |
| include | String (?) | None Provided |

#### Get Flexible Asset Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-flexible-asset-type) <a href="#get-flexible-asset-type" id="get-flexible-asset-type"></a>

Gets a specific flexible Asset Type by its ID.

GET `/flexible_asset_types/{id}`

| Key     | Type                           | Description   |
| ------- | ------------------------------ | ------------- |
| id\*    | It Glue Flexible Asset Type id | None Provided |
| include | String (?)                     | None Provided |

#### Create Flexible Asset Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-flexible-asset-type) <a href="#create-flexible-asset-type" id="create-flexible-asset-type"></a>

Creates a new flexible asset type

POST `/flexible_asset_types`

#### Update Flexible Asset Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-flexible-asset-type) <a href="#update-flexible-asset-type" id="update-flexible-asset-type"></a>

PATCH `/flexible_asset_types/{id}`

| Key        | Type                           | Description   |
| ---------- | ------------------------------ | ------------- |
| id\*       | It Glue Flexible Asset Type id | None Provided |
| properties | String (?)                     | None Provided |

***

#### Objects - Flexible Asset Types[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---flexible-asset-types) <a href="#objects---flexible-asset-types" id="objects---flexible-asset-types"></a>

**Filter - Flexible Asset Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---flexible-asset-types)

| Key     | Type       | Description   |
| ------- | ---------- | ------------- |
| name    | String (?) | None Provided |
| icon    | String (?) | None Provided |
| enabled | String (?) | None Provided |

***

**Datum - Flexible Asset Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---flexible-asset-types)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| type\* | String (?) | None Provided |

***

**Attribute - Flexible Asset Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---flexible-asset-types)

| Key         | Type       | Description   |
| ----------- | ---------- | ------------- |
| name\*      | String (?) | None Provided |
| description | String (?) | None Provided |
| icon        | String (?) | None Provided |
| enabled     | String (?) | None Provided |

***

**Relationship - Flexible Asset Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#relationship---flexible-asset-types)

***

**Flexibleassetfield - Flexible Asset Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#flexibleassetfield---flexible-asset-types)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| type\* | String (?) | None Provided |

### Flexible Assets

#### List Flexible Assets[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-flexible-assets) <a href="#list-flexible-assets" id="list-flexible-assets"></a>

Gets a list of flexible assets

`/flexible_assets`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |
| include    | String (?) | None Provided |

#### Get Flexible Asset[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-flexible-asset) <a href="#get-flexible-asset" id="get-flexible-asset"></a>

Gets a specific flexible asset by its ID.

GET `/flexible_assets/{id}`

| Key     | Type       | Description   |
| ------- | ---------- | ------------- |
| id\*    | String (?) | None Provided |
| include | String (?) | None Provided |

#### Create Flexible Asset[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-flexible-asset) <a href="#create-flexible-asset" id="create-flexible-asset"></a>

Creates a new flexible asset

POST `/flexible_assets`

#### Update Flexible Asset[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-flexible-asset) <a href="#update-flexible-asset" id="update-flexible-asset"></a>

PATCH `/flexible_assets/{id}`

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| id\* | String (?) | None Provided |

#### Delete Flexible Asset[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#delete-flexible-asset) <a href="#delete-flexible-asset" id="delete-flexible-asset"></a>

DELETE `/flexible_assets/{id}`

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| id\* | String (?) | None Provided |

***

#### Objects - Flexible Assets[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---flexible-assets) <a href="#objects---flexible-assets" id="objects---flexible-assets"></a>

**Filter - Flexible Assets**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---flexible-assets)

| Key                      | Type                           | Description   |
| ------------------------ | ------------------------------ | ------------- |
| flexible-asset-type-id\* | It Glue Flexible Asset Type id | None Provided |
| name                     | String (?)                     | None Provided |
| organization-id          | It Glue Organization id        | None Provided |

***

**Datum - Flexible Assets**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---flexible-assets)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Flexible Assets**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---flexible-assets)

| Key                         | Type                           | Description   |
| --------------------------- | ------------------------------ | ------------- |
| organization\_id            | It Glue Organization id        | None Provided |
| restricted                  | String (?)                     | None Provided |
| flexible\_asset\_type\_id\* | It Glue Flexible Asset Type id | None Provided |
| archived                    | String (?)                     | None Provided |
| traits                      | String (?)                     | None Provided |

### Groups

#### List Groups[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-groups) <a href="#list-groups" id="list-groups"></a>

Gets a list of groups

`/groups`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |
| include    | String (?) | None Provided |

#### Get Group[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-group) <a href="#get-group" id="get-group"></a>

Gets a specific group by its ID.

GET `/groups/{id}`

| Key     | Type             | Description   |
| ------- | ---------------- | ------------- |
| id\*    | It Glue Group id | None Provided |
| include | String (?)       | None Provided |

***

#### Objects - Groups[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---groups) <a href="#objects---groups" id="objects---groups"></a>

**Filter - Groups**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---groups)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

### Locations

#### List Locations[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-locations) <a href="#list-locations" id="list-locations"></a>

Gets a list of locations

`/locations`

| Key     | Type       | Description   |
| ------- | ---------- | ------------- |
| sort    | String (?) | None Provided |
| include | String (?) | None Provided |

#### Get Location[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-location) <a href="#get-location" id="get-location"></a>

Gets a specific location by its ID.

GET `/locations/{id}`

| Key     | Type                | Description   |
| ------- | ------------------- | ------------- |
| id\*    | It Glue Location id | None Provided |
| include | String (?)          | None Provided |

#### Create Location[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-location) <a href="#create-location" id="create-location"></a>

Creates a new location

POST `/locations`

#### Update Location[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-location) <a href="#update-location" id="update-location"></a>

PATCH `/locations/{id}`

| Key  | Type                | Description   |
| ---- | ------------------- | ------------- |
| id\* | It Glue Location id | None Provided |

#### Delete Location[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#delete-location) <a href="#delete-location" id="delete-location"></a>

DELETE `/locations/{id}`

| Key  | Type                | Description   |
| ---- | ------------------- | ------------- |
| id\* | It Glue Location id | None Provided |

***

#### Objects - Locations[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---locations) <a href="#objects---locations" id="objects---locations"></a>

**Filter - Locations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---locations)

| Key                    | Type                    | Description                                                                                                          |
| ---------------------- | ----------------------- | -------------------------------------------------------------------------------------------------------------------- |
| name                   | String (?)              | None Provided                                                                                                        |
| city                   | String (?)              | None Provided                                                                                                        |
| region\_id             | It Glue Region id       | None Provided                                                                                                        |
| country\_id            | It Glue Country id      | None Provided                                                                                                        |
| organization\_id       | It Glue Organization id | None Provided                                                                                                        |
| psa\_id                | String (?)              | Filter by Organization's ID in the PSA. This must be accompanied by the filter for PSA Type. Comma Separated Values. |
| psa\_integration\_type | Array                   | Filter by PSA Type                                                                                                   |

***

**Datum - Locations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---locations)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Locations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---locations)

| Key              | Type                    | Description   |
| ---------------- | ----------------------- | ------------- |
| organization\_id | It Glue Organization id | None Provided |
| name             | String (?)              | None Provided |
| primary          | String (?)              | None Provided |
| address\_1       | String (?)              | None Provided |
| address\_2       | String (?)              | None Provided |
| city             | String (?)              | None Provided |
| postal\_code     | String (?)              | None Provided |
| region\_id       | It Glue Region id       | None Provided |
| country\_id      | It Glue Country id      | None Provided |
| phone            | String (?)              | None Provided |
| fax              | String (?)              | None Provided |
| notes            | String (?)              | None Provided |
| restricted       | String (?)              | None Provided |

### Logs

#### List Logs[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-logs) <a href="#list-logs" id="list-logs"></a>

Gets a list of logs

`/logs`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

### Manufacturers

#### List Manufacturers[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-manufacturers) <a href="#list-manufacturers" id="list-manufacturers"></a>

Gets a list of manufacturers

`/manufacturers`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Manufacturer[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-manufacturer) <a href="#get-manufacturer" id="get-manufacturer"></a>

Gets a specific manufacturer by its ID.

GET `/manufacturers/{id}`

| Key  | Type                    | Description   |
| ---- | ----------------------- | ------------- |
| id\* | It Glue Manufacturer id | None Provided |

#### Create Manufacturer[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-manufacturer) <a href="#create-manufacturer" id="create-manufacturer"></a>

Creates a new manufacturer

POST `/manufacturers`

#### Update Manufacturer[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-manufacturer) <a href="#update-manufacturer" id="update-manufacturer"></a>

PATCH `/manufacturers/{id}`

| Key  | Type                    | Description   |
| ---- | ----------------------- | ------------- |
| id\* | It Glue Manufacturer id | None Provided |

***

#### Objects - Manufacturers[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---manufacturers) <a href="#objects---manufacturers" id="objects---manufacturers"></a>

**Filter - Manufacturers**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---manufacturers)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

***

**Datum - Manufacturers**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---manufacturers)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Manufacturers**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---manufacturers)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

### Models

#### List Models[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-models) <a href="#list-models" id="list-models"></a>

Gets a list of models

`/models`

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| sort | String (?) | None Provided |

#### Get Model[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-model) <a href="#get-model" id="get-model"></a>

Gets a specific model by its ID.

GET `/models/{id}`

| Key  | Type             | Description   |
| ---- | ---------------- | ------------- |
| id\* | It Glue Model id | None Provided |

#### Create Model[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-model) <a href="#create-model" id="create-model"></a>

Creates a new model

POST `/models`

#### Update Model[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-model) <a href="#update-model" id="update-model"></a>

PATCH `/models/{id}`

| Key  | Type             | Description   |
| ---- | ---------------- | ------------- |
| id\* | It Glue Model id | None Provided |

***

#### Objects - Models[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---models) <a href="#objects---models" id="objects---models"></a>

**Filter - Models**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---models)

| Key | Type          | Description   |
| --- | ------------- | ------------- |
| id  | It Glue ID id | None Provided |

***

**Datum - Models**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---models)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Models**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---models)

| Key                | Type                    | Description   |
| ------------------ | ----------------------- | ------------- |
| manufacturer\_id\* | It Glue Manufacturer id | None Provided |
| name\*             | String (?)              | None Provided |

### Operating Systems

#### List Operating Systems[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-operating-systems) <a href="#list-operating-systems" id="list-operating-systems"></a>

Gets a list of Operating Systems

`/operating_systems`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Operating System[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-operating-system) <a href="#get-operating-system" id="get-operating-system"></a>

Gets a specific Operating System by its ID.

GET `/operating_systems/{id}`

| Key  | Type                        | Description   |
| ---- | --------------------------- | ------------- |
| id\* | It Glue Operating System id | None Provided |

***

#### Objects - Operating System[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---operating-system) <a href="#objects---operating-system" id="objects---operating-system"></a>

**Filter - Operating System**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---operating-system)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

### Organization Statuses

#### List Organization Statuses[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-organization-statuses) <a href="#list-organization-statuses" id="list-organization-statuses"></a>

Gets a list of organization statuses

`/organization_statuses`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Organization Status[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-organization-status) <a href="#get-organization-status" id="get-organization-status"></a>

Gets a specific organization status by it's ID.

GET `/organization_statuses/{id}`

| Key  | Type                           | Description   |
| ---- | ------------------------------ | ------------- |
| id\* | It Glue Organization Status id | None Provided |

#### Create Organization Status[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-organization-status) <a href="#create-organization-status" id="create-organization-status"></a>

Creates a new organization status

POST `/organization_statuses`

#### Update Organization Status[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-organization-status) <a href="#update-organization-status" id="update-organization-status"></a>

PATCH `/organization_statuses/{id}`

| Key  | Type                           | Description   |
| ---- | ------------------------------ | ------------- |
| id\* | It Glue Organization Status id | None Provided |

***

#### Objects - Organization Statuses[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---organization-statuses) <a href="#objects---organization-statuses" id="objects---organization-statuses"></a>

**Filter - Organization Statuses**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---organization-statuses)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

***

**Datum - Organization Statuses**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---organization-statuses)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Organization Statuses**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---organization-statuses)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| name\* | String (?) | None Provided |

### Organization Types

#### List Organization Types[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-organization-types) <a href="#list-organization-types" id="list-organization-types"></a>

Gets a list of organization types

`/organization_types`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Organization Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-organization-type) <a href="#get-organization-type" id="get-organization-type"></a>

Gets a specific organization type by its ID.

GET `/organization_types/{id}`

| Key  | Type                         | Description   |
| ---- | ---------------------------- | ------------- |
| id\* | It Glue Organization Type id | None Provided |

#### Create Organization Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-organization-type) <a href="#create-organization-type" id="create-organization-type"></a>

Creates a new organization type

POST `/organization_types`

#### Update Organization Type[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-organization-type) <a href="#update-organization-type" id="update-organization-type"></a>

PATCH `/organization_types/{id}`

| Key  | Type                         | Description   |
| ---- | ---------------------------- | ------------- |
| id\* | It Glue Organization Type id | None Provided |

***

#### Objects - Organization Types[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---organization-types) <a href="#objects---organization-types" id="objects---organization-types"></a>

**Filter - Organization Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---organization-types)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

***

**Datum - Organization Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---organization-types)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Organization Types**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---organization-types)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| name\* | String (?) | None Provided |

### Organizations

#### List Organizations[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-organizations) <a href="#list-organizations" id="list-organizations"></a>

Gets a list of organizations

`/organizations`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |
| include    | String (?) | None Provided |

#### Get Organization[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-organization) <a href="#get-organization" id="get-organization"></a>

Gets a specific organization by its ID.

GET `/organizations/{id}`

| Key     | Type                    | Description   |
| ------- | ----------------------- | ------------- |
| id\*    | It Glue Organization id | None Provided |
| include | String (?)              | None Provided |

#### Create Organization[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-organization) <a href="#create-organization" id="create-organization"></a>

Creates a new organization

POST `/organizations`

#### Update Organization[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-organization) <a href="#update-organization" id="update-organization"></a>

PATCH `/organizations/{id}`

| Key  | Type                    | Description   |
| ---- | ----------------------- | ------------- |
| id\* | It Glue Organization id | None Provided |

#### Delete Organization[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#delete-organization) <a href="#delete-organization" id="delete-organization"></a>

DELETE `/organizations/{id}`

| Key  | Type                    | Description   |
| ---- | ----------------------- | ------------- |
| id\* | It Glue Organization id | None Provided |

***

#### Objects - Organizations[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---organizations) <a href="#objects---organizations" id="objects---organizations"></a>

**Filter - Organizations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---organizations)

| Key                      | Type                           | Description                                                                                                                                                     |
| ------------------------ | ------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| organization\_type\_id   | It Glue Organization Type id   | None Provided                                                                                                                                                   |
| organization\_status\_id | It Glue Organization Status id | None Provided                                                                                                                                                   |
| created\_at              | String (?)                     | The specified string must be a date range and comma separated as `start_date, end_date`. The dates are UTC. Use `*` for unspecified `start_date` or `end_date`. |
| updated\_at              | String (?)                     | The specified string must be a date range and comma separated as `start_date, end_date`. The dates are UTC. Use `*` for unspecified `start_date` or `end_date`. |
| my\_glue\_account\_id    | String (?)                     | Filter by MyGlue Account ID. Comma Separated Values.                                                                                                            |
| psa\_id                  | String (?)                     | Filter by Organization's ID in the PSA. This must be accompanied by the filter for PSA Type. Comma Separated Values.                                            |
| psa\_integration\_type   | Array                          | Filter by PSA Type                                                                                                                                              |
| group\_id                | It Glue Group id               | None Provided                                                                                                                                                   |

***

**Exclude - Organizations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#exclude---organizations)

| Key                      | Type                                   | Description   |
| ------------------------ | -------------------------------------- | ------------- |
| id                       | It Glue Exclude Organization id        | None Provided |
| name                     | String (?)                             | None Provided |
| organization\_type\_id   | It Glue Exclude Organization Type id   | None Provided |
| organization\_status\_id | It Glue Exclude Organization Status id | None Provided |

***

**Datum - Organizations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---organizations)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Organizations**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---organizations)

| Key                      | Type                           | Description   |
| ------------------------ | ------------------------------ | ------------- |
| name\*                   | String (?)                     | None Provided |
| alert                    | String (?)                     | None Provided |
| description              | String (?)                     | None Provided |
| organization\_type\_id   | It Glue Organization Type id   | None Provided |
| organization\_status\_id | It Glue Organization Status id | None Provided |
| quick\_notes             | String (?)                     | None Provided |
| short\_name              | String (?)                     | None Provided |

### Password Categories

#### List Password Categories[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-password-categories) <a href="#list-password-categories" id="list-password-categories"></a>

Gets a list of password categories

`/password_categories`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Password Category[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-password-category) <a href="#get-password-category" id="get-password-category"></a>

Gets a specific password category by it's ID.

GET `/password_categories/{id}`

| Key  | Type                         | Description   |
| ---- | ---------------------------- | ------------- |
| id\* | It Glue Password Category id | None Provided |

#### Create Password Category[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-password-category) <a href="#create-password-category" id="create-password-category"></a>

Creates a new password category

POST `/password_categories`

#### Update Password Category[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-password-category) <a href="#update-password-category" id="update-password-category"></a>

PATCH `/password_categories/{id}`

***

#### Objects - Password Categories[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---password-categories) <a href="#objects---password-categories" id="objects---password-categories"></a>

**Filter - Password Categories**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---password-categories)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

***

**Datum - Password Categories**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---password-categories)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Password Categories**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---password-categories)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| name\* | String (?) | None Provided |

### Passwords

#### List Passwords[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-passwords) <a href="#list-passwords" id="list-passwords"></a>

Gets a list of passwords

`/passwords`

| Key              | Type                    | Description   |
| ---------------- | ----------------------- | ------------- |
| organization\_id | It Glue Organization id | None Provided |
| include          | String (?)              | None Provided |
| show\_password   | String (?)              | None Provided |

#### Get Password[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-password) <a href="#get-password" id="get-password"></a>

Gets a specific password by its ID.

GET `/passwords/{id}`

| Key            | Type                | Description   |
| -------------- | ------------------- | ------------- |
| id\*           | It Glue Password id | None Provided |
| include        | String (?)          | None Provided |
| show\_password | String (?)          | None Provided |

#### Create Password[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#create-password) <a href="#create-password" id="create-password"></a>

Creates a new password

POST `/passwords`

#### Update Password[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#update-password) <a href="#update-password" id="update-password"></a>

PATCH `/passwords/{id}`

| Key  | Type                | Description   |
| ---- | ------------------- | ------------- |
| id\* | It Glue Password id | None Provided |

#### Delete Password[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#delete-password) <a href="#delete-password" id="delete-password"></a>

DELETE `/passwords/{id}`

| Key  | Type                | Description   |
| ---- | ------------------- | ------------- |
| id\* | It Glue Password id | None Provided |

***

#### Objects - Passwords[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---passwords) <a href="#objects---passwords" id="objects---passwords"></a>

**Filter - Passwords**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---passwords)

| Key                    | Type                              | Description   |
| ---------------------- | --------------------------------- | ------------- |
| name                   | String (?)                        | None Provided |
| organization\_id       | It Glue Filter by Organization id | None Provided |
| password\_category\_id | It Glue Filter by Category id     | None Provided |
| url                    | String (?)                        | None Provided |
| cached\_resource\_name | String (?)                        | None Provided |
| archived               | String (?)                        | None Provided |

***

**Datum - Passwords**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#datum---passwords)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| type | String (?) | None Provided |

***

**Attribute - Passwords**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#attribute---passwords)

| Key                    | Type                         | Description   |
| ---------------------- | ---------------------------- | ------------- |
| organization\_id\*     | It Glue Organization id      | None Provided |
| password\_category\_id | It Glue Password Category id | None Provided |
| name                   | String (?)                   | None Provided |
| username               | String (?)                   | None Provided |
| password               | String (?)                   | None Provided |
| resource\_id           | String (?)                   | None Provided |
| resource\_type         | String (?)                   | None Provided |
| url                    | String (?)                   | None Provided |
| notes                  | String (?)                   | None Provided |
| password\_updated\_at  | String (?)                   | None Provided |
| restricted             | String (?)                   | None Provided |
| autofill\_selectors    | String (?)                   | None Provided |
| archived               | String (?)                   | None Provided |

### Platforms

#### List Platforms[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-platforms) <a href="#list-platforms" id="list-platforms"></a>

Gets a list of platforms

`/platforms`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Platform[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-platform) <a href="#get-platform" id="get-platform"></a>

Gets a specific platform by its ID.

GET `/platforms/{id}`

| Key  | Type                | Description   |
| ---- | ------------------- | ------------- |
| id\* | It Glue Platform id | None Provided |

***

#### Objects - Platforms[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---platforms) <a href="#objects---platforms" id="objects---platforms"></a>

**Filter - Platforms**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---platforms)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |

### Regions

#### List Regions[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#list-regions) <a href="#list-regions" id="list-regions"></a>

Gets a list of regions

`/regions`

| Key        | Type       | Description   |
| ---------- | ---------- | ------------- |
| sort       | String (?) | None Provided |
| sort\_desc | String (?) | None Provided |

#### Get Region[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#get-region) <a href="#get-region" id="get-region"></a>

Gets a specific region by its ID.

GET `/regions/{id}`

| Key  | Type              | Description   |
| ---- | ----------------- | ------------- |
| id\* | It Glue Region id | None Provided |

***

#### Objects - Regions[​](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#objects---regions) <a href="#objects---regions" id="objects---regions"></a>

**Filter - Regions**[**​**](http://localhost:3000/docs/integrations/Documentation/documentation-it-glue-integration#filter---regions)

| Key         | Type               | Description   |
| ----------- | ------------------ | ------------- |
| name        | String (?)         | None Provided |
| iso         | String             | None Provided |
| country\_id | It Glue Country id | None Provided |
