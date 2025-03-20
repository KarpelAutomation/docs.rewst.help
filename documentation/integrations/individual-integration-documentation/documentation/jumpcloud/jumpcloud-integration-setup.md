# JumpCloud Integration Setup

Integrating Rewst with JumpCloud offers users a powerful combination of IT documentation and cloud directory services. With this integration, Rewst users can seamlessly leverage JumpCloud's comprehensive identity and access management capabilities within the Rewst platform. Users can efficiently manage user accounts, access permissions, and authentication processes, all while maintaining a centralized documentation repository in Rewst. This integration streamlines IT operations, enhances security, and simplifies user management, providing a seamless experience for managing identities and accessing IT documentation within the Rewst platform.

## Setup[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#setup) <a href="#setup" id="setup"></a>

### Jumpcloud Setup[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#jumpcloud-setup) <a href="#jumpcloud-setup" id="jumpcloud-setup"></a>

1. **Log in** to the [JumpCloud Console](https://console.jumpcloud.com/).
2. **Click** on your User Icon to reveal the user settings menu.
3. **Click** "My API Key".
4. **Copy** the API Key.

To access multiple organizations with this integration you must also:

* Have access to the JumpCloud Multi-Tenant Portal
* Define a default organization ID in the integration configuration form in Rewst
* Map organizations to their JumpCloud counterparts in Rewst

[Click here](https://support.jumpcloud.com/support/s/article/FAQ-for-Managed-Service-Providers#how-partner1) for more information about multi-tenancy in JumpCloud.

### Rewst Setup[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#rewst-setup) <a href="#rewst-setup" id="rewst-setup"></a>

1. **Navigate** to the integrations page in [Rewst](https://app.rewst.io/).
2. **Click** on the JumpCloud integration.
3. **Fill out** the configuration form using the API key generated in JumpCloud.
4. (Optional) **Define** a default organization ID in the configuration form.
5. **Save** the configuration form.
6. **Map** Rewst organizations to their JumpCloud counterparts in Rewst.

## Actions

### Groups

#### List User Groups[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#list-user-groups) <a href="#list-user-groups" id="list-user-groups"></a>

**Request - List User Groups**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---list-user-groups)

GET `/v2/usergroups`

| Key      | Type                      | Description                          |
| -------- | ------------------------- | ------------------------------------ |
| x-org-id | Jumpcloud Organization ID | None Provided                        |
| fields   | String (?)                | The fields to return in the response |

#### Add User To Group[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#add-user-to-group) <a href="#add-user-to-group" id="add-user-to-group"></a>

Adds a user to specified group

**Request - Add User To Group**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---add-user-to-group)

POST `/v2/usergroups/{group_id}/members`

| Key         | Type                      | Description   |
| ----------- | ------------------------- | ------------- |
| x-org-id    | Jumpcloud Organization ID | None Provided |
| group\_id\* | Jumpcloud Group ID        | None Provided |
| id\*        | Jumpcloud User ID         | None Provided |
| type        | String (?)                | None Provided |
| op          | String (?)                | None Provided |

#### Remove User From Group[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#remove-user-from-group) <a href="#remove-user-from-group" id="remove-user-from-group"></a>

Removes a user to specified group

**Request - Remove User From Group**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---remove-user-from-group)

POST `/v2/usergroups/{group_id}/members`

| Key         | Type                      | Description   |
| ----------- | ------------------------- | ------------- |
| x-org-id    | Jumpcloud Organization ID | None Provided |
| group\_id\* | Jumpcloud Group ID        | None Provided |
| id\*        | Jumpcloud User ID         | None Provided |
| type        | String (?)                | None Provided |
| op          | String (?)                | None Provided |

***

#### Objects - Group[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#objects---group) <a href="#objects---group" id="objects---group"></a>

**Filter**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#filter)

| Key      | Type       | Description   |
| -------- | ---------- | ------------- |
| field    | String     | None Provided |
| operator | String     | None Provided |
| value    | String (?) | None Provided |

### Users

#### Get User[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#get-user) <a href="#get-user" id="get-user"></a>

Gets user by user ID

**Request - Get User**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---get-user)

GET `/systemusers?filter=_id:$eq:{user_id}`

| Key        | Type                   | Description   |
| ---------- | ---------------------- | ------------- |
| x-org-id   | Jumpcloud Organization | None Provided |
| user\_id\* | Jumpcloud User ID      | None Provided |

#### Create User[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#create-user) <a href="#create-user" id="create-user"></a>

**Request - Create User**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---create-user)

POST `/systemusers`

| Key                                  | Type                      | Description   |
| ------------------------------------ | ------------------------- | ------------- |
| x-org-id                             | Jumpcloud Organization ID | None Provided |
| username\*                           | String (?)                | None Provided |
| email\*                              | String (?)                | None Provided |
| account\_locked                      | String (?)                | None Provided |
| activated                            | String (?)                | None Provided |
| allow\_public\_key                   | String (?)                | None Provided |
| alternateEmail                       | String (?)                | None Provided |
| company                              | String (?)                | None Provided |
| costCenter                           | String (?)                | None Provided |
| department                           | String (?)                | None Provided |
| description                          | String (?)                | None Provided |
| disableDeviceMaxLoginAttempts        | String (?)                | None Provided |
| displayname                          | String (?)                | None Provided |
| employeeIdentifier                   | String (?)                | None Provided |
| employeeType                         | String (?)                | None Provided |
| enable\_managed\_uid                 | String (?)                | None Provided |
| enable\_user\_portal\_multifactor    | String (?)                | None Provided |
| external\_dn                         | String (?)                | None Provided |
| external\_password\_expiration\_date | String (?)                | None Provided |
| external\_source\_type               | String (?)                | None Provided |
| externally\_managed                  | String (?)                | None Provided |
| firstname                            | String (?)                | None Provided |
| middlename                           | String (?)                | None Provided |
| lastname                             | String (?)                | None Provided |
| jobTitle                             | String (?)                | None Provided |
| ldap\_binding\_user                  | String (?)                | None Provided |
| location                             | String (?)                | None Provided |
| managedAppleId                       | String (?)                | None Provided |
| manager                              | String (?)                | None Provided |
| mfa                                  | String (?)                | None Provided |
| password                             | String (?)                | None Provided |
| password\_never\_expires             | String (?)                | None Provided |
| passwordless\_sudo                   | String (?)                | None Provided |
| public\_key                          | String (?)                | None Provided |
| samba\_service\_user                 | String (?)                | None Provided |
| state                                | String                    | None Provided |
| sudo                                 | String (?)                | None Provided |
| suspended                            | String (?)                | None Provided |
| tags                                 | String (?)                | None Provided |
| unix\_guid                           | String (?)                | None Provided |
| unix\_uid                            | String (?)                | None Provided |

#### Delete User[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#delete-user) <a href="#delete-user" id="delete-user"></a>

Delete user by user ID

**Request - Delete User**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---delete-user)

DELETE `/systemusers/{user_id}`

| Key        | Type                      | Description   |
| ---------- | ------------------------- | ------------- |
| x-org-id   | Jumpcloud Organization ID | None Provided |
| user\_id\* | Jumpcloud User ID         | None Provided |

#### Modify User[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#modify-user) <a href="#modify-user" id="modify-user"></a>

Modify user by user ID

**Request - Modify User**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---modify-user)

PUT `/systemusers/{user_id}`

| Key                                  | Type                      | Description   |
| ------------------------------------ | ------------------------- | ------------- |
| x-org-id                             | Jumpcloud Organization ID | None Provided |
| username\*                           | String (?)                | None Provided |
| email\*                              | String (?)                | None Provided |
| account\_locked                      | String (?)                | None Provided |
| activated                            | String (?)                | None Provided |
| allow\_public\_key                   | String (?)                | None Provided |
| alternateEmail                       | String (?)                | None Provided |
| company                              | String (?)                | None Provided |
| costCenter                           | String (?)                | None Provided |
| department                           | String (?)                | None Provided |
| description                          | String (?)                | None Provided |
| disableDeviceMaxLoginAttempts        | String (?)                | None Provided |
| displayname                          | String (?)                | None Provided |
| employeeIdentifier                   | String (?)                | None Provided |
| employeeType                         | String (?)                | None Provided |
| enable\_managed\_uid                 | String (?)                | None Provided |
| enable\_user\_portal\_multifactor    | String (?)                | None Provided |
| external\_dn                         | String (?)                | None Provided |
| external\_password\_expiration\_date | String (?)                | None Provided |
| external\_source\_type               | String (?)                | None Provided |
| externally\_managed                  | String (?)                | None Provided |
| firstname                            | String (?)                | None Provided |
| middlename                           | String (?)                | None Provided |
| lastname                             | String (?)                | None Provided |
| jobTitle                             | String (?)                | None Provided |
| ldap\_binding\_user                  | String (?)                | None Provided |
| location                             | String (?)                | None Provided |
| managedAppleId                       | String (?)                | None Provided |
| manager                              | String (?)                | None Provided |
| mfa                                  | String (?)                | None Provided |
| password                             | String (?)                | None Provided |
| password\_never\_expires             | String (?)                | None Provided |
| passwordless\_sudo                   | String (?)                | None Provided |
| public\_key                          | String (?)                | None Provided |
| samba\_service\_user                 | String (?)                | None Provided |
| state                                | String                    | None Provided |
| sudo                                 | String (?)                | None Provided |
| suspended                            | String (?)                | None Provided |
| tags                                 | String (?)                | None Provided |
| unix\_guid                           | String (?)                | None Provided |
| unix\_uid                            | String (?)                | None Provided |

#### Assign Manager[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#assign-manager) <a href="#assign-manager" id="assign-manager"></a>

Assigns manager to specified user

**Request - Assign Manager**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---assign-manager)

PUT `/systemusers/{user_id}`

| Key        | Type                      | Description   |
| ---------- | ------------------------- | ------------- |
| x-org-id   | Jumpcloud Organization ID | None Provided |
| user\_id\* | Jumpcloud User ID         | None Provided |
| manager\*  | Jumpcloud Manager ID      | None Provided |

#### Change Password[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#change-password) <a href="#change-password" id="change-password"></a>

Changes the specified user's password

**Request - Change Password**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#request---change-password)

PUT `/systemusers/{user_id}`

| Key        | Type                      | Description   |
| ---------- | ------------------------- | ------------- |
| x-org-id   | Jumpcloud Organization ID | None Provided |
| user\_id\* | Jumpcloud User ID         | None Provided |
| password\* | String (?)                | New password  |

***

#### Objects - User[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#objects---user) <a href="#objects---user" id="objects---user"></a>

**Address**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#address)

| Key             | Type       | Description   |
| --------------- | ---------- | ------------- |
| country         | String (?) | None Provided |
| extendedAddress | String (?) | None Provided |
| locality        | String (?) | None Provided |
| poBox           | String (?) | None Provided |
| postalCode      | String (?) | None Provided |
| region          | String (?) | None Provided |
| streetAddress   | String (?) | None Provided |

***

**Attribute**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#attribute)

| Key   | Type       | Description   |
| ----- | ---------- | ------------- |
| name  | String (?) | None Provided |
| value | String (?) | None Provided |

***

**Phonenumber**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#phonenumber)

| Key   | Type       | Description   |
| ----- | ---------- | ------------- |
| name  | String (?) | None Provided |
| value | String (?) | None Provided |

***

**Recoveryemail**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#recoveryemail)

| Key     | Type       | Description   |
| ------- | ---------- | ------------- |
| address | String (?) | None Provided |

***

**Relationship**[**​**](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#relationship)

| Key   | Type       | Description   |
| ----- | ---------- | ------------- |
| type  | String (?) | None Provided |
| value | String (?) | None Provided |
