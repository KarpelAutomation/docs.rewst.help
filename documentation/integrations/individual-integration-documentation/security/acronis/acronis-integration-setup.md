---
description: >-
  The Acronis pack allows you to manage tenants, reports, users, devices,
  backups, and storage.
---

# Acronis integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## Setup

To setup the Acronis Integration, you'll need to perform the following steps:

1. **Log in** to the management portal.
2. **Click** Settings → API clients → Create API client.
3. **Enter** a name for the API client.
4. **Click** Next.

The API client is created with the Active status by default.

Input the ID and secret value of the client below. For the Cloud Base URL - match the prefix of the cloud URL to the region below.

We'll run a final authorization check before we continue.

Having issues? [Review Acronis' Documentation Here](https://www.acronis.com/en-us/support/documentation/AcronisCyberCloud/index.html#managing-api-clients.html).

## Actions

### Abgw Storages

#### Unregister Storage[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#unregister-storage) <a href="#unregister-storage" id="unregister-storage"></a>

Removes registered storage from a user's account.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request)

**DELETE** `/api/vault_manager/v1/abgw_storages/{storageId}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params)

| Key         | Type               | Description   |
| ----------- | ------------------ | ------------- |
| storageId\* | Acronis Storage ID | None Provided |

### Activities

#### List Activities[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-activities) <a href="#list-activities" id="list-activities"></a>

Retrieve a list of activities with specific criteria.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-1)

**GET** `/api/task_manager/v2/activities`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params)

| Key         | Type             | Description   |
| ----------- | ---------------- | ------------- |
| policyType  | String (?)       | None Provided |
| id          | Acronis Activity | None Provided |
| resultCode  | String (?)       | None Provided |
| lod         | String           | None Provided |
| state       | String (?)       | None Provided |
| taskId      | Acronis Task     | None Provided |
| completedAt | String (?)       | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-1)

| Key       | Type             | Description   |
| --------- | ---------------- | ------------- |
| items     | Item             | None Provided |
| size      | Number _(float)_ | None Provided |
| timeStamp | String           | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects) <a href="#objects" id="objects"></a>

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item)

| Key                    | Type             | Description   |
| ---------------------- | ---------------- | ------------- |
| completedAt            | String           | None Provided |
| context                | Context          | None Provided |
| createdAt              | String           | None Provided |
| executor               | Executor         | None Provided |
| id                     | Number _(float)_ | None Provided |
| idString               | String           | None Provided |
| parentActivityId       | Number _(float)_ | None Provided |
| parentActivityIdString | String           | None Provided |
| policy                 | Policy           | None Provided |
| progress               | Progress         | None Provided |
| resource               | Resource         | None Provided |
| result                 | Result           | None Provided |
| startedAt              | String           | None Provided |
| state                  | String           | None Provided |
| taskId                 | Number _(float)_ | None Provided |
| taskIdString           | String           | None Provided |
| tenant                 | Tenant           | None Provided |
| type                   | String           | None Provided |
| updatedAt              | String           | None Provided |
| uuid                   | String           | None Provided |

***

**Context**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#context)

| Key                | Type             | Description   |
| ------------------ | ---------------- | ------------- |
| ArchiveLocation    | String           | None Provided |
| ArchiveName        | String           | None Provided |
| BackupFrameID      | String           | None Provided |
| BackupPlanID       | String           | None Provided |
| BackupPlanName     | String           | None Provided |
| BackupType         | Number _(float)_ | None Provided |
| CommandID          | String           | None Provided |
| Comments           | String           | None Provided |
| CurrentBackupFrame | String           | None Provided |
| ExecutionQueue     | String           | None Provided |
| HasChildren        | Boolean          | None Provided |
| IsProcessRoot      | Boolean          | None Provided |
| MachineName        | String           | None Provided |
| MessageID          | String           | None Provided |
| Persistent         | Persistent       | None Provided |
| ProcessID          | Number _(float)_ | None Provided |
| ProtectionPlanID   | String           | None Provided |
| Sources            | Source           | None Provided |
| Specific           | String           | None Provided |
| UserName           | String           | None Provided |
| \_runtime          | Runtime          | None Provided |
| isLegacy           | Boolean          | None Provided |
| parentUUID         | String           | None Provided |
| runMode            | String           | None Provided |
| title              | String           | None Provided |

***

**Executor**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#executor)

| Key       | Type   | Description   |
| --------- | ------ | ------------- |
| clusterId | String | None Provided |
| id        | String | None Provided |

***

**Policy**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#policy)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| id   | String | None Provided |
| name | String | None Provided |
| type | String | None Provided |

***

**Progress**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#progress)

| Key     | Type             | Description   |
| ------- | ---------------- | ------------- |
| current | Number _(float)_ | None Provided |
| total   | Number _(float)_ | None Provided |

***

**Resource**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#resource)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| id   | String | None Provided |
| name | String | None Provided |
| type | String | None Provided |

***

**Result**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#result)

| Key      | Type    | Description   |
| -------- | ------- | ------------- |
| code     | String  | None Provided |
| error    | Error   | None Provided |
| payload  | Payload | None Provided |
| warnings | Warning | None Provided |

***

**Tenant**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#tenant)

| Key     | Type   | Description   |
| ------- | ------ | ------------- |
| id      | String | None Provided |
| locator | String | None Provided |
| name    | String | None Provided |

***

**Persistent**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#persistent)

| Key     | Type   | Description   |
| ------- | ------ | ------------- |
| Sources | Source | None Provided |

***

**Source**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#source)

| Key        | Type     | Description   |
| ---------- | -------- | ------------- |
| BackupType | String   | None Provided |
| ItemKey    | Item Key | None Provided |
| ItemPath   | String   | None Provided |

***

**Runtime**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#runtime)

| Key            | Type             | Description   |
| -------------- | ---------------- | ------------- |
| bytesProcessed | Number _(float)_ | None Provided |
| bytesSaved     | Number _(float)_ | None Provided |
| sourceStamp    | Number _(float)_ | None Provided |

***

**Error**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#error)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| code    | String  | None Provided |
| context | Context | None Provided |
| debug   | Debug   | None Provided |
| domain  | String  | None Provided |
| kbLink  | Kb Link | None Provided |
| reason  | String  | None Provided |

***

**Payload**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#payload)

| Key                    | Type                          | Description   |
| ---------------------- | ----------------------------- | ------------- |
| BackupActivitiesNumber | Number _(float)_              | None Provided |
| UnresolvedItemsWarning | Key-Value pair (_Dictionary_) | None Provided |

***

**Warning**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#warning)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| code    | String  | None Provided |
| context | Context | None Provided |
| debug   | Debug   | None Provided |
| domain  | String  | None Provided |
| kbLink  | Kb Link | None Provided |
| reason  | String  | None Provided |

***

**Itemkey**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#itemkey)

| Key                                  | Type   | Description   |
| ------------------------------------ | ------ | ------------- |
| 4B2A7A93-A44F-4155-BDE3-A023C57C9431 | String | None Provided |
| ItemType                             | String | None Provided |
| LocalID                              | String | None Provided |

***

**Context**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#context-1)

| Key          | Type             | Description   |
| ------------ | ---------------- | ------------- |
| $module      | String           | None Provided |
| \_src        | Src              | None Provided |
| account      | String           | None Provided |
| cause\_str   | String           | None Provided |
| commandid    | String           | None Provided |
| effect\_str  | String           | None Provided |
| failcount    | Number _(float)_ | None Provided |
| isreturncode | Number _(float)_ | None Provided |
| tenantname   | String           | None Provided |

***

**Debug**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#debug)

| Key | Type   | Description   |
| --- | ------ | ------------- |
| msg | String | None Provided |

***

**Kblink**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#kblink)

| Key     | Type             | Description   |
| ------- | ---------------- | ------------- |
| build   | Number _(float)_ | None Provided |
| lineTag | String           | None Provided |
| os      | String           | None Provided |
| product | String           | None Provided |
| serCode | String           | None Provided |
| version | String           | None Provided |

***

**Src**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#src)

| Key      | Type             | Description   |
| -------- | ---------------- | ------------- |
| code     | Number _(float)_ | None Provided |
| fields   | Field            | None Provided |
| src      | Src              | None Provided |
| suberror | Suberror         | None Provided |
| text     | String           | None Provided |
| types    | Type             | None Provided |

***

**Field**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#field)

| Key       | Type   | Description   |
| --------- | ------ | ------------- |
| $module   | String | None Provided |
| CommandID | String | None Provided |

***

**Suberror**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#suberror)

| Key      | Type             | Description   |
| -------- | ---------------- | ------------- |
| code     | Number _(float)_ | None Provided |
| fields   | Field            | None Provided |
| src      | Src              | None Provided |
| suberror | Suberror         | None Provided |
| text     | String           | None Provided |
| types    | Type             | None Provided |

***

**Type**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#type)

| Key       | Type   | Description   |
| --------- | ------ | ------------- |
| $module   | String | None Provided |
| CommandID | String | None Provided |

### Agent Registration Tokens

#### List Registration Tokens[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-registration-tokens) <a href="#list-registration-tokens" id="list-registration-tokens"></a>

Retrieve list of registration tokens.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-2)

**GET** `/api/2/tenants/{tenant_id}/registration_tokens`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-1)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

#### Get Registration Token[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-registration-token) <a href="#get-registration-token" id="get-registration-token"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-3)

**POST** `/api/2/tenants/{tenant_id}/registration_tokens`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-2)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body)

| Key         | Type             | Description   |
| ----------- | ---------------- | ------------- |
| expires\_in | Number _(float)_ | None Provided |
| scopes      | Array            | None Provided |

#### Delete Registration Token[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#delete-registration-token) <a href="#delete-registration-token" id="delete-registration-token"></a>

Remove device registration identification for push notifications.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-4)

**DELETE** `/api/2/registration_tokens/{registration_token_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-3)

| Key                       | Type   | Description   |
| ------------------------- | ------ | ------------- |
| registration\_token\_id\* | String | None Provided |

### Agents

#### List Tenant Agents[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenant-agents) <a href="#list-tenant-agents" id="list-tenant-agents"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-5)

**GET** `/api/agent_manager/v2/agents`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-1)

| Key        | Type           | Description   |
| ---------- | -------------- | ------------- |
| tenant\_id | Acronis Tenant | None Provided |

#### Trigger Updating All Agents In The System[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#trigger-updating-all-agents-in-the-system) <a href="#trigger-updating-all-agents-in-the-system" id="trigger-updating-all-agents-in-the-system"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-6)

**POST** `/api/agent_manager/v2/agents/update:force`

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-1)

| Key        | Type  | Description   |
| ---------- | ----- | ------------- |
| agent\_ids | Array | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-2)

#### Get Agent[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-agent) <a href="#get-agent" id="get-agent"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-7)

**GET** `/api/agent_manager/v2/agents/{agent_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-4)

| Key         | Type          | Description   |
| ----------- | ------------- | ------------- |
| agent\_id\* | Acronis Agent | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-3)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-4)

| Key                | Type         | Description   |
| ------------------ | ------------ | ------------- |
| auto\_update       | Boolean      | None Provided |
| core\_version      | Core Version | None Provided |
| enabled            | Boolean      | None Provided |
| host\_id           | String       | None Provided |
| hostname           | String       | None Provided |
| id                 | String       | None Provided |
| meta               | Metum        | None Provided |
| name               | String       | None Provided |
| online             | Boolean      | None Provided |
| platform           | Platform     | None Provided |
| registration\_date | String       | None Provided |
| tenant             | Tenant       | None Provided |
| units              | Unit         | None Provided |

#### Get Agents Update Configuration[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-agents-update-configuration) <a href="#get-agents-update-configuration" id="get-agents-update-configuration"></a>

Retrieve updated configuration data for agents.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-8)

**GET** `/api/agent_manager/v2/agents/update/configuration`

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-5)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-6)

| Key                                            | Type             | Description   |
| ---------------------------------------------- | ---------------- | ------------- |
| max\_agent\_fail\_count                        | Number _(float)_ | None Provided |
| max\_concurrent\_agent\_update\_count          | Number _(float)_ | None Provided |
| min\_update\_package\_fail\_ratio\_denominator | Number _(float)_ | None Provided |
| update\_package\_fail\_ratio\_threshold        | Number _(float)_ | None Provided |
| update\_window\_end\_offset\_sec               | Number _(float)_ | None Provided |
| update\_window\_start\_offset\_sec             | Number _(float)_ | None Provided |

#### Get The Agents Update References[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-the-agents-update-references) <a href="#get-the-agents-update-references" id="get-the-agents-update-references"></a>

Retrieve agent references from the database.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-9)

**GET** `/api/agent_manager/v2/agent_update_references`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-2)

| Key               | Type   | Description   |
| ----------------- | ------ | ------------- |
| update\_channel\* | String | None Provided |
| os\_family        | String | None Provided |
| os\_arch          | String | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-7)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-8)

| Key             | Type    | Description   |
| --------------- | ------- | ------------- |
| os\_arch        | String  | None Provided |
| os\_family      | String  | None Provided |
| update\_channel | String  | None Provided |
| url             | String  | None Provided |
| version         | Version | None Provided |

#### Get Agent Configuration Information[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-agent-configuration-information) <a href="#get-agent-configuration-information" id="get-agent-configuration-information"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-10)

**GET** `/api/agent_manager/v2/agent_update_settings/{agent_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-5)

| Key         | Type          | Description   |
| ----------- | ------------- | ------------- |
| agent\_id\* | Acronis Agent | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-3)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| master | String (?) | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-9)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-10)

| Key                         | Type               | Description   |
| --------------------------- | ------------------ | ------------- |
| agent\_id                   | String             | None Provided |
| automatic                   | Boolean            | None Provided |
| inherited\_from\_tenant\_id | String             | None Provided |
| maintenance\_window         | Maintenance Window | None Provided |
| tenant\_id                  | String             | None Provided |
| update\_channel             | String             | None Provided |

#### Update Tenant Agent Configuration[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#update-tenant-agent-configuration) <a href="#update-tenant-agent-configuration" id="update-tenant-agent-configuration"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-11)

**GET** `/api/agent_manager/v2/agent_update_settings/{tenant_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-6)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-4)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| master | String (?) | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-11)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-12)

| Key                         | Type               | Description   |
| --------------------------- | ------------------ | ------------- |
| automatic                   | Boolean            | None Provided |
| inherited\_from\_tenant\_id | String             | None Provided |
| maintenance\_window         | Maintenance Window | None Provided |
| tenant\_id                  | String             | None Provided |
| update\_channel             | String             | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-1) <a href="#objects-1" id="objects-1"></a>

**Core Version**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#core-version)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| current | Current | None Provided |

***

**Metum**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#metum)

| Key | Type | Description   |
| --- | ---- | ------------- |
| atp | Atp  | None Provided |

***

**Platform**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#platform)

| Key            | Type             | Description   |
| -------------- | ---------------- | ------------- |
| arch           | String           | None Provided |
| caps           | Number _(float)_ | None Provided |
| family         | String           | None Provided |
| name           | String           | None Provided |
| product\_type  | Number _(float)_ | None Provided |
| service\_pack  | Number _(float)_ | None Provided |
| sku            | Number _(float)_ | None Provided |
| suite\_mask    | Number _(float)_ | None Provided |
| version\_major | Number _(float)_ | None Provided |
| version\_minor | Number _(float)_ | None Provided |

***

**Tenant**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#tenant-1)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| id   | String | None Provided |
| name | String | None Provided |

***

**Unit**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#unit)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| meta    | Metum   | None Provided |
| name    | String  | None Provided |
| version | Version | None Provided |

***

**Version**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#version)

| Key           | Type   | Description   |
| ------------- | ------ | ------------- |
| build         | String | None Provided |
| release\_id   | String | None Provided |
| release\_name | String | None Provided |

***

**Maintenancewindow**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#maintenancewindow)

| Key            | Type   | Description   |
| -------------- | ------ | ------------- |
| days\_of\_week | Array  | None Provided |
| time\_from     | String | None Provided |
| time\_to       | String | None Provided |

***

**Maintenancewindow**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#maintenancewindow-1)

| Key            | Type   | Description   |
| -------------- | ------ | ------------- |
| days\_of\_week | Array  | None Provided |
| time\_from     | String | None Provided |
| time\_to       | String | None Provided |

***

**Current**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#current)

| Key         | Type   | Description   |
| ----------- | ------ | ------------- |
| build       | String | None Provided |
| release\_id | String | None Provided |

***

**Atp**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#atp)

| Key        | Type      | Description   |
| ---------- | --------- | ------------- |
| components | Component | None Provided |

***

**Component**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#component)

| Key          | Type   | Description   |
| ------------ | ------ | ------------- |
| name         | String | None Provided |
| update\_time | String | None Provided |
| version      | String | None Provided |

### Alert Types

#### Retrieve Registered Alert Types[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#retrieve-registered-alert-types) <a href="#retrieve-registered-alert-types" id="retrieve-registered-alert-types"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-12)

**GET** `/api/alert_manager/v1/types`

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-13)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-14)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### Create An Alerts Type[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#create-an-alerts-type) <a href="#create-an-alerts-type" id="create-an-alerts-type"></a>

Endpoint to create a new type of alert.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-13)

**POST** `/api/alert_manager/v1/types`

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-2)

| Key               | Type    | Description   |
| ----------------- | ------- | ------------- |
| contextKeys       | Array   | None Provided |
| enabled           | Boolean | None Provided |
| searchableDetails | Array   | None Provided |
| severity          | String  | None Provided |
| supportedOS       | Array   | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-2) <a href="#objects-2" id="objects-2"></a>

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-1)

| Key               | Type    | Description   |
| ----------------- | ------- | ------------- |
| contextKeys       | Array   | None Provided |
| enabled           | Boolean | None Provided |
| id                | String  | None Provided |
| searchableDetails | Array   | None Provided |
| severity          | String  | None Provided |

### Alerts

#### List Alerts[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-alerts) <a href="#list-alerts" id="list-alerts"></a>

Get list of filtered alerts based on specified criteria.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-14)

**GET** `/api/alert_manager/v1/alerts`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-5)

| Key                 | Type       | Description                                                                                                                                                               |
| ------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| updated\_at         | String (?) | Unix Time in nanoseconds (1 billionth of a second) Available operators: eq - equals lt - less than gt - greater than le - less than or equals ge - greater than or equals |
| severity            | String     | None Provided                                                                                                                                                             |
| query               | String     | A query string to search                                                                                                                                                  |
| type                | String     | Alert Type                                                                                                                                                                |
| order               | String     | None Provided                                                                                                                                                             |
| source\_time\_stamp | String     | None Provided                                                                                                                                                             |
| source              | String     | None Provided                                                                                                                                                             |
| show\_deleted       | Boolean    | None Provided                                                                                                                                                             |
| id                  | Acronis ID | None Provided                                                                                                                                                             |
| embed\_alert        | Boolean    | None Provided                                                                                                                                                             |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-15)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-16)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### Delete Alert(S)[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#delete-alerts) <a href="#delete-alerts" id="delete-alerts"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-15)

**DELETE** `/api/alert_manager/v1/alerts`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-6)

| Key         | Type       | Description                                                                                                                                                               |
| ----------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id          | Array      | None Provided                                                                                                                                                             |
| severity    | String     | None Provided                                                                                                                                                             |
| updated\_at | String (?) | Unix Time in nanoseconds (1 billionth of a second) Available operators: eq - equals lt - less than gt - greater than le - less than or equals ge - greater than or equals |

#### Get Alert[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-alert) <a href="#get-alert" id="get-alert"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-16)

**GET** `/api/alert_manager/v1/alerts/{alert_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-7)

| Key         | Type          | Description   |
| ----------- | ------------- | ------------- |
| alert\_id\* | Acronis Alert | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-17)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-18)

| Key        | Type   | Description   |
| ---------- | ------ | ------------- |
| \_links    | Link   | None Provided |
| createdAt  | String | None Provided |
| details    | Detail | None Provided |
| id         | String | None Provided |
| receivedAt | String | None Provided |
| severity   | String | None Provided |
| tenant     | Tenant | None Provided |
| type       | String | None Provided |
| updatedAt  | String | None Provided |

#### Get Stats Of Alerts[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-stats-of-alerts) <a href="#get-stats-of-alerts" id="get-stats-of-alerts"></a>

Retrieve statistical data about system alerts.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-17)

**GET** `/api/alert_manager/v1/stats`

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-19)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-20)

| Key        | Type             | Description   |
| ---------- | ---------------- | ------------- |
| \_links    | Link             | None Provided |
| count      | Number _(float)_ | None Provided |
| modifiedAt | String           | None Provided |

#### Get Alerts Sync[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-alerts-sync) <a href="#get-alerts-sync" id="get-alerts-sync"></a>

Retrieve synchronized alerts.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-18)

**GET** `/api/alert_manager/v1/sync`

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-21)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-22)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-3) <a href="#objects-3" id="objects-3"></a>

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-2)

| Key        | Type   | Description   |
| ---------- | ------ | ------------- |
| createdAt  | String | None Provided |
| deletedAt  | String | None Provided |
| details    | Detail | None Provided |
| id         | String | None Provided |
| receivedAt | String | None Provided |
| severity   | String | None Provided |
| tenant     | Tenant | None Provided |
| type       | String | None Provided |
| updatedAt  | String | None Provided |

***

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

***

**Detail**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#detail)

| Key              | Type   | Description   |
| ---------------- | ------ | ------------- |
| errorDescription | String | None Provided |
| fileHashMD5      | String | None Provided |
| fileHashSHA1     | String | None Provided |
| fileHashSHA256   | String | None Provided |
| fileName         | String | None Provided |
| filePath         | String | None Provided |
| resourceId       | String | None Provided |
| resourceName     | String | None Provided |
| threatName       | String | None Provided |

***

**Tenant**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#tenant-2)

| Key     | Type   | Description   |
| ------- | ------ | ------------- |
| id      | String | None Provided |
| locator | String | None Provided |

***

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-1)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

### Antimalware Scan Stats

#### Get Anti Malware Scan Stats[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-anti-malware-scan-stats) <a href="#get-anti-malware-scan-stats" id="get-anti-malware-scan-stats"></a>

Get statistics about antimalware scan results.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-19)

**GET** `/api/vault_manager/v1/antimalware_scan_stats`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-7)

| Key     | Type       | Description                                            |
| ------- | ---------- | ------------------------------------------------------ |
| created | String (?) | Show backups created only within specified time range. |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-23)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-24)

| Key                          | Type             | Description   |
| ---------------------------- | ---------------- | ------------- |
| \_links                      | Link             | None Provided |
| clean\_count                 | Number _(float)_ | None Provided |
| infected\_count              | Number _(float)_ | None Provided |
| not\_supported\_clean\_count | Number _(float)_ | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-4) <a href="#objects-4" id="objects-4"></a>

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-2)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

### Archives

#### List Archives[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-archives) <a href="#list-archives" id="list-archives"></a>

Retrieve historical records or past versions of data.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-20)

**GET** `/api/vault_manager/v1/archives`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-8)

| Key                       | Type            | Description                                                                                                                                                                                                                                 |
| ------------------------- | --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| archiveId                 | Acronis Archive | None Provided                                                                                                                                                                                                                               |
| showDeleted               | String          | A flag that specifies what should be added to the list of returned backups                                                                                                                                                                  |
| includeStats              | String          | Include additional information about archive. If false or not specified, the stats field will not be in the response data.                                                                                                                  |
| agentId                   | String (?)      | Show a list of archives of specified agent ID.                                                                                                                                                                                              |
| name                      | String          | Show a list of archives of specified archive name. Supports matching any number of characters using asterisk wildcard character if it's enabled with the wildcard query sring parameter.                                                    |
| wildcard                  | String (?)      | Enable wildcard support in the name filter.                                                                                                                                                                                                 |
| resourceId                | String (?)      | Show only archives that contain backups for at least one resource from the specified list.                                                                                                                                                  |
| storageType               | String (?)      | Show a list of Archives in vaults of specified storage types.                                                                                                                                                                               |
| type                      | String (?)      | Show a list of Archives of specified types.                                                                                                                                                                                                 |
| format                    | String (?)      | Show a list of Archives of specified formats.                                                                                                                                                                                               |
| backupPlanId              | String (?)      | Show only archives created by backup plan with specified ID.                                                                                                                                                                                |
| centralizedPlanId         | String (?)      | Show only archives created by centralized plan with specified ID.                                                                                                                                                                           |
| includeCatalogInfo        | Boolean         | Include cataloged status of archive. If false or not specified, cataloged\_status and actions fields will not be incuded in the response data.                                                                                              |
| forensic                  | String (?)      | Show only archives with forensic data or without forensic. If not specified, archives are listed regardless of forensic data.                                                                                                               |
| includePrePatchManagement | String (?)      | Include pre-patch management status of archive. If false or not specified, the pre\_patch\_management field will not be included in the response data.                                                                                      |
| prePatchManagementOnly    | String (?)      | Show only archives with at least one backup which was made before patch management. If false or not specified, archives are listed regardless of this filter.                                                                               |
| includeMalwareFound       | String (?)      | Include malware assessment result of backups in the archive. If false or not specified, the malware\_found field will not be included in the response data.                                                                                 |
| malwareFound              | Boolean         | Show only archives with backups that have the specified malware status. Possible malware statuses: notScanned - No backups were scanned in the archive. clean - Backups that don't contain malware. malware - Backups that contain malware. |
| fromDate                  | String (?)      | Filters archives by the last updated date and time that is greater or equal to the given date and time.                                                                                                                                     |
| toDate                    | String (?)      | Filters archives by the last updated date and time that is less than or equal to the given date and time.                                                                                                                                   |
| includeActions            | String (?)      | Calculate and include possible actions in the response.                                                                                                                                                                                     |
| targetAgentId             | String (?)      | Select target agent to calculate actions.                                                                                                                                                                                                   |
| order                     | String          | An ordering filter that orders the results by column name                                                                                                                                                                                   |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-25)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-26)

| Key     | Type | Description   |
| ------- | ---- | ------------- |
| \_links | Link | None Provided |
| items   | Item | None Provided |

#### Delete Archives[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#delete-archives) <a href="#delete-archives" id="delete-archives"></a>

Permanently removes stored data.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-21)

**DELETE** `/api/vault_manager/v1/archives`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-9)

| Key          | Type   | Description   |
| ------------ | ------ | ------------- |
| resourceId\* | String | None Provided |
| changeTag    | String | None Provided |

#### List Archive Backups[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-archive-backups) <a href="#list-archive-backups" id="list-archive-backups"></a>

Retrieve previous versions of data backups.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-22)

**GET** `/api/vault_manager/v1/archives/{archiveId}/backups`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-8)

| Key         | Type            | Description   |
| ----------- | --------------- | ------------- |
| archiveId\* | Acronis Archive | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-10)

| Key                           | Type       | Description                                                                                                                                                                                                          |
| ----------------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| order                         | String     | An ordering filter that orders the results by column name                                                                                                                                                            |
| showDeleted                   | String     | A flag that specifies what should be added to the list of returned backups: 1 - All deleted backups are added to the list of backups. 2 - Only deleted backups marked as immutable are added to the list of backups. |
| includeActions                | String (?) | Calculate and include possible actions in the response.                                                                                                                                                              |
| targetAgentId                 | String (?) | Select target agent to calculate actions.                                                                                                                                                                            |
| resourceId                    | String (?) | Show only backups for specified resources.                                                                                                                                                                           |
| changeTag                     | String (?) | Show only backups for specified change tag.                                                                                                                                                                          |
| embed                         | String (?) | An array of field names to include in the response. Each value represents the name of the extension field to be included in the base response.                                                                       |
| created                       | String (?) | Show only backups created within specified time range.                                                                                                                                                               |
| protectedByPassword           | String (?) | Show only backups in protected by password or unprotected by password archives. If not specified, backups are listed regardless of their password protection status.                                                 |
| backupType                    | String (?) | Show only backups of specified types.                                                                                                                                                                                |
| triggeredBy                   | String (?) | Show a list of Backups triggered by specified reason.                                                                                                                                                                |
| avScanningDate                | String     | Show only backups scanned within the specified time range OR never scanned backups in "none" is specified.                                                                                                           |
| vulnerabilityAssessmentStatus | String     | Show only backups with specified Vulnerability Assessment Result statuses.                                                                                                                                           |
| malwareAssessmentStatus       | String (?) | Show only backups with specified Malware Assessment Result statuses.                                                                                                                                                 |
| tapeId                        | String     | Show only backups for specified tapes                                                                                                                                                                                |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-27)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-28)

| Key     | Type | Description   |
| ------- | ---- | ------------- |
| \_links | Link | None Provided |
| items   | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-5) <a href="#objects-5" id="objects-5"></a>

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-3)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-3)

| Key                     | Type             | Description   |
| ----------------------- | ---------------- | ------------- |
| actions                 | Array            | None Provided |
| agent\_id               | String           | None Provided |
| agent\_name             | String           | None Provided |
| attributes              | Attribute        | None Provided |
| backup\_plan\_id        | String           | None Provided |
| backup\_plan\_name      | String           | None Provided |
| centralized\_plan\_id   | String           | None Provided |
| compressed\_data\_size  | Number _(float)_ | None Provided |
| consistent              | Boolean          | None Provided |
| created                 | String           | None Provided |
| data\_size              | Number _(float)_ | None Provided |
| deleted                 | Boolean          | None Provided |
| deleted\_immutable      | Boolean          | None Provided |
| description             | String           | None Provided |
| display\_name           | String           | None Provided |
| encryption\_algorithm   | String           | None Provided |
| file\_name              | String           | None Provided |
| format                  | String           | None Provided |
| id                      | String           | None Provided |
| last\_backup\_created   | String           | None Provided |
| last\_seen\_at          | String           | None Provided |
| legacy\_id              | String           | None Provided |
| logical\_size           | Number _(float)_ | None Provided |
| marked\_for\_deletion   | Boolean          | None Provided |
| name                    | String           | None Provided |
| original\_data\_size    | Number _(float)_ | None Provided |
| owner\_id               | String           | None Provided |
| owner\_name             | String           | None Provided |
| protected\_by\_password | Boolean          | None Provided |
| resource\_id            | String           | None Provided |
| resource\_name          | String           | None Provided |
| resource\_type          | String           | None Provided |
| size                    | Number _(float)_ | None Provided |
| source\_key             | String           | None Provided |
| source\_usn             | Number _(float)_ | None Provided |
| tenant\_id              | String           | None Provided |
| tenant\_locator         | String           | None Provided |
| type                    | String           | None Provided |
| updated                 | String           | None Provided |
| vault\_id               | String           | None Provided |

***

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-4)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

***

**Attribute**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#attribute)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| aaib | String | None Provided |
| uri  | String | None Provided |

### Backed Up Resources

#### List Backed Up Resources[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-backed-up-resources) <a href="#list-backed-up-resources" id="list-backed-up-resources"></a>

previously-storedRetrieve previously-stored resources.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-23)

**GET** `/api/vault_manager/v1/backed_up_resources`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-11)

| Key       | Type            | Description                                               |
| --------- | --------------- | --------------------------------------------------------- |
| order     | String          | An ordering filter that orders the results by column name |
| vaultId   | Acronis Vault   | ID of vault to search backups for.                        |
| archiveId | Acronis Archive | ID of archive to search backups for.                      |
| tapeId    | String (?)      | Filter backups for specified tapes.                       |

### Backups

#### List Backups[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-backups) <a href="#list-backups" id="list-backups"></a>

Retrieve saved copies of data or system configurations.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-24)

**GET** `/api/vault_manager/v1/backups`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-12)

| Key                           | Type                    | Description                                                                                                                                                          |
| ----------------------------- | ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| count                         | String (?)              | Show total count in the response.                                                                                                                                    |
| order                         | String                  | An ordering filter that orders the results by column name                                                                                                            |
| storageId                     | String                  | Show only backups located in vaults of the storage that is identified by specified storage ID.                                                                       |
| agentId                       | Acronis Agent ID        | Show only backups for specified agent.                                                                                                                               |
| type                          | String                  | Show only backups of specified resource type.                                                                                                                        |
| vaultId                       | Acronis Vault ID        | ID of vault to search archives for.                                                                                                                                  |
| regtime                       | String                  | Show only backups created or deleted within specified time range.                                                                                                    |
| updated                       | String                  | Show only backups updated within specified time range.                                                                                                               |
| storageType                   | String                  | Show only backups located in vaults of specified storage types.                                                                                                      |
| forensic                      | String                  | Show only backups in archives with forensic data or without forensic. If not specified, backups are listed regardless of forensic data.                              |
| resourceId                    | String (?)              | Show only backups for specified resources.                                                                                                                           |
| changeTag                     | String (?)              | Show only backups for specified change tag.                                                                                                                          |
| showDeleted                   | String                  | A flag that specifies what should be added to the list of returned backups                                                                                           |
| embed                         | String (?)              | An array of field names to include in the response. Each value represents the name of the extension field to be included in the base response.                       |
| created                       | String (?)              | Show only backups created within specified time range.                                                                                                               |
| protectedByPassword           | String (?)              | Show only backups in protected by password or unprotected by password archives. If not specified, backups are listed regardless of their password protection status. |
| backupType                    | String (?)              | Show only backups of specified types.                                                                                                                                |
| tapeId                        | String (?)              | Show only backups for specified tapes.                                                                                                                               |
| triggeredBy                   | String (?)              | Show a list of Backups triggered by specified reason.                                                                                                                |
| avScanningDate                | String (?)              | Show only backups scanned within the specified time range OR never scanned backups if "none" is specified.                                                           |
| vulnerabilityAssessmentStatus | String                  | Show only backups with specified Vulnerability Assessment Result Statuses                                                                                            |
| malwareAssessmentStatus       | String (?)              | Show only backups with specified Malware Assessment Result statuses.                                                                                                 |
| includeActions                | String (?)              | Calculate and include possible actions in the response.                                                                                                              |
| targentAgentId                | Acronis Target Agent ID | Select target agent to calculate actions.                                                                                                                            |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-29)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-30)

| Key     | Type | Description   |
| ------- | ---- | ------------- |
| \_links | Link | None Provided |
| items   | Item | None Provided |

#### Delete Backups[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#delete-backups) <a href="#delete-backups" id="delete-backups"></a>

Delete all backup files.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-25)

**DELETE** `/api/vault_manager/v1/backups`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-13)

| Key          | Type           | Description        |
| ------------ | -------------- | ------------------ |
| resourceID\* | Acronis Backup | None Provided      |
| changeTag    | String         | Tag for run tasks. |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-6) <a href="#objects-6" id="objects-6"></a>

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-5)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-4)

| Key                             | Type             | Description   |
| ------------------------------- | ---------------- | ------------- |
| archive\_id                     | String           | None Provided |
| attributes                      | Attribute        | None Provided |
| backed\_up\_data\_size          | Number _(float)_ | None Provided |
| backup\_id                      | String           | None Provided |
| created                         | String           | None Provided |
| created\_in\_network\_isolation | Boolean          | None Provided |
| deduplicated\_size              | Number _(float)_ | None Provided |
| deleted                         | Boolean          | None Provided |
| deleted\_immutable              | Boolean          | None Provided |
| disks                           | Disk             | None Provided |
| dynamic\_volumes                | Dynamic Volume   | None Provided |
| items\_added                    | Number _(float)_ | None Provided |
| items\_changed                  | Number _(float)_ | None Provided |
| items\_removed                  | Number _(float)_ | None Provided |
| last\_seen\_at                  | String           | None Provided |
| legacy\_id                      | String           | None Provided |
| marked\_for\_deletion           | Boolean          | None Provided |
| notarized                       | Boolean          | None Provided |
| original\_data\_size            | Number _(float)_ | None Provided |
| resource\_ids                   | Array            | None Provided |
| size                            | Number _(float)_ | None Provided |
| source\_key                     | String           | None Provided |
| source\_usn                     | Number _(float)_ | None Provided |
| tenant\_id                      | String           | None Provided |
| tenant\_locator                 | String           | None Provided |
| type                            | String           | None Provided |
| vault\_id                       | String           | None Provided |

***

**Attribute**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#attribute-1)

| Key          | Type   | Description   |
| ------------ | ------ | ------------- |
| is\_vm       | String | None Provided |
| stream\_name | String | None Provided |
| uri          | String | None Provided |
| vm\_kind     | String | None Provided |

***

**Disk**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#disk)

| Key           | Type             | Description   |
| ------------- | ---------------- | ------------- |
| device\_model | String           | None Provided |
| name          | String           | None Provided |
| size          | Number _(float)_ | None Provided |
| volumes       | Volume           | None Provided |

***

**Dynamicvolume**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#dynamicvolume)

| Key          | Type             | Description   |
| ------------ | ---------------- | ------------- |
| free\_space  | Number _(float)_ | None Provided |
| is\_bootable | Boolean          | None Provided |
| is\_system   | Boolean          | None Provided |
| name         | String           | None Provided |
| size         | Number _(float)_ | None Provided |

***

**Volume**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#volume)

| Key          | Type             | Description   |
| ------------ | ---------------- | ------------- |
| free\_space  | Number _(float)_ | None Provided |
| is\_bootable | Boolean          | None Provided |
| is\_system   | Boolean          | None Provided |
| mount\_strid | String           | None Provided |
| name         | String           | None Provided |
| size         | Number _(float)_ | None Provided |

### Basic Platform Info

#### Get Platform Components Versions[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-platform-components-versions) <a href="#get-platform-components-versions" id="get-platform-components-versions"></a>

Get current versions of the platform components

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-26)

**GET** `/api/2/versions`

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-31)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-32)

| Key         | Type        | Description   |
| ----------- | ----------- | ------------- |
| application | Application | None Provided |
| components  | Component   | None Provided |

#### List Editions[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-editions) <a href="#list-editions" id="list-editions"></a>

Get all available editions

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-27)

**GET** `/api/2/editions`

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-33)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-34)

| Key   | Type  | Description   |
| ----- | ----- | ------------- |
| items | Array | None Provided |

#### List Tenant Offering Items[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenant-offering-items) <a href="#list-tenant-offering-items" id="list-tenant-offering-items"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-28)

**GET** `/api/2/tenants/{tenant_id}/offering_items`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-9)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-35)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-36)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-7) <a href="#objects-7" id="objects-7"></a>

**Application**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#application)

| Key     | Type   | Description   |
| ------- | ------ | ------------- |
| edition | String | None Provided |
| name    | String | None Provided |
| version | String | None Provided |

***

**Component**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#component-1)

| Key     | Type   | Description   |
| ------- | ------ | ------------- |
| name    | String | None Provided |
| version | String | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-5)

| Key         | Type   | Description   |
| ----------- | ------ | ------------- |
| edition     | String | None Provided |
| name        | String | None Provided |
| usage\_name | String | None Provided |

### Branding

#### Retrieve Brand Information For A Specific Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#retrieve-brand-information-for-a-specific-tenant) <a href="#retrieve-brand-information-for-a-specific-tenant" id="retrieve-brand-information-for-a-specific-tenant"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-29)

**GET** `/api/2/tenants/{tenant_id}/brand`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-10)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-37)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-38)

| Key                       | Type             | Description   |
| ------------------------- | ---------------- | ------------- |
| account\_server\_url      | String           | None Provided |
| backup\_console\_url      | String           | None Provided |
| color                     | String           | None Provided |
| color\_scheme             | String           | None Provided |
| company\_name             | String           | None Provided |
| help\_url                 | String           | None Provided |
| hide\_predefined          | Number _(float)_ | None Provided |
| home\_url                 | String           | None Provided |
| id                        | String           | None Provided |
| knowledgebase\_url        | String           | None Provided |
| logotype                  | String           | None Provided |
| owns\_custom\_legal\_docs | Boolean          | None Provided |
| platform\_terms\_url      | String           | None Provided |
| privacy\_policy\_url      | String           | None Provided |
| router\_url               | String           | None Provided |
| service\_name             | String           | None Provided |
| smtp\_encryption          | String           | None Provided |
| smtp\_override            | Number _(float)_ | None Provided |
| smtp\_password            | String           | None Provided |
| smtp\_port                | Number _(float)_ | None Provided |
| smtp\_reply\_address      | String           | None Provided |
| smtp\_server              | String           | None Provided |
| smtp\_user                | String           | None Provided |
| support\_url              | String           | None Provided |
| terms\_url                | String           | None Provided |
| upsell\_url               | String           | None Provided |
| user\_guide\_url          | String           | None Provided |
| white\_labeled\_agent     | Boolean          | None Provided |

#### Update Tenant Branding Properties[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#update-tenant-branding-properties) <a href="#update-tenant-branding-properties" id="update-tenant-branding-properties"></a>

Modify visual appearance of tenant's account.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-30)

**PUT** `/api/2/tenants/{tenant_id}/brand`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-11)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-39)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-40)

| Key                       | Type             | Description   |
| ------------------------- | ---------------- | ------------- |
| account\_server\_url      | String           | None Provided |
| backup\_console\_url      | String           | None Provided |
| color                     | String           | None Provided |
| color\_scheme             | String           | None Provided |
| company\_name             | String           | None Provided |
| help\_url                 | String           | None Provided |
| hide\_predefined          | Number _(float)_ | None Provided |
| home\_url                 | String           | None Provided |
| id                        | String           | None Provided |
| knowledgebase\_url        | String           | None Provided |
| logotype                  | String           | None Provided |
| owns\_custom\_legal\_docs | Boolean          | None Provided |
| platform\_terms\_url      | String           | None Provided |
| privacy\_policy\_url      | String           | None Provided |
| router\_url               | String           | None Provided |
| service\_name             | String           | None Provided |
| smtp\_encryption          | String           | None Provided |
| smtp\_override            | Number _(float)_ | None Provided |
| smtp\_password            | String           | None Provided |
| smtp\_port                | Number _(float)_ | None Provided |
| smtp\_reply\_address      | String           | None Provided |
| smtp\_server              | String           | None Provided |
| smtp\_user                | String           | None Provided |
| support\_url              | String           | None Provided |
| terms\_url                | String           | None Provided |
| upsell\_url               | String           | None Provided |
| user\_guide\_url          | String           | None Provided |
| white\_labeled\_agent     | Boolean          | None Provided |

#### Enable Custom Branding[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#enable-custom-branding) <a href="#enable-custom-branding" id="enable-custom-branding"></a>

API endpoint for setting custom branding across an application or platform.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-31)

**POST** `/api/2/tenants/{tenant_id}/brand`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-12)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-41)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-42)

| Key               | Type             | Description   |
| ----------------- | ---------------- | ------------- |
| ancestral\_access | Boolean          | None Provided |
| brand\_id         | Number _(float)_ | None Provided |
| brand\_uuid       | String           | None Provided |
| contact           | Contact          | None Provided |
| contacts          | Array            | None Provided |
| created\_at       | String           | None Provided |
| customer\_type    | String           | None Provided |
| default\_idp\_id  | String           | None Provided |
| enabled           | Boolean          | None Provided |
| has\_children     | Boolean          | None Provided |
| id                | String           | None Provided |
| kind              | String           | None Provided |
| language          | String           | None Provided |
| mfa\_status       | String           | None Provided |
| name              | String           | None Provided |
| parent\_id        | String           | None Provided |
| pricing\_mode     | String           | None Provided |
| update\_lock      | Update Lock      | None Provided |
| updated\_at       | String           | None Provided |
| version           | Number _(float)_ | None Provided |

#### Disable Custom Branding[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#disable-custom-branding) <a href="#disable-custom-branding" id="disable-custom-branding"></a>

Remove user-defined branding options.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-32)

**DELETE** `/api/2/tenants/{tenant_id}/brand`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-13)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-43)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-44)

| Key               | Type             | Description   |
| ----------------- | ---------------- | ------------- |
| ancestral\_access | Boolean          | None Provided |
| brand\_id         | Number _(float)_ | None Provided |
| brand\_uuid       | String           | None Provided |
| contact           | Contact          | None Provided |
| contacts          | Array            | None Provided |
| created\_at       | String           | None Provided |
| customer\_type    | String           | None Provided |
| default\_idp\_id  | String           | None Provided |
| enabled           | Boolean          | None Provided |
| has\_children     | Boolean          | None Provided |
| id                | String           | None Provided |
| kind              | String           | None Provided |
| language          | String           | None Provided |
| mfa\_status       | String           | None Provided |
| name              | String           | None Provided |
| parent\_id        | String           | None Provided |
| pricing\_mode     | String           | None Provided |
| update\_lock      | Update Lock      | None Provided |
| updated\_at       | String           | None Provided |
| version           | Number _(float)_ | None Provided |

#### Retrieve Tenant's Brand Logo Image[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#retrieve-tenants-brand-logo-image) <a href="#retrieve-tenants-brand-logo-image" id="retrieve-tenants-brand-logo-image"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-33)

**GET** `/api/2/tenants/{tenant_id}/brand/logo`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-14)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-8) <a href="#objects-8" id="objects-8"></a>

**Contact**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#contact)

| Key         | Type   | Description   |
| ----------- | ------ | ------------- |
| created\_at | String | None Provided |
| email       | String | None Provided |
| firstname   | String | None Provided |
| id          | String | None Provided |
| lastname    | String | None Provided |
| updated\_at | String | None Provided |

***

**Updatelock**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#updatelock)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| enabled | Boolean | None Provided |

***

**Contact**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#contact-1)

| Key         | Type   | Description   |
| ----------- | ------ | ------------- |
| created\_at | String | None Provided |
| email       | String | None Provided |
| firstname   | String | None Provided |
| id          | String | None Provided |
| lastname    | String | None Provided |
| updated\_at | String | None Provided |

### Contacts

#### Create Contact[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#create-contact) <a href="#create-contact" id="create-contact"></a>

Add Partner Tenant's Contact Information To The System

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-34)

**POST** `/api/2/contacts`

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-3)

| Key        | Type           | Description   |
| ---------- | -------------- | ------------- |
| email      | String         | None Provided |
| firstname  | String         | None Provided |
| lastname   | String         | None Provided |
| tenant\_id | Acronis Tenant | None Provided |
| types      | Array          | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-45)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-46)

| Key         | Type   | Description   |
| ----------- | ------ | ------------- |
| created\_at | String | None Provided |
| email       | String | None Provided |
| firstname   | String | None Provided |
| id          | String | None Provided |
| lastname    | String | None Provided |
| tenant\_id  | String | None Provided |
| types       | Array  | None Provided |
| updated\_at | String | None Provided |

#### Retrieve Contacts For A Specified Partner Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#retrieve-contacts-for-a-specified-partner-tenant) <a href="#retrieve-contacts-for-a-specified-partner-tenant" id="retrieve-contacts-for-a-specified-partner-tenant"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-35)

**GET** `/api/2/tenants/{tenant_id}/contacts`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-15)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-47)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-48)

| Key   | Type  | Description   |
| ----- | ----- | ------------- |
| items | Array | None Provided |

#### Get Contact[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-contact) <a href="#get-contact" id="get-contact"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-36)

**GET** `/api/2/contacts/{contact_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-16)

| Key           | Type   | Description   |
| ------------- | ------ | ------------- |
| contact\_id\* | String | None Provided |

### Generic Request

#### Acronis API Request[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#acronis-api-request) <a href="#acronis-api-request" id="acronis-api-request"></a>

Generic action for making authenticated requests against the Acronis API

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-37)

**GET**

**Headers**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#headers)

```
ordereddict([('label', 'Headers'), ('description', 'Custom HTTP headers to be sent with the request')])
```

### Health Check

#### Health Check[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#health-check-1) <a href="#health-check-1" id="health-check-1"></a>

Endpoint to verify service availability and status.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-38)

**GET** `/api/vault_manager/v1/healthcheck`

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-49)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-50)

| Key          | Type   | Description   |
| ------------ | ------ | ------------- |
| Arch         | String | None Provided |
| BuildDate    | String | None Provided |
| BuildNumber  | String | None Provided |
| CommitHash   | String | None Provided |
| GoVersion    | String | None Provided |
| Manufacturer | String | None Provided |
| Name         | String | None Provided |
| Os           | String | None Provided |
| Version      | String | None Provided |

### Legal Documents

#### Retrieve User's Legal Documents[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#retrieve-users-legal-documents) <a href="#retrieve-users-legal-documents" id="retrieve-users-legal-documents"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-39)

**GET** `/api/2/users/{user_id}/legal_documents`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-17)

| Key        | Type         | Description   |
| ---------- | ------------ | ------------- |
| user\_id\* | Acronis User | None Provided |

#### Initiate A Signature Process For Legal Documents[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#initiate-a-signature-process-for-legal-documents) <a href="#initiate-a-signature-process-for-legal-documents" id="initiate-a-signature-process-for-legal-documents"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-40)

**POST** `/api/2/users/{user_id}/legal_documents`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-18)

| Key        | Type         | Description   |
| ---------- | ------------ | ------------- |
| user\_id\* | Acronis User | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-4)

| Key   | Type  | Description   |
| ----- | ----- | ------------- |
| items | Array | None Provided |

### Locations and Storage Management

#### Get Locations By Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-locations-by-tenant) <a href="#get-locations-by-tenant" id="get-locations-by-tenant"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-41)

**GET** `/api/2/tenants/{tenant_id}/locations`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-19)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-14)

| Key     | Type  | Description   |
| ------- | ----- | ------------- |
| uuids\* | Array | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-51)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-52)

| Key       | Type  | Description   |
| --------- | ----- | ------------- |
| locations | Array | None Provided |

#### List Locations[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-locations) <a href="#list-locations" id="list-locations"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-42)

**GET** `/api/2/locations`

**Headers**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#headers-1)

| Key                 | Type           | Description   |
| ------------------- | -------------- | ------------- |
| X-Apigw-Tenant-Id\* | Acronis Tenant | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-15)

| Key     | Type  | Description   |
| ------- | ----- | ------------- |
| uuids\* | Array | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-53)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-54)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### Get Location[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-location) <a href="#get-location" id="get-location"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-43)

**GET** `/api/2/locations/{location_uuid}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-20)

| Key              | Type             | Description   |
| ---------------- | ---------------- | ------------- |
| location\_uuid\* | Acronis Location | None Provided |

#### List Storage Options By Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-storage-options-by-tenant) <a href="#list-storage-options-by-tenant" id="list-storage-options-by-tenant"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-44)

**GET** `/api/2/tenants/{tenant_id}/infra`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-21)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-55)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-56)

| Key    | Type  | Description   |
| ------ | ----- | ------------- |
| infras | Array | None Provided |

#### Get Storage Option[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-storage-option) <a href="#get-storage-option" id="get-storage-option"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-45)

**GET** `/api/2/infra/{infra_uuid}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-22)

| Key           | Type                   | Description   |
| ------------- | ---------------------- | ------------- |
| infra\_uuid\* | Acronis Storage Option | None Provided |
| tenant\_id    | Acronis Tenant         | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-57)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-58)

| Key               | Type             | Description   |
| ----------------- | ---------------- | ------------- |
| backend\_type     | String           | None Provided |
| capabilities      | Array            | None Provided |
| id                | String           | None Provided |
| location\_id      | String           | None Provided |
| name              | String           | None Provided |
| owner\_tenant\_id | String           | None Provided |
| platform\_owned   | Boolean          | None Provided |
| readonly          | Boolean          | None Provided |
| url               | String           | None Provided |
| version           | Number _(float)_ | None Provided |

#### List Storage Options[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-storage-options) <a href="#list-storage-options" id="list-storage-options"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-46)

**GET** `/api/2/infra`

**Headers**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#headers-2)

| Key                 | Type           | Description   |
| ------------------- | -------------- | ------------- |
| X-Apigw-Tenant-Id\* | Acronis Tenant | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-16)

| Key     | Type  | Description   |
| ------- | ----- | ------------- |
| uuids\* | Array | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-59)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-60)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-9) <a href="#objects-9" id="objects-9"></a>

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-6)

| Key               | Type             | Description   |
| ----------------- | ---------------- | ------------- |
| id                | String           | None Provided |
| name              | String           | None Provided |
| owner\_tenant\_id | String           | None Provided |
| platform\_owned   | Boolean          | None Provided |
| readonly          | Boolean          | None Provided |
| version           | Number _(float)_ | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-7)

| Key               | Type             | Description   |
| ----------------- | ---------------- | ------------- |
| capabilities      | Array            | None Provided |
| id                | String           | None Provided |
| location\_id      | String           | None Provided |
| name              | String           | None Provided |
| owner\_tenant\_id | String           | None Provided |
| platform\_owned   | Boolean          | None Provided |
| readonly          | Boolean          | None Provided |
| url               | String           | None Provided |
| version           | Number _(float)_ | None Provided |

### Reports Management

#### List Tenant Reports[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenant-reports) <a href="#list-tenant-reports" id="list-tenant-reports"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-47)

**GET** `/api/2/tenants/{tenant_id}/reports`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-23)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-61)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-62)

| Key   | Type  | Description   |
| ----- | ----- | ------------- |
| items | Array | None Provided |

#### Get Report[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-report) <a href="#get-report" id="get-report"></a>

Retrieve information about a specific report.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-48)

**GET** `/api/2/reports/{report_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-24)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| report\_id\* | Acronis Report | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-63)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-64)

| Key              | Type             | Description   |
| ---------------- | ---------------- | ------------- |
| generation\_date | String           | None Provided |
| id               | String           | None Provided |
| parameters       | Parameter        | None Provided |
| recipients       | Array            | None Provided |
| result\_action   | String           | None Provided |
| schedule         | Schedule         | None Provided |
| version          | Number _(float)_ | None Provided |

#### Update Scheduled Report[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#update-scheduled-report) <a href="#update-scheduled-report" id="update-scheduled-report"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-49)

**PUT** `/api/2/reports/{report_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-25)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| report\_id\* | Acronis Report | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-5)

| Key              | Type      | Description   |
| ---------------- | --------- | ------------- |
| generation\_date | String    | None Provided |
| parameters       | Parameter | None Provided |
| recipients       | Array     | None Provided |
| result\_action   | String    | None Provided |
| schedule         | Schedule  | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-65)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-66)

| Key              | Type             | Description   |
| ---------------- | ---------------- | ------------- |
| generation\_date | String           | None Provided |
| id               | String           | None Provided |
| parameters       | Parameter        | None Provided |
| recipients       | Array            | None Provided |
| result\_action   | String           | None Provided |
| schedule         | Schedule         | None Provided |
| version          | Number _(float)_ | None Provided |

#### Delete Report[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#delete-report) <a href="#delete-report" id="delete-report"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-50)

**DELETE** `/api/2/reports/{report_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-26)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| report\_id\* | Acronis Report | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-10) <a href="#objects-10" id="objects-10"></a>

**Parameter**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#parameter)

| Key        | Type   | Description   |
| ---------- | ------ | ------------- |
| formats    | Array  | None Provided |
| kind       | String | None Provided |
| level      | String | None Provided |
| period     | Period | None Provided |
| tenant\_id | String | None Provided |

***

**Schedule**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#schedule)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| enabled | Boolean | None Provided |
| type    | String  | None Provided |

***

**Parameter**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#parameter-1)

| Key     | Type   | Description   |
| ------- | ------ | ------------- |
| formats | Array  | None Provided |
| kind    | String | None Provided |
| level   | String | None Provided |
| period  | Period | None Provided |

***

**Period**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#period)

| Key   | Type   | Description   |
| ----- | ------ | ------------- |
| end   | String | None Provided |
| start | String | None Provided |

### Search

#### Text Search[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#text-search) <a href="#text-search" id="text-search"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-51)

**GET** `/api/2/search`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-17)

| Key    | Type           | Description                                              |
| ------ | -------------- | -------------------------------------------------------- |
| text\* | String         | Text to search                                           |
| tenant | Acronis Tenant | A tenant in which hierarchy the search will be performed |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-67)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-68)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-11) <a href="#objects-11" id="objects-11"></a>

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-8)

| Key         | Type   | Description   |
| ----------- | ------ | ------------- |
| first\_name | String | None Provided |
| id          | String | None Provided |
| kind        | String | None Provided |
| last\_name  | String | None Provided |
| login       | String | None Provided |
| name        | String | None Provided |
| obj\_type   | String | None Provided |
| parent\_id  | String | None Provided |
| path        | Array  | None Provided |

### Search Index Size Stats

#### Get Archive Search Size Statistics[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-archive-search-size-statistics) <a href="#get-archive-search-size-statistics" id="get-archive-search-size-statistics"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-52)

**GET** `/api/vault_manager/v1/search_index_size_stats/{tenantId}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-27)

| Key        | Type           | Description   |
| ---------- | -------------- | ------------- |
| tenantId\* | Acronis Tenant | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-18)

| Key           | Type   | Description  |
| ------------- | ------ | ------------ |
| archive\_name | String | Archive Name |

### Stats

#### Get Archive Stats[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-archive-stats) <a href="#get-archive-stats" id="get-archive-stats"></a>

Get data on past activity or usage.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-53)

**GET** `/api/vault_manager/v1/stats`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-19)

| Key         | Type   | Description                                                                    |
| ----------- | ------ | ------------------------------------------------------------------------------ |
| resourceId  | String | Get statistics only for Archives that contain backups for specified resources. |
| storageType | String | Get statistics only for Archives in vaults of specified storage types.         |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-69)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-70)

| Key                  | Type             | Description   |
| -------------------- | ---------------- | ------------- |
| \_links              | Link             | None Provided |
| occupied\_data\_size | Number _(float)_ | None Provided |
| search\_index\_size  | Number _(float)_ | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-12) <a href="#objects-12" id="objects-12"></a>

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-6)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

### Storage Dirs

#### Get Storage Folders[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-storage-folders) <a href="#get-storage-folders" id="get-storage-folders"></a>

Get all folders stored in storage.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-54)

**GET** `/api/vault_manager/v1/storage_dirs/{storageId}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-28)

| Key         | Type                 | Description   |
| ----------- | -------------------- | ------------- |
| storageId\* | Acronis Storage Node | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-20)

| Key             | Type   | Description                                             |
| --------------- | ------ | ------------------------------------------------------- |
| includeAttached | String | List all folders including the ones attached to vaults. |

#### Retrieve Sub Folders Within A Given Directory Path[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#retrieve-sub-folders-within-a-given-directory-path) <a href="#retrieve-sub-folders-within-a-given-directory-path" id="retrieve-sub-folders-within-a-given-directory-path"></a>

Retrieve sub-folders within a given directory path.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-55)

**GET** `/api/vault_manager/v1/storage_dirs/{storageId}/{path}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-29)

| Key         | Type                 | Description   |
| ----------- | -------------------- | ------------- |
| storageId\* | Acronis Storage Node | None Provided |
| path\*      | String               | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-21)

| Key             | Type   | Description                                             |
| --------------- | ------ | ------------------------------------------------------- |
| includeAttached | String | List all folders including the ones attached to vaults. |

### Storage Nodes

#### Get Registered Storage Nodes[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-registered-storage-nodes) <a href="#get-registered-storage-nodes" id="get-registered-storage-nodes"></a>

Retrieve list of registered storage nodes in the network.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-56)

**GET** `/api/vault_manager/v1/storage_nodes`

**Headers**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#headers-3)

| Key                 | Type           | Description   |
| ------------------- | -------------- | ------------- |
| X-Apigw-Tenant-Id\* | Acronis Tenant | None Provided |

### Storage Usage Stats

#### Get Storage Usage Stats[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-storage-usage-stats) <a href="#get-storage-usage-stats" id="get-storage-usage-stats"></a>

Retrieve data about storage space utilization.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-57)

**GET** `/api/vault_manager/v1/storage_usage_stats`

**Headers**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#headers-4)

| Key                 | Type           | Description   |
| ------------------- | -------------- | ------------- |
| X-Apigw-Tenant-Id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-71)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-72)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-13) <a href="#objects-13" id="objects-13"></a>

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-9)

| Key                   | Type             | Description   |
| --------------------- | ---------------- | ------------- |
| cloud\_archive\_count | Number _(float)_ | None Provided |
| cloud\_storage\_usage | Number _(float)_ | None Provided |
| local\_archive\_count | Number _(float)_ | None Provided |
| local\_storage\_size  | Number _(float)_ | None Provided |
| local\_storage\_usage | Number _(float)_ | None Provided |
| tenant                | String           | None Provided |

### Sync

#### Get Archives Sync Info[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-archives-sync-info) <a href="#get-archives-sync-info" id="get-archives-sync-info"></a>

Retrieve synchronization data related to archives.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-58)

**GET** `/api/vault_manager/v1/sync/archives`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-22)

| Key         | Type          | Description                                                                         |
| ----------- | ------------- | ----------------------------------------------------------------------------------- |
| agentId     | Acronis Agent | None Provided                                                                       |
| sourceUsnGt | String (?)    | Show only archives with source Update Sequence Number (USN) greater than requested. |
| order       | String        | An ordering filter that orders the results by column name                           |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-73)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-74)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### Get Backups Sync Info[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-backups-sync-info) <a href="#get-backups-sync-info" id="get-backups-sync-info"></a>

Retrieve Information on Backup Synchronization.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-59)

**GET** `/api/vault_manager/v1/sync/backups`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-23)

| Key         | Type          | Description                                                                         |
| ----------- | ------------- | ----------------------------------------------------------------------------------- |
| agentId     | Acronis Agent | None Provided                                                                       |
| sourceUsnGt | String (?)    | Show only archives with source Update Sequence Number (USN) greater than requested. |
| order       | String        | An ordering filter that orders the results by column name                           |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-75)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-76)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### List Vault Sync Information[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-vault-sync-information) <a href="#list-vault-sync-information" id="list-vault-sync-information"></a>

Get synchronization information for Vaults.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-60)

**GET** `/api/vault_manager/v1/sync/vaults`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-24)

| Key             | Type                      | Description                                                                         |
| --------------- | ------------------------- | ----------------------------------------------------------------------------------- |
| managingAgentId | Acronis Managing Agent ID | Filter vaults by agent ID.                                                          |
| sourceUsnGt     | String (?)                | Show only archives with source Update Sequence Number (USN) greater than requested. |
| order           | String                    | An ordering filter that orders the results by column name                           |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-77)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-78)

| Key     | Type | Description   |
| ------- | ---- | ------------- |
| \_links | Link | None Provided |
| items   | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-14) <a href="#objects-14" id="objects-14"></a>

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-10)

| Key         | Type             | Description   |
| ----------- | ---------------- | ------------- |
| source\_key | String           | None Provided |
| source\_usn | Number _(float)_ | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-11)

| Key         | Type             | Description   |
| ----------- | ---------------- | ------------- |
| source\_key | String           | None Provided |
| source\_usn | Number _(float)_ | None Provided |

***

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-7)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

### Tasks

#### List Tasks[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tasks) <a href="#list-tasks" id="list-tasks"></a>

Retrieve a customized list of tasks.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-61)

**GET** `/api/task_manager/v2/tasks`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-25)

| Key         | Type         | Description   |
| ----------- | ------------ | ------------- |
| lod         | String       | None Provided |
| state       | String (?)   | None Provided |
| completedAt | String (?)   | None Provided |
| type        | String       | None Provided |
| policyType  | String (?)   | None Provided |
| resultCode  | String (?)   | None Provided |
| id          | Acronis Task | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-79)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-80)

| Key       | Type             | Description   |
| --------- | ---------------- | ------------- |
| items     | Item             | None Provided |
| size      | Number _(float)_ | None Provided |
| timeStamp | String           | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-15) <a href="#objects-15" id="objects-15"></a>

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-12)

| Key             | Type             | Description   |
| --------------- | ---------------- | ------------- |
| cancelRequested | Boolean          | None Provided |
| cancellable     | Boolean          | None Provided |
| completedAt     | String           | None Provided |
| context         | Context          | None Provided |
| enqueuedAt      | String           | None Provided |
| executor        | Executor         | None Provided |
| id              | Number _(float)_ | None Provided |
| idString        | String           | None Provided |
| issuer          | Issuer           | None Provided |
| policy          | Policy           | None Provided |
| priority        | String           | None Provided |
| progress        | Progress         | None Provided |
| queue           | String           | None Provided |
| resource        | Resource         | None Provided |
| result          | Result           | None Provided |
| startedAt       | String           | None Provided |
| state           | String           | None Provided |
| tenant          | Tenant           | None Provided |
| type            | String           | None Provided |
| updatedAt       | String           | None Provided |
| uuid            | String           | None Provided |

***

**Context**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#context-2)

| Key                | Type             | Description   |
| ------------------ | ---------------- | ------------- |
| BackupPlanName     | String           | None Provided |
| CommandID          | String           | None Provided |
| CurrentBackupFrame | String           | None Provided |
| ExecutionQueue     | String           | None Provided |
| HasChildren        | Boolean          | None Provided |
| IsProcessRoot      | Boolean          | None Provided |
| MachineName        | String           | None Provided |
| MessageID          | String           | None Provided |
| ProcessID          | Number _(float)_ | None Provided |
| ProtectionPlanID   | String           | None Provided |
| Specific           | String           | None Provided |
| UserName           | String           | None Provided |
| \_runtime          | Runtime          | None Provided |
| isLegacy           | Boolean          | None Provided |
| parentUUID         | String           | None Provided |
| runMode            | String           | None Provided |
| title              | String           | None Provided |

***

**Executor**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#executor-1)

| Key       | Type   | Description   |
| --------- | ------ | ------------- |
| clusterId | String | None Provided |
| id        | String | None Provided |

***

**Issuer**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#issuer)

| Key       | Type   | Description   |
| --------- | ------ | ------------- |
| clusterId | String | None Provided |
| id        | String | None Provided |

***

**Policy**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#policy-1)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| id   | String | None Provided |
| name | String | None Provided |
| type | String | None Provided |

***

**Progress**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#progress-1)

| Key     | Type             | Description   |
| ------- | ---------------- | ------------- |
| current | Number _(float)_ | None Provided |
| total   | Number _(float)_ | None Provided |

***

**Resource**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#resource-1)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| id   | String | None Provided |
| name | String | None Provided |
| type | String | None Provided |

***

**Result**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#result-1)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| code    | String  | None Provided |
| payload | Payload | None Provided |

***

**Tenant**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#tenant-3)

| Key     | Type   | Description   |
| ------- | ------ | ------------- |
| id      | String | None Provided |
| locator | String | None Provided |
| name    | String | None Provided |

***

**Runtime**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#runtime-1)

| Key         | Type             | Description   |
| ----------- | ---------------- | ------------- |
| sourceStamp | Number _(float)_ | None Provided |

***

**Payload**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#payload-1)

| Key                    | Type                          | Description   |
| ---------------------- | ----------------------------- | ------------- |
| BackupActivitiesNumber | Number _(float)_              | None Provided |
| UnresolvedItemsWarning | Key-Value pair (_Dictionary_) | None Provided |

### Tenants

#### Get Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-tenant) <a href="#get-tenant" id="get-tenant"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-62)

**GET** `/api/2/tenants/{tenant_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-30)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-26)

| Key               | Type                 | Description   |
| ----------------- | -------------------- | ------------- |
| parent\_id        | Acronis Parent       | None Provided |
| subtree\_root\_id | Acronis Subtree Root | None Provided |
| editions          | Array                | None Provided |
| tenants           | Array                | None Provided |
| usage\_names      | String               | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-81)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-82)

| Key               | Type             | Description   |
| ----------------- | ---------------- | ------------- |
| ancestral\_access | Boolean          | None Provided |
| brand\_id         | Number _(float)_ | None Provided |
| brand\_uuid       | String           | None Provided |
| contact           | Contact          | None Provided |
| customer\_type    | String           | None Provided |
| default\_idp\_id  | String           | None Provided |
| enabled           | Boolean          | None Provided |
| has\_children     | Boolean          | None Provided |
| id                | String           | None Provided |
| kind              | String           | None Provided |
| language          | String           | None Provided |
| name              | String           | None Provided |
| parent\_id        | String           | None Provided |
| update\_lock      | Update Lock      | None Provided |
| version           | Number _(float)_ | None Provided |

#### List Tenants[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenants) <a href="#list-tenants" id="list-tenants"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-63)

**GET** `/api/2/tenants`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-27)

| Key                 | Type                        | Description   |
| ------------------- | --------------------------- | ------------- |
| parent\_id          | Acronis Parent Tenant       | None Provided |
| subtree\_root\_id\* | Acronis Tenant Subtree Root | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-83)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-84)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### List User Roles By Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-user-roles-by-tenant) <a href="#list-user-roles-by-tenant" id="list-user-roles-by-tenant"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-64)

**GET** `/api/2/tenants/{tenant_id}/applications/roles`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-31)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-85)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-86)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### List Tenant Children[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenant-children) <a href="#list-tenant-children" id="list-tenant-children"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-65)

**GET** `/api/2/tenants/{tenant_id}/children`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-32)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

#### List Tenant Users' UUIDs[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenant-users-uuids) <a href="#list-tenant-users-uuids" id="list-tenant-users-uuids"></a>

Retrieve user data for a specific tenant in the system. Returns a list of the User's UUIDs.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-66)

**GET** `/api/2/tenants/{tenant_id}/users`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-33)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-87)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-88)

| Key   | Type  | Description   |
| ----- | ----- | ------------- |
| items | Array | None Provided |

#### List Tenant Client UUIDs[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenant-client-uuids) <a href="#list-tenant-client-uuids" id="list-tenant-client-uuids"></a>

Retrieves UUIDs of Clients For A Tenant

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-67)

**GET** `/api/2/tenants/{tenant_id}/clients`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-34)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-89)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-90)

| Key   | Type  | Description   |
| ----- | ----- | ------------- |
| items | Array | None Provided |

#### Get Tenant MFA Status[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-tenant-mfa-status) <a href="#get-tenant-mfa-status" id="get-tenant-mfa-status"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-68)

**GET** `/api/2/tenants/{tenant_id}/mfa/status`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-35)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-91)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-92)

| Key                               | Type             | Description   |
| --------------------------------- | ---------------- | ------------- |
| mfa\_status                       | String           | None Provided |
| update\_allowed                   | Boolean          | None Provided |
| users\_count                      | Number _(float)_ | None Provided |
| users\_with\_totp\_enabled\_count | Number _(float)_ | None Provided |

#### Get Tenant's Brand Information[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-tenants-brand-information) <a href="#get-tenants-brand-information" id="get-tenants-brand-information"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-69)

**GET** `/api/2/tenants/{tenant_id}/brand`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-36)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-93)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-94)

| Key                       | Type             | Description   |
| ------------------------- | ---------------- | ------------- |
| account\_server\_url      | String           | None Provided |
| backup\_console\_url      | String           | None Provided |
| color                     | String           | None Provided |
| color\_scheme             | String           | None Provided |
| company\_name             | String           | None Provided |
| help\_url                 | String           | None Provided |
| hide\_predefined          | Number _(float)_ | None Provided |
| home\_url                 | String           | None Provided |
| id                        | String           | None Provided |
| knowledgebase\_url        | String           | None Provided |
| logotype                  | String           | None Provided |
| owns\_custom\_legal\_docs | Boolean          | None Provided |
| platform\_terms\_url      | String           | None Provided |
| privacy\_policy\_url      | String           | None Provided |
| router\_url               | String           | None Provided |
| service\_name             | String           | None Provided |
| smtp\_encryption          | String           | None Provided |
| smtp\_override            | Number _(float)_ | None Provided |
| smtp\_password            | String           | None Provided |
| smtp\_port                | Number _(float)_ | None Provided |
| smtp\_reply\_address      | String           | None Provided |
| smtp\_server              | String           | None Provided |
| smtp\_user                | String           | None Provided |
| support\_url              | String           | None Provided |
| terms\_url                | String           | None Provided |
| upsell\_url               | String           | None Provided |
| user\_guide\_url          | String           | None Provided |
| white\_labeled\_agent     | Boolean          | None Provided |

#### List Legal Documents For Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-legal-documents-for-tenant) <a href="#list-legal-documents-for-tenant" id="list-legal-documents-for-tenant"></a>

Retrieve Legal Document Information For A Tenant's Account

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-70)

**GET** `/api/2/tenants/{tenant_id}/legal_documents`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-37)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

#### Get Tenant Logo[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-tenant-logo) <a href="#get-tenant-logo" id="get-tenant-logo"></a>

Retrieve Tenant Brand Logo Image

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-71)

**GET** `/api/2/tenants/{tenant_id}/brand/logo`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-38)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

#### Create Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#create-tenant) <a href="#create-tenant" id="create-tenant"></a>

Create a new partner tenant

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-72)

**POST** `/api/2/tenants`

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-6)

| Key               | Type                  | Description                                      |
| ----------------- | --------------------- | ------------------------------------------------ |
| name\*            | String                | None Provided                                    |
| parent\_id\*      | Acronis Parent Tenant | None Provided                                    |
| enabled           | Boolean               | None Provided                                    |
| kind\*            | String                | None Provided                                    |
| contact           | Contact               | None Provided                                    |
| customer\_id      | String                | ID from external system; for reporting purposes. |
| update\_lock      | Update Lock           | None Provided                                    |
| language          | String                | None Provided                                    |
| ancestral\_access | Boolean               | Access to newly created tenant from ancestors?   |
| settings          | Setting               | None Provided                                    |

#### Update Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#update-tenant) <a href="#update-tenant" id="update-tenant"></a>

Updates a new partner tenant's fields

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-73)

**PUT** `/api/2/tenants/{tenant_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-39)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-7)

| Key               | Type                  | Description                                      |
| ----------------- | --------------------- | ------------------------------------------------ |
| name              | String                | None Provided                                    |
| parent\_id        | Acronis Parent Tenant | None Provided                                    |
| kind              | String                | None Provided                                    |
| contact           | Contact               | None Provided                                    |
| customer\_id      | String                | ID from external system; for reporting purposes. |
| enabled           | Boolean               | None Provided                                    |
| update\_lock      | Update Lock           | None Provided                                    |
| language          | String                | None Provided                                    |
| ancestral\_access | Boolean               | Access to newly created tenant from ancestors?   |
| settings          | Setting               | None Provided                                    |

#### Enable MFA For Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#enable-mfa-for-tenant) <a href="#enable-mfa-for-tenant" id="enable-mfa-for-tenant"></a>

Enable two-factor authentication for user's partner account.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-74)

**PUT** `/api/2/tenants/{tenant_id}/mfa/status`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-40)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-8)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| enabled | Boolean | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-95)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-96)

| Key                               | Type             | Description   |
| --------------------------------- | ---------------- | ------------- |
| mfa\_status                       | String           | None Provided |
| update\_allowed                   | Boolean          | None Provided |
| users\_count                      | Number _(float)_ | None Provided |
| users\_with\_totp\_enabled\_count | Number _(float)_ | None Provided |

#### Delete Tenant[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#delete-tenant) <a href="#delete-tenant" id="delete-tenant"></a>

Remove a partner's associated tenant from database.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-75)

**DELETE** `/api/2/tenants/{tenant_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-41)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

#### Get Tenant Pricing[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-tenant-pricing) <a href="#get-tenant-pricing" id="get-tenant-pricing"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-76)

**GET** `/api/2/tenants/{tenant_id}/pricing`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-42)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-97)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-98)

| Key                     | Type             | Description   |
| ----------------------- | ---------------- | ------------- |
| mode                    | String           | None Provided |
| production\_start\_date | String           | None Provided |
| version                 | Number _(float)_ | None Provided |

#### Update Tenant Pricing[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#update-tenant-pricing) <a href="#update-tenant-pricing" id="update-tenant-pricing"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-77)

**PUT** `/api/2/tenants/{tenant_id}/pricing`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-43)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-9)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| mode | String | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-99)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-100)

| Key     | Type             | Description   |
| ------- | ---------------- | ------------- |
| mode    | String           | None Provided |
| version | Number _(float)_ | None Provided |

#### List Subtenants[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-subtenants) <a href="#list-subtenants" id="list-subtenants"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-78)

**GET** `/api/2/tenants/{tenant_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-44)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

#### Get A Tenant Usage[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-a-tenant-usage) <a href="#get-a-tenant-usage" id="get-a-tenant-usage"></a>

Retrieve data on a tenant's resource consumption.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-79)

**GET** `/api/2/tenants/{tenant_id}/usages`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-45)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-28)

| Key      | Type  | Description   |
| -------- | ----- | ------------- |
| editions | Array | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-101)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-102)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-16) <a href="#objects-16" id="objects-16"></a>

**Contact**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#contact-2)

| Key       | Type   | Description   |
| --------- | ------ | ------------- |
| email     | String | None Provided |
| firstname | String | None Provided |
| lastname  | String | None Provided |

***

**Updatelock**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#updatelock-1)

| Key     | Type    | Description   |
| ------- | ------- | ------------- |
| enabled | Boolean | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-13)

| Key               | Type             | Description   |
| ----------------- | ---------------- | ------------- |
| ancestral\_access | Boolean          | None Provided |
| brand\_id         | Number _(float)_ | None Provided |
| brand\_uuid       | String           | None Provided |
| contact           | Contact          | None Provided |
| contacts          | Array            | None Provided |
| customer\_type    | String           | None Provided |
| default\_idp\_id  | String           | None Provided |
| enabled           | Boolean          | None Provided |
| has\_children     | Boolean          | None Provided |
| id                | String           | None Provided |
| internal\_tag     | String           | None Provided |
| kind              | String           | None Provided |
| language          | String           | None Provided |
| mfa\_status       | String           | None Provided |
| name              | String           | None Provided |
| parent\_id        | String           | None Provided |
| pricing\_mode     | String           | None Provided |
| update\_lock      | Update Lock      | None Provided |
| version           | Number _(float)_ | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-14)

| Key             | Type    | Description   |
| --------------- | ------- | ------------- |
| application\_id | String  | None Provided |
| is\_default     | Boolean | None Provided |
| role            | String  | None Provided |
| type            | String  | None Provided |

***

**Setting**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#setting)

| Key                | Type    | Description          |
| ------------------ | ------- | -------------------- |
| enhanced\_security | Boolean | Enables PCI DSS mode |

### Users

#### List Users[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-users) <a href="#list-users" id="list-users"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-80)

**GET** `/api/2/users`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-29)

| Key                         | Type                        | Description   |
| --------------------------- | --------------------------- | ------------- |
| with\_access\_policies      | Boolean                     | None Provided |
| updated\_since              | String                      | None Provided |
| lod                         | String                      | None Provided |
| subtree\_root\_tenant\_id\* | Acronis Subtree Root Tenant | None Provided |

#### Get User[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-user) <a href="#get-user" id="get-user"></a>

Retrieve information about a specific user.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-81)

**GET** `/api/2/users/{user_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-46)

| Key        | Type           | Description   |
| ---------- | -------------- | ------------- |
| user\_id\* | Acronis User   | None Provided |
| tenant\_id | Acronis Tenant | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-103)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-104)

| Key                  | Type             | Description   |
| -------------------- | ---------------- | ------------- |
| activated            | Boolean          | None Provided |
| business\_types      | Array            | None Provided |
| contact              | Contact          | None Provided |
| created\_at          | String           | None Provided |
| enabled              | Boolean          | None Provided |
| id                   | String           | None Provided |
| idp\_id              | String           | None Provided |
| language             | String           | None Provided |
| login                | String           | None Provided |
| mfa\_status          | String           | None Provided |
| notifications        | Array            | None Provided |
| personal\_tenant\_id | String           | None Provided |
| tenant\_id           | String           | None Provided |
| version              | Number _(float)_ | None Provided |

#### Create User[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#create-user) <a href="#create-user" id="create-user"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-82)

**POST** `/api/2/users`

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-10)

| Key                  | Type       | Description                                               |
| -------------------- | ---------- | --------------------------------------------------------- |
| enabled              | String (?) | None Provided                                             |
| business\_types      | Array      | None Provided                                             |
| contact              | Contact    | None Provided                                             |
| idp\_id              | String (?) | None Provided                                             |
| language             | String (?) | None Provided                                             |
| login\*              | String (?) | None Provided                                             |
| external\_id         | String (?) | User's ID in external identity provider (e.g. SID in AD). |
| notifications        | Array      | None Provided                                             |
| personal\_tenant\_id | String (?) | None Provided                                             |
| tenant\_id\*         | String (?) | None Provided                                             |

#### Update User[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#update-user) <a href="#update-user" id="update-user"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-83)

**PUT** `/api/2/users/{user_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-47)

| Key        | Type         | Description   |
| ---------- | ------------ | ------------- |
| user\_id\* | Acronis User | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-11)

| Key                  | Type       | Description                                               |
| -------------------- | ---------- | --------------------------------------------------------- |
| login                | String     | None Provided                                             |
| tenant\_id           | String     | None Provided                                             |
| contact              | Contact    | None Provided                                             |
| enabled              | String (?) | None Provided                                             |
| business\_types      | Array      | None Provided                                             |
| idp\_id              | String (?) | None Provided                                             |
| language             | String (?) | None Provided                                             |
| external\_id         | String (?) | User's ID in external identity provider (e.g. SID in AD). |
| notifications        | Array      | None Provided                                             |
| personal\_tenant\_id | String (?) | None Provided                                             |

#### Delete A User[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#delete-a-user) <a href="#delete-a-user" id="delete-a-user"></a>

Remove user data permanently.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-84)

**DELETE** `/api/2/users/{user_id}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-48)

| Key        | Type         | Description   |
| ---------- | ------------ | ------------- |
| user\_id\* | Acronis User | None Provided |

#### Send Activation Email To User[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#send-activation-email-to-user) <a href="#send-activation-email-to-user" id="send-activation-email-to-user"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-85)

**POST** `/api/2/users/{user_id}/send-activation-email`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-49)

| Key        | Type         | Description   |
| ---------- | ------------ | ------------- |
| user\_id\* | Acronis User | None Provided |

#### List Tenant Application Roles[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenant-application-roles) <a href="#list-tenant-application-roles" id="list-tenant-application-roles"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-86)

**GET** `/api/2/tenants/{tenant_id}/applications/roles`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-50)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-12)

| Key     | Type       | Description   |
| ------- | ---------- | ------------- |
| enabled | Boolean    | None Provided |
| version | String (?) | None Provided |

#### Get A User's Access Policies[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-a-users-access-policies) <a href="#get-a-users-access-policies" id="get-a-users-access-policies"></a>

Retrieve authorized user roles.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-87)

**GET** `/api/2/users/{user_id}/access_policies`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-51)

| Key        | Type         | Description   |
| ---------- | ------------ | ------------- |
| user\_id\* | Acronis User | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-105)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-106)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### List Tenant's Offered Items[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-tenants-offered-items) <a href="#list-tenants-offered-items" id="list-tenants-offered-items"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-88)

**GET** `/api/2/tenants/{tenant_id}/offering_items`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-52)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-30)

| Key     | Type            | Description   |
| ------- | --------------- | ------------- |
| edition | Acronis Edition | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-107)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-108)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

#### Update Tenant's Products[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#update-tenants-products) <a href="#update-tenants-products" id="update-tenants-products"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-89)

**PUT** `/api/2/tenants/{tenant_id}/offering_items`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-53)

| Key          | Type           | Description   |
| ------------ | -------------- | ------------- |
| tenant\_id\* | Acronis Tenant | None Provided |

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-13)

| Key             | Type    | Description   |
| --------------- | ------- | ------------- |
| offering\_items | Product | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-109)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-110)

| Key   | Type | Description   |
| ----- | ---- | ------------- |
| items | Item | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-17) <a href="#objects-17" id="objects-17"></a>

**Contact**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#contact-3)

| Key       | Type   | Description   |
| --------- | ------ | ------------- |
| email     | String | None Provided |
| firstname | String | None Provided |
| lastname  | String | None Provided |
| state     | String | None Provided |

***

**Contact**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#contact-4)

| Key              | Type       | Description   |
| ---------------- | ---------- | ------------- |
| email\*          | String (?) | None Provided |
| firstname        | String (?) | None Provided |
| lastname         | String (?) | None Provided |
| phone            | String (?) | None Provided |
| state            | String (?) | None Provided |
| address1         | String (?) | None Provided |
| address2         | String (?) | None Provided |
| title            | String (?) | None Provided |
| website          | String (?) | None Provided |
| email\_confirmed | String (?) | None Provided |
| country          | String (?) | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-15)

| Key           | Type             | Description   |
| ------------- | ---------------- | ------------- |
| id            | String           | None Provided |
| issuer\_id    | String           | None Provided |
| role\_id      | String           | None Provided |
| tenant\_id    | String           | None Provided |
| trustee\_id   | String           | None Provided |
| trustee\_type | String           | None Provided |
| version       | Number _(float)_ | None Provided |

***

**Product**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#product)

| Key               | Type                | Description                                                                                                                                                                                                    |
| ----------------- | ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| application\_id   | Acronis Application | None Provided                                                                                                                                                                                                  |
| deleted\_at       | String              | A filter by date when the alert was dismissed. Must be a Unix timestamp in nanoseconds. Available operators: eq - equals lt - less than gt - greater than le - less than or equals ge - greater than or equals |
| edition           | Acronis Edition     | None Provided                                                                                                                                                                                                  |
| infra\_id         | Acronis Infra       | None Provided                                                                                                                                                                                                  |
| locked            | Boolean             | None Provided                                                                                                                                                                                                  |
| measurement\_unit | String              | None Provided                                                                                                                                                                                                  |
| name              | String              | None Provided                                                                                                                                                                                                  |
| quota             | Quotum              | None Provided                                                                                                                                                                                                  |
| status            | Number _(float)_    | None Provided                                                                                                                                                                                                  |
| tenant\_id        | Acronis Tenant      | None Provided                                                                                                                                                                                                  |
| type              | String              | None Provided                                                                                                                                                                                                  |
| updated\_at       | String              | None Provided                                                                                                                                                                                                  |
| usage\_name       | String              | None Provided                                                                                                                                                                                                  |

***

**Quotum**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#quotum)

| Key     | Type             | Description   |
| ------- | ---------------- | ------------- |
| overage | Number _(float)_ | None Provided |
| value   | Number _(float)_ | None Provided |
| version | Number _(float)_ | None Provided |

### Vaults

Retrieve users' stored items credentials from secure data repository.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-90)

**GET** `/api/vault_manager/v1/vaults`

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-31)

| Key                   | Type                    | Description                                                                                              |
| --------------------- | ----------------------- | -------------------------------------------------------------------------------------------------------- |
| hostname              | String                  | Filter vaults by hostname. Supports matching any number of characters using asterisk wildcard character. |
| storageNodeId         | Acronis Storage Node ID | ID of Storage node to search vaults for.                                                                 |
| managed               | String                  | Show only managed or unmanaged vaults. If not specified, all types of vaults are listed.                 |
| name                  | String                  | Filter vaults ny name. Supports matching any number of characters using asterisk wildcard character.     |
| resourceId            | String                  | Show only vaults which contain archives of specified resource ID.                                        |
| uri                   | String                  | Filter vaults by URI. Supports matching any numbers using asterisk wildcard character.                   |
| type                  | String                  | Show only vaults of specified storage types.                                                             |
| storageId             | String                  | Show only vaults in the storage with specified ID.                                                       |
| accessibleForAgent    | String                  | Show only vaults that:                                                                                   |
| tenantId              | Acronis Tenant ID       | Show only vaults in specific Tenant ID (do not include its subtenants).                                  |
| includeStats          | String (?)              | Calculate and include vault stats.                                                                       |
| includeLastBackupTime | Boolean                 | Calculate and include vault's last backup time.                                                          |
| includeActions        | String (?)              | Calculate and include possible actions in the response.                                                  |
| count                 | String (?)              | Show total count in the response.                                                                        |
| order                 | String                  | An ordering filter that orders the results by column name                                                |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-111)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-112)

| Key     | Type | Description   |
| ------- | ---- | ------------- |
| \_links | Link | None Provided |
| items   | Item | None Provided |

#### Create Or Attach Vault[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#create-or-attach-vault) <a href="#create-or-attach-vault" id="create-or-attach-vault"></a>

Create or attach a secure storage vault.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-91)

**POST** `/api/vault_manager/v1/vaults`

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-14)

| Key    | Type   | Description   |
| ------ | ------ | ------------- |
| action | String | None Provided |
| config | Config | None Provided |

#### Get Vault[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-vault) <a href="#get-vault" id="get-vault"></a>

Retrieve secure data from protected storage.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-92)

**GET** `/api/vault_manager/v1/vaults/{vaultId}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-54)

| Key       | Type          | Description   |
| --------- | ------------- | ------------- |
| vaultId\* | Acronis Vault | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-32)

| Key                   | Type       | Description                                             |
| --------------------- | ---------- | ------------------------------------------------------- |
| includeStats          | String (?) | Calculate and include vault stats.                      |
| includeLastBackupTime | Boolean    | Calculate and include vault last backup time.           |
| includeActions        | String (?) | Calculate and include possible actions in the response. |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-113)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-114)

| Key                 | Type             | Description   |
| ------------------- | ---------------- | ------------- |
| \_links             | Link             | None Provided |
| access\_address     | String           | None Provided |
| actions             | Array            | None Provided |
| consistent          | Boolean          | None Provided |
| free\_space         | Number _(float)_ | None Provided |
| hostname            | String           | None Provided |
| id                  | String           | None Provided |
| last\_seen\_at      | String           | None Provided |
| managing\_agent\_id | String           | None Provided |
| name                | String           | None Provided |
| organizational      | Boolean          | None Provided |
| settings            | Setting          | None Provided |
| status              | Status           | None Provided |
| storage\_type       | String           | None Provided |
| storage\_uri        | String           | None Provided |
| tenant\_id          | String           | None Provided |
| tenant\_locator     | String           | None Provided |
| tenant\_name        | String           | None Provided |
| total\_space        | Number _(float)_ | None Provided |
| uri                 | String           | None Provided |
| version             | String           | None Provided |

#### Delete Vault[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#delete-vault) <a href="#delete-vault" id="delete-vault"></a>

Removes a secure storage container and its contents.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-93)

**DELETE** `/api/vault_manager/v1/vaults/{vault_id}`

**JSON Body**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#json-body-15)

| Key    | Type   | Description   |
| ------ | ------ | ------------- |
| action | String | None Provided |

#### List Vault Archives[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-vault-archives) <a href="#list-vault-archives" id="list-vault-archives"></a>

Retrieve stored data backups from Vault.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-94)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/archives`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-55)

| Key       | Type          | Description   |
| --------- | ------------- | ------------- |
| vaultId\* | Acronis Vault | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-33)

| Key                       | Type            | Description                                                                                                                                                                                                                                |
| ------------------------- | --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| archiveId                 | Acronis Archive | None Provided                                                                                                                                                                                                                              |
| showDeleted               | String          | A flag that specifies what should be added to the list of returned backups                                                                                                                                                                 |
| includeStats              | Boolean         | Include additional information about archive                                                                                                                                                                                               |
| agentId                   | String (?)      | Show a list of archives of specified agent ID.                                                                                                                                                                                             |
| name                      | String          | Show a list of archives of specified archive name. Supports matching any number of characters using asterisk wildcard character if it's enabled with the wildcard query string parameter.                                                  |
| wildcard                  | String (?)      | Enable wildcard support in the name filter.                                                                                                                                                                                                |
| resourceId                | String (?)      | Show only archives that contain backups for at least one resource from the specified list.                                                                                                                                                 |
| storageType               | String (?)      | Show a list of Archives in vaults of specified storage types.                                                                                                                                                                              |
| type                      | String (?)      | Show a list of Archives of specified types.                                                                                                                                                                                                |
| format                    | String (?)      | Show a list of Archives of specified formats.                                                                                                                                                                                              |
| backupPlanId              | String (?)      | Show only archives created by backup plan with specified ID.                                                                                                                                                                               |
| centralizedPlanId         | String (?)      | Show only archives created by centralized plan with specified ID.                                                                                                                                                                          |
| includeCatalogInfo        | Boolean         | Include cataloged status of archive. If false or not specified, cataloged\_status and actions fields will not be included in the response data.                                                                                            |
| forensic                  | String (?)      | Show only archives with forensic data or without forensic. If not specified, archives are listed regardless of forensic data.                                                                                                              |
| includePrePatchManagement | String (?)      | Include pre-patch management status of archive. If false or not specified, the pre\_patch\_management field will not be included in the response data.                                                                                     |
| prePatchManagementOnly    | String (?)      | Show only archives with at least one backup which was made before patch management. If false or not specified, archives are listed regardless of this filter.                                                                              |
| includeMalwareFound       | String (?)      | Include malware assessment result of backups in the archive. If false or not specified, the malware\_found field will not be included in the response data.                                                                                |
| malwareFound              | Boolean         | Show only archives with backups that have the specified malware status. Possible malware statuses: notScanned - No backups were scanned in the archive. clean - Backups that don't contain malware. malware - Backup that contain malware. |
| fromDate                  | String (?)      | Filters archives by the last updated date and time that is greater or equal to the given date and time.                                                                                                                                    |
| toDate                    | String (?)      | Filters archives by the last updated date and time that is less than or equal to the given date and time.                                                                                                                                  |
| includeActions            | String (?)      | Calculate and include possible actions in the response.                                                                                                                                                                                    |
| targetAgentId             | String (?)      | Select target agent to calculate actions.                                                                                                                                                                                                  |
| count                     | String (?)      | Show total count in the response.                                                                                                                                                                                                          |
| order                     | String          | An ordering filter that orders the results by column name                                                                                                                                                                                  |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-115)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-116)

| Key     | Type | Description   |
| ------- | ---- | ------------- |
| \_links | Link | None Provided |
| items   | Item | None Provided |

#### Get Vault Archive Backup[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-vault-archive-backup) <a href="#get-vault-archive-backup" id="get-vault-archive-backup"></a>

Retrieve backups of Vault archive.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-95)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/archives/{archiveId}/backups/{backupId}`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-56)

| Key         | Type            | Description   |
| ----------- | --------------- | ------------- |
| vaultId\*   | Acronis Vault   | None Provided |
| archiveId\* | Acronis Archive | None Provided |
| backupId\*  | String          | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-34)

| Key   | Type       | Description                                                                                                                                    |
| ----- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| embed | String (?) | An array of field names to include in the response. Each value represents the name of the extension field to be included in the base response. |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-117)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-118)

| Key                             | Type             | Description   |
| ------------------------------- | ---------------- | ------------- |
| \_links                         | Link             | None Provided |
| archive\_id                     | String           | None Provided |
| attributes                      | Attribute        | None Provided |
| backed\_up\_data\_size          | Number _(float)_ | None Provided |
| backup\_id                      | String           | None Provided |
| created                         | String           | None Provided |
| created\_in\_network\_isolation | Boolean          | None Provided |
| deduplicated\_size              | Number _(float)_ | None Provided |
| deleted                         | Boolean          | None Provided |
| deleted\_immutable              | Boolean          | None Provided |
| disks                           | Disk             | None Provided |
| items\_added                    | Number _(float)_ | None Provided |
| items\_changed                  | Number _(float)_ | None Provided |
| items\_removed                  | Number _(float)_ | None Provided |
| last\_seen\_at                  | String           | None Provided |
| legacy\_id                      | String           | None Provided |
| marked\_for\_deletion           | Boolean          | None Provided |
| notarized                       | Boolean          | None Provided |
| original\_data\_size            | Number _(float)_ | None Provided |
| resource\_ids                   | Array            | None Provided |
| size                            | Number _(float)_ | None Provided |
| source\_key                     | String           | None Provided |
| source\_usn                     | Number _(float)_ | None Provided |
| tenant\_id                      | String           | None Provided |
| tenant\_locator                 | String           | None Provided |
| type                            | String           | None Provided |
| vault\_id                       | String           | None Provided |

#### Returns Screenshot Of Complete Vault Archive Backup[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#returns-screenshot-of-complete-vault-archive-backup) <a href="#returns-screenshot-of-complete-vault-archive-backup" id="returns-screenshot-of-complete-vault-archive-backup"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-96)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/archives/{archiveId}/backups/{backupId}/validation_status/screenshot_full`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-57)

| Key         | Type            | Description   |
| ----------- | --------------- | ------------- |
| vaultId\*   | Acronis Vault   | None Provided |
| archiveId\* | Acronis Archive | None Provided |
| backupId\*  | String          | None Provided |

#### Retrieve Thumbnail Image Of A Vault Archive Backup Screenshot[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#retrieve-thumbnail-image-of-a-vault-archive-backup-screenshot) <a href="#retrieve-thumbnail-image-of-a-vault-archive-backup-screenshot" id="retrieve-thumbnail-image-of-a-vault-archive-backup-screenshot"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-97)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/archives/{archiveId}/backups/{backupId}/validation_status/screenshot_preview`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-58)

| Key         | Type            | Description   |
| ----------- | --------------- | ------------- |
| vaultId\*   | Acronis Vault   | None Provided |
| archiveId\* | Acronis Archive | None Provided |
| backupId\*  | String          | None Provided |

#### Get Full Screenshot[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-full-screenshot) <a href="#get-full-screenshot" id="get-full-screenshot"></a>

Retrieve complete webpage visual.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-98)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/archives/{archiveId}/backups/{backupId}/automated_test_failover_validation_status/screenshot_full`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-59)

| Key         | Type            | Description   |
| ----------- | --------------- | ------------- |
| vaultId\*   | Acronis Vault   | None Provided |
| archiveId\* | Acronis Archive | None Provided |
| backupId\*  | String          | None Provided |

#### Get Screenshot Preview[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-screenshot-preview) <a href="#get-screenshot-preview" id="get-screenshot-preview"></a>

Returns a preview image of a webpage.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-99)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/archives/{archiveId}/backups/{backupId}/automated_test_failover_validation_status/screenshot_preview`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-60)

| Key         | Type            | Description   |
| ----------- | --------------- | ------------- |
| vaultId\*   | Acronis Vault   | None Provided |
| archiveId\* | Acronis Archive | None Provided |
| backupId\*  | String          | None Provided |

#### List Timestamps Of Backups For Vault Archive[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-timestamps-of-backups-for-vault-archive) <a href="#list-timestamps-of-backups-for-vault-archive" id="list-timestamps-of-backups-for-vault-archive"></a>

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-100)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/archives/{archiveId}/backup_timestamps`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-61)

| Key         | Type            | Description   |
| ----------- | --------------- | ------------- |
| vaultId\*   | Acronis Vault   | None Provided |
| archiveId\* | Acronis Archive | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-35)

| Key         | Type       | Description                                                                |
| ----------- | ---------- | -------------------------------------------------------------------------- |
| resourceId  | String     | Show timestamps only for specified resource.                               |
| created     | String (?) | Show backups created only within specified time range.                     |
| granularity | String     | Granularity interval of grouped backup in seconds.                         |
| tzOffset    | String     | Timezone difference from current timezone to UTC in minutes.               |
| showDeleted | String     | A flag that specifies what should be added to the list of returned backups |
| offset      | String     | The number of elements to skp before beginning to return elements.         |
| count       | String (?) | Show total count in the response.                                          |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-119)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-120)

| Key     | Type  | Description   |
| ------- | ----- | ------------- |
| \_links | Link  | None Provided |
| items   | Array | None Provided |

#### List Vault Archive Backups[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#list-vault-archive-backups) <a href="#list-vault-archive-backups" id="list-vault-archive-backups"></a>

Retrieve archives of Vault backups.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-101)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/archives/{archiveId}/backups`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-62)

| Key         | Type            | Description   |
| ----------- | --------------- | ------------- |
| vaultId\*   | Acronis Vault   | None Provided |
| archiveId\* | Acronis Archive | None Provided |

**Query Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#query-params-36)

| Key                           | Type       | Description                                                                                                                                                          |
| ----------------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| resourceId                    | String (?) | Show only backups for specified resources.                                                                                                                           |
| changeTag                     | String (?) | Show only backups for specified change tag.                                                                                                                          |
| showDeleted                   | String     | A flag that specifies what should be added to the list of returned backups                                                                                           |
| embed                         | String (?) | An array of field names to include in the response. Each value represents the name of the extension field to be included in the base response.                       |
| created                       | String (?) | Show only backups created within specified time range.                                                                                                               |
| protectedByPassword           | String (?) | Show only backups in protected by password or unprotected by password archives. If not specified, backups are listed regardless of their password protection status. |
| backupType                    | String     | Show only backups of specified types                                                                                                                                 |
| tapeId                        | String (?) | Show only backups for specified tapes.                                                                                                                               |
| triggeredBy                   | String (?) | Show a list of Backups triggered by specified reason.                                                                                                                |
| avScanningDate                | String (?) | Show only backups scanned within the specified time range OR never scanned backups if "none" is specified.                                                           |
| vulnerabilityAssessmentStatus | String     | Show only backups with specified Vulnerability Assessment Result statuses                                                                                            |
| malwareAssessmentStatus       | String (?) | Show only backups with specified Malware Assessment Result statuses.                                                                                                 |
| includeActions                | String (?) | Calculate and include possible actions in the response.                                                                                                              |
| targetAgentId                 | String (?) | Select target agent to calculate actions.                                                                                                                            |
| count                         | String (?) | Show total count in the response.                                                                                                                                    |
| order                         | String     | An ordering filter that orders the results by column name                                                                                                            |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-121)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-122)

| Key     | Type | Description   |
| ------- | ---- | ------------- |
| \_links | Link | None Provided |
| items   | Item | None Provided |

#### Get Vault Configuration[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-vault-configuration) <a href="#get-vault-configuration" id="get-vault-configuration"></a>

Retrieve configuration settings for Vault.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-102)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/config`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-63)

| Key       | Type          | Description   |
| --------- | ------------- | ------------- |
| vaultId\* | Acronis Vault | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-123)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-124)

| Key                 | Type             | Description   |
| ------------------- | ---------------- | ------------- |
| \_links             | Link             | None Provided |
| access\_address     | String           | None Provided |
| consistent          | Boolean          | None Provided |
| hostname            | String           | None Provided |
| id                  | String           | None Provided |
| last\_seen\_at      | String           | None Provided |
| managing\_agent\_id | String           | None Provided |
| name                | String           | None Provided |
| organizational      | Boolean          | None Provided |
| settings            | Setting          | None Provided |
| source\_key         | String           | None Provided |
| source\_usn         | Number _(float)_ | None Provided |
| storage\_type       | String           | None Provided |
| storage\_uri        | String           | None Provided |
| tenant\_id          | String           | None Provided |
| tenant\_locator     | String           | None Provided |
| tenant\_name        | String           | None Provided |
| uri                 | String           | None Provided |
| version             | String           | None Provided |

#### Get Vault Statistics[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-vault-statistics) <a href="#get-vault-statistics" id="get-vault-statistics"></a>

Retrieve usage data for your Vault storage.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-103)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/stats`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-64)

| Key       | Type          | Description   |
| --------- | ------------- | ------------- |
| vaultId\* | Acronis Vault | None Provided |

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-125)

A **key-value** pair that includes the following keys:

**Response**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#response-126)

| Key                    | Type             | Description   |
| ---------------------- | ---------------- | ------------- |
| \_links                | Link             | None Provided |
| archive\_count         | Number _(float)_ | None Provided |
| backed\_up\_data\_size | Number _(float)_ | None Provided |
| backup\_count          | Number _(float)_ | None Provided |
| free\_space            | Number _(float)_ | None Provided |
| logical\_archive\_size | Number _(float)_ | None Provided |
| occupied\_data\_size   | Number _(float)_ | None Provided |
| original\_data\_size   | Number _(float)_ | None Provided |
| total\_space           | Number _(float)_ | None Provided |

#### Get Vault Agents[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#get-vault-agents) <a href="#get-vault-agents" id="get-vault-agents"></a>

Retrieve information about deployed Vault Agents.

**Request**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#request-104)

**GET** `/api/vault_manager/v1/vaults/{vaultId}/agents`

**Path Params**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#path-params-65)

| Key       | Type          | Description   |
| --------- | ------------- | ------------- |
| vaultId\* | Acronis Vault | None Provided |

***

#### Objects[​](http://localhost:3000/docs/integrations/Security/security-acronis-integration#objects-18) <a href="#objects-18" id="objects-18"></a>

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-8)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

***

**Item**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#item-16)

| Key                 | Type             | Description   |
| ------------------- | ---------------- | ------------- |
| access\_address     | String           | None Provided |
| actions             | Array            | None Provided |
| consistent          | Boolean          | None Provided |
| free\_space         | Number _(float)_ | None Provided |
| hostname            | String           | None Provided |
| id                  | String           | None Provided |
| last\_seen\_at      | String           | None Provided |
| managing\_agent\_id | String           | None Provided |
| name                | String           | None Provided |
| organizational      | Boolean          | None Provided |
| settings            | Setting          | None Provided |
| status              | Status           | None Provided |
| storage\_type       | String           | None Provided |
| storage\_uri        | String           | None Provided |
| tenant\_id          | String           | None Provided |
| tenant\_locator     | String           | None Provided |
| tenant\_name        | String           | None Provided |
| total\_space        | Number _(float)_ | None Provided |
| uri                 | String           | None Provided |
| version             | String           | None Provided |

***

**Config**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#config)

| Key                 | Type                   | Description   |
| ------------------- | ---------------------- | ------------- |
| access\_address     | String                 | None Provided |
| hostname            | String                 | None Provided |
| managing\_agent\_id | Acronis Managing Agent | None Provided |
| name                | String                 | None Provided |
| settings            | Storage Setting        | None Provided |
| storage\_id         | Acronis Storage        | None Provided |
| storage\_type       | String                 | None Provided |

***

**Link**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#link-9)

| Key  | Type   | Description   |
| ---- | ------ | ------------- |
| href | String | None Provided |
| rel  | String | None Provided |

***

**Setting**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#setting-1)

| Key          | Type   | Description   |
| ------------ | ------ | ------------- |
| storage\_uri | String | None Provided |

***

**Status**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#status)

| Key           | Type   | Description   |
| ------------- | ------ | ------------- |
| status        | String | None Provided |
| status\_error | String | None Provided |

***

**Attribute**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#attribute-2)

| Key          | Type   | Description   |
| ------------ | ------ | ------------- |
| is\_vm       | String | None Provided |
| stream\_name | String | None Provided |
| uri          | String | None Provided |
| vm\_kind     | String | None Provided |

***

**Disk**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#disk-1)

| Key           | Type             | Description   |
| ------------- | ---------------- | ------------- |
| device\_model | String           | None Provided |
| name          | String           | None Provided |
| size          | Number _(float)_ | None Provided |
| volumes       | Volume           | None Provided |

***

**Storagesetting**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#storagesetting)

| Key           | Type   | Description   |
| ------------- | ------ | ------------- |
| comment       | String | None Provided |
| storage\_type | String | None Provided |
| storage\_uri  | String | None Provided |

***

**Volume**[**​**](http://localhost:3000/docs/integrations/Security/security-acronis-integration#volume-1)

| Key          | Type             | Description   |
| ------------ | ---------------- | ------------- |
| free\_space  | Number _(float)_ | None Provided |
| is\_bootable | Boolean          | None Provided |
| is\_system   | Boolean          | None Provided |
| mount\_strid | String           | None Provided |
| name         | String           | None Provided |
| size         | Number _(float)_ | None Provided |
