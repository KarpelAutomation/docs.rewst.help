# Actions & Endpoints

## Introduction

The It Portal Integration with Rewst delivers a robust set of actions and endpoints for interacting with It Portal. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the It Portal Integration:

* [**Accounts**](actions-and-endpoints.md#accounts)
* [**Additional Credentials**](actions-and-endpoints.md#additional-credentials)
* [**Addresses**](actions-and-endpoints.md#addresses)
* [**Agreements**](actions-and-endpoints.md#agreements)
* [**Cabinets**](actions-and-endpoints.md#cabinets)
* [**Categories Types**](actions-and-endpoints.md#categories-types)
* [**Companies**](actions-and-endpoints.md#companies)
* [**Configurations**](actions-and-endpoints.md#configurations)
* [**Contacts**](actions-and-endpoints.md#contacts)
* [**Devices**](actions-and-endpoints.md#devices)
* [**Documents**](actions-and-endpoints.md#documents)
* [**Facilities**](actions-and-endpoints.md#facilities)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Interactions**](actions-and-endpoints.md#interactions)
* [**Ip Networks**](actions-and-endpoints.md#ip-networks)
* [**Kbs**](actions-and-endpoints.md#kbs)
* [**Sheets**](actions-and-endpoints.md#sheets)
* [**Sites**](actions-and-endpoints.md#sites)
* [**System**](actions-and-endpoints.md#system)
* [**Templates**](actions-and-endpoints.md#templates)

## Actions

### Accounts

## List Accounts

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/accounts/`

Fetches lists of portal accounts with optional filters. See notes on individual parameters below

## Create Account

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/accounts/`

New account will be added to the portal

## Get Account

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/accounts/{accountId}/`

This method fetches a single account resource. It is the canonical URI for any account resource provided by the API

## Delete Account

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/accounts/{accountId}/`

Description coming soon...

## Update Account

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/accounts/{accountId}/`

Updates specific fields on an entity (RFC 7396)

## Get Credentials For Account

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/accounts/{accountId}/credentials/`

This method fetches a single account credentials resource

### Additional Credentials

## List Additional Credentials

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/additionalCredentials/`

Fetches lists of additional credentials with optional filters. See notes on individual parameters below

## Create Additional Credential

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/additionalCredentials/`

New additional credential will be added to the portal object

## Get Additional Credential

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/additionalCredentials/{additionalCredentialId}/`

This method fetches a single additional credential resource. It is the canonical URI for any additional credential resource provided by the API

## Delete Additional Credential

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/additionalCredentials/{additionalCredentialId}/`

Description coming soon...

## Update Additional Credential

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/additionalCredentials/{additionalCredentialId}/`

Updates specific fields on an entity (RFC 7396)

### Addresses

## Create Address

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/companies/{companyId}/addresses/`

New address will be added to the Portal company

## List Addresses

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/addresses/`

Fetches lists of addresses with optional filters. See notes on individual parameters below

## Get Address

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/addresses/{addressId}/`

This method fetches a single address resource. It is the canonical URI for any address resource provided by the API

## Delete Address

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/addresses/{addressId}/`

Description coming soon...

## Update Address

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/addresses/{addressId}/`

Updates specific fields on an entity (RFC 7396)

### Agreements

## List Agreements

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/agreements/`

Fetches lists of portal agreements with optional filters. See notes on individual parameters below

## Create Agreement

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/agreements/`

New agreement will be added to the portal

## Get Agreement

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/agreements/{agreementId}/`

This method fetches a single agreement resource. It is the canonical URI for any agreement resource provided by the API

## Delete Agreement

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/agreements/{agreementId}/`

Description coming soon...

## Update Agreement

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/agreements/{agreementId}/`

Updates specific fields on an entity (RFC 7396)

### Cabinets

## List Cabinets

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/cabinets/`

Fetches lists of portal cabinets with optional filters. See notes on individual parameters below

## Create Cabinet

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/cabinets/`

New cabinet will be added to the portal

## Get Cabinet

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/cabinets/{cabinetId}/`

This method fetches a single cabinet resource. It is the canonical URI for any cabinet resource provided by the API

## Delete Cabinet

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/cabinets/{cabinetId}/`

Description coming soon...

## Update Cabinet

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/cabinets/{cabinetId}/`

Updates specific fields on an entity (RFC 7396)

### Categories Types

## List KB Categories

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/categories/kb/`

Fetches lists of portal KB categories with optional filters. See notes on individual parameters below

## List Company Types

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/types/company/`

Fetches lists of portal company types with optional filters. See notes on individual parameters below

## List Account Types

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/types/account/`

Fetches lists of portal account types with optional filters. See notes on individual parameters below

## List Agreement Types

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/types/agreement/`

Fetches lists of portal agreement types with optional filters. See notes on individual parameters below

## List Contact Types

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/types/contact/`

Fetches lists of portal contact types with optional filters. See notes on individual parameters below

## List Facility Types

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/types/facility/`

Fetches lists of portal facility types with optional filters. See notes on individual parameters below

## List Device Types

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/types/device/`

Fetches lists of portal device types with optional filters. See notes on individual parameters below

## List Document Types

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/types/document/`

Fetches lists of portal document types with optional filters. See notes on individual parameters below

### Companies

## List Companies

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/companies/`

Fetches lists of portal companies with optional filters. See notes on individual parameters below

## Create Company

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/companies/`

New Company will be added to the portal

## Get Company

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/companies/{companyId}/`

This method fetches a single company resource. It is the canonical URI for any company resource provided by the API

## Delete Company

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/companies/{companyId}/`

Description coming soon...

## Update Company

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/companies/{companyId}/`

Updates specific fields on an entity (RFC 7396)

## List Company Accounts

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/companies/{companyId}/accounts/`

Fetches lists of portal accounts with optional filters. See notes on individual parameters below

## List Company Addresses

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/companies/{companyId}/addresses/`

Fetches lists of portal addresses with optional filters. See notes on individual parameters below

### Configurations

## List Configurations

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/configurations/`

Fetches lists of portal configurations with optional filters. See notes on individual parameters below

## Create Configuration

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/configurations/`

New configuration will be added to the portal. For the Configuration Type ID, please create at least one Configuration via ITPortal then use the Get Configuration action.

## Get Configuration

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/configurations/{configurationId}/`

This method fetches a single configuration resource. It is the canonical URI for any configuration resource provided by the API

## Delete Configuration

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/configurations/{configurationId}/`

Description coming soon...

## Update Configuration

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/configurations/{configurationId}/`

Updates specific fields on an entity (RFC 7396)

### Contacts

## List Contacts

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/contacts/`

Fetches lists of portal contacts with optional filters. See notes on individual parameters below

## Create Contact

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/contacts/`

New contact will be added to the portal

## Get Contact

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/contacts/{contactId}/`

This method fetches a single contact resource. It is the canonical URI for any contact resource provided by the API

## Delete Contact

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/contacts/{contactId}/`

Description coming soon...

## Update Contact

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/contacts/{contactId}/`

Updates specific fields on an entity (RFC 7396)

### Devices

## List Devices

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/devices/`

Fetches lists of portal devices with optional filters. See notes on individual parameters below

## Create Device

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/devices/`

New device will be added to the portal

## Get Device

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/`

This method fetches a single device resource. It is the canonical URI for any device resource provided by the API

## Delete Device

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/`

Description coming soon...

## Update Device

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/`

Updates specific fields on an entity (RFC 7396)

## Get Management URLs For Device

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/managementUrls/`

This method fetches a single device Management Urls resource

## Create Device Management URL

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/managementUrls/`

New Device Management Url will be added to the portal

## Get IPs For Device

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/ips/`

This method fetches a single device IPs resource

## Create Device IP

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/ips/`

New device IP will be added to the portal

## Get Configuration Files For Device

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/configurationFiles/`

This method fetches a single device configurations files resource

## Get Credentials For Device

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/credentials/`

This method fetches a single device credentials resource

## Update Device IP

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/ips/{ipId}/`

Updates specific fields on an entity (RFC 7396)

## Delete Management URL

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/managementUrls/{murlId}/`

Description coming soon...

## Update Device Management URL

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/managementUrls/{murlId}/`

Updates specific fields on an entity (RFC 7396)

## Get Notes For Device

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/notes/`

This method fetches a single device Notes resource

## Create Device Note

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/notes/`

New device Note will be added to the portal

## Update Device Note

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/notes/{noteId}/`

Updates specific fields on an entity (RFC 7396)

## Get Switch Port Ranges For Device

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/switchPortRanges/`

This method fetches a single device mapped switch port ranges resource

## Create Device Switch Port Range

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/switchPortRanges/`

New device switch port range will be added to the portal

## Delete Switch Port Range

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/switchPortRanges/{switchPortRangeId}/`

Description coming soon...

## Update Switch Port Range

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/switchPortRanges/{switchPortRangeId}/`

Updates specific fields on an entity (RFC 7396)

## Update Switch Port

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/devices/{deviceId}/switchPortRanges/{switchPortRangeId}/switchPorts/{switchPortId}/`

Updates specific fields on an entity (RFC 7396)

### Documents

## List Documents

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/documents/`

Fetches lists of portal documents with optional filters. See notes on individual parameters below

## Create Document

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/documents/`

New document will be added to the portal

## Get Document

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/documents/{documentId}/`

This method fetches a single document resource. It is the canonical URI for any document resource provided by the API

## Delete Document

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/documents/{documentId}/`

Description coming soon...

## Update Document

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/documents/{documentId}/`

Updates specific fields on an entity (RFC 7396)

### Facilities

## List Facilities

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/facilities/`

Fetches lists of portal facilities with optional filters. See notes on individual parameters below

## Create Facility

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/facilities/`

New facility will be added to the portal

## Get Facility

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/facilities/{facilityId}/`

This method fetches a single facility resource. It is the canonical URI for any facility resource provided by the API

## Delete Facility

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/facilities/{facilityId}/`

Description coming soon...

## Update Facility

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/facilities/{facilityId}/`

Updates specific fields on an entity (RFC 7396)

### Generic Request

## IT Portal API Request

<mark style="color:blue;">`GET`</mark> `example.itportal.com/<url_path>`

Generic action for making authenticated requests against the IT Portal API

### Interactions

## Delete Interaction

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/interactions/{interactionId}/`

Description coming soon...

## List Interactions

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/interactions/{objectType}/{objectId}/`

Description coming soon...

## Create Interactions

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/interactions/{objectType}/{objectId}/`

Description coming soon...

### Ip Networks

## List IP Networks

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/ipnetworks/`

Fetches lists of portal IP Networks with optional filters. See notes on individual parameters below

## Create IP Network

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/ipnetworks/`

New ip network will be added to the portal

## Get IP Network

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/ipnetworks/{ipnetworkId}/`

This method fetches a single IP network resource. It is the canonical URI for any IP network resource provided by the API

## Delete IP Network

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/ipnetworks/{ipnetworkId}/`

Description coming soon...

## Update IP Network

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/ipnetworks/{ipnetworkId}/`

Updates specific fields on an entity (RFC 7396)

### Kbs

## List KBs

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/kbs/`

Fetches lists of portal knowledge base articles with optional filters. See notes on individual parameters below

## Create KBs

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/kbs/`

New knowledge base article will be added to the portal

## Get KB

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/kbs/{kbId}/`

This method fetches a single knowledge base article resource. It is the canonical URI for any KB resource provided by the API

## Delete KB

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/kbs/{kbId}/`

Description coming soon...

## Update KB

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/kbs/{kbId}/`

Updates specific fields on an entity (RFC 7396)

### Sheets

## Get Sheet

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/sheets/{sheetId}/`

Fetch object sheet

## Delete Sheet

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/sheets/{sheetId}/`

Description coming soon...

## Update Sheet

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/sheets/{sheetId}/`

Updates specific fields on an entity (RFC 7396)

## Create Sheet

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/sheets/{itemType}/{itemId}`

New Sheet will be added to the object

### Sites

## List Sites

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/sites/`

Fetches lists of portal sites with optional filters. See notes on individual parameters below

## Create Site

<mark style="color:green;">`POST`</mark> `example.itportal.com/api/2.0/sites/`

New site will be added to the portal

## Get Site

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/sites/{siteId}/`

This method fetches a single site resource. It is the canonical URI for any site resource provided by the API

## Delete Site

<mark style="color:red;">`DELETE`</mark> `example.itportal.com/api/2.0/sites/{siteId}/`

Description coming soon...

## Update Site

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/sites/{siteId}/`

Updates specific fields on an entity (RFC 7396)

### System

## List Companies Main Contacts

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/system/companies/mainContacts/`

Fetches lists of portal main contacts with optional filters. See notes on individual parameters below

## List Users

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/system/users/`

Fetches lists of portal users

## List Countries

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/system/countries/`

Fetches lists of countries

## List Security Groups

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/system/groups/securityGroups/`

Fetches lists of portal security groups

### Templates

## List Templates

<mark style="color:blue;">`GET`</mark> `example.itportal.com/api/2.0/templates/{objectType}/{objectId}/`

Fetches lists of portal templates with values

## Upd Field For ID Field

<mark style="color:purple;">`PATCH`</mark> `example.itportal.com/api/2.0/templates/{objectType}/{objectId}/{templateId}/fields/{fieldId}/`

Updates specific field on an entity's template
