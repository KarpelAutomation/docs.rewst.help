# Sophos Integration Setup

Integrating Rewst with Sophos brings robust cybersecurity capabilities to your Rewst workflows, enhancing data protection and threat management. With the integration, Rewst users can leverage Sophos' advanced security solutions to strengthen their defense against cyber threats. This includes features such as malware detection, ransomware protection, network security, and endpoint protection. By integrating Sophos into Rewst, users can enhance their security posture, mitigate risks, and safeguard sensitive data. The integration empowers users to proactively manage their cybersecurity within the Rewst platform, ensuring a secure environment for their operations and protecting against evolving threats.

## Setup

To set up the Sophos Integration, you'll need to do the following:

1. **Navigate** to the Global Settings of Sophos and locate the API Credentials Management section.
2. **Click** on the "Add Credential" button to initiate the process of adding a new credential.
3. **Provide** a name and description for the credential to identify and distinguish it from others.
4. **Choose** the role that will be assigned to this credential. The available roles to choose from can be viewed [here](https://docs.sophos.com/central/customer/help/en-us/ManageYourProducts/GlobalSettings/APICredentials/index.html).
5. **Navigate** to the integrations page in Rewst.
6. **Click** on the Sophos integration.
7. **Fill out** the integration form.
8. **Submit** the form.

We'll run a quick test to ensure that the credentials are valid and that we can successfully connect to the Sophos API.

## Actions

### Alerts

#### List Alerts[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-alerts) <a href="#list-alerts" id="list-alerts"></a>

List alerts matching specified criteria

GET `/common/v1/alerts`

| Key       | Type          | Description                                                                                                                                                                                                           |
| --------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant    | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Group Key | String (?)    | Alert group key. You can filter by group key                                                                                                                                                                          |
| From      | String (?)    | You can find alerts that were raised on or after this time                                                                                                                                                            |
| To        | String (?)    | You can find alerts that were raised before this time                                                                                                                                                                 |
| Sort      | Array         | Defines how to sort the data                                                                                                                                                                                          |
| Product   | Array         | Alerts for a product. You can query by product types                                                                                                                                                                  |
| Category  | Array         | Alert category. You can query by different categories                                                                                                                                                                 |
| Severity  | Array         | Alerts for a specific severity level. You can query by severity levels                                                                                                                                                |
| Alerts    | String (?)    | List of IDs                                                                                                                                                                                                           |
| Fields    | String (?)    | The fields to return in a partial response                                                                                                                                                                            |

#### Get Alert[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-alert) <a href="#get-alert" id="get-alert"></a>

Get details of a specific alert

GET `/common/v1/alerts/{alertId}`

| Key     | Type          | Description                                                                                                                                                                                                           |
| ------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant  | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Alert\* | Sophos Alert  | None Provided                                                                                                                                                                                                         |

#### Take Action On Alert[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#take-action-on-alert) <a href="#take-action-on-alert" id="take-action-on-alert"></a>

Take an action on a specific alert

POST `/common/v1/alerts/{alertId}/actions`

| Key      | Type          | Description                                                                                                                                                                                                           |
| -------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant   | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Alert\*  | Sophos Alert  | None Provided                                                                                                                                                                                                         |
| Action\* | String (?)    | Actions that you can perform on these alerts                                                                                                                                                                          |
| Message  | String (?)    | Message to send for the action                                                                                                                                                                                        |

### Allowed Items

#### List Exemptions[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-exemptions) <a href="#list-exemptions" id="list-exemptions"></a>

Get all allowed items from settings

GET `/endpoint/v1/settings/allowed-items`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Create Exemption[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-exemption) <a href="#create-exemption" id="create-exemption"></a>

Exempt an item from conviction

POST `/endpoint/v1/settings/allowed-items`

| Key             | Type          | Description                                                                                                                                                                                                           |
| --------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Type\*          | String (?)    | Property by which an item is allowed                                                                                                                                                                                  |
| Comment\*       | String (?)    | Comment indicating why the item should be allowed                                                                                                                                                                     |
| Origin Person\* | String (?)    | Person associated with the endpoint where the item to be allowed was last seen                                                                                                                                        |
| Origin Endpoint | String (?)    | Endpoint where the item to be allowed was last seen                                                                                                                                                                   |

#### Get Exemption[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-exemption) <a href="#get-exemption" id="get-exemption"></a>

Get an exemption by ID

GET `/endpoint/v1/settings/allowed-items/{allowedItemId}`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Blocked Item\* | Sophos Blocked Item | None Provided                                                                                                                                                                                                         |

#### Update Exemption[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-exemption) <a href="#update-exemption" id="update-exemption"></a>

Update an exemption

PATCH `/endpoint/v1/settings/allowed-items/{allowedItemId}`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Blocked Item\* | Sophos Blocked Item | None Provided                                                                                                                                                                                                         |
| Comment\*      | String (?)          | Comment indicating why the item should be allowed                                                                                                                                                                     |

#### Delete Exemption[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-exemption) <a href="#delete-exemption" id="delete-exemption"></a>

Deletes the specified exemption

DELETE `/endpoint/v1/settings/allowed-items/{allowedItemId}`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Blocked Item\* | Sophos Blocked Item | None Provided                                                                                                                                                                                                         |

***

#### Property[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#property) <a href="#property" id="property"></a>

| Key                  | Type       | Description                           |
| -------------------- | ---------- | ------------------------------------- |
| File Name\*          | String (?) | File name                             |
| Path\*               | String (?) | Path for the application              |
| Sha256\*             | String (?) | Sha256 value for the application      |
| Certificate Signer\* | String (?) | Value saved for the certificateSigner |

### Blocked Items

#### List Quarantined Items[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-quarantined-items) <a href="#list-quarantined-items" id="list-quarantined-items"></a>

Get all blocked items

GET `/endpoint/v1/settings/blocked-items`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Add Item To Quarantine[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-item-to-quarantine) <a href="#add-item-to-quarantine" id="add-item-to-quarantine"></a>

Block an item from exoneration

POST `/endpoint/v1/settings/blocked-items`

| Key       | Type          | Description                                                                                                                                                                                                           |
| --------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant    | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Type\*    | String (?)    | Property by which an item is blocked                                                                                                                                                                                  |
| Comment\* | String (?)    | Comment indicating why the item should be allowed                                                                                                                                                                     |

#### Get Quarantined Item[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-quarantined-item) <a href="#get-quarantined-item" id="get-quarantined-item"></a>

Get a blocked item by ID

GET `/endpoint/v1/settings/blocked-items/{blockedItemId}`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Blocked Item\* | Sophos Blocked Item | None Provided                                                                                                                                                                                                         |

#### Delete From Quarantine[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-from-quarantine) <a href="#delete-from-quarantine" id="delete-from-quarantine"></a>

Deletes the specified blocked item

DELETE `/endpoint/v1/settings/blocked-items/{blockedItemId}`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Blocked Item\* | Sophos Blocked Item | None Provided                                                                                                                                                                                                         |

***

#### Property - Blocked Items[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#property---blocked-items) <a href="#property---blocked-items" id="property---blocked-items"></a>

| Key                  | Type       | Description                           |
| -------------------- | ---------- | ------------------------------------- |
| File Name\*          | String (?) | File name                             |
| Path\*               | String (?) | Path for the application              |
| Sha256\*             | String (?) | Sha256 value for the application      |
| Certificate Signer\* | String (?) | Value saved for the certificateSigner |

### Directory Management

#### List Users[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-users) <a href="#list-users" id="list-users"></a>

List users in the directory

GET `/common/v1/directory/users`

| Key           | Type              | Description                                                                                                                                                                                                           |
| ------------- | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant     | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Sort          | Array             | Defines how to sort the data                                                                                                                                                                                          |
| Fields        | String (?)        | The fields to return in a partial response                                                                                                                                                                            |
| IDs           | String (?)        | List of item IDs to match                                                                                                                                                                                             |
| Search        | String (?)        | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields | Array             | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |
| Source Type   | String            | Source directory type                                                                                                                                                                                                 |
| User Group    | Sophos User Group | None Provided                                                                                                                                                                                                         |
| Domain        | String (?)        | List the items that match the given domain                                                                                                                                                                            |

#### Create User[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-user) <a href="#create-user" id="create-user"></a>

Add a new user to the directory

POST `/common/v1/directory/users`

| Key            | Type          | Description                                                                                                                                                                                                           |
| -------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Fields         | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Name           | String (?)    | User's full name                                                                                                                                                                                                      |
| First Name     | String (?)    | None Provided                                                                                                                                                                                                         |
| Last Name      | String (?)    | None Provided                                                                                                                                                                                                         |
| Email          | String (?)    | User's email address                                                                                                                                                                                                  |
| Exchange Login | String (?)    | User's Exchange login                                                                                                                                                                                                 |
| User Group     | Array         | Groups that the user should be added to                                                                                                                                                                               |

#### Get User[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-user) <a href="#get-user" id="get-user"></a>

Get a user by ID

GET `/common/v1/directory/users/{userId}`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User\* | Sophos User   | None Provided                                                                                                                                                                                                         |
| Fields | String (?)    | The fields to return in a partial response                                                                                                                                                                            |

#### Delete User[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-user) <a href="#delete-user" id="delete-user"></a>

Delete a user by ID

DELETE `/common/v1/directory/users/{userId}`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User\* | Sophos User   | None Provided                                                                                                                                                                                                         |

#### Update User[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-user) <a href="#update-user" id="update-user"></a>

Update an existing user

PATCH `/common/v1/directory/users/{userId}`

| Key            | Type          | Description                                                                                                                                                                                                           |
| -------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User\*         | Sophos User   | None Provided                                                                                                                                                                                                         |
| Fields         | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Name           | String (?)    | User's full name                                                                                                                                                                                                      |
| First Name     | String (?)    | None Provided                                                                                                                                                                                                         |
| Last Name      | String (?)    | None Provided                                                                                                                                                                                                         |
| Email          | String (?)    | User's email address                                                                                                                                                                                                  |
| Exchange Login | String (?)    | User's Exchange login                                                                                                                                                                                                 |

#### List User Groups[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-user-groups) <a href="#list-user-groups" id="list-user-groups"></a>

List user groups in the directory

GET `/common/v1/directory/user-groups`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Sort          | Array         | Defines how to sort the data                                                                                                                                                                                          |
| Fields        | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| IDs           | String (?)    | List of item IDs to match                                                                                                                                                                                             |
| Search        | String (?)    | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields | Array         | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |
| Source Type   | String        | Source directory type                                                                                                                                                                                                 |
| User          | Sophos User   | None Provided                                                                                                                                                                                                         |
| Domain        | String (?)    | List the items that match the given domain                                                                                                                                                                            |

#### Create User Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-user-group) <a href="#create-user-group" id="create-user-group"></a>

Add a new group to the directory

POST `/common/v1/directory/user-groups`

| Key         | Type          | Description                                                                                                                                                                                                           |
| ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Fields      | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Name        | String (?)    | Group name                                                                                                                                                                                                            |
| Description | String (?)    | Group description                                                                                                                                                                                                     |
| Users       | Array         | Users in the group                                                                                                                                                                                                    |

#### Get User Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-user-group) <a href="#get-user-group" id="get-user-group"></a>

Get a user group by ID

GET `/common/v1/directory/user-groups/{groupId}`

| Key          | Type              | Description                                                                                                                                                                                                           |
| ------------ | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant     | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User Group\* | Sophos User Group | None Provided                                                                                                                                                                                                         |
| Fields       | String (?)        | The fields to return in a partial response                                                                                                                                                                            |

#### Delete User Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-user-group) <a href="#delete-user-group" id="delete-user-group"></a>

Deletes the specified user group. The group must be empty.

DELETE `/common/v1/directory/user-groups/{groupId}`

| Key          | Type              | Description                                                                                                                                                                                                           |
| ------------ | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant     | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User Group\* | Sophos User Group | None Provided                                                                                                                                                                                                         |

#### Update User Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-user-group) <a href="#update-user-group" id="update-user-group"></a>

Update a user group

PATCH `/common/v1/directory/user-groups/{groupId}`

| Key          | Type              | Description                                                                                                                                                                                                           |
| ------------ | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant     | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User Group\* | Sophos User Group | None Provided                                                                                                                                                                                                         |
| Fields       | String (?)        | The fields to return in a partial response                                                                                                                                                                            |
| Name         | String (?)        | New group name                                                                                                                                                                                                        |
| Description  | String (?)        | Group description                                                                                                                                                                                                     |

#### Get User Group Membership[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-user-group-membership) <a href="#get-user-group-membership" id="get-user-group-membership"></a>

List groups that a user belongs to

GET `/common/v1/directory/users/{userId}/groups`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User\*        | Sophos User   | None Provided                                                                                                                                                                                                         |
| Sort          | Array         | Defines how to sort the data                                                                                                                                                                                          |
| Fields        | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Search        | String (?)    | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields | Array         | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |
| Source Type   | String        | Source directory type                                                                                                                                                                                                 |
| Domain        | String (?)    | List the items that match the given domain                                                                                                                                                                            |

#### Add User To Group(S)[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-user-to-groups) <a href="#add-user-to-groups" id="add-user-to-groups"></a>

Add a user to multiple groups

POST `/common/v1/directory/users/{userId}/groups`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User\* | Sophos User   | None Provided                                                                                                                                                                                                         |
| IDs    | String (?)    | List of group IDs                                                                                                                                                                                                     |

#### Remove User From Group(S)[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove-user-from-groups) <a href="#remove-user-from-groups" id="remove-user-from-groups"></a>

Remove a user from multiple groups

DELETE `/common/v1/directory/users/{userId}/groups`

| Key         | Type          | Description                                                                                                                                                                                                           |
| ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User\*      | Sophos User   | None Provided                                                                                                                                                                                                         |
| User Groups | String (?)    | List of group IDs                                                                                                                                                                                                     |

#### List Users In Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-users-in-group) <a href="#list-users-in-group" id="list-users-in-group"></a>

List users in the specified group

GET `/common/v1/directory/user-groups/{groupId}/users`

| Key           | Type              | Description                                                                                                                                                                                                           |
| ------------- | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant     | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User Group\*  | Sophos User Group | None Provided                                                                                                                                                                                                         |
| Sort          | Array             | Defines how to sort the data                                                                                                                                                                                          |
| Fields        | String (?)        | The fields to return in a partial response                                                                                                                                                                            |
| Search        | String (?)        | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields | Array             | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |
| Source Type   | String            | Source directory type                                                                                                                                                                                                 |
| Domain        | String (?)        | List the items that match the given domain                                                                                                                                                                            |

#### Add User(S) To Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-users-to-group) <a href="#add-users-to-group" id="add-users-to-group"></a>

Add multiple users to the specified group

POST `/common/v1/directory/user-groups/{groupId}/users`

| Key          | Type              | Description                                                                                                                                                                                                           |
| ------------ | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant     | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User Group\* | Sophos User Group | None Provided                                                                                                                                                                                                         |
| Users        | String (?)        | List of user IDs                                                                                                                                                                                                      |

#### Remove User(S) From Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove-users-from-group) <a href="#remove-users-from-group" id="remove-users-from-group"></a>

Remove multiple users from a group

DELETE `/common/v1/directory/user-groups/{groupId}/users`

| Key          | Type              | Description                                                                                                                                                                                                           |
| ------------ | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant     | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| User Group\* | Sophos User Group | None Provided                                                                                                                                                                                                         |
| Users        | String (?)        | List of user IDs                                                                                                                                                                                                      |

### Downloads

#### List Endpoint Installer Links[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-endpoint-installer-links) <a href="#list-endpoint-installer-links" id="list-endpoint-installer-links"></a>

Get all the endpoint installer links for a tenant

GET `/endpoint/v1/downloads`

| Key                | Type          | Description                                                                                                                                                                                                           |
| ------------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant             | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Requested Products | Array         | Products to include in the installers. All values are given if you don't use filters                                                                                                                                  |
| Platforms          | Array         | Specify which platforms to include. All values are given if you don't use filters                                                                                                                                     |

### Endpoint Groups Management

#### List Endpoint Groups[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-endpoint-groups) <a href="#list-endpoint-groups" id="list-endpoint-groups"></a>

Endpoint groups in the directory

GET `/endpoint/v1/endpoint-groups`

| Key             | Type          | Description                                                                                                                                                                                                           |
| --------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Group Type      | String        | Endpoint group type                                                                                                                                                                                                   |
| Sort            | Array         | Defines how to sort the data                                                                                                                                                                                          |
| Fields          | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Endpoint Groups | String (?)    | IDs to match                                                                                                                                                                                                          |
| Search          | String (?)    | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields   | Array         | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |
| Endpoints       | Array         | Endpoints UUIDs                                                                                                                                                                                                       |

#### Create Endpoint Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-endpoint-group) <a href="#create-endpoint-group" id="create-endpoint-group"></a>

Add a new endpoint group to the directory

POST `/endpoint/v1/endpoint-groups`

| Key         | Type          | Description                                                                                                                                                                                                           |
| ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Fields      | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Name\*      | String (?)    | Group name                                                                                                                                                                                                            |
| Description | String (?)    | Group description                                                                                                                                                                                                     |
| Type\*      | String (?)    | Endpoint group types                                                                                                                                                                                                  |
| Endpoints   | Array         | Endpoints UUIDs                                                                                                                                                                                                       |

#### List Endpoint Groups By Type[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-endpoint-groups-by-type) <a href="#list-endpoint-groups-by-type" id="list-endpoint-groups-by-type"></a>

Endpoint groups of your specified type in the directory

GET `/endpoint/v1/endpoint-groups/types/{groupType}`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Group Type\*  | String        | Endpoint group type                                                                                                                                                                                                   |
| Sort          | Array         | Defines how to sort the data                                                                                                                                                                                          |
| Fields        | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| IDs           | String (?)    | IDs to match                                                                                                                                                                                                          |
| Search        | String (?)    | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields | Array         | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |
| Endpoints     | Array         | Endpoints UUIDs                                                                                                                                                                                                       |

#### Get Endpoint Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-endpoint-group) <a href="#get-endpoint-group" id="get-endpoint-group"></a>

Get endpoint group by ID

GET `/endpoint/v1/endpoint-groups/{groupId}`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Groups\* | Sophos Endpoint Group | None Provided                                                                                                                                                                                                         |
| Fields            | String (?)            | The fields to return in a partial response                                                                                                                                                                            |

#### Delete Endpoint Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-endpoint-group) <a href="#delete-endpoint-group" id="delete-endpoint-group"></a>

Delete endpoint group

DELETE `/endpoint/v1/endpoint-groups/{groupId}`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Groups\* | Sophos Endpoint Group | None Provided                                                                                                                                                                                                         |

#### Update Endpoint Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-endpoint-group) <a href="#update-endpoint-group" id="update-endpoint-group"></a>

Update endpoint group

PATCH `/endpoint/v1/endpoint-groups/{groupId}`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Groups\* | Sophos Endpoint Group | None Provided                                                                                                                                                                                                         |
| Fields            | String (?)            | The fields to return in a partial response                                                                                                                                                                            |
| Name              | String (?)            | New group name                                                                                                                                                                                                        |
| Description       | String (?)            | Group description                                                                                                                                                                                                     |

#### List Endpoints In Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-endpoints-in-group) <a href="#list-endpoints-in-group" id="list-endpoints-in-group"></a>

Endpoints in your specified group

GET `/endpoint/v1/endpoint-groups/{groupId}/endpoints`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Groups\* | Sophos Endpoint Group | None Provided                                                                                                                                                                                                         |
| Sort              | Array                 | Defines how to sort the data                                                                                                                                                                                          |
| Fields            | String (?)            | The fields to return in a partial response                                                                                                                                                                            |
| Search            | String (?)            | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields     | Array                 | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |

#### Add Endpoint(S) To Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-endpoints-to-group) <a href="#add-endpoints-to-group" id="add-endpoints-to-group"></a>

Add endpoints to your group

POST `/endpoint-groups/{groupId}/endpoints`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Groups\* | Sophos Endpoint Group | None Provided                                                                                                                                                                                                         |
| Endpoints         | String (?)            | List of endpoint IDs                                                                                                                                                                                                  |

#### Remove From Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove-from-group) <a href="#remove-from-group" id="remove-from-group"></a>

Remove endpoints from a group

DELETE `/endpoint-groups/{groupId}/endpoints`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Groups\* | Sophos Endpoint Group | None Provided                                                                                                                                                                                                         |
| IDs               | String (?)            | Endpoint IDs                                                                                                                                                                                                          |

#### Remove Single Endpoint From Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove-single-endpoint-from-group) <a href="#remove-single-endpoint-from-group" id="remove-single-endpoint-from-group"></a>

Remove endpoint from a group

DELETE `/endpoint-groups/{groupId}/endpoints/{endpointId}`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Groups\* | Sophos Endpoint Group | None Provided                                                                                                                                                                                                         |
| Endpoint\*        | Sophos Endpoint       | None Provided                                                                                                                                                                                                         |

### Endpoint Isolation

#### Configure Endpoint(s) Isolation Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#configure-endpoints-isolation-settings) <a href="#configure-endpoints-isolation-settings" id="configure-endpoints-isolation-settings"></a>

Turn on or off endpoint isolation for multiple endpoints

POST `/endpoint/v1/endpoints/isolation`

| Key       | Type          | Description                                                                                                                                                                                                           |
| --------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant    | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Enabled   | String (?)    | Whether Tamper Protection should be turned on for the endpoint                                                                                                                                                        |
| Comment\* | String (?)    | Comment indicating why the item should be allowed                                                                                                                                                                     |
| IDs       | String (?)    | List of endpoints IDs                                                                                                                                                                                                 |

#### Get Endpoint's Isolation Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-endpoints-isolation-settings) <a href="#get-endpoints-isolation-settings" id="get-endpoints-isolation-settings"></a>

Get isolation settings for an endpoint

GET `/endpoint/v1/endpoints/{endpointId}/isolation`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint\* | Sophos Endpoint | None Provided                                                                                                                                                                                                         |

#### Update Endpoint's Isolation Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-endpoints-isolation-settings) <a href="#update-endpoints-isolation-settings" id="update-endpoints-isolation-settings"></a>

Update isolation settings for an endpoint

PATCH `/endpoint/v1/endpoints/{endpointId}/isolation`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint\* | Sophos Endpoint | None Provided                                                                                                                                                                                                         |
| Enabled    | String (?)      | Whether Tamper Protection should be turned on for the endpoint                                                                                                                                                        |
| Comment\*  | String (?)      | Comment indicating why the item should be allowed                                                                                                                                                                     |

### Endpoints

#### List Endpoints[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-endpoints) <a href="#list-endpoints" id="list-endpoints"></a>

Get all the endpoints for the specified tenant

GET `/endpoint/v1/endpoints`

| Key                        | Type          | Description                                                                                                                                                                                                                               |
| -------------------------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                     | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field.                     |
| Sort                       | Array         | Defines how to sort the data                                                                                                                                                                                                              |
| Health Status              | Array         | Find endpoints by health status                                                                                                                                                                                                           |
| Type                       | String (?)    | Find endpoints by type                                                                                                                                                                                                                    |
| Tamper Protection Enabled  | String (?)    | Find endpoints by whether Tamper Protection is turned on                                                                                                                                                                                  |
| Lockdown Status            | Array         | Find endpoints by lockdown status                                                                                                                                                                                                         |
| Last Seen Before           | String (?)    | Find endpoints that were last seen before the given date and time (UTC) or a duration relative to the current date and time (exclusive).                                                                                                  |
| Last Seen After            | String (?)    | Find endpoints that were last seen after the given date and time (UTC) or a duration relative to the current date and time (inclusive).                                                                                                   |
| IDs                        | String (?)    | Find endpoints with the specified IDs                                                                                                                                                                                                     |
| Isolation Status           | String        | Find endpoints by isolation status                                                                                                                                                                                                        |
| Hostname Contains          | String (?)    | Find endpoints where the hostname contains the given string Only the first 10 characters of the given string are matched.                                                                                                                 |
| Associated Person Contains | String (?)    | Find endpoints where the name of the person associated with the endpoint contains the given string Only the first 10 characters of the given string are matched.                                                                          |
| Group Name Contains        | String (?)    | Find endpoints where the name of the group the endpoint is in contains the given string Only the first 10 characters of the given string are matched.                                                                                     |
| Search                     | String (?)    | Search for items that match the given terms                                                                                                                                                                                               |
| Search Fields              | Array         | Search only within the specified fields, username field is default if search query is specified                                                                                                                                           |
| IP Addresses               | Array         | Find endpoints by IP addresses                                                                                                                                                                                                            |
| Cloud                      | Array         | Find endpoints that are cloud instances. You must use URL encoding                                                                                                                                                                        |
| Fields                     | String (?)    | The fields to return in a partial response                                                                                                                                                                                                |
| View                       | String        | Type of view to be returned in response                                                                                                                                                                                                   |
| Assigned To Group          | String (?)    | Whether endpoint is assigned to a group                                                                                                                                                                                                   |
| Endpoint Groups            | Array         | Groups that the endpoint should be added to                                                                                                                                                                                               |
| MAC Addresses              | Array         | Find endpoints by MAC Addresses Can be in EUI-48 or EUI-64 format, case insensitive, colon, hyphen or dot separated, or with no separator e.g. 01:23:45:67:89:AB, 01-23-45-67-89-ab, 0123.4567.89ab, 0123456789ab, 01:23:45:67:89🆎cd:ef. |

#### Get Endpoint[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-endpoint) <a href="#get-endpoint" id="get-endpoint"></a>

Get an endpoint based on ID

GET `/endpoint/v1/endpoints/{endpointId}`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint\* | Sophos Endpoint | None Provided                                                                                                                                                                                                         |
| Fields     | String (?)      | The fields to return in a partial response                                                                                                                                                                            |
| View       | String          | Type of view to be returned in response                                                                                                                                                                               |

#### Delete Endpoint[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-endpoint) <a href="#delete-endpoint" id="delete-endpoint"></a>

Deletes a specified endpoint

DELETE `/endpoint/v1/endpoints/{endpointId}`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint\* | Sophos Endpoint | None Provided                                                                                                                                                                                                         |

### Event Journal

#### List Event Journal Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-event-journal-settings) <a href="#list-event-journal-settings" id="list-event-journal-settings"></a>

Get all event journal settings

GET `/endpoint/v1/settings/event-journal/{endpointType}`

| Key             | Type          | Description                                                                                                                                                                                                           |
| --------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Type\* | String        | Endpoint type                                                                                                                                                                                                         |

#### Update Event Journal Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-event-journal-settings) <a href="#update-event-journal-settings" id="update-event-journal-settings"></a>

Update settings for event journal size and disk space limits If you specify both a maximum disk space and a maximum journal size, the lower of these limits is used

PATCH `/endpoint/v1/settings/event-journal/{endpointType}`

| Key                            | Type          | Description                                                                                                                                                                                                           |
| ------------------------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                         | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint Type\*                | String        | Endpoint type                                                                                                                                                                                                         |
| Use Recommended                | String (?)    | Shows if the recommended setting is required                                                                                                                                                                          |
| Disk Space Limit In Mb         | String (?)    | Maximum size of the event journal (MB)                                                                                                                                                                                |
| Disk Space Limit As Percentage | String        | Disk space limit for the event journal (percentage). The value 0 will mean Disk space limit is not specified.                                                                                                         |

### Events

#### Get Events[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-events) <a href="#get-events" id="get-events"></a>

Get events with timestamps within the last 24 hours

GET `/siem/v1/events`

| Key            | Type          | Description                                                                                                                                                             |
| -------------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| X-Tenant-ID    | Sophos Tenant | None Provided                                                                                                                                                           |
| limit          | String (?)    | The maximum number of items to return, default is 200, max is 1000                                                                                                      |
| cursor         | String (?)    | Identifier for next item in the list, this value is available in response as next\_cursor Response will default to last 24 hours if cursor is not within last 24 hours. |
| from\_date     | String (?)    | The starting date from which alerts will be retrieved defined as Unix timestamp in UTCIgnored if cursor is set. Must be within last 24 hours.                           |
| exclude\_types | String (?)    | The String of list of types of events to be excluded                                                                                                                    |

### Exploit Mitigation

#### List Detected Exploits[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-detected-exploits) <a href="#list-detected-exploits" id="list-detected-exploits"></a>

Get detected exploits and the number of each detected exploit

GET `/endpoint/v1/settings/exploit-mitigation/detected-exploits`

| Key               | Type          | Description                                                                                                                                                                                                           |
| ----------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Thumbprint Not In | Array         | Filter out detected exploits with these thumbprints                                                                                                                                                                   |

#### Get Detected Exploit[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-detected-exploit) <a href="#get-detected-exploit" id="get-detected-exploit"></a>

Get a detected exploit by ID

GET `/endpoint/v1/settings/exploit-mitigation/detected-exploits/{detectedExploitId}`

| Key                | Type                    | Description                                                                                                                                                                                                           |
| ------------------ | ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant             | Sophos Tenant           | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Detected Exploit\* | Sophos Detected Exploit | None Provided                                                                                                                                                                                                         |

#### List Exploit Mitigation Categories[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-exploit-mitigation-categories) <a href="#list-exploit-mitigation-categories" id="list-exploit-mitigation-categories"></a>

Lists all the Exploit Mitigation categories

GET `/endpoint/v1/settings/exploit-mitigation/categories`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### List Exploit Mitigation Applications[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-exploit-mitigation-applications) <a href="#list-exploit-mitigation-applications" id="list-exploit-mitigation-applications"></a>

Get Exploit Mitigation settings for all protected applications

GET `/endpoint/v1/settings/exploit-mitigation/applications`

| Key      | Type          | Description                                                                                                                                                                                                           |
| -------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant   | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Type     | String (?)    | Exploit Mitigation Application type                                                                                                                                                                                   |
| Modified | String (?)    | Whether or not Exploit Mitigation Application has been customized                                                                                                                                                     |

#### Add Application To Exploit Mitigation Exclusions[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-application-to-exploit-mitigation-exclusions) <a href="#add-application-to-exploit-mitigation-exclusions" id="add-application-to-exploit-mitigation-exclusions"></a>

Exclude a set of file paths from Exploit Mitigation

POST `/endpoint/v1/settings/exploit-mitigation/applications`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Paths  | Array         | Array of absolute paths to an application file to exclude. You may use HitmanProAlert expansion variables (For example, $desktop, $programfiles). Currently, this array may contain only one application path.        |

#### Get Application's Exploit Mitigation Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-applications-exploit-mitigation-settings) <a href="#get-applications-exploit-mitigation-settings" id="get-applications-exploit-mitigation-settings"></a>

Get Exploit Mitigation settings for an application

GET `/endpoint/v1/settings/exploit-mitigation/applications/{exploitMitigationApplicationId}`

| Key                              | Type                                  | Description                                                                                                                                                                                                           |
| -------------------------------- | ------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                           | Sophos Tenant                         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Exploit Mitigation Application\* | Sophos Exploit Mitigation Application | Exploit Mitigation application ID                                                                                                                                                                                     |

#### Update Application Exploit Mitigation Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-application-exploit-mitigation-settings) <a href="#update-application-exploit-mitigation-settings" id="update-application-exploit-mitigation-settings"></a>

Update Exploit Mitigation settings for an application

PATCH `/endpoint/v1/settings/exploit-mitigation/applications/{exploitMitigationApplicationId}`

| Key                              | Type                                  | Description                                                                                                                                                                                                           |
| -------------------------------- | ------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                           | Sophos Tenant                         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Exploit Mitigation Application\* | Sophos Exploit Mitigation Application | Exploit Mitigation application ID                                                                                                                                                                                     |
| Paths                            | Array                                 | Array of absolute paths to an application file to exclude. You may use HitmanProAlert expansion variables (For example, $desktop, $programfiles). Currently, this array may contain only one application path.        |

#### Remove Exploit Mitigation Application[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove-exploit-mitigation-application) <a href="#remove-exploit-mitigation-application" id="remove-exploit-mitigation-application"></a>

Deletes a custom (user-defined) Exploit Mitigation application by ID. Note you can only delete custom applications A request to delete a system-detected application fails with a 409 Conflict message

DELETE `/endpoint/v1/settings/exploit-mitigation/applications/{exploitMitigationApplicationId}`

| Key                              | Type                                  | Description                                                                                                                                                                                                           |
| -------------------------------- | ------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                           | Sophos Tenant                         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Exploit Mitigation Application\* | Sophos Exploit Mitigation Application | Exploit Mitigation application ID                                                                                                                                                                                     |

***

#### Modification[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#modification) <a href="#modification" id="modification"></a>

| Key       | Type       | Description   |
| --------- | ---------- | ------------- |
| protected | String (?) | None Provided |
| settings  | String (?) | None Provided |

### Firewall Groups

#### List Firewall Groups[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-firewall-groups) <a href="#list-firewall-groups" id="list-firewall-groups"></a>

Retrieve firewall groups for a tenant

GET `/firewall/v1/firewall-groups`

| Key               | Type          | Description                                                                                                                                                                                                           |
| ----------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Recurse Subgroups | String (?)    | Whether to include nested child groups or not                                                                                                                                                                         |
| Search            | String (?)    | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields     | Array         | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |

#### Create Firewall Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-firewall-group) <a href="#create-firewall-group" id="create-firewall-group"></a>

Create firewall group

POST `/firewall/v1/firewall-groups`

| Key                           | Type                  | Description                                                                                                                                                                                                           |
| ----------------------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                        | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Name                          | String (?)            | Group name                                                                                                                                                                                                            |
| Config Import Source Firewall | String (?)            | ID for the firewall you're importing configuration settings from                                                                                                                                                      |
| Assign Firewalls              | Array                 | IDs for the firewalls you're adding to the group                                                                                                                                                                      |
| Firewall Group                | Sophos Firewall Group | None Provided                                                                                                                                                                                                         |

#### Update Firewall Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-firewall-group) <a href="#update-firewall-group" id="update-firewall-group"></a>

Change firewall group name. You can also assign firewalls to the group. Or remove firewalls from a group

PATCH `/firewall/v1/firewall-groups/{groupId}`

| Key                | Type                  | Description                                                                                                                                                                                                           |
| ------------------ | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant             | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewall Group\*   | Sophos Firewall Group | None Provided                                                                                                                                                                                                         |
| Name               | String (?)            | New group name                                                                                                                                                                                                        |
| Assign Firewalls   | Array                 | IDs for the firewalls you're adding to the group                                                                                                                                                                      |
| Unassign Firewalls | Array                 | IDs for the firewalls you're removing from group                                                                                                                                                                      |

#### Delete Firewall Group[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-firewall-group) <a href="#delete-firewall-group" id="delete-firewall-group"></a>

Delete the firewall group using its ID

DELETE `/firewall/v1/firewall-groups/{groupId}`

| Key              | Type                  | Description                                                                                                                                                                                                           |
| ---------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant           | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewall Group\* | Sophos Firewall Group | None Provided                                                                                                                                                                                                         |

#### List Firewall Group Sync Status[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-firewall-group-sync-status) <a href="#list-firewall-group-sync-status" id="list-firewall-group-sync-status"></a>

Synchronization status for the firewalls in a group

GET `/firewall/v1/firewall-groups/{groupId}/firewalls/sync-status`

| Key              | Type                  | Description                                                                                                                                                                                                           |
| ---------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant           | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewall Group\* | Sophos Firewall Group | None Provided                                                                                                                                                                                                         |
| IDs              | String (?)            | None Provided                                                                                                                                                                                                         |

### Firewalls

#### List Firewalls[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-firewalls) <a href="#list-firewalls" id="list-firewalls"></a>

List of firewalls

GET `/firewall/v1/firewalls`

| Key            | Type                  | Description                                                                                                                                                                                                           |
| -------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewall Group | Sophos Firewall Group | None Provided                                                                                                                                                                                                         |
| Search         | String (?)            | Search for items that match the given terms                                                                                                                                                                           |

#### Update Firewall[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-firewall) <a href="#update-firewall" id="update-firewall"></a>

Update firewalls with supplied values

PATCH `/firewall/v1/firewalls/{firewallId}`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewall\* | Sophos Firewall | None Provided                                                                                                                                                                                                         |
| Name       | String (?)      | Firewall name                                                                                                                                                                                                         |

#### Delete Firewall[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-firewall) <a href="#delete-firewall" id="delete-firewall"></a>

Delete firewall using its ID

DELETE `/firewall/v1/firewalls/{firewallId}`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewall\* | Sophos Firewall | None Provided                                                                                                                                                                                                         |

#### Run Firewall Action[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#run-firewall-action) <a href="#run-firewall-action" id="run-firewall-action"></a>

Action you want to do to a firewall

POST `/firewall/v1/firewalls/{firewallId}/action`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewall\* | Sophos Firewall | None Provided                                                                                                                                                                                                         |
| Action     | String (?)      | Actions that you can perform on these alerts                                                                                                                                                                          |

#### Check Firmware[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#check-firmware) <a href="#check-firmware" id="check-firmware"></a>

Check firmware for firewalls

POST `/firewall/v1/firewalls/actions/firmware-upgrade-check`

| Key       | Type          | Description                                                                                                                                                                                                           |
| --------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant    | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewalls | Array         | None Provided                                                                                                                                                                                                         |

#### Upgrade Firewall[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#upgrade-firewall) <a href="#upgrade-firewall" id="upgrade-firewall"></a>

Upgrade firewalls

POST `/firewall/v1/firewalls/actions/firmware-upgrade`

| Key         | Type          | Description                                                                                                                                                                                                           |
| ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewalls\* | Array         | None Provided                                                                                                                                                                                                         |

#### Cancel Scheduled Firewall Upgrade[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#cancel-scheduled-firewall-upgrade) <a href="#cancel-scheduled-firewall-upgrade" id="cancel-scheduled-firewall-upgrade"></a>

Cancel scheduled upgrade for a firewall

DELETE `/firewall/v1/firewalls/actions/firmware-upgrade`

| Key         | Type          | Description                                                                                                                                                                                                           |
| ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Firewalls\* | String (?)    | None Provided                                                                                                                                                                                                         |

***

#### Geolocation[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#geolocation) <a href="#geolocation" id="geolocation"></a>

| Key       | Type       | Description   |
| --------- | ---------- | ------------- |
| latitude  | String (?) | None Provided |
| longitude | String (?) | None Provided |

### Global Tamper Protection

#### Check Global Tamper Protection Setting[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#check-global-tamper-protection-setting) <a href="#check-global-tamper-protection-setting" id="check-global-tamper-protection-setting"></a>

Check whether Tamper Protection is turned on globally

GET `/endpoint/v1/settings/tamper-protection`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

### Intrusion Prevention

#### List Intrusion Prevention Exclusions[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-intrusion-prevention-exclusions) <a href="#list-intrusion-prevention-exclusions" id="list-intrusion-prevention-exclusions"></a>

Get all Intrusion Prevention exclusions

GET `/endpoint/v1/settings/exclusions/intrusion-prevention`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Add Intrusion Prevention Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-intrusion-prevention-exclusion) <a href="#add-intrusion-prevention-exclusion" id="add-intrusion-prevention-exclusion"></a>

Add a new Intrusion Prevention exclusion

POST `/endpoint/v1/settings/exclusions/intrusion-prevention`

| Key          | Type          | Description                                                                                                                                                                                                           |
| ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Local Ports  | Array         | Local protected ports                                                                                                                                                                                                 |
| Remote Ports | Array         | Remote protected ports                                                                                                                                                                                                |

True True| required | | None Provided | | Direction | String (?) | Direction property of the intrusion prevention exclusion | | Remote Addresses | String (?) | Array of remote addresses for the intrusion prevention exclusion | | Comment\* | String (?) | Comment indicating why the item should be allowed |

#### Get Intrusion Prevention Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-intrusion-prevention-exclusion) <a href="#get-intrusion-prevention-exclusion" id="get-intrusion-prevention-exclusion"></a>

Get an Intrusion Prevention exclusion by ID

GET `/endpoint/v1/settings/exclusions/intrusion-prevention/{exclusionId}`

| Key                    | Type                        | Description                                                                                                                                                                                                           |
| ---------------------- | --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                 | Sophos Tenant               | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Intrusions Exclusion\* | Sophos Intrusions Exclusion | Exclusion ID                                                                                                                                                                                                          |

#### Remove Intrusion Prevention Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove-intrusion-prevention-exclusion) <a href="#remove-intrusion-prevention-exclusion" id="remove-intrusion-prevention-exclusion"></a>

Delete an Intrusion Prevention exclusion by ID

DELETE `/endpoint/v1/settings/exclusions/intrusion-prevention/{exclusionId}`

| Key                    | Type                        | Description                                                                                                                                                                                                           |
| ---------------------- | --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                 | Sophos Tenant               | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Intrusions Exclusion\* | Sophos Intrusions Exclusion | Exclusion ID                                                                                                                                                                                                          |

#### Update Intrusion Prevention Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-intrusion-prevention-exclusion) <a href="#update-intrusion-prevention-exclusion" id="update-intrusion-prevention-exclusion"></a>

Update an Intrusion Prevention exclusion by ID

PATCH `/endpoint/v1/settings/exclusions/intrusion-prevention/{exclusionId}`

| Key                    | Type                        | Description                                                                                                                                                                                                           |
| ---------------------- | --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                 | Sophos Tenant               | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Intrusions Exclusion\* | Sophos Intrusions Exclusion | Exclusion ID                                                                                                                                                                                                          |
| Local Ports            | Array                       | Local protected ports                                                                                                                                                                                                 |
| Remote Ports           | Array                       | Remote protected ports                                                                                                                                                                                                |
| Direction              | String (?)                  | Direction property of the intrusion prevention exclusion                                                                                                                                                              |
| Remote Addresses       | String (?)                  | Array of remote addresses for the intrusion prevention exclusion                                                                                                                                                      |
| Comment\*              | String (?)                  | Comment indicating why the item should be allowed                                                                                                                                                                     |

### Isolation Exclusions

#### List Isolation Exclusions[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-isolation-exclusions) <a href="#list-isolation-exclusions" id="list-isolation-exclusions"></a>

Get all isolation exclusions

GET `/endpoint/v1/settings/exclusions/isolation`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Create Isolation Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-isolation-exclusion) <a href="#create-isolation-exclusion" id="create-isolation-exclusion"></a>

Adds a new Isolation exclusion

POST `/endpoint/v1/settings/exclusions/isolation`

| Key          | Type          | Description                                                                                                                                                                                                           |
| ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Local Ports  | Array         | Local protected ports                                                                                                                                                                                                 |
| Remote Ports | Array         | Remote protected ports                                                                                                                                                                                                |

True True| required | | None Provided | | Direction | String (?) | Direction property of the intrusion prevention exclusion | | Remote Addresses | String (?) | Array of remote addresses for the intrusion prevention exclusion | | Comment\* | String (?) | Comment indicating why the item should be allowed |

#### Get Isolation Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-isolation-exclusion) <a href="#get-isolation-exclusion" id="get-isolation-exclusion"></a>

Get a single Isolation exclusion by ID

GET `/endpoint/v1/settings/exclusions/isolation/{exclusionId}`

| Key                   | Type                       | Description                                                                                                                                                                                                           |
| --------------------- | -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                | Sophos Tenant              | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Isolation Exclusion\* | Sophos Isolation Exclusion | Exclusion ID                                                                                                                                                                                                          |

#### Delete Isolation Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-isolation-exclusion) <a href="#delete-isolation-exclusion" id="delete-isolation-exclusion"></a>

Deletes an Isolation exclusion

DELETE `/endpoint/v1/settings/exclusions/isolation/{exclusionId}`

| Key                   | Type                       | Description                                                                                                                                                                                                           |
| --------------------- | -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                | Sophos Tenant              | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Isolation Exclusion\* | Sophos Isolation Exclusion | Exclusion ID                                                                                                                                                                                                          |

#### Update Isolation Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-isolation-exclusion) <a href="#update-isolation-exclusion" id="update-isolation-exclusion"></a>

Updates an Isolation exclusion by ID

PATCH `/endpoint/v1/settings/exclusions/isolation/{exclusionId}`

| Key                   | Type                       | Description                                                                                                                                                                                                           |
| --------------------- | -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                | Sophos Tenant              | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Isolation Exclusion\* | Sophos Isolation Exclusion | Exclusion ID                                                                                                                                                                                                          |
| Local Ports           | Array                      | Local protected ports                                                                                                                                                                                                 |
| Remote Ports          | Array                      | Remote protected ports                                                                                                                                                                                                |
| Direction             | String (?)                 | Direction property of the intrusion prevention exclusion                                                                                                                                                              |
| Remote Addresses      | String (?)                 | Array of remote addresses for the intrusion prevention exclusion                                                                                                                                                      |
| Comment\*             | String (?)                 | Comment indicating why the item should be allowed                                                                                                                                                                     |

### Migrations

#### List Migrations[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-migrations) <a href="#list-migrations" id="list-migrations"></a>

Gets all migration jobs for the tenant

GET `/endpoint/v1/migrations`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Mode   | String        | Filter migration jobs by sending or receiving mode                                                                                                                                                                    |

#### Start Receiving Migration Job[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#start-recieving-migration-job) <a href="#start-recieving-migration-job" id="start-recieving-migration-job"></a>

Start a migration job in the receiving tenant

POST `/endpoint/v1/migrations`

| Key         | Type          | Description                                                                                                                                                                                                           |
| ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| From Tenant | String (?)    | Sending tenant                                                                                                                                                                                                        |
| Endpoints   | Array         | Endpoints UUIDs                                                                                                                                                                                                       |

#### Get Migration Job[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-migration-job) <a href="#get-migration-job" id="get-migration-job"></a>

Get a single migration job

GET `/endpoint/v1/migrations/{migrationJobId}`

| Key             | Type                 | Description                                                                                                                                                                                                           |
| --------------- | -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant        | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Migration Job\* | Sophos Migration Job | Migration job ID                                                                                                                                                                                                      |

#### Start Starting Migration Job[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#start-starting-migration-job) <a href="#start-starting-migration-job" id="start-starting-migration-job"></a>

Start a migration job in the sending tenant

PUT `/endpoint/v1/migrations/{migrationJobId}`

| Key             | Type                 | Description                                                                                                                                                                                                           |
| --------------- | -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant        | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Migration Job\* | Sophos Migration Job | Migration job ID                                                                                                                                                                                                      |
| Token           | String (?)           | Job token                                                                                                                                                                                                             |
| Endpoints       | Array                | Endpoints UUIDs                                                                                                                                                                                                       |

#### List Migration Endpoint Statuses[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-migration-endpoint-statuses) <a href="#list-migration-endpoint-statuses" id="list-migration-endpoint-statuses"></a>

Gets the status of endpoints that are being migrated

GET `/endpoint/v1/migrations/{migrationJobId}/endpoints`

| Key             | Type                 | Description                                                                                                                                                                                                           |
| --------------- | -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant        | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Migration Job\* | Sophos Migration Job | Migration job ID                                                                                                                                                                                                      |

### Packages

#### List Recommended Packages[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-recommended-packages) <a href="#list-recommended-packages" id="list-recommended-packages"></a>

Get all Sophos Recommended packages for the tenant

GET `/endpoint/v1/software/packages/recommended`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### List Static Packages[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-static-packages) <a href="#list-static-packages" id="list-static-packages"></a>

Get all static packages available for the tenant

GET `/endpoint/v1/software/packages/static`

| Key             | Type          | Description                                                                                                                                                                                                           |
| --------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Sort            | Array         | Defines how to sort the data                                                                                                                                                                                          |
| Endpoint Type\* | String        | Endpoint type                                                                                                                                                                                                         |
| Platform        | String        | Filter to the platform of the static package                                                                                                                                                                          |
| Type            | String (?)    | Show the type of static package                                                                                                                                                                                       |
| Expires From    | String (?)    | Show static packages that expire on or after this date (inclusive)                                                                                                                                                    |
| Expires To      | String (?)    | Show static packages that expire before this date (exclusive)                                                                                                                                                         |
| Released From   | String (?)    | Show static packages that were released on or after this date (inclusive)                                                                                                                                             |
| Released To     | String (?)    | Show static packages that were released before this date (exclusive)                                                                                                                                                  |

#### Get Static Package[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-static-package) <a href="#get-static-package" id="get-static-package"></a>

Get an individual static package

GET `/endpoint/v1/software/packages/static/{staticPackageId}`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Static Packages\* | Sophos Static Package | None Provided                                                                                                                                                                                                         |

#### Add Package[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-package) <a href="#add-package" id="add-package"></a>

Add a package by token, supplied by Sophos support. This is a one-way operation

POST `/endpoint/v1/software/packages/static/{staticPackageId}/add`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Static Packages\* | Sophos Static Package | None Provided                                                                                                                                                                                                         |

#### List Static Package Comments[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-static-package-comments) <a href="#list-static-package-comments" id="list-static-package-comments"></a>

Get all software comments

GET `/endpoint/v1/software/comments`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Get Static Package Comment[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-static-package-comment) <a href="#get-static-package-comment" id="get-static-package-comment"></a>

Get the static package comment

GET `/endpoint/v1/software/comments/{staticPackageId}`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Static Packages\* | Sophos Static Package | None Provided                                                                                                                                                                                                         |

#### Update Static Package Comment[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-static-package-comment) <a href="#update-static-package-comment" id="update-static-package-comment"></a>

Add/Update the static package comment

PUT `/endpoint/v1/software/comments/{staticPackageId}`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Static Packages\* | Sophos Static Package | None Provided                                                                                                                                                                                                         |
| Comment\*         | String (?)            | Comment indicating why the item should be allowed                                                                                                                                                                     |

#### Delete Static Package Comment[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-static-package-comment) <a href="#delete-static-package-comment" id="delete-static-package-comment"></a>

Delete the static package comment

DELETE `/endpoint/v1/software/comments/{staticPackageId}`

| Key               | Type                  | Description                                                                                                                                                                                                           |
| ----------------- | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant            | Sophos Tenant         | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Static Packages\* | Sophos Static Package | None Provided                                                                                                                                                                                                         |

### Partner Admins

#### List Partner Admins[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-partner-admins) <a href="#list-partner-admins" id="list-partner-admins"></a>

List all partner admins

GET `/partner/v1/admins`

| Key                   | Type                | Description                                            |
| --------------------- | ------------------- | ------------------------------------------------------ |
| X-Partner-ID\*        | String (?)          | Partner ID                                             |
| Sort                  | Array               | Defines how to sort the data                           |
| Fields                | String (?)          | The fields to return in a partial response             |
| Search                | String (?)          | Search for items that match the given terms            |
| Email                 | String (?)          | None Provided                                          |
| Partner Role          | Sophos Partner Role | Role ID                                                |
| With Access To Tenant | String (?)          | Search for admins that have access to the given tenant |

#### Create Partner Admin[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-partner-admin) <a href="#create-partner-admin" id="create-partner-admin"></a>

Create a new partner administrator

POST `/partner/v1/admins`

| Key            | Type       | Description                    |
| -------------- | ---------- | ------------------------------ |
| X-Partner-ID\* | String (?) | Partner ID                     |
| Username       | String (?) | Administrator username (email) |

#### Get Partner Admin[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-partner-admin) <a href="#get-partner-admin" id="get-partner-admin"></a>

Get partner administrator details by ID

GET `/partner/v1/admins/{adminId}`

| Key             | Type                 | Description |
| --------------- | -------------------- | ----------- |
| X-Partner-ID\*  | String (?)           | Partner ID  |
| Partner Admin\* | Sophos Partner Admin | Admin ID    |

#### List All Partner Roles[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-all-partner-roles) <a href="#list-all-partner-roles" id="list-all-partner-roles"></a>

Get the list of role assignments for a given admin

GET `/partner/v1/admins/{adminId}/role-assignments`

| Key             | Type                 | Description |
| --------------- | -------------------- | ----------- |
| X-Partner-ID\*  | String (?)           | Partner ID  |
| Partner Admin\* | Sophos Partner Admin | Admin ID    |

#### Assign A Partner Admin Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#assign-a-partner-admin-role) <a href="#assign-a-partner-admin-role" id="assign-a-partner-admin-role"></a>

Assign a role to a partner administrator

POST `/partner/v1/admins/{adminId}/role-assignments`

| Key             | Type                 | Description |
| --------------- | -------------------- | ----------- |
| X-Partner-ID\*  | String (?)           | Partner ID  |
| Partner Admin\* | Sophos Partner Admin | Admin ID    |
| Partner Role\*  | Sophos Partner Role  | Role ID     |

#### Get Partner Admin Role Assignment[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-partner-admin-role-assignment) <a href="#get-partner-admin-role-assignment" id="get-partner-admin-role-assignment"></a>

Get partner administrator role assignment by ID

GET `/partner/v1/admins/{adminId}/role-assignments/{assignmentId}`

| Key                       | Type                           | Description        |
| ------------------------- | ------------------------------ | ------------------ |
| X-Partner-ID\*            | String (?)                     | Partner ID         |
| Partner Admin\*           | Sophos Partner Admin           | Admin ID           |
| Partner Role Assignment\* | Sophos Partner Role Assignment | Role Assignment ID |

#### Remove A Partner Admin Role Assignment[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove-a-partner-admin-role-assignment) <a href="#remove-a-partner-admin-role-assignment" id="remove-a-partner-admin-role-assignment"></a>

Remove role assignment from a partner admin

DELETE `/partner/v1/admins/{adminId}/role-assignments/{assignmentId}`

| Key                       | Type                           | Description        |
| ------------------------- | ------------------------------ | ------------------ |
| X-Partner-ID\*            | String (?)                     | Partner ID         |
| Partner Admin\*           | Sophos Partner Admin           | Admin ID           |
| Partner Role Assignment\* | Sophos Partner Role Assignment | Role Assignment ID |

***

#### Profile[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#profile) <a href="#profile" id="profile"></a>

| Key       | Type       | Description   |
| --------- | ---------- | ------------- |
| Name      | String (?) | Full name     |
| firstName | String (?) | None Provided |
| lastName  | String (?) | None Provided |
| phone     | String (?) | None Provided |
| mobile    | String (?) | None Provided |
| fax       | String (?) | None Provided |

***

**Partnerroleassignment**[**​**](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#partnerroleassignment)

| Key    | Type       | Description |
| ------ | ---------- | ----------- |
| roleId | String (?) | Role UUID   |

***

**Scope**[**​**](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#scope)

| Key    | Type       | Description                                                      |
| ------ | ---------- | ---------------------------------------------------------------- |
| Type\* | String     | Role assignment scope type                                       |
| Tenant | String (?) | Tenant ID. Optional when `type` is `allManagedTenants` or `self` |

### Partner Billing

#### List Partner Usage Report[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-partner-usage-report) <a href="#list-partner-usage-report" id="list-partner-usage-report"></a>

Gets a partner usage report for a particular month and year

GET `/partner/v1/billing/usage/{year}/{month}`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| X-Partner-ID  | String (?)    | Partner ID                                                                                                                                                                                                            |
| Month\*       | String (?)    | Month of the year                                                                                                                                                                                                     |
| Year\*        | String (?)    | Year                                                                                                                                                                                                                  |
| Fields        | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Contact Email | String (?)    | Tenant email for contact                                                                                                                                                                                              |
| Tenant\*      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

### Partner Role Management

#### List Partner Roles[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-partner-roles) <a href="#list-partner-roles" id="list-partner-roles"></a>

List all partner roles

GET `/partner/v1/roles`

| Key            | Type       | Description                                |
| -------------- | ---------- | ------------------------------------------ |
| X-Partner-ID   | String (?) | Partner ID                                 |
| Type           | String (?) | Role type                                  |
| Principal Type | String     | Principal type of role                     |
| Fields         | String (?) | The fields to return in a partial response |

#### Create Partner Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-partner-role) <a href="#create-partner-role" id="create-partner-role"></a>

Create a new partner role

POST `/partner/v1/roles`

| Key             | Type       | Description                                |
| --------------- | ---------- | ------------------------------------------ |
| X-Partner-ID    | String (?) | Partner ID                                 |
| Fields          | String (?) | The fields to return in a partial response |
| Name            | String (?) | Role name                                  |
| Description     | String (?) | Group description                          |
| Principal Type  | String     | Principal type of role                     |
| Permission Sets | String (?) | List of permission sets                    |

#### Get Partner Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-partner-role) <a href="#get-partner-role" id="get-partner-role"></a>

Get a partner role by ID

GET `/partner/v1/roles/{roleId}`

| Key            | Type                | Description                                |
| -------------- | ------------------- | ------------------------------------------ |
| X-Partner-ID   | String (?)          | Partner ID                                 |
| Partner Role\* | Sophos Partner Role | Role ID                                    |
| Fields         | String (?)          | The fields to return in a partial response |

#### Delete Partner Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-partner-role) <a href="#delete-partner-role" id="delete-partner-role"></a>

Delete a partner role by ID

DELETE `/partner/v1/roles/{roleId}`

| Key            | Type                | Description |
| -------------- | ------------------- | ----------- |
| X-Partner-ID   | String (?)          | Partner ID  |
| Partner Role\* | Sophos Partner Role | Role ID     |

#### Update Partner Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-partner-role) <a href="#update-partner-role" id="update-partner-role"></a>

Update an existing partner role

PATCH `/partner/v1/roles/{roleId}`

| Key             | Type                | Description                                |
| --------------- | ------------------- | ------------------------------------------ |
| X-Partner-ID    | String (?)          | Partner ID                                 |
| Partner Role\*  | Sophos Partner Role | Role ID                                    |
| Fields          | String (?)          | The fields to return in a partial response |
| Name            | String (?)          | Role name                                  |
| Description     | String (?)          | Group description                          |
| Permission Sets | String (?)          | List of permission sets                    |

#### Get Partner Role Permission Sets[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-partner-role-permission-sets) <a href="#get-partner-role-permission-sets" id="get-partner-role-permission-sets"></a>

Get permission set details for a Partner Role

GET `/partner/v1/roles/permission-sets`

| Key                    | Type       | Description                                          |
| ---------------------- | ---------- | ---------------------------------------------------- |
| X-Partner-ID           | String (?) | Partner ID                                           |
| Fields                 | String (?) | The fields to return in a partial response           |
| Type                   | String (?) | Permission set type                                  |
| Product                | Array      | Alerts for a product. You can query by product types |
| Access                 | String     | Access level of permission set                       |
| Allowed In Custom Role | String (?) | Filter permissions sets allowed in custom roles      |
| Principal Type         | String     | Principal type of role                               |

### Peripheral Control

#### List Peripherals[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-peripherals) <a href="#list-peripherals" id="list-peripherals"></a>

Get all the peripherals

GET `/endpoint/v1/settings/peripheral-control/peripherals`

| Key             | Type          | Description                                                                                                                                                                                                           |
| --------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Last Seen After | String (?)    | Find endpoints that were last seen after the given date and time (UTC) or a duration relative to the current date and time (inclusive).                                                                               |
| Type            | String (?)    | One or more peripheral types to include                                                                                                                                                                               |

#### Get Peripheral[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-peripheral) <a href="#get-peripheral" id="get-peripheral"></a>

Get a peripheral by ID

GET `/endpoint/v1/settings/peripheral-control/peripherals/{peripheralId}`

| Key          | Type              | Description                                                                                                                                                                                                           |
| ------------ | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant     | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Peripheral\* | Sophos Peripheral | None Provided                                                                                                                                                                                                         |

### Policy Management

#### List Policies[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-policies) <a href="#list-policies" id="list-policies"></a>

List the policies of a tenant

GET `/endpoint/v1/policies`

| Key         | Type          | Description                                                                                                                                                                                                           |
| ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type | String        | Policy type                                                                                                                                                                                                           |
| Fields      | String (?)    | The fields to return in a partial response                                                                                                                                                                            |

#### Create Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-policy) <a href="#create-policy" id="create-policy"></a>

Create a new policy

POST `/endpoint/v1/policies`

| Key          | Type          | Description                                                                                                                                                                                                           |
| ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Name\*       | String (?)    | Policy name                                                                                                                                                                                                           |
| Type\*       | String (?)    | Policy type                                                                                                                                                                                                           |
| Priority\*   | String (?)    | Policy priority                                                                                                                                                                                                       |
| Enabled      | String (?)    | Whether Tamper Protection should be turned on for the endpoint                                                                                                                                                        |
| Disable At\* | String (?)    | When the policy should be turned off                                                                                                                                                                                  |
| Applies To\* | String (?)    | None Provided                                                                                                                                                                                                         |
| Settings     | String (?)    | Settings for this object                                                                                                                                                                                              |

#### Get Policy Setting Metadata[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-policy-setting-metadata) <a href="#get-policy-setting-metadata" id="get-policy-setting-metadata"></a>

Get a list of metadata for the policy settings

GET `/endpoint/v1/policies/settings`

| Key         | Type          | Description                                                                                                                                                                                                           |
| ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type | String        | Policy type                                                                                                                                                                                                           |

#### Get Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-policy) <a href="#get-policy" id="get-policy"></a>

Gets a policy's details

GET `/endpoint/v1/policies/{policyId}`

| Key      | Type          | Description                                                                                                                                                                                                           |
| -------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant   | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\* | Sophos Policy | None Provided                                                                                                                                                                                                         |

#### Update Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-policy) <a href="#update-policy" id="update-policy"></a>

Update policy. Note you can only change the settings for a base policy

PATCH `/endpoint/v1/policies/{policyId}`

| Key          | Type          | Description                                                                                                                                                                                                           |
| ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\*     | Sophos Policy | None Provided                                                                                                                                                                                                         |
| Name         | String (?)    | Policy name                                                                                                                                                                                                           |
| Priority\*   | String (?)    | Policy priority                                                                                                                                                                                                       |
| Enabled      | String (?)    | Whether Tamper Protection should be turned on for the endpoint                                                                                                                                                        |
| Disable At\* | String (?)    | When the policy should be turned off                                                                                                                                                                                  |
| Applies To\* | String (?)    | None Provided                                                                                                                                                                                                         |
| Settings     | String (?)    | Settings for this object                                                                                                                                                                                              |

#### Delete Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-policy) <a href="#delete-policy" id="delete-policy"></a>

Deletes a policy

DELETE `/endpoint/v1/policies/{policyId}`

| Key      | Type          | Description                                                                                                                                                                                                           |
| -------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant   | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\* | Sophos Policy | None Provided                                                                                                                                                                                                         |

#### List Policy Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-policy-settings) <a href="#list-policy-settings" id="list-policy-settings"></a>

Gets a list of policy settings

GET `/endpoint/v1/policies/{policyId}/settings`

| Key      | Type          | Description                                                                                                                                                                                                           |
| -------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant   | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\* | Sophos Policy | None Provided                                                                                                                                                                                                         |

#### Update Policy Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-policy-settings) <a href="#update-policy-settings" id="update-policy-settings"></a>

Updates policy settings

PATCH `/endpoint/v1/policies/{policyId}/settings`

| Key      | Type          | Description                                                                                                                                                                                                           |
| -------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant   | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\* | Sophos Policy | None Provided                                                                                                                                                                                                         |

ordereddict(\[('description', 'Keys have specific names documented [here](https://developer.sophos.com/endpoint-policy-settings-all)'), ('type', 'object'), ('x-anchor-description', 'JSON Schema `object` data type')])

#### Reset All Settings For A Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#reset-all-settings-for-a-policy) <a href="#reset-all-settings-for-a-policy" id="reset-all-settings-for-a-policy"></a>

Reset policy settings

POST `/endpoint/v1/policies/{policyId}/settings/reset`

| Key      | Type          | Description                                                                                                                                                                                                           |
| -------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant   | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\* | Sophos Policy | None Provided                                                                                                                                                                                                         |

#### Get Policy Setting Value[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-policy-setting-value) <a href="#get-policy-setting-value" id="get-policy-setting-value"></a>

Get the value of a setting key in a policy

GET `/endpoint/v1/policies/{policyId}/settings/{settingKey}`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\*      | Sophos Policy | None Provided                                                                                                                                                                                                         |
| Setting Key\* | String (?)    | Setting key                                                                                                                                                                                                           |

#### Reset Single Policy Setting[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#reset-single-policy-setting) <a href="#reset-single-policy-setting" id="reset-single-policy-setting"></a>

Reset a setting to its default value

POST `/endpoint/v1/policies/{policyId}/settings/{settingKey}/reset`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\*      | Sophos Policy | None Provided                                                                                                                                                                                                         |
| Setting Key\* | String (?)    | Setting key                                                                                                                                                                                                           |

#### Clone Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#clone-policy) <a href="#clone-policy" id="clone-policy"></a>

Clone a policy

POST `/endpoint/v1/policies/{policyId}/clone`

| Key      | Type          | Description                                                                                                                                                                                                           |
| -------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant   | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy\* | Sophos Policy | None Provided                                                                                                                                                                                                         |
| Name     | String (?)    | Name of the newly cloned policy                                                                                                                                                                                       |

#### Get Base Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-base-policy) <a href="#get-base-policy" id="get-base-policy"></a>

Get base policy for a policy type

GET `/endpoint/v1/policies/{policyType}/base`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |

#### Update Base Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-base-policy) <a href="#update-base-policy" id="update-base-policy"></a>

Update base policy. Note that only settings can be changed

PATCH `/endpoint/v1/policies/{policyType}/base`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |
| Settings      | String (?)    | Settings for this object                                                                                                                                                                                              |

#### Get Base Policy Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-base-policy-settings) <a href="#get-base-policy-settings" id="get-base-policy-settings"></a>

Get settings of the base policy for a policy type

GET `/endpoint/v1/policies/{policyType}/base/settings`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |

#### Update Base Policy Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-base-policy-settings) <a href="#update-base-policy-settings" id="update-base-policy-settings"></a>

Update settings in the base policy for a policy type

PATCH `/endpoint/v1/policies/{policyType}/base/settings`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |

ordereddict(\[('description', 'Keys have specific names documented [here](https://developer.sophos.com/endpoint-policy-settings-all)'), ('type', 'object'), ('x-anchor-description', 'JSON Schema `object` data type')])

#### Reset Base Policy Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#reset-base-policy-settings) <a href="#reset-base-policy-settings" id="reset-base-policy-settings"></a>

Reset the settings in a base policy

POST `/endpoint/v1/policies/{policyType}/base/settings/reset`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |

#### Get Base Policy Setting[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-base-policy-setting) <a href="#get-base-policy-setting" id="get-base-policy-setting"></a>

Get the value of a setting in the base policy for a policy type

GET `/endpoint/v1/policies/{policyType}/base/settings/{settingKey}`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |
| Setting Key\* | String (?)    | Setting key                                                                                                                                                                                                           |

#### Update Base Policy Setting[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-base-policy-setting) <a href="#update-base-policy-setting" id="update-base-policy-setting"></a>

Update a setting in the base policy

PATCH `/endpoint/v1/policies/{policyType}/base/settings/{settingKey}`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |
| Setting Key\* | String (?)    | Setting key                                                                                                                                                                                                           |

#### Reset Setting In Base Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#reset-setting-in-base-policy) <a href="#reset-setting-in-base-policy" id="reset-setting-in-base-policy"></a>

Reset a setting in the base policy to its default value

POST `/endpoint/v1/policies/{policyType}/base/settings/{settingKey}/reset`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |
| Setting Key\* | String (?)    | Setting key                                                                                                                                                                                                           |

#### Clone Base Policy[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#clone-base-policy) <a href="#clone-base-policy" id="clone-base-policy"></a>

Clone a new policy from the base policy for a policy type

POST `/endpoint/v1/policies/{policyType}/base/clone`

| Key           | Type          | Description                                                                                                                                                                                                           |
| ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Policy Type\* | String        | Policy type                                                                                                                                                                                                           |
| Name          | String (?)    | Name of the newly cloned policy                                                                                                                                                                                       |

### Scanning Exclusions

#### List Scanning Exclusions[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-scanning-exclusions) <a href="#list-scanning-exclusions" id="list-scanning-exclusions"></a>

List scanning exclusions

GET `/endpoint/v1/settings/exclusions/scanning`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Type   | String (?)    | Scanning Exclusion type                                                                                                                                                                                               |

#### Add Scanning Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-scanning-exclusion) <a href="#add-scanning-exclusion" id="add-scanning-exclusion"></a>

Add a new scanning exclusion

POST `/endpoint/v1/settings/exclusions/scanning`

| Key         | Type          | Description                                                                                                                                                                                                                                                  |
| ----------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Tenant      | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field.                                        |
| Value\*     | String (?)    | Exclusion value                                                                                                                                                                                                                                              |
| Type\*      | String (?)    | Scanning exclusion type                                                                                                                                                                                                                                      |
| Scan Mode\* | String (?)    | Default value of scan mode is \\"onDemandAndOnAccess\\" for exclusions of type path, posixPath and virtualPath, \\"onAccess\\" for process, web, pua, amsi. Behavioral and Detected Exploits (exploitMitigation) type exclusions do not support a scan mode. |
| Comment\*   | String (?)    | Comment indicating why the item should be allowed                                                                                                                                                                                                            |

#### Get Scanning Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-scanning-exclusion) <a href="#get-scanning-exclusion" id="get-scanning-exclusion"></a>

Get a scanning exclusion by ID

GET `/endpoint/v1/settings/exclusions/scanning/{exclusionId}`

| Key                  | Type                      | Description                                                                                                                                                                                                           |
| -------------------- | ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant               | Sophos Tenant             | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Scanning Exclusion\* | Sophos Scanning Exclusion | Exclusion ID                                                                                                                                                                                                          |

#### Update Scanning Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-scanning-exclusion) <a href="#update-scanning-exclusion" id="update-scanning-exclusion"></a>

Update a scanning exclusion by ID

PATCH `/endpoint/v1/settings/exclusions/scanning/{exclusionId}`

| Key                  | Type                      | Description                                                                                                                                                                                                                                                  |
| -------------------- | ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Tenant               | Sophos Tenant             | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field.                                        |
| Scanning Exclusion\* | Sophos Scanning Exclusion | Exclusion ID                                                                                                                                                                                                                                                 |
| Value\*              | String (?)                | Exclusion value                                                                                                                                                                                                                                              |
| Scan Mode\*          | String (?)                | Default value of scan mode is \\"onDemandAndOnAccess\\" for exclusions of type path, posixPath and virtualPath, \\"onAccess\\" for process, web, pua, amsi. Behavioral and Detected Exploits (exploitMitigation) type exclusions do not support a scan mode. |
| Comment\*            | String (?)                | Comment indicating why the item should be allowed                                                                                                                                                                                                            |

#### Delete Scanning Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-scanning-exclusion) <a href="#delete-scanning-exclusion" id="delete-scanning-exclusion"></a>

Deletes a scanning exclusion

DELETE `/endpoint/v1/settings/exclusions/scanning/{exclusionId}`

| Key                  | Type                      | Description                                                                                                                                                                                                           |
| -------------------- | ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant               | Sophos Tenant             | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Scanning Exclusion\* | Sophos Scanning Exclusion | Exclusion ID                                                                                                                                                                                                          |

### Scans

#### Scan Endpoint[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#scan-endpoint) <a href="#scan-endpoint" id="scan-endpoint"></a>

Sends a request to the specified endpoint to perform or configure a scan

POST `/endpoint/v1/endpoints/{endpointId}/scans`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint\* | Sophos Endpoint | None Provided                                                                                                                                                                                                         |

ordereddict(\[('description', 'Request to configure or perform a scan on the endpoint'), ('type', 'object'), ('x-anchor-description', 'JSON Schema `object` data type')])

### Tamper Protection

#### Get Endpoint's Tamper Protection Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-endpoints-tamper-protection-settings) <a href="#get-endpoints-tamper-protection-settings" id="get-endpoints-tamper-protection-settings"></a>

Get Tamper Protection settings for a specified endpoint

GET `/endpoint/v1/endpoints/{endpointId}/tamper-protection`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint\* | Sophos Endpoint | None Provided                                                                                                                                                                                                         |

#### Update Endpoint Tamper Protection Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-endpoint-tamper-protection-settings) <a href="#update-endpoint-tamper-protection-settings" id="update-endpoint-tamper-protection-settings"></a>

Turns Tamper Protection on or off on an endpoint. Or generates a new Tamper Protection password Note that Tamper Protection can be turned on for an endpoint only if it has also been turned on globally.

POST `/endpoint/v1/endpoints/{endpointId}/tamper-protection`

| Key                 | Type            | Description                                                                                                                                                                                                           |
| ------------------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant              | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint\*          | Sophos Endpoint | None Provided                                                                                                                                                                                                         |
| Enabled             | String (?)      | Whether Tamper Protection should be turned on for the endpoint                                                                                                                                                        |
| Regenerate Password | String (?)      | Whether a new Tamper Protection password should be generated                                                                                                                                                          |

### Tenant Access

#### List Tenant Admins[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-tenant-admins) <a href="#list-tenant-admins" id="list-tenant-admins"></a>

List all tenant admins

GET `/common/v1/admins`

| Key           | Type               | Description                                                                                                                                                                                                           |
| ------------- | ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant      | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Sort          | Array              | Defines how to sort the data                                                                                                                                                                                          |
| Fields        | String (?)         | The fields to return in a partial response                                                                                                                                                                            |
| Search        | String (?)         | Search for items that match the given terms                                                                                                                                                                           |
| Search Fields | Array              | Search only within the specified fields, username field is default if search query is specified                                                                                                                       |
| Tenant Role   | Sophos Tenant Role | Role ID                                                                                                                                                                                                               |

#### Create Tenant Admin[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-tenant-admin) <a href="#create-tenant-admin" id="create-tenant-admin"></a>

Create a tenant admin from a directory user

POST `/common/v1/admins`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Fields | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| User   | Sophos User   | None Provided                                                                                                                                                                                                         |

#### Get Tenant Admin[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-tenant-admin) <a href="#get-tenant-admin" id="get-tenant-admin"></a>

Get admin details by ID

GET `/common/v1/admins/{adminId}`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Admin\* | Sophos Tenant Admin | Admin ID                                                                                                                                                                                                              |
| Fields         | String (?)          | The fields to return in a partial response                                                                                                                                                                            |

#### Delete Tenant Admin[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-tenant-admin) <a href="#delete-tenant-admin" id="delete-tenant-admin"></a>

Remove an admin by ID

DELETE `/common/v1/admins/{adminId}`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Admin\* | Sophos Tenant Admin | Admin ID                                                                                                                                                                                                              |

#### List All Roles For Admin[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-all-roles-for-admin) <a href="#list-all-roles-for-admin" id="list-all-roles-for-admin"></a>

Get the list of role assignments for a given admin

GET `/common/v1/admins/{adminId}/role-assignments`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Admin\* | Sophos Tenant Admin | Admin ID                                                                                                                                                                                                              |

#### Assign A Role To A Tenant Admin[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#assign-a-role-to-a-tenant-admin) <a href="#assign-a-role-to-a-tenant-admin" id="assign-a-role-to-a-tenant-admin"></a>

Assign a role of principal type "user" to a tenant admin Any existing assignment is overridden

POST `/common/v1/admins/{adminId}/role-assignments`

| Key            | Type                | Description                                                                                                                                                                                                           |
| -------------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant       | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Admin\* | Sophos Tenant Admin | Admin ID                                                                                                                                                                                                              |
| Tenant Role    | Sophos Tenant Role  | Role ID                                                                                                                                                                                                               |

#### Get Specific Tenant Admin's Role Information[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-specific-tenant-admins-role-information) <a href="#get-specific-tenant-admins-role-information" id="get-specific-tenant-admins-role-information"></a>

Get tenant admin role assignment information by ID

GET `/common/v1/admins/{adminId}/role-assignments/{assignmentId}`

| Key                      | Type                          | Description                                                                                                                                                                                                           |
| ------------------------ | ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                   | Sophos Tenant                 | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Admin\*           | Sophos Tenant Admin           | Admin ID                                                                                                                                                                                                              |
| Tenant Role Assignment\* | Sophos Tenant Role Assignment | Role Assignment ID                                                                                                                                                                                                    |

#### Remove Tenant Admin Role Assignment[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove-tenant-admin-role-assignment) <a href="#remove-tenant-admin-role-assignment" id="remove-tenant-admin-role-assignment"></a>

Remove role assignment from an admin account

DELETE `/common/v1/admins/{adminId}/role-assignments/{assignmentId}`

| Key                      | Type                          | Description                                                                                                                                                                                                           |
| ------------------------ | ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                   | Sophos Tenant                 | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Admin\*           | Sophos Tenant Admin           | Admin ID                                                                                                                                                                                                              |
| Tenant Role Assignment\* | Sophos Tenant Role Assignment | Role Assignment ID                                                                                                                                                                                                    |

***

#### Role Assignment[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#role-assignment) <a href="#role-assignment" id="role-assignment"></a>

| Key    | Type       | Description |
| ------ | ---------- | ----------- |
| roleId | String (?) | Role UUID   |

### Tenant Role Management

#### List Tenant Roles[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-tenant-roles) <a href="#list-tenant-roles" id="list-tenant-roles"></a>

List all roles in the tenant

GET `/common/v1/roles`

| Key            | Type          | Description                                                                                                                                                                                                           |
| -------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant         | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Type           | String (?)    | Role type                                                                                                                                                                                                             |
| Principal Type | String        | Principal type of role                                                                                                                                                                                                |
| Fields         | String (?)    | The fields to return in a partial response                                                                                                                                                                            |

#### Create Tenant Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-tenant-role) <a href="#create-tenant-role" id="create-tenant-role"></a>

Create a new tenant role

POST `/common/v1/roles`

| Key             | Type          | Description                                                                                                                                                                                                           |
| --------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Fields          | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Name            | String (?)    | Role name                                                                                                                                                                                                             |
| Description     | String (?)    | Group description                                                                                                                                                                                                     |
| Principal Type  | String        | Principal type of role                                                                                                                                                                                                |
| Permission Sets | String (?)    | List of permission sets                                                                                                                                                                                               |

#### Get Tenant Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-tenant-role) <a href="#get-tenant-role" id="get-tenant-role"></a>

Get Tenant Role by ID

GET `/common/v1/roles/{roleId}`

| Key           | Type               | Description                                                                                                                                                                                                           |
| ------------- | ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant      | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Role\* | Sophos Tenant Role | Role ID                                                                                                                                                                                                               |
| Fields        | String (?)         | The fields to return in a partial response                                                                                                                                                                            |

#### Delete Tenant Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-tenant-role) <a href="#delete-tenant-role" id="delete-tenant-role"></a>

Delete a tenant role by ID

DELETE `/common/v1/roles/{roleId}`

| Key           | Type               | Description                                                                                                                                                                                                           |
| ------------- | ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant        | Sophos Tenant      | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Role\* | Sophos Tenant Role | Role ID                                                                                                                                                                                                               |

#### Update Tenant Role[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-tenant-role) <a href="#update-tenant-role" id="update-tenant-role"></a>

Update an existing tenant role

PATCH `/common/v1/roles/{roleId}`

| Key             | Type               | Description                                                                                                                                                                                                           |
| --------------- | ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant          | Sophos Tenant      | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Tenant Role\*   | Sophos Tenant Role | Role ID                                                                                                                                                                                                               |
| Fields          | String (?)         | The fields to return in a partial response                                                                                                                                                                            |
| Name            | String (?)         | Role name                                                                                                                                                                                                             |
| Description     | String (?)         | Group description                                                                                                                                                                                                     |
| Permission Sets | String (?)         | List of permission sets                                                                                                                                                                                               |

#### List Tenant Role Permission Sets[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-tenant-role-permission-sets) <a href="#list-tenant-role-permission-sets" id="list-tenant-role-permission-sets"></a>

Get permission set details for roles

GET `/common/v1/roles/permission-sets`

| Key                    | Type          | Description                                                                                                                                                                                                           |
| ---------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant                 | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Fields                 | String (?)    | The fields to return in a partial response                                                                                                                                                                            |
| Type                   | String (?)    | Permission set type                                                                                                                                                                                                   |
| Product                | Array         | Alerts for a product. You can query by product types                                                                                                                                                                  |
| Access                 | String        | Access level of permission set                                                                                                                                                                                        |
| Allowed In Custom Role | String (?)    | Filter permissions sets allowed in custom roles                                                                                                                                                                       |
| Principal Type         | String        | Principal type of role                                                                                                                                                                                                |

### Tenants

#### Create Tenant[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#create-tenant) <a href="#create-tenant" id="create-tenant"></a>

Create a new tenant

POST `/partner/v1/tenants`

| Key          | Type       | Description                                |
| ------------ | ---------- | ------------------------------------------ |
| X-Partner-ID | String (?) | Partner ID                                 |
| Fields       | String (?) | The fields to return in a partial response |
| Show As      | String (?) | Tenant display name                        |

True True| required | | None Provided | | Name\* | String (?) | Tenant name. This cannot be changed after the tenant has been created | | Data Geography | String (?) | Geographical location where the tenant data is stored | | Billing Type | String (?) | Billing type |

#### List Tenants[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-tenants) <a href="#list-tenants" id="list-tenants"></a>

List all the tenants for a partner

GET `/partner/v1/tenants`

| Key          | Type       | Description                                |
| ------------ | ---------- | ------------------------------------------ |
| X-Partner-ID | String (?) | Partner ID                                 |
| Fields       | String (?) | The fields to return in a partial response |

#### Get Tenant[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-tenant) <a href="#get-tenant" id="get-tenant"></a>

Get a tenant by ID

GET `/partner/v1/tenants/{tenantId}`

| Key          | Type          | Description                                                                                                                                                                                                           |
| ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| X-Partner-ID | String (?)    | Partner ID                                                                                                                                                                                                            |
| Tenant\*     | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Fields       | String (?)    | The fields to return in a partial response                                                                                                                                                                            |

***

#### Contact[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#contact) <a href="#contact" id="contact"></a>

| Key       | Type       | Description   |
| --------- | ---------- | ------------- |
| firstName | String (?) | None Provided |
| lastName  | String (?) | None Provided |
| Email     | String (?) | None Provided |
| phone     | String (?) | None Provided |
| mobile    | String (?) | None Provided |
| fax       | String (?) | None Provided |
| address   | String (?) | None Provided |

### Update Checks

#### Request Endpoint Update Check[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#request-endpoint-update-check) <a href="#request-endpoint-update-check" id="request-endpoint-update-check"></a>

Sends a request to the endpoint to check for Sophos management agent software updates

POST `/endpoint/v1/endpoints/{endpointId}/update-checks`

| Key        | Type            | Description                                                                                                                                                                                                           |
| ---------- | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant     | Sophos Tenant   | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Endpoint\* | Sophos Endpoint | None Provided                                                                                                                                                                                                         |

ordereddict(\[('description', 'Request to the endpoint to check for updates to the Sophos agent software and protection data'), ('type', 'object'), ('x-anchor-description', 'JSON Schema `object` data type')])

### Web Controls

#### List Local Sites[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-local-sites) <a href="#list-local-sites" id="list-local-sites"></a>

Get all sites for the tenant

GET `/endpoint/v1/settings/web-control/local-sites`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Add Local Site Exclusion[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#add-local-site-exclusion) <a href="#add-local-site-exclusion" id="add-local-site-exclusion"></a>

Adds a new local site to your exclusions

POST `/endpoint/v1/settings/web-control/local-sites`

| Key              | Type                    | Description                                                                                                                                                                                                           |
| ---------------- | ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant           | Sophos Tenant           | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Website Category | Sophos Website Category | Category associated with this local site.                                                                                                                                                                             |
| Tags             | Array                   | Array of tags associated with this local site setting. Either `categoryId` or `tags` must be provided                                                                                                                 |

True True| required | | None Provided | | URL | String (?) | None Provided | | Comment\* | String (?) | Comment indicating why the item should be allowed |

#### Get Local Site[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#get-local-site) <a href="#get-local-site" id="get-local-site"></a>

Get a local site by ID

GET `/endpoint/v1/settings/web-control/local-sites/{localSiteId}`

| Key          | Type          | Description                                                                                                                                                                                                           |
| ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Local Site\* | String (?)    | Local site ID                                                                                                                                                                                                         |

#### Update Local Site[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-local-site) <a href="#update-local-site" id="update-local-site"></a>

Update a local site definition

PATCH `/endpoint/v1/settings/web-control/local-sites/{localSiteId}`

| Key              | Type                    | Description                                                                                                                                                                                                           |
| ---------------- | ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant           | Sophos Tenant           | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Local Site\*     | String (?)              | Local site ID                                                                                                                                                                                                         |
| Website Category | Sophos Website Category | Category associated with this local site.                                                                                                                                                                             |
| Tags             | Array                   | Array of tags associated with this local site setting. Either `categoryId` or `tags` must be provided                                                                                                                 |
| URL              | String (?)              | None Provided                                                                                                                                                                                                         |
| Comment\*        | String (?)              | Comment indicating why the item should be allowed                                                                                                                                                                     |

#### Delete Local Site[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#delete-local-site) <a href="#delete-local-site" id="delete-local-site"></a>

Deletes the specified local site

DELETE `/endpoint/v1/settings/web-control/local-sites/{localSiteId}`

| Key          | Type          | Description                                                                                                                                                                                                           |
| ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant       | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Local Site\* | String (?)    | Local site ID                                                                                                                                                                                                         |

#### List Web Categories[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-web-categories) <a href="#list-web-categories" id="list-web-categories"></a>

Get all Web Control categories

GET `/endpoint/v1/settings/web-control/categories`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### List SSL/Tls Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-ssltls-settings) <a href="#list-ssltls-settings" id="list-ssltls-settings"></a>

Get settings for SSL/TLS decryption of HTTPS websites

GET `/endpoint/v1/settings/web-control/tls-decryption`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Update SSL/Tls Settings[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-ssltls-settings) <a href="#update-ssltls-settings" id="update-ssltls-settings"></a>

Update settings for SSL/TLS decryption of HTTPS websites

PATCH `/endpoint/v1/settings/web-control/tls-decryption`

| Key     | Type          | Description                                                                                                                                                                                                           |
| ------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant  | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |
| Enabled | String (?)    | Whether Tamper Protection should be turned on for the endpoint                                                                                                                                                        |

#### List SSL/Tls Excluded Sites[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#list-ssltls-excluded-sites) <a href="#list-ssltls-excluded-sites" id="list-ssltls-excluded-sites"></a>

List of websites excluded from SSL/TLS decryption

GET `/endpoint/v1/settings/web-control/tls-decryption/excluded-websites`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Update SSL/Tls Exclusions[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#update-ssltls-exclusions) <a href="#update-ssltls-exclusions" id="update-ssltls-exclusions"></a>

Add and remove websites excluded from SSL/TLS decryption

PATCH `/endpoint/v1/settings/web-control/tls-decryption/excluded-websites`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

#### Clear SSL/Tls Website Exclusions[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#clear-ssltls-website-exclusions) <a href="#clear-ssltls-website-exclusions" id="clear-ssltls-website-exclusions"></a>

Clears the list of websites excluded from SSL/TLS decryption

DELETE `/endpoint/v1/settings/web-control/tls-decryption/excluded-websites`

| Key    | Type          | Description                                                                                                                                                                                                           |
| ------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tenant | Sophos Tenant | The Tenant that you want to perform the action on. If you are a partner account, you must specify the tenant IDof the tenant you want to perform the action on. If you are a tenant account, you can omit this field. |

***

#### Category[​](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#category) <a href="#category" id="category"></a>

| Key               | Type       | Description                                                    |
| ----------------- | ---------- | -------------------------------------------------------------- |
| id                | String (?) | Web decryption category ID matching the Web Control categories |
| decryptionEnabled | String (?) | Whether web decryption is enabled on websites in this category |

***

**Websitestoadd**[**​**](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#websitestoadd)

| Key     | Type       | Description                                    |
| ------- | ---------- | ---------------------------------------------- |
| value   | String (?) | Website IP address, IP address range or domain |
| comment | String (?) | Comment indicating why the site was excluded   |

***

**Remove**[**​**](http://localhost:3000/docs/integrations/Security/Sophos/security-sophos-integration#remove)

| Key     | Type       | Description                                    |
| ------- | ---------- | ---------------------------------------------- |
| value   | String (?) | Website IP address, IP address range or domain |
| comment | String (?) | Comment indicating why the site was excluded   |
