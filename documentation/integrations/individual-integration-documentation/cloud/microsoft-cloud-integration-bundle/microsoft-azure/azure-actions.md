# Azure Actions

## Overview

The Microsoft Azure Actions page details the range of operations that can be performed through the Azure integration within Rewst. Organized by categories, it provides specific actions for managing accounts, blob containers, key vaults, storage accounts, virtual machines, and virtual networks.

## Account

#### **List Subscriptions**[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-subscriptions) <a href="#list-subscriptions" id="list-subscriptions"></a>

List all subscriptions for the current account

**Subscription Request**[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#subscription-request)

GET `subscriptions`

| Key         | Type       | Description   |
| ----------- | ---------- | ------------- |
| api-version | String (?) | None Provided |

#### List Resource Groups[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-resource-groups) <a href="#list-resource-groups" id="list-resource-groups"></a>

List all resource groups for the current account

**Resource Groups Request**[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#resource-groups-request)

GET `{subscription_id}/resourcegroups`

| Key              | Type                         | Description                    |
| ---------------- | ---------------------------- | ------------------------------ |
| subscription\_id | Microsoft Azure Subscription | The Azure subscription to Use. |
| api-version      | String (?)                   | None Provided                  |

## Blob Containers

#### **List Blob Storage Containers**[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-blob-storage-containers) <a href="#list-blob-storage-containers" id="list-blob-storage-containers"></a>

Retrieves a list of blob storage containers in the specified Azure subscription.

**Containers Request**[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#containers-request)

GET `{storage_account}/blobServices/default/containers`

| Key                | Type                            | Description                                                                   |
| ------------------ | ------------------------------- | ----------------------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription    | The Azure subscription to Use.                                                |
| resource\_group\*  | Microsoft Azure Resource Group  | The name of the resource group that contains the storage account/blob storage |
| storage\_account\* | Microsoft Azure Storage Account | The Azure Storage Account to use                                              |
| api-version        | String (?)                      | None Provided                                                                 |

#### Get Blob Storage Container[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-blob-storage-container) <a href="#get-blob-storage-container" id="get-blob-storage-container"></a>

Retrieves a blob storage container in the specified storage account.

**Blob Storage Request**[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#blob-storage-request)

GET `{blobStorageId}`

| Key                | Type                            | Description                                                       |
| ------------------ | ------------------------------- | ----------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription    | The Azure subscription to Use.                                    |
| resource\_group    | Microsoft Azure Resource Group  | The name of the resource group that contains the storage accounts |
| storage\_account\* | Microsoft Azure Storage Account | The Storage account the blob storage is in                        |
| blobStorageId\*    | Microsoft Azure Blob Storage    | The Blob Storage to reference                                     |
| api-version        | String (?)                      | None Provided                                                     |

#### Delete Blob Storage Container[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-blob-storage-container) <a href="#delete-blob-storage-container" id="delete-blob-storage-container"></a>

Deletes a blob storage container in the specified storage account.

**Blob Storage Container Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#blob-storage-container-request)

DELETE `{blobStorageId}`

| Key                | Type                            | Description                                                       |
| ------------------ | ------------------------------- | ----------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription    | The Azure subscription to Use.                                    |
| resource\_group    | Microsoft Azure Resource Group  | The name of the resource group that contains the storage accounts |
| storage\_account\* | Microsoft Azure Storage Account | The Storage account the blob storage is in                        |
| blobStorageId\*    | Microsoft Azure Blob Storage    | The Blob Storage to reference                                     |
| api-version        | String (?)                      | None Provided                                                     |

#### Create Blob Storage Container[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-blob-storage-container) <a href="#create-blob-storage-container" id="create-blob-storage-container"></a>

Creates a BlobStorage Container in the specified resource group.

**Create Blob Storage Container Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-blob-storage-container-request)

PUT `{storage_account}/blobServices/default/containers/{container_name}`

| Key                | Type                            | Description                                                       |
| ------------------ | ------------------------------- | ----------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription    | The Azure subscription to Use.                                    |
| resource\_group    | Microsoft Azure Resource Group  | The name of the resource group that contains the storage accounts |
| storage\_account\* | Microsoft Azure Storage Account | The Storage account the blob storage is in                        |
| container\_name\*  | String (?)                      | The name of the new blob storage                                  |
| api-version        | String (?)                      | None Provided                                                     |

***

#### Blob Container Objects[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#blob-container-objects) <a href="#blob-container-objects" id="blob-container-objects"></a>

**Blob Container Object Properties**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#blob-container-object-properties)

| Key                         | Type       | Description                                                             |
| --------------------------- | ---------- | ----------------------------------------------------------------------- |
| publicAccess                | String (?) | None Provided                                                           |
| defaultEncryptionScope      | String (?) | Default the container to use specified encryption scope for all writes. |
| denyEncryptionScopeOverride | String (?) | Block override of encryption scope from the container default.          |
| enableNfsV3AllSquash        | String (?) | Enable NFSv3 all squash on blob container?                              |
| enableNfsV3RootSquash       | String (?) | Enable NFSv3 root squash on blob container?                             |

## Key Vaults

#### List Key Vaults[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-key-vaults) <a href="#list-key-vaults" id="list-key-vaults"></a>

Retrieves a list of Key Vaults in a specified resource group

**List Key Vaults Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-key-vaults-request)

GET `{resource_group}/providers/Microsoft.KeyVault/vaults`

| Key                | Type                           | Description                                                 |
| ------------------ | ------------------------------ | ----------------------------------------------------------- |
| subscription\_id\* | Microsoft Azure Subscription   | The Azure subscription to Use.                              |
| resource\_group\*  | Microsoft Azure Resource Group | The name of the resource group that contains the key vaults |
| api-version        | String (?)                     | None Provided                                               |

#### Get Key Vault[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-key-vault) <a href="#get-key-vault" id="get-key-vault"></a>

Gets a specified Key Vault from a resource group

**Get Key Vault Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-key-vault-request)

GET `{vaultID}`

| Key                | Type                           | Description                                                |
| ------------------ | ------------------------------ | ---------------------------------------------------------- |
| subscription\_id\* | Microsoft Azure Subscription   | The Azure subscription to Use.                             |
| resource\_group\*  | Microsoft Azure Resource Group | The name of the resource group that contains the key vault |
| vaultID\*          | Microsoft Azure Key Vault      | The Azure key vault to reference.                          |
| api-version        | String (?)                     | None Provided                                              |

#### Delete Key Vault[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-key-vault) <a href="#delete-key-vault" id="delete-key-vault"></a>

Deletes a specified Key Vault in a resource group

**Delete Key Vault Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-key-vault-request)

DELETE `{vaultID}`

| Key               | Type                           | Description                                                |
| ----------------- | ------------------------------ | ---------------------------------------------------------- |
| subscription\_id  | Microsoft Azure Subscription   | The Azure subscription to Use.                             |
| resource\_group\* | Microsoft Azure Resource Group | The name of the resource group that contains the key vault |
| vaultID\*         | Microsoft Azure Key Vault      | The Azure key vault to reference.                          |
| api-version       | String (?)                     | None Provided                                              |

#### Create Key Vault[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-key-vault) <a href="#create-key-vault" id="create-key-vault"></a>

Creates a new Key Vault in a specified resource group

**Create Key Vault Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-key-vault-request)

PUT `{resource_group}/providers/Microsoft.KeyVault/vaults/{keyVaultName}`

| Key                | Type                           | Description                                                  |
| ------------------ | ------------------------------ | ------------------------------------------------------------ |
| subscription\_id\* | Microsoft Azure Subscription   | The Azure subscription to Use.                               |
| resource\_group\*  | Microsoft Azure Resource Group | The name of the resource group that contains the key vaults. |
| keyVaultName\*     | String (?)                     | None Provided                                                |
| api-version        | String (?)                     | None Provided                                                |
| location\*         | String                         | The Azure Region to use                                      |

#### List Keys In Key Vault[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-keys-in-key-vault) <a href="#list-keys-in-key-vault" id="list-keys-in-key-vault"></a>

Lists Keys in a specified Key Vault

**List Keys In Key Vault Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-keys-in-key-vault-request)

GET `{vault_base_url}keys`

| Key                | Type                           | Description                       |
| ------------------ | ------------------------------ | --------------------------------- |
| subscription\_id   | Microsoft Azure Subscription   | The Azure subscription to Use.    |
| resource\_group    | Microsoft Azure Resource Group | The Azure Resource Group          |
| vault\_base\_url\* | Microsoft Azure Key Vault      | The Azure key vault to reference. |
| api-version        | String (?)                     | None Provided                     |

#### Create Key In Key Vault[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-key-in-key-vault) <a href="#create-key-in-key-vault" id="create-key-in-key-vault"></a>

Creates a new Key in a specified Key Vault

**Create Key In Key Vault Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-key-in-key-vault-request)

POST `{vault_base_url}keys/{keyName}/create`

| Key                | Type                           | Description                                                                            |
| ------------------ | ------------------------------ | -------------------------------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription   | The Azure subscription to Use.                                                         |
| resource\_group    | Microsoft Azure Resource Group | The Azure Resource Group                                                               |
| vault\_base\_url\* | Microsoft Azure Key Vault      | The Azure key vault to reference.                                                      |
| keyName\*          | String (?)                     | None Provided                                                                          |
| api-version        | String (?)                     | None Provided                                                                          |
| kty\*              | String (?)                     | None Provided                                                                          |
| crv                | String (?)                     | None Provided                                                                          |
| public\_exponent   | String (?)                     | The public exponent for a RSA key. This applies only to keys created in a Managed HSM. |
| key\_size\*        | String (?)                     | None Provided                                                                          |
| key\_ops           | String (?)                     | None Provided                                                                          |
| tags               | String (?)                     | Tags to assign to the key                                                              |

#### Delete Key In Key Vault[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-key-in-key-vault) <a href="#delete-key-in-key-vault" id="delete-key-in-key-vault"></a>

Deletes a Key in a specified Key Vault

**Delete Key In Key Vault Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-key-in-key-vault-request)

DELETE `{key_id}`

| Key                | Type                           | Description                           |
| ------------------ | ------------------------------ | ------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription   | The Azure subscription to Use.        |
| resource\_group    | Microsoft Azure Resource Group | The Azure Resource Group              |
| vault\_base\_url\* | Microsoft Azure Key Vault      | The Azure key vault to reference.     |
| key\_id\*          | Microsoft Azure Key Name       | The key to reference in the key vault |
| api-version        | String (?)                     | None Provided                         |

***

#### Key Vault Objects[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#key-vault-objects) <a href="#key-vault-objects" id="key-vault-objects"></a>

**Key Vault Object Properties**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#key-vault-object-properties)

| Key                          | Type                   | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---------------------------- | ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| tenantId\*                   | Microsoft Azure Tenant | The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.                                                                                                                                                                                                                                                                                                                                                                                                                               |
| enablePurgeProtection        | String (?)             | Property specifying whether protection against purge is enabled for this vault.Setting this property to true activates protection against purge for this vault and its content;only the Key Vault service may initiate a hard, irrecoverable deletion. The setting is effective onlyif soft delete is also enabled. Enabling this functionality is irreversible - that is, the propertydoes not accept false as its value.                                                                                                           |
| enableRbacAuthorization      | String (?)             | Property that controls how data actions are authorized.When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, andthe access policies specified in vault properties will be ignored. When false, the key vault will use theaccess policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored.If null or not specified, the vault is created with the default value of false.Note that management actions are always authorized with RBAC. |
| enableSoftDelete             | String (?)             | Property to specify whether the 'soft delete' functionality is enabled for this key vault.If it's not set to any value(true or false) when creating new key vault, it will be set to true by default.Once set to true, it cannot be reverted to false.                                                                                                                                                                                                                                                                               |
| enabledForDeployment         | String (?)             | Property to specify whether Azure Virtual Machines are permitted to retrieve certificatesstored as secrets from the key vault.                                                                                                                                                                                                                                                                                                                                                                                                       |
| enabledForDiskEncryption     | String (?)             | Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault andunwrap keys.                                                                                                                                                                                                                                                                                                                                                                                                                    |
| enabledForTemplateDeployment | String (?)             | Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.                                                                                                                                                                                                                                                                                                                                                                                                                              |
| publicNetworkAccess          | String (?)             | None Provided                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |

***

**Releasepolicy**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#releasepolicy)

| Key         | Type       | Description                                                                                                                                           |
| ----------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| contentType | String (?) | None Provided                                                                                                                                         |
| data        | String (?) | Blob encoding the policy rules under which the key can be released. Blob must be base64 URL encoded.                                                  |
| immutable   | String (?) | Defines the mutability state of the policy. Once marked immutable, this flag cannot be reset and thepolicy cannot be changed under any circumstances. |

***

**Sku**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#sku)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| family | String (?) | None Provided |
| name   | String (?) | None Provided |

***

**Accesspolicy**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#accesspolicy)

| Key        | Type                          | Description                                                                                                 |
| ---------- | ----------------------------- | ----------------------------------------------------------------------------------------------------------- |
| tenantId\* | Microsoft Azure Access Tenant | The tenant to use                                                                                           |
| objectId\* | String (?)                    | The object to assign the permissions to.By default this field can accept an Application, User, or Group ID. |

***

**Networkacl**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#networkacl)

| Key           | Type       | Description   |
| ------------- | ---------- | ------------- |
| bypass        | String (?) | None Provided |
| defaultAction | String (?) | None Provided |

***

**Permission**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#permission)

| Key          | Type       | Description   |
| ------------ | ---------- | ------------- |
| keys         | String (?) | None Provided |
| secrets      | String (?) | None Provided |
| certificates | String (?) | None Provided |

***

**Iprule**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#iprule)

| Key   | Type       | Description                                                                                                                                      |
| ----- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| value | String (?) | An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address)or '124.56.78.0/24' (all addresses that start with 124.56.78). |

***

**Virtualnetworkrule**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#virtualnetworkrule)

| Key                              | Type                            | Description                                                                                            |
| -------------------------------- | ------------------------------- | ------------------------------------------------------------------------------------------------------ |
| id                               | Microsoft Azure Virtual Network | The Azure Virtual Network you want to use                                                              |
| ignoreMissingVnetServiceEndpoint | String (?)                      | Property to specify whether NRP will ignore the check if parent subnet hasserviceEndpoints configured. |

## Storage Accounts

#### List Storage Accounts[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-storage-accounts) <a href="#list-storage-accounts" id="list-storage-accounts"></a>

Retrieves a list of storage accounts in the specified Azure subscription.

**List Storage Accounts Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-storage-accounts-request)

GET `{resource_group}/providers/Microsoft.Storage/storageAccounts`

| Key                | Type                           | Description                                                       |
| ------------------ | ------------------------------ | ----------------------------------------------------------------- |
| subscription\_id\* | Microsoft Azure Subscription   | The Azure subscription to Use.                                    |
| resource\_group\*  | Microsoft Azure Resource Group | The name of the resource group that contains the storage account. |
| api-version        | String (?)                     | None Provided                                                     |

#### Get Storage Account[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-storage-account) <a href="#get-storage-account" id="get-storage-account"></a>

Retrieves a specific storage account

**Get Storage Account Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-storage-account-request)

GET `{storageAccountId}`

| Key                | Type                            | Description                                                       |
| ------------------ | ------------------------------- | ----------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription    | The Azure subscription to Use.                                    |
| resource\_group    | Microsoft Azure Resource Group  | The name of the resource group that contains the storage accounts |
| storageAccountId\* | Microsoft Azure Storage Account | The Azure Storage Account to use                                  |
| api-version        | String (?)                      | None Provided                                                     |

#### Delete Storage Account[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-storage-account) <a href="#delete-storage-account" id="delete-storage-account"></a>

Deletes a storage account

**Delete Storage Account Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-storage-account-request)

DELETE `{storageAccountId}`

| Key                | Type                            | Description                                                       |
| ------------------ | ------------------------------- | ----------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription    | The Azure subscription to Use.                                    |
| resource\_group    | Microsoft Azure Resource Group  | The name of the resource group that contains the storage accounts |
| storageAccountId\* | Microsoft Azure Storage Account | The Azure Storage Account to use                                  |
| api-version        | String (?)                      | None Provided                                                     |

#### Create Storage Account[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-storage-account) <a href="#create-storage-account" id="create-storage-account"></a>

Creates a storage account

**Create Storage Account Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-storage-account-request)

PUT `{resource_group}/providers/Microsoft.Storage/storageAccounts/{storage_account}`

| Key                | Type                           | Description                                                       |
| ------------------ | ------------------------------ | ----------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription   | The Azure subscription to Use.                                    |
| resource\_group\*  | Microsoft Azure Resource Group | The name of the resource group that contains the storage accounts |
| storage\_account\* | String (?)                     | None Provided                                                     |
| api-version        | String (?)                     | None Provided                                                     |
| kind\*             | String (?)                     | None Provided                                                     |
| location\*         | String                         | The Azure Region to use                                           |

***

#### Storage Account Objects[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#storage-account-objects) <a href="#storage-account-objects" id="storage-account-objects"></a>

**Storage Account Object Sku**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#storage-account-object-sku)

| Key    | Type       | Description                                                                                                                     |
| ------ | ---------- | ------------------------------------------------------------------------------------------------------------------------------- |
| name\* | String (?) | The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType. |
| tier\* | String (?) | The SKU tier. This is based on the SKU name.                                                                                    |

***

**Property**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#property)

| Key                         | Type       | Description                                                                                                                                                                                                                                                                                                                                     |
| --------------------------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| accessTier                  | String (?) | Required for storage accounts where kind = BlobStorage. The access tier is used for billing. The 'Premium' access tier is the default value for premium block blobs storage account type and it cannot be changed for the premium block blobs storage account type.                                                                             |
| allowBlobPublicAccess       | String (?) | Allow or disallow public access to all blobs or containers in the storage account.                                                                                                                                                                                                                                                              |
| allowCrossTenantReplication | String (?) | Allow or disallow cross AAD tenant object replication.                                                                                                                                                                                                                                                                                          |
| allowSharedKeyAccess        | String (?) | Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory.                                                                                                            |
| allowedCopyScope            | String (?) | None Provided                                                                                                                                                                                                                                                                                                                                   |
| publicNetworkAccess         | String (?) | None Provided                                                                                                                                                                                                                                                                                                                                   |
| tags                        | String (?) | Gets or sets a list of key value pairs that describe the resource. These tags can be used for viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key with a length no greater than 128 characters and a value with a length no greater than 256 characters. |

## Virtual Machines

#### List Virtual Machines[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-virtual-machines) <a href="#list-virtual-machines" id="list-virtual-machines"></a>

Retrieves a list of virtual machines in the specified Azure subscription.

**List Virtual Machines Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-virtual-machines-request)

GET `{resource_group}/providers/Microsoft.Compute/virtualMachines`

| Key                | Type                           | Description                                                        |
| ------------------ | ------------------------------ | ------------------------------------------------------------------ |
| subscription\_id\* | Microsoft Azure Subscription   | The Azure subscription to Use.                                     |
| resource\_group\*  | Microsoft Azure Resource Group | The name of the resource group that contains the virtual machines. |
| api-version        | String (?)                     | None Provided                                                      |

#### Delete Virtual Machine[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-virtual-machine) <a href="#delete-virtual-machine" id="delete-virtual-machine"></a>

Deletes a virtual machine in the specified Azure subscription.

**Delete Virtual Machine Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-virtual-machine-request)

DELETE `{virtual_machine_id}`

| Key                    | Type                            | Description                                                        |
| ---------------------- | ------------------------------- | ------------------------------------------------------------------ |
| subscription\_id       | Microsoft Azure Subscription    | The Azure subscription to Use.                                     |
| resource\_group\*      | Microsoft Azure Resource Group  | The name of the resource group that contains the virtual machines. |
| virtual\_machine\_id\* | Microsoft Azure Virtual Machine | The Virtual Machine to use                                         |
| api-version            | String (?)                      | None Provided                                                      |

#### Get Virtual Machine[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-virtual-machine) <a href="#get-virtual-machine" id="get-virtual-machine"></a>

Retrieves information on a virtual machine in the specified Azure subscription.

**Get Virtual Machine Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-virtual-machine-request)

GET `{virtual_machine_id}`

| Key                    | Type                            | Description                                                        |
| ---------------------- | ------------------------------- | ------------------------------------------------------------------ |
| subscription\_id       | Microsoft Azure Subscription    | The Azure subscription to Use.                                     |
| resource\_group\*      | Microsoft Azure Resource Group  | The name of the resource group that contains the virtual machines. |
| virtual\_machine\_id\* | Microsoft Azure Virtual Machine | The Virtual Machine to use                                         |
| api-version            | String (?)                      | None Provided                                                      |

#### Create Virtual Machine[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-virtual-machine) <a href="#create-virtual-machine" id="create-virtual-machine"></a>

Creates a new Virtual Machine in the specified resource group

**Create Virtual Machine Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-virtual-machine-request)

PUT `{resource_group}/providers/Microsoft.Compute/virtualMachines/{vm_name}`

| Key               | Type                           | Description                                                           |
| ----------------- | ------------------------------ | --------------------------------------------------------------------- |
| subscription\_id  | Microsoft Azure Subscription   | The Azure subscription to Use.                                        |
| resource\_group\* | Microsoft Azure Resource Group | The name of the resource group in which to create the virtual machine |
| vm\_name\*        | String (?)                     | None Provided                                                         |
| api-version       | String (?)                     | None Provided                                                         |
| location\*        | String                         | The location in which to create the virtual machine                   |

#### Virtual Machines Object Properties[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#virtual-machines-object-properties) <a href="#virtual-machines-object-properties" id="virtual-machines-object-properties"></a>

***

**Networkprofile**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#networkprofile)

***

**Hardwareprofile**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#hardwareprofile)

| Key    | Type                                        | Description                               |
| ------ | ------------------------------------------- | ----------------------------------------- |
| vmSize | Microsoft Azure Size of the Virtual Machine | The size of the virtual machine to create |

***

**Storageprofile**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#storageprofile)

***

**Osprofile**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#osprofile)

| Key             | Type       | Description                                |
| --------------- | ---------- | ------------------------------------------ |
| computerName\*  | String (?) | The computer name for the virtual machine  |
| adminUsername\* | String (?) | The admin username for the virtual machine |
| adminPassword\* | String (?) | The admin password for the virtual machine |

***

**Networkinterfacestoattach**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#networkinterfacestoattach)

| Key | Type                              | Description                  |
| --- | --------------------------------- | ---------------------------- |
| id  | Microsoft Azure Network Interface | The Network Interface to use |

***

**Image**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#image)

| Key       | Type       | Description                                       |
| --------- | ---------- | ------------------------------------------------- |
| publisher | String (?) | The publisher of the virtual machine image to use |
| offer     | String (?) | The offer of the virtual machine image to use     |
| sku       | String (?) | The SKU of the virtual machine image to use       |
| version   | String (?) | The version of the virtual machine image to use   |

***

**Osdisk**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#osdisk)

| Key            | Type       | Description                                                                                                                                   |
| -------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| name\*         | String (?) | The name of the OS disk to create                                                                                                             |
| diskSizeGB     | String (?) | Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. |
| osType         | String (?) | This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD.    |
| caching        | String (?) | The caching mode for the OS disk                                                                                                              |
| createOption\* | String (?) | None Provided                                                                                                                                 |

***

**Manageddisk**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#manageddisk)

| Key                  | Type       | Description   |
| -------------------- | ---------- | ------------- |
| storageAccountType\* | String (?) | None Provided |

## Virtual Networks

#### List Virtual Networks[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#list-virtual-networks) <a href="#list-virtual-networks" id="list-virtual-networks"></a>

Retrieves a list of virtual networks in the specified resource group.

**Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#request)

GET `{resource_group}/providers/Microsoft.Network/virtualNetworks`

| Key               | Type                           | Description                                                        |
| ----------------- | ------------------------------ | ------------------------------------------------------------------ |
| subscription\_id  | Microsoft Azure Subscription   | The Azure subscription to Use.                                     |
| resource\_group\* | Microsoft Azure Resource Group | The name of the resource group that contains the virtual networks. |
| api-version       | String (?)                     | None Provided                                                      |

#### Delete Virtual Network[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-virtual-network) <a href="#delete-virtual-network" id="delete-virtual-network"></a>

Deletes a specified virtual network in a resource group.

**Delete Virtual Network Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delete-virtual-network-request)

DELETE `{virtual_network}`

| Key                | Type                            | Description                                                       |
| ------------------ | ------------------------------- | ----------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription    | The Azure subscription to Use.                                    |
| resource\_group\*  | Microsoft Azure Resource Group  | The name of the resource group that contains the virtual network. |
| virtual\_network\* | Microsoft Azure Virtual Network | The Azure Virtual Network you want to use                         |
| api-version        | String (?)                      | None Provided                                                     |

#### Get Virtual Network[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-virtual-network) <a href="#get-virtual-network" id="get-virtual-network"></a>

Retrieves a specified virtual network in a resource group.

**Get Virtual Network Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#get-virtual-network-request)

GET `{virtual_network}`

| Key                | Type                            | Description                                                       |
| ------------------ | ------------------------------- | ----------------------------------------------------------------- |
| subscription\_id   | Microsoft Azure Subscription    | The Azure subscription to Use.                                    |
| resource\_group\*  | Microsoft Azure Resource Group  | The name of the resource group that contains the virtual network. |
| virtual\_network\* | Microsoft Azure Virtual Network | The Azure Virtual Network you want to use                         |
| api-version        | String (?)                      | None Provided                                                     |

#### Create Virtual Network[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-virtual-network) <a href="#create-virtual-network" id="create-virtual-network"></a>

Creates a new virtual network in a specified resource group.

**Create Virtual Network Request**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#create-virtual-network-request)

PUT `{resource_group}/providers/Microsoft.Network/virtualNetworks/{virtual_network_name}`

| Key                      | Type                           | Description                                                       |
| ------------------------ | ------------------------------ | ----------------------------------------------------------------- |
| subscription\_id         | Microsoft Azure Subscription   | The Azure subscription to Use.                                    |
| resource\_group\*        | Microsoft Azure Resource Group | The name of the resource group that contains the virtual network. |
| virtual\_network\_name\* | String (?)                     | None Provided                                                     |
| api-version              | String (?)                     | None Provided                                                     |
| location\*               | String                         | The Azure Region to use                                           |

***

#### Virtual Network Objects[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#virtual-network-objects) <a href="#virtual-network-objects" id="virtual-network-objects"></a>

**Virtual Network Object Properties**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#virtual-network-object-properties)

| Key                  | Type       | Description                                                                       |
| -------------------- | ---------- | --------------------------------------------------------------------------------- |
| enableDdosProtection | String (?) | None Provided                                                                     |
| enableVmProtection   | String (?) | Indicates if VM protection is enabled for all the subnets in the virtual network. |

***

**Addressspace**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#addressspace)

| Key             | Type  | Description                                                                               |
| --------------- | ----- | ----------------------------------------------------------------------------------------- |
| addressPrefixes | Array | The AddressSpace that contains an array of IP address ranges that can be used by subnets. |

***

**Dhcpoption**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#dhcpoption)

| Key        | Type  | Description                           |
| ---------- | ----- | ------------------------------------- |
| dnsServers | Array | The list of DNS servers IP addresses. |

***

**Ddosprotectionplan**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#ddosprotectionplan)

| Key | Type                                 | Description   |
| --- | ------------------------------------ | ------------- |
| id  | Microsoft Azure DDoS Protection Plan | None Provided |

***

**Subnet**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#subnet)

| Key    | Type       | Description   |
| ------ | ---------- | ------------- |
| name\* | String (?) | None Provided |

***

**Address Prefix Property**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#address-prefix-property)

| Key           | Type       | Description   |
| ------------- | ---------- | ------------- |
| addressPrefix | String (?) | None Provided |

***

**Delegation**[**​**](http://localhost:3000/docs/integrations/Cloud/Microsoft-Azure/cloud-microsoft-azure-integration#delegation)

| Key  | Type       | Description   |
| ---- | ---------- | ------------- |
| name | String (?) | None Provided |
