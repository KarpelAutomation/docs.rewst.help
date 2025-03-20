# Actions & Endpoints

## Introduction

The Google Workspace Admin Sdk Integration with Rewst delivers a robust set of actions and endpoints for interacting with Google Workspace Admin Sdk. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Google Workspace Admin Sdk Integration:

* [**Chrome OS Devices**](actions-and-endpoints.md#chrome-os-devices)
* [**Domain Aliases**](actions-and-endpoints.md#domain-aliases)
* [**Domains**](actions-and-endpoints.md#domains)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Groups**](actions-and-endpoints.md#groups)
* [**Members**](actions-and-endpoints.md#members)
* [**Mobile Devices**](actions-and-endpoints.md#mobile-devices)
* [**Org Units**](actions-and-endpoints.md#org-units)
* [**Privileges**](actions-and-endpoints.md#privileges)
* [**Resources**](actions-and-endpoints.md#resources)
* [**Role Assignments**](actions-and-endpoints.md#role-assignments)
* [**Roles**](actions-and-endpoints.md#roles)
* [**Schemas**](actions-and-endpoints.md#schemas)
* [**Tokens**](actions-and-endpoints.md#tokens)
* [**Users**](actions-and-endpoints.md#users)
* [**Verification Codes**](actions-and-endpoints.md#verification-codes)

## Actions

### Chrome OS Devices

## Take Action on Chrome OS Device

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos/{resourceId}/action`

Takes an action that affects a Chrome OS Device This includes deprovisioning disabling and re-enabling devices

### Domain Aliases

## List Domain Aliases

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/domainaliases`

Lists the domain aliases of the customer

## Create Domain Alias

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/domainaliases`

Inserts a domain alias of the customer

## Get Domain Alias

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/domainaliases/{domainAliasName}`

Retrieves a domain alias of the customer

## Delete Domain Alias

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/domainaliases/{domainAliasName}`

Deletes a domain Alias of the customer

### Domains

## List Domains

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/domains`

Lists the domains of the customer

## Create Domain

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/domains`

Inserts a domain of the customer

## Get Domain

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/domains/{domainName}`

Retrieves a domain of the customer

## Delete Domain

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/domains/{domainName}`

Deletes a domain of the customer

### Generic Request

## Google Workspace Admin SDK API Request

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/<url_path>`

Generic action for making authenticated requests against the Google Workspace Admin SDK API

### Groups

## List Groups

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/groups`

Retrieves all groups of a domain or of a user given a userKey paginated

## Create Group

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/groups`

Creates a group

## Get Group

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}`

Retrieves a group's properties

## Delete Group

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}`

Deletes a group

## Update Group

<mark style="color:purple;">`PATCH`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}`

Updates a group's properties This method supports patch semantics admin\_sdk directory v guides performance patch

## List Groups Aliases

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/aliases`

Lists all aliases for a group

## Create Groups Alias

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/aliases`

Adds an alias for the group

## Delete Groups Alias

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/aliases/{alias}`

Removes an alias

### Members

## Check if User is Member of Group

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/hasMember/{memberKey}`

Checks whether the given user is a member of the group Membership can be direct or nested but if nested the memberKey and groupKey must be entities in the same domain or an Invalid input error is returned.

## List Group Members

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/members`

Retrieves a paginated list of all members in a group This method times out after minutes For more information see Troubleshoot error codes https developers google com admin\_sdk directory v guides troubleshoot\_error\_codes

## Add Group Member

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/members`

Adds a user to the specified group

## Get Group Members

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/members/{memberKey}`

Retrieves a group member's properties

## Remove Member from Group

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/members/{memberKey}`

Removes a member from a group

## Update Group Member

<mark style="color:purple;">`PATCH`</mark> `https://admin.googleapis.com/admin/directory/v1/groups/{groupKey}/members/{memberKey}`

Updates the membership properties of a user in the specified group.

### Mobile Devices

## List Mobile Devices

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/devices/mobile`

Retrieves a paginated list of all user\_owned mobile devices for an account

## Get Mobile Device

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/devices/mobile/{resourceId}`

Retrieves a mobile device's properties

## Delete Mobile Device

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/devices/mobile/{resourceId}`

Removes a mobile device

## Take Action on Mobile Device

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/devices/mobile/{resourceId}/action`

Takes an action that affects a mobile device For example remotely wiping a device

### Org Units

## List Organizational Units

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/orgunits`

Retrieves a list of all organizational units for an account

## Create Organizational Unit

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/orgunits`

Adds an organizational unit

## Get Organizational Units

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/orgunits/{orgUnitPath}`

Retrieves an organizational unit

## Update Organizational Unit

<mark style="color:orange;">`PUT`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/orgunits/{orgUnitPath}`

Updates an organizational unit

## Delete Organizational Unit

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/orgunits/{orgUnitPath}`

Removes an organizational unit

## Update Organizational Unit

<mark style="color:purple;">`PATCH`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/orgunits/{orgUnitPath}`

Updates an organizational unit This method supports patch semantics

### Privileges

## List Privileges

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/roles/ALL/privileges`

Retrieves a paginated list of all privileges for a customer

### Resources

## List Buildings

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/buildings`

Retrieves a list of buildings for an account

## Create Building

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/buildings`

Inserts a building

## Get Building

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/buildings/{buildingId}`

Retrieves a building

## Delete Building

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/buildings/{buildingId}`

Deletes a building

## Update Building

<mark style="color:purple;">`PATCH`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/buildings/{buildingId}`

Patches a building

## List Calendars

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/calendars`

Retrieves a list of calendar resources for an account

## Create Calendar

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/calendars`

Inserts a calendar resource

## Get Calendar

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/calendars/{calendarResourceId}`

Retrieves a calendar resource

## Delete Calendar

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/calendars/{calendarResourceId}`

Deletes a calendar resource

## Update Calendar

<mark style="color:purple;">`PATCH`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/calendars/{calendarResourceId}`

Patches a calendar resource

## List Features

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/features`

Retrieves a list of features for an account

## Create Feature

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/features`

Inserts a feature

## Get Resources Features

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/features/{featureKey}`

Retrieves a feature

## Delete Feature

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/features/{featureKey}`

Deletes a feature

## Update Resource

<mark style="color:purple;">`PATCH`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/features/{featureKey}`

Patches a feature

## Rename Feature

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/resources/features/{oldName}/rename`

Renames a feature

### Role Assignments

## List Role Assignments

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/roleassignments`

Retrieves a paginated list of all roleAssignments

## Create Role Assignment

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/roleassignments`

Creates a role assignment

## Get Role Assignment

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/roleassignments/{roleAssignmentId}`

Retrieves a role assignment

## Delete Role Assignment

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/roleassignments/{roleAssignmentId}`

Deletes a role assignment

### Roles

## Get Role

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/roles/{roleId}`

Retrieves a role

## Delete Roles

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/roles/{roleId}`

Deletes a role

## Update Role

<mark style="color:purple;">`PATCH`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/roles/{roleId}`

Patches a role

### Schemas

## List Schemas

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/schemas`

Retrieves all schemas for a customer

## Create Schemas

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/schemas`

Creates a schema

## Get Schemas

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/schemas/{schemaKey}`

Retrieves a schema

## Update Schemas

<mark style="color:orange;">`PUT`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/schemas/{schemaKey}`

Updates a schema

## Delete Schemas

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/schemas/{schemaKey}`

Deletes a schema

## Patch Schemas

<mark style="color:purple;">`PATCH`</mark> `https://admin.googleapis.com/admin/directory/v1/customer/my_customer/schemas/{schemaKey}`

Patches a schema

### Tokens

## List Tokens

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}/tokens`

Returns the set of tokens specified user has issued to 3rd party applications

## Get Token

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}/tokens/{clientId}`

Gets information about an access token issued by a user

## Delete Token

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}/tokens/{clientId}`

Deletes all access tokens issued by a user for an application

### Users

## Undelete User

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}/undelete`

Undeletes a deleted user

## Create User

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/users`

Creates a user

## Update User

<mark style="color:orange;">`PUT`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}`

Updates a user

## List User(s)

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/users`

Retrieves all users

## Get User

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}`

Retrieves a user

## Delete User

<mark style="color:red;">`DELETE`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}`

Deletes a user

### Verification Codes

## List Verification Codes

<mark style="color:blue;">`GET`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}/verificationCodes`

Returns the current set of valid backup verification codes for the specified user

## Generate Verification Codes

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}/verificationCodes/generate`

Generates new backup verification codes for the user

## Invalidate Verification Codes

<mark style="color:green;">`POST`</mark> `https://admin.googleapis.com/admin/directory/v1/users/{userKey}/verificationCodes/invalidate`

Invalidates the current backup verification codes for the user
