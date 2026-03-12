# Microsoft Cloud integration bundle actions and endpoints

## Microsoft Azure actions&#x20;

| Category                      | Action                        | Description                                                                                                                                                       |
| ----------------------------- | ----------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Account**                   | List Subscriptions            | List all subscriptions for the current account                                                                                                                    |
| **Account**                   | List Resource Groups          | List all resource groups for the current account                                                                                                                  |
| **Blob Containers**           | List Blob Storage Containers  | Retrieves a list of blob storage containers in the specified Azure subscription.                                                                                  |
| **Blob Containers**           | Get Blob Storage Container    | Retrieves a blob storage container in the specified storage account.                                                                                              |
| **Blob Containers**           | Delete Blob Storage Container | Deletes a blob storage container in the specified storage account.                                                                                                |
| **Blob Containers**           | Create Blob Storage Container | Creates a BlobStorage Container in the specified resource group.                                                                                                  |
| **Generic Request**           | Azure API Request             | Generic action for making authenticated requests against the Microsoft Azure API                                                                                  |
| **Key Vault Generic Request** | Azure Key Vault API Request   | Generic action for making authenticated requests against the Microsoft Azure Key Vault API                                                                        |
| **Key Vaults**                | List Key Vaults               | Retrieves a list of Key Vaults in a specified resource group                                                                                                      |
| **Key Vaults**                | Get Key Vault                 | Gets a specified Key Vault from a resource group                                                                                                                  |
| **Key Vaults**                | Delete Key Vault              | Deletes a specified Key Vault in a resource group                                                                                                                 |
| **Key Vaults**                | Create Key Vault              | Creates a new Key Vault in a specified resource group                                                                                                             |
| **Key Vaults**                | List Keys in Key Vault        | Lists Keys in a specified Key Vault                                                                                                                               |
| **Key Vaults**                | Create Key in Key Vault       | Creates a new Key in a specified Key Vault                                                                                                                        |
| **Key Vaults**                | Delete Key in Key Vault       | Deletes a Key in a specified Key Vault                                                                                                                            |
| **Key Vaults**                | Get Secret from Key Vault     | Gets a Secret from a specified Key Vault                                                                                                                          |
| **Key Vaults**                | Create Secret in Key Vault    | Creates a new Secret in a specified Key Vault                                                                                                                     |
| **Key Vaults**                | List Secrets in Key Vault     | Lists Secrets in a specified Key Vault                                                                                                                            |
| **Storage Accounts**          | List Storage Accounts         | Retrieves a list of storage accounts in the specified Azure subscription.                                                                                         |
| **Storage Accounts**          | Get Storage Account           | Retrieves a specific storage account                                                                                                                              |
| **Storage Accounts**          | Delete Storage Account        | Deletes a storage account                                                                                                                                         |
| **Storage Accounts**          | Create Storage Account        | Creates a storage account                                                                                                                                         |
| **Storage Generic Request**   | Azure Storage API Request     | Generic action for making authenticated requests against the Microsoft Azure Storage API which allows interfacing with the Blob, Queue, Table, and File services. |
| **Virtual Machines**          | List Virtual Machines         | Retrieves a list of virtual machines in the specified Azure subscription.                                                                                         |
| **Virtual Machines**          | Delete Virtual Machine        | Deletes a virtual machine in the specified Azure subscription.                                                                                                    |
| **Virtual Machines**          | Get Virtual Machine           | Retrieves information on a virtual machine in the specified Azure subscription.                                                                                   |
| **Virtual Machines**          | Create Virtual Machine        | Creates a new Virtual Machine in the specified resource group                                                                                                     |
| **Virtual Networks**          | List Virtual Networks         | Retrieves a list of virtual networks in the specified resource group.                                                                                             |
| **Virtual Networks**          | Delete Virtual Network        | Deletes a specified virtual network in a resource group.                                                                                                          |
| **Virtual Networks**          | Get Virtual Network           | Retrieves a specified virtual network in a resource group.                                                                                                        |
| **Virtual Networks**          | Create Virtual Network        | Creates a new virtual network in a specified resource group.                                                                                                      |

## Microsoft Graph actions

| Category                         | Action                            | Description                                                                                                                                                  |
| -------------------------------- | --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Batch Graph Api Request**      | Batch Graph API Request           | Send up to 20 requests to any Microsoft Graph endpoints in a single batch                                                                                    |
| **Batch Graph Api Request**      | Batch Beta Graph API Request      | Send up to 20 requests to any Microsoft Graph Beta endpoints in a single batch                                                                               |
| **Create Event**                 | Create Event                      | Create an event on a specific user ID's calendar                                                                                                             |
| **Drive**                        | Get User's OneDrive Details       | Description coming soon...                                                                                                                                   |
| **Drive**                        | Delete OneDrive Item              | Description coming soon...                                                                                                                                   |
| **Drive**                        | Get User's Root OneDrive Items    | Get the file and folder id's for items at the root of a user's OneDrive                                                                                      |
| **Drive**                        | Get OneDrive Item Metadata        | Get Microsoft OneDrive item's metadata                                                                                                                       |
| **Drive**                        | Create OneDrive Folder            | Description coming soon...                                                                                                                                   |
| **Drive**                        | Copy OneDrive Item                | Move a Onedrive item to a new folder by folder ID                                                                                                            |
| **Drive**                        | Move OneDrive Item                | Move a Onedrive Item to a new Folder by Folder ID                                                                                                            |
| **Graph Api Request**            | Graph API Request                 | Send a request to any Microsoft Graph endpoint                                                                                                               |
| **Groups**                       | List Groups                       | List groups based on filters                                                                                                                                 |
| **Groups**                       | List Group Members                | Description coming soon...                                                                                                                                   |
| **Groups**                       | Get Group                         | Description coming soon...                                                                                                                                   |
| **Groups**                       | Add Group Member                  | Description coming soon...                                                                                                                                   |
| **Groups**                       | Remove Group Member               | Description coming soon...                                                                                                                                   |
| **Groups**                       | Create Security Group             | Description coming soon...                                                                                                                                   |
| **Groups**                       | Update Security Group             | Description coming soon...                                                                                                                                   |
| **Invitations**                  | Create Invitation                 | Description coming soon...                                                                                                                                   |
| **License**                      | Get Subscribed Products           | Description coming soon...                                                                                                                                   |
| **License**                      | Assign License to User            | Description coming soon...                                                                                                                                   |
| **License**                      | Remove License from User          | Description coming soon...                                                                                                                                   |
| **License**                      | Assign License(s) to Group        | Description coming soon...                                                                                                                                   |
| **License**                      | Remove License(s) From Group      | Description coming soon...                                                                                                                                   |
| **Manage Api Request**           | Management API Request            | Generic action for making authenticated requests against the Microsoft Office 365 Management Activity API.                                                   |
| **Send Inquiry Message**         | Send Inquiry Message              | Sends a Microsoft Teams message with interactive options and pauses the workflow until a response is received                                                |
| **Sharepoint Delete Anon Links** | Delete Anonymous Sharepoint Links | Finds and removes all anonymous sharing links from an object.                                                                                                |
| **Special Groups**               | Get Mail Enabled Groups           | Description coming soon...                                                                                                                                   |
| **Special Groups**               | Get Security Enabled Groups       |                                                                                                                                                              |
| **Subscriptions**                | List Subscriptions                | Returns a list of all Subscriptions created by this app.                                                                                                     |
| **Subscriptions**                | Delete Subscription               | Delete an active Graph Subscription object by its ID.                                                                                                        |
| **Teams**                        | Send Teams Message                | Send a message in a Teams group via a webhook                                                                                                                |
| **Users**                        | Get User                          | Description coming soon...                                                                                                                                   |
| **Users**                        | List Users                        |                                                                                                                                                              |
| **Users**                        | Create User                       | Description coming soon...                                                                                                                                   |
| **Users**                        | Update User                       | Description coming soon...                                                                                                                                   |
| **Users**                        | Set User Manager                  | Description coming soon...                                                                                                                                   |
| **Users**                        | List User Licenses                | Retrieve a list of License Details for a User                                                                                                                |
| **Users**                        | List User Calendars               | Get all the user's calendars                                                                                                                                 |
| **Users**                        | Create Calendar Permission        | Creates a calendarPermissions object for a user's primary calendar                                                                                           |
| **Users**                        | Delete Calendar Permission        | Delete the specified permissions of a user's primary calendar                                                                                                |
| **Users**                        | List User Calendar Permissions    | Get a collection of calendarPermission resources that describe the identity and roles of users with whom the specified calendar has been shared or delegated |
| **Users**                        | Send Mail as Impersonated User    | Send an e-mail impersonating a user within your M365 tenant                                                                                                  |
| **Users**                        | Invalidate Sign In Sessions       | Invalidate all sign in sessions of the selected user                                                                                                         |

## Microsoft Graph triggers

| Trigger type name                                 | Type    | Description                                                                                 |
| ------------------------------------------------- | ------- | ------------------------------------------------------------------------------------------- |
| Chat Message Subscription                         | Webhook | Subscribe to chat messages in all chats                                                     |
| Chat Message Subscription by Chat ID              | Webhook | Subscribe to changes to chat messages in a specific chat                                    |
| Email Message Change Subscription                 | Webhook | Subscribe to changes for a user's email messages. Does not allow specifying mailbox folder. |
| Group Change Subscription                         | Webhook | Subscribe to changes to all groups                                                          |
| Security Alert Subscription                       | Webhook | Subscribe to changes to all groups                                                          |
| Teams Message Subscription                        | Webhook | Subscribe to chat messages in all channels in all teams                                     |
| Teams Message Subscription by Team and Channel ID | Webhook | Subscribe to changes to chat messages in a specific channel                                 |
| User Change Subscription                          | Webhook | Subscribe to changes to all users                                                           |

## Microsoft Cloud Solution Provider (CSP) actions

| Category                | Action                                | Description                                                                    |
| ----------------------- | ------------------------------------- | ------------------------------------------------------------------------------ |
| **Check Configuration** | Check If Organization Has Consent     |                                                                                |
| **Customers**           | List Customers                        |                                                                                |
| **Customers**           | List Customer Products                |                                                                                |
| **Customers**           | List Products by Country              |                                                                                |
| **Generic Request**     | Microsoft CSP API Request             | Generic action for making authenticated requests against the Microsoft CSP API |
| **Subscriptions**       | List Customer Subscriptions           |                                                                                |
| **Subscriptions**       | Update Customer Subscription Quantity |                                                                                |

## Microsoft Exchange Online (EXO) actions

| Category           | Action        | Description                     |
| ------------------ | ------------- | ------------------------------- |
| **Invoke Command** | InvokeCommand | Run any Exchange online command |
