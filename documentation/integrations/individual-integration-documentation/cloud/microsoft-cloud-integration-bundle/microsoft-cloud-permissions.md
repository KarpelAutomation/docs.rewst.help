# Microsoft Cloud Permissions

This documentation outlines the permissions available for integrations included in the Microsoft Cloud Integration Bundle, detailing the actions, methods, URLs, and trigger types associated with each permission.

## Microsoft CSP Permissions

### User Impersonation

This permission is necessary to pull the list of customers from your CSP tenant and map them to managed Rewst organizations.

* **Actions**:
  * microsoft\_csp.check\_if\_organization\_has\_consent
  * microsoft\_csp.list\_customers
  * microsoft\_csp.list\_customer\_subscriptions
  * microsoft\_csp.update\_customer\_subscription\_quantity

## Microsoft Exchange Online Permissions

### Exchange.Manage

* **Actions**:
  * microsoft\_exo.invoke\_command

### Exchange.ManageAsApp

* **Actions**:
  * microsoft\_exo.invoke\_command

### full\_access\_as\_app

* **Actions**:
  * microsoft\_exo.invoke\_command

## Microsoft Azure Permissions

### Key Vault User Impersonation

* **Actions**:
  * microsoft\_azure.list\_keys\_in\_vault
  * microsoft\_azure.create\_key\_in\_vault
  * microsoft\_azure.delete\_key\_in\_vault

### Service Management User Impersonation

* **Actions**:
  * microsoft\_azure.generic\_request
  * microsoft\_azure.Virtual Machines - InstanceView
  * microsoft\_azure.Virtual Machines - List
  * microsoft\_azure.Virtual Machines - Get
  * microsoft\_azure.Virtual Machines - ListAvailableSizes
  * microsoft\_azure.Virtual Machines - Delete
  * microsoft\_azure.Virtual Machines - ListByLocation
  * microsoft\_azure.Virtual Machines - ListAll
  * microsoft\_azure.create\_blob\_storage\_container
  * microsoft\_azure.create\_key\_vault
  * microsoft\_azure.get\_storage\_account
  * microsoft\_azure.create\_storage\_account
  * microsoft\_azure.create\_vm
  * microsoft\_azure.create\_virtual\_network
  * microsoft\_azure.list\_virtual\_networks
  * microsoft\_azure.list\_blob\_storage\_containers
  * microsoft\_azure.list\_virtual\_machines
  * microsoft\_azure.delete\_blob\_storage\_container
  * microsoft\_azure.get\_key\_vault
  * microsoft\_azure.get\_virtual\_machine
  * microsoft\_azure.get\_virtual\_network
  * microsoft\_azure.get\_blob\_storage\_container
  * microsoft\_azure.delete\_storage\_account
  * microsoft\_azure.delete\_key\_vault
  * microsoft\_azure.delete\_virtual\_machine
  * microsoft\_azure.delete\_virtual\_network
  * microsoft\_azure.list\_storage\_accounts
  * microsoft\_azure.list\_key\_vaults
  * microsoft\_azure.list\_subscriptions
  * microsoft\_azure.list\_resource\_groups

### Storage User Impersonation

* **Actions**:
  * microsoft\_azure.generic\_request
* **Methods**:
  * GET
  * POST
  * PUT
  * PATCH
  * DELETE
* **URLs**:
  * https://{storageAccountName}.blob.core.windows.net/{containerName}
  * https://{storageAccountName}.table.core.windows.net/{tableName}

## Microsoft Graph Permissions

### AccessReview.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /identityGovernance/accessReviews/definitions
  * /identityGovernance/accessReviews/definitions/{definitionId}
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}/decisions
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}/decisions/{decisionId}
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}/contacts
  * /identityGovernance/accessReviews/settings

### AccessReview.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /identityGovernance/accessReviews/definitions
  * /identityGovernance/accessReviews/definitions/{definitionId}
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}/decisions
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}/decisions/{decisionId}
  * /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}/contacts
  * /identityGovernance/accessReviews/settings

### ActivityFeed.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Trigger Types**:
  * microsoft\_graph.Management Activity

### ActivityFeed.ReadDlp

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Trigger Types**:
  * microsoft\_graph.Management Activity

### AppCatalog.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /appCatalogs/teamsApps

### AppCatalog.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * DELETE
* **URLs**:
  * /appCatalogs/teamsApps
  * /appCatalogs/teamsApps/{id}
  * /appCatalogs/teamsApps/{id}/appDefinitions

### AppCatalog.Submit

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * DELETE
* **URLs**:
  * /appCatalogs/teamsApps
  * /appCatalogs/teamsApps/{id}
  * /appCatalogs/teamsApps/{id}/appDefinitions

### AppRoleAssignment.ReadWrite.All

This is a core permission utilized with the Rewst Microsoft Cloud Connector and is necessary for dynamic permissions. It is not necessary when using an Owned App Registration.

### Application.ReadWrite.All

This is a core permission utilized with the Rewst Microsoft Cloud Connector and is necessary for dynamic permissions. It is not necessary when using an Owned App Registration.

### AuditLog.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /activity/feed/subscriptions/content
  * /auditLogs/directoryAudits
  * /auditLogs/directoryAudits/{id}
  * /auditLogs/provisioning
  * /auditLogs/signIns
  * /auditLogs/signIns/{id}
  * /reports/authenticationMethods/userRegistrationDetails
  * /reports/authenticationMethods/userRegistrationDetails/{userId}
* **Trigger Types**:
  * microsoft\_graph.New Access from Anonymous Link
  * microsoft\_graph.New Directory Audit Log
  * microsoft\_graph.New Signin
  * microsoft\_graph.Suspicious Login Distance

### AuditLogsQuery.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /auditLogs/directoryAudits
  * /auditLogs/investigationResults
  * /auditLogs/legacyAudits
  * /auditLogs/riskyUsers
  * /auditLogs/signIns
  * /auditLogs/userAccountActivity

### BitlockerKey.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /deviceManagement/managedDevices/{id}/bitlockerKeys
  * /deviceManagement/managedDevices/{id}/bitlockerKeys/{id}

### Bookings.Manage.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /bookings/appointments
  * /bookings/appointments/{id}
  * /bookings/businesses
  * /bookings/businesses/{id}
  * /bookings/customers
  * /bookings/customers/{id}
  * /bookings/services
  * /bookings/services/{id}

### Bookings.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /bookings/appointments
  * /bookings/appointments/{id}
  * /bookings/businesses
  * /bookings/businesses/{id}
  * /bookings/customers
  * /bookings/customers/{id}
  * /bookings/services
  * /bookings/services/{id}

### Bookings.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /bookings/appointments
  * /bookings/appointments/{id}
  * /bookings/businesses
  * /bookings/businesses/{id}
  * /bookings/customers
  * /bookings/customers/{id}
  * /bookings/services
  * /bookings/services/{id}

### BookingsAppointment.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /bookings/appointments
  * /bookings/appointments/{id}
  * /bookings/businesses
  * /bookings/businesses/{id}
  * /bookings/customers
  * /bookings/customers/{id}
  * /bookings/services
  * /bookings/services/{id}

### Calendars.Read

* **Actions**:
  * microsoft\_graph.get\_user\_calendars
  * microsoft\_graph.get\_user\_calendar\_permissions
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /me/calendars
  * /me/calendars/{id}
  * /me/calendars/{id}/calendarPermissions
  * /me/calendars/{id}/events
  * /me/calendarGroups
  * /me/calendarGroups/{id}
  * /me/calendarGroups/{id}/events
  * /me/events
  * /me/events/{id}
  * /users/{id|userPrincipalName}/calendars

### Calendars.Read.Shared

* **Actions**:
  * microsoft\_graph.get\_user\_calendars
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /me/calendars
  * /me/calendars/{id}
  * /me/calendars/{id}/events
  * /me/calendarGroups
  * /me/calendarGroups/{id}
  * /me/calendarGroups/{id}/events
  * /me/calendarView?startDateTime={start\_datetime}\&endDateTime={end\_datetime}
  * /me/events
  * /me/events/{id}
  * /users/{id|userPrincipalName}/calendars
  * /users/{id|userPrincipalName}/calendars/{id}
  * /users/{id|userPrincipalName}/calendars/{id}/events
  * /users/{id|userPrincipalName}/calendarGroups
  * /users/{id|userPrincipalName}/calendarGroups/{id}
  * /users/{id|userPrincipalName}/calendarGroups/{id}/events
  * /users/{id|userPrincipalName}/calendarView?startDateTime={start\_datetime}\&endDateTime={end\_datetime}
  * /users/{id|userPrincipalName}/events
  * /users/{id|userPrincipalName}/events/{id}

### Calendars.ReadBasic

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /me/calendars
  * /me/calendars/{id}
  * /me/calendars/{id}/events
  * /me/calendarGroups
  * /me/calendarGroups/{id}
  * /me/calendarGroups/{id}/events
  * /me/calendarView?startDateTime={start\_datetime}\&endDateTime={end\_datetime}
  * /me/events
  * /me/events/{id}
  * /users/{id|userPrincipalName}/calendars

### Calendars.ReadBasic.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /me/calendars
  * /me/calendars/{id}
  * /me/calendars/{id}/events
  * /me/calendarGroups
  * /me/calendarGroups/{id}
  * /me/calendarGroups/{id}/events
  * /me/calendarView?startDateTime={start\_datetime}\&endDateTime={end\_datetime}
  * /me/events
  * /me/events/{id}
  * /users/{id|userPrincipalName}/calendars

### Calendars.ReadWrite

* **Actions**:
  * microsoft\_graph.create\_event
  * microsoft\_graph.create\_user\_calendar\_permission
  * microsoft\_graph.delete\_user\_calendar
  * microsoft\_graph.get\_user\_calendars
  * microsoft\_graph.get\_user\_calendar\_permissions
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /me/calendars
  * /me/calendars/{id}
  * /me/calendars/{id}/events
  * /me/calendarGroups
  * /me/calendarGroups/{id}
  * /me/calendarGroups/{id}/events
  * /me/calendarView?startDateTime={start\_datetime}\&endDateTime={end\_datetime}
  * /me/events
  * /me/events/{id}
  * /users/{id|userPrincipalName}/calendars
  * /users/{id|userPrincipalName}/calendars/{id}
  * /users/{id|userPrincipalName}/calendars/{id}/events
  * /users/{id|userPrincipalName}/calendarGroups
  * /users/{id|userPrincipalName}/calendarGroups/{id}
  * /users/{id|userPrincipalName}/calendarGroups/{id}/events
  * /users/{id|userPrincipalName}/calendarView?startDateTime={start\_datetime}\&endDateTime={end\_datetime}
  * /users/{id|userPrincipalName}/events
  * /users/{id|userPrincipalName}/events/{id}

### Calendars.ReadWrite.Shared

* **Actions**:
  * microsoft\_graph.create\_event
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /me/calendars
  * /me/calendars/{id}
  * /me/calendars/{id}/events
  * /me/calendarGroups
  * /me/calendarGroups/{id}
  * /me/calendarGroups/{id}/events
  * /me/calendarView?startDateTime={start\_datetime}\&endDateTime={end\_datetime}
  * /me/events
  * /me/events/{id}
  * /users/{id|userPrincipalName}/calendars
  * /users/{id|userPrincipalName}/calendars/{id}
  * /users/{id|userPrincipalName}/calendars/{id}/events
  * /users/{id|userPrincipalName}/calendarGroups
  * /users/{id|userPrincipalName}/calendarGroups/{id}
  * /users/{id|userPrincipalName}/calendarGroups/{id}/events
  * /users/{id|userPrincipalName}/calendarView?startDateTime={start\_datetime}\&endDateTime={end\_datetime}
  * /users/{id|userPrincipalName}/events
  * /users/{id|userPrincipalName}/events/{id}

### Channel.Create

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * POST
* **URLs**:
  * /teams/{teamId}/channels

### Channel.Delete.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * DELETE
* **URLs**:
  * /teams/{teamId}/channels/{channelId}

### ChannelMember.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{id}
  * /teams/{teamId}/channels/{channelId}/members
  * /teams/{teamId}/channels/{channelId}/members/{id}

### ChannelMember.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{id}
  * /teams/{teamId}/channels/{channelId}/members
  * /teams/{teamId}/channels/{channelId}/members/{id}

### ChannelMessage.Edit

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * PATCH
* **URLs**:
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}

### ChannelMessage.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /teams/{team-id}/channels/{channel-id}/messages
  * /teams/{team-id}/channels/{channel-id}/messages/delta
  * /teams/{team-id}/channels/{channel-id}/messages/{message-id}
  * /teams/{team-id}/channels/{channel-id}/messages/{message-id}/hostedContents
  * /teams/{team-id}/channels/{channel-id}/messages/{message-id}/hostedContents/{hosted-content-id}
  * /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies
  * /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies/{reply-id}
  * /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies/{reply-id}/hostedContents
  * /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies/{reply-id}/hostedContents/{hosted-content-id}
* **Trigger Types**:
  * microsoft\_graph.Teams Message Subscription
  * microsoft\_graph.Teams Message Subscription by Team and Channel ID

### ChannelMessage.ReadWrite

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /subscriptions?resource=teams/getAllMessages
  * /subscriptions?resource=teams/{team\_id}/channels/{channel\_id}/messages
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/softDelete
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/undoSoftDelete
  * /teams/{teamId}/channels/{channelId}/messages/{chatMessageId}/softDelete
  * /teams/{teamId}/channels/{channelId}/messages/{chatMessageId}/undoSoftDelete
* **Trigger Types**:
  * microsoft\_graph.Teams Message Subscription
  * microsoft\_graph.Teams Message Subscription by Team and Channel ID

### ChannelMessage.Send

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * POST
* **URLs**:
  * /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/setReaction
  * /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/unsetReaction
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/setReaction
  * /teams/{team-id}/channels/{channel-id}/messages
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/unsetReaction
  * /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies

### ChannelMessage.UpdatePolicyViolation.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * POST
* **URLs**:
  * /teams/(team-id)/channels/{channel-id}/messages/{message-id}
  * /teams/(team-id)/channels/{channel-id}/messages/{message-id}/replies/{reply-id}

### ChannelSettings.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /teams/{teamId}/channels
  * /teams/{teamId}/channels/{channelId}
  * /teams/{teamId}/channels/{channelId}/settings
  * /teams/{teamId}/primaryChannel

### ChannelSettings.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * PATCH
* **URLs**:
  * /teams/{teamId}/channels
  * /teams/{teamId}/channels/{channelId}
  * /teams/{teamId}/channels/{channelId}/settings
  * /teams/{teamId}/primaryChannel

### Chat.Create

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * POST
* **URLs**:
  * /chats

### Chat.ManageDeletion.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * DELETE
* **URLs**:
  * /chats/{chatId}
  * /chats/{chatId}/restore

### Chat.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats/{chatId}
  * /chats/{chatId}/messages
  * /chats/{chatId}/messages/{messageId}
  * /chats/{chatId}/messages/{messageId}/hostedContents
  * /chats/{chatId}/messages/{messageId}/hostedContents/{hostedContentId}
  * /chats/{chatId}/messages/{messageId}/replies
  * /chats/{chatId}/messages/{messageId}/replies/{replyId}
  * /chats/{chatId}/messages/{messageId}/replies/{replyId}/hostedContents
  * /chats/{chatId}/messages/{messageId}/replies/{replyId}/hostedContents/{hostedContentId}

### Chat.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats
  * /chats/{chatId}
  * /chats/{chatId}/messages
  * /chats/{chatId}/messages/{messageId}
  * /chats/{chatId}/messages/{messageId}/hostedContents
  * /chats/{chatId}/messages/{messageId}/hostedContents/{hostedContentId}
  * /chats/{chatId}/messages/{messageId}/replies
  * /chats/{chatId}/messages/{messageId}/replies/{replyId}
  * /chats/{chatId}/messages/{messageId}/replies/{replyId}/hostedContents
  * /chats/{chatId}/messages/{messageId}/replies/{replyId}/hostedContents/{hostedContentId}
* **Trigger Types**:
  * microsoft\_graph.Chat Message Subscription
  * microsoft\_graph.Chat Message Subscription by Chat ID

### Chat.ReadBasic

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{membershipId}
  * /chats/{chatId}/operations
  * /chats/{chatId}/operations/{operationId}
  * /chats/{chatId}
  * /me/chats/{chatId}
  * /teams/{id}/channels/{id}/members/{id}
  * /users/{userId}

### Chat.ReadBasic.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{membershipId}
  * /chats/{chatId}/operations
  * /chats/{chatId}/operations/{operationId}
  * /chats/{chatId}
  * /me/chats/{chatId}
  * /teams/{id}/channels/{id}/members/{id}
  * /users/{userId}

### Chat.ReadWrite

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /chats
  * /chats/{chatId}
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{membershipId}
  * /chats/{chatId}/members/{membershipId}/operation
  * /chats/{chatId}/messages
  * /chats/{chatId}/operations
  * /me/chats/{chatId}
  * /me/chats/{chatId}/messages
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/hostedContents
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/hostedContents
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/hostedContents/{hostedContentId}

### Chat.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /chats
  * /chats/{chatId}
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{membershipId}
  * /chats/{chatId}/members/{membershipId}/operation
  * /chats/{chatId}/messages
  * /chats/{chatId}/operations
  * /me/chats/{chatId}
  * /me/chats/{chatId}/messages
  * /subscriptions?resource=chat/getAllMessages
  * /subscriptions?resource=chat/{chatId}/messages
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/hostedContents
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/hostedContents/{hostedContentId}
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/hostedContents
* **Trigger Types**:
  * microsoft\_graph.Chat Message Subscription
  * microsoft\_graph.Chat Message Subscription by Chat ID

### Chat.UpdatePolicyViolation.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * PATCH
* **URLs**:
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}

### ChatMember.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{id}

### ChatMember.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{id}

### ChatMember.ReadWrite

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{id}

### ChatMember.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /chats/{chatId}/members
  * /chats/{chatId}/members/{id}

### ChatMessage.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats/{chatId}/messages
  * /chats/{chatId}/messages/{id}

### ChatMessage.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /chats/{chatId}/messages
  * /chats/{chatId}/messages/{id}

### ChatMessage.Send

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * POST
* **URLs**:
  * /chats/{chatId}/messages
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/setReaction
  * /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/unsetReaction
  * /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/setReaction
  * /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/unsetReaction

### CloudApp-Discovery.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### CloudPC.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### CloudPC.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Community.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Community.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Contacts.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /me/contacts
  * /me/contactFolders
  * /me/contactFolders/{id}
  * /users/{id|userPrincipalName}/contacts
  * /users/{id|userPrincipalName}/contacts/{id}

### Contacts.ReadWrite

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /me/contacts
  * /me/contactFolders
  * /me/contactFolders/{id}
  * /me/contactFolders/{id}/contacts
  * /me/contactFolders/{id}/contacts/{id}
  * /users/{id|userPrincipalName}/contacts
  * /users/{id|userPrincipalName}/contacts/{id}

### DelegatedAdminRelationship.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### DelegatedAdminRelationship.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### DelegatedPermissionGrant.ReadWrite.All

This is a core permission utilized with the Rewst Microsoft Cloud Connector and is necessary for dynamic permissions. It is not necessary when using an Owned App Registration.

### Device.Command

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * POST
* **URLs**:
  * /devices/{id}/command
  * /me/devices/{id}/command

### Device.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /devices
  * /devices/{id}
  * /devices/{id}/registeredOwners
  * /devices/{id}/registeredUsers
  * /deviceAppManagement/mobileApps/{id}/deviceStatuses
* **Trigger Types**:
  * microsoft\_graph.ms\_graph\_device\_sensor

### Device.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /devices
  * /devices/{id}
  * /devices/{id}/registeredOwners
  * /devices/{id}/registeredUsers
  * /deviceAppManagement/mobileApps/{id}/deviceStatuses

### DeviceLocalCredential.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /deviceManagement/deviceLocalCredentialSettings
  * /deviceManagement/deviceLocalCredentialSettings/{id}

### DeviceManagementApps.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /deviceAppManagement/mobileApps
  * /deviceAppManagement/mobileApps/{id}
  * /deviceAppManagement/mobileApps/{id}/deviceStatuses

### DeviceManagementApps.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /deviceAppManagement/mobileApps
  * /deviceAppManagement/mobileApps/{id}
  * /deviceAppManagement/mobileApps/{id}/deviceStatuses

### DeviceManagementConfiguration.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /deviceAppManagement/deviceConfigurations
  * /deviceAppManagement/deviceConfigurations/{id}
  * /deviceAppManagement/deviceConfigurations/{id}/deviceStatuses

### DeviceManagementConfiguration.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /deviceAppManagement/deviceConfigurations
  * /deviceAppManagement/deviceConfigurations/{id}
  * /deviceAppManagement/deviceConfigurations/{id}/deviceStatuses

### DeviceManagementManagedDevices.PrivilegedOperations.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /deviceManagement/managedDevices
  * /deviceManagement/managedDevices/{id}/privilegedOperations

### DeviceManagementManagedDevices.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /deviceManagement/managedDevices
  * /deviceManagement/managedDevices/{id}

### DeviceManagementManagedDevices.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /deviceManagement/managedDevices
  * /deviceManagement/managedDevices/{id}

### DeviceManagementRBAC.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /deviceAppManagement/rbacDefinitions
  * /deviceAppManagement/rbacDefinitions/{id}

### DeviceManagementRBAC.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /deviceAppManagement/rbacDefinitions
  * /deviceAppManagement/rbacDefinitions/{id}

### DeviceManagementServiceConfig.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /deviceAppManagement/serviceConfigurations
  * /deviceAppManagement/serviceConfigurations/{id}

### DeviceManagementServiceConfig.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /deviceAppManagement/serviceConfigurations
  * /deviceAppManagement/serviceConfigurations/{id}

### Directory.ReadWrite.All

This is a core permission utilized with the Rewst Microsoft Cloud Connector and is necessary for dynamic permissions. It is not necessary when using an Owned App Registration.

### Domain.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /domains
  * /domains/{id}

### Domain.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /domains
  * /domains/{id}

### EAS.AccessAsUser.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### EWS.AccessAsUser.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Files.Read

* **Actions**:
  * microsoft\_graph.get\_onedrive\_item\_metadata
  * microsoft\_graph.get\_users\_drive
  * microsoft\_graph.get\_users\_root\_drive\_items

### Files.Read.All

* **Actions**:
  * microsoft\_graph.get\_onedrive\_item\_metadata
  * microsoft\_graph.get\_users\_drive
  * microsoft\_graph.get\_users\_root\_drive\_items
* **Trigger Types**:
  * microsoft\_graph.ms\_onedrive\_permissions\_sensor
  * microsoft\_graph.ms\_onedrive\_file\_updated

### Files.ReadWrite

* **Actions**:
  * microsoft\_graph.copy\_onedrive\_item
  * microsoft\_graph.create\_onedrive\_folder
  * microsoft\_graph.delete\_onedrive\_item
  * microsoft\_graph.get\_onedrive\_item\_metadata
  * microsoft\_graph.get\_users\_drive
  * microsoft\_graph.get\_users\_root\_drive\_items
  * microsoft\_graph.move\_onedrive\_item

### Files.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Group.Create

* **Actions**:
  * microsoft\_graph.create\_group

### Group.Read.All

* **Actions**:
  * microsoft\_graph.get\_group
  * microsoft\_graph.get\_mail\_groups
  * microsoft\_graph.get\_security\_groups
  * microsoft\_graph.list\_groups
  * microsoft\_graph.list\_group\_members
* **Trigger Types**:
  * microsoft\_graph.Group Change Subscription

### Group.ReadWrite.All

* **Actions**:
  * microsoft\_graph.create\_group
  * microsoft\_graph.get\_group
  * microsoft\_graph.get\_mail\_groups
  * microsoft\_graph.get\_security\_groups
  * microsoft\_graph.list\_groups
  * microsoft\_graph.update\_group
* **Trigger Types**:
  * microsoft\_graph.Group Change Subscription

### GroupMember.Read.All

* **Actions**:
  * microsoft\_graph.get\_mail\_groups
  * microsoft\_graph.get\_security\_groups
  * microsoft\_graph.list\_group\_members

### GroupMember.ReadWrite.All

* **Actions**:
  * microsoft\_graph.add\_group\_member
  * microsoft\_graph.get\_mail\_groups
  * microsoft\_graph.get\_security\_groups
  * microsoft\_graph.list\_group\_members
  * microsoft\_graph.remove\_group\_member

### IdentityProvider.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### IdentityProvider.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### IdentityRiskEvent.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /identityProtection/riskDetections
* **Trigger Types**:
  * microsoft\_graph.New Risk Detection

### IdentityRiskEvent.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### IdentityRiskyServicePrincipal.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### IdentityRiskyServicePrincipal.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### IdentityRiskyUser.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /identityProtection/riskyUsers
  * /identityProtection/riskyUsers/{id}
* **Trigger Types**:
  * microsoft\_graph.New Risky User

### IdentityRiskyUser.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /identityProtection/riskyUsers
  * /identityProtection/riskyUsers/{id}
* **Trigger Types**:
  * microsoft\_graph.New Risky User

### IdentityUserFlow.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### IdentityUserFlow.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Insights-UserMetric.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### LicenseAssignment.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Mail.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Mail.Read.Shared

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Mail.ReadWrite

* **Actions**:
  * microsoft\_graph.delete\_subscription

### Mail.ReadWrite.Shared

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Mail.Send

* **Actions**:
  * microsoft\_graph.send\_mail\_as\_user

### MailboxSettings.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /me/mailboxSettings
  * /users/{id|userPrincipalName}/mailboxSettings

### MailboxSettings.ReadWrite

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * PATCH
  * DELETE
* **URLs**:
  * /me/mailboxSettings
  * /users/{id|userPrincipalName}/mailboxSettings

### Notes.Create

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Notes.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Notes.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Notes.ReadWrite

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Notes.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### OnlineMeetingArtifact.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### OnlineMeetings.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### OnlineMeetings.ReadWrite

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### OnlineMeetings.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Place.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /places

### Place.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /places
  * /places/{id}

### Policy.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /policies
  * /policies/activityBasedTimeoutPolicies
  * /policies/adminConsentRequestPolicy
  * /policies/appManagementPolicies
  * /policies/authenticationFlowsPolicy
  * /policies/authenticationMethodsPolicy
  * /policies/authenticationMethodsPolicy/authenticationMethodConfigurations
  * /policies/authenticationStrengthPolicy
  * /policies/authorizationPolicy
  * /policies/claimsMappingPolicies
  * /policies/conditionalAccessPolicies
  * /policies/crossTenantAccessPolicy
  * /policies/defaultAppManagementPolicy
  * /policies/featureRolloutPolicies
  * /policies/identitySecurityDefaultsEnforcementPolicy
  * /policies/homeRealmDiscoveryPolicies
  * /policies/permissionGrantPolicies
  * /policies/roleManagementPolicies
  * /policies/roleManagementPolicyAssignments
  * /policies/tokenIssuancePolicies
  * /policies/tokenLifetimePolicies
* **Trigger Types**:
  * microsoft\_graph.Policy Change

### Policy.ReadWrite.AuthenticationMethod

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /policies/authenticationMethodsPolicy
  * /policies/authenticationMethodsPolicy/authenticationMethodConfigurations
  * /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/{id}

### Policy.ReadWrite.ConditionalAccess

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /policies/conditionalAccessPolicies
  * /policies/conditionalAccessPolicies/{id}

### Policy.ReadWrite.CrossTenantAccess

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * DELETE
* **URLs**:
  * /policies/crossTenantAccessPolicy

### Policy.ReadWrite.DeviceConfiguration

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### RecordsManagement.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### RecordsManagement.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Reports.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /reports
  * /reports/authenticationMethods
  * /reports/dailyUsageByPrinter
  * /reports/dailyPrintUsageByUser
  * /reports/microsoft.graph.deviceConfigurationDeviceActivity()
  * /reports/microsoft.graph.deviceConfigurationUserActivity()
  * /reports/microsoft.graph.getEmailActivityCounts(period='{period}')
  * /reports/microsoft.graph.getEmailActivityUserCounts(period='{period}')
  * /reports/microsoft.graph.getEmailActivityUserDetail(date='{date}')
  * /reports/microsoft.graph.getEmailActivityUserDetail(period='{period}')
  * /reports/microsoft.graph.getEmailAppUsageAppsUserCounts(period='{period}')
  * /reports/microsoft.graph.getEmailAppUsageUserCounts(period='{period}')
  * /reports/microsoft.graph.getEmailAppUsageUserDetail(date='{date}')
  * /reports/microsoft.graph.getEmailAppUsageUserDetail(period='{period}')
  * /reports/microsoft.graph.getEmailAppUsageVersionsUserCounts(period='{period}')
  * /reports/microsoft.graph.getGroupArchivedPrintJobs(groupId='{groupId}',startDateTime='{startDateTime}',endDateTime='{endDateTime}')
  * /reports/microsoft.graph.getM365AppPlatformUserCounts(period='{period}')
  * /reports/microsoft.graph.getM365AppUserCounts(period='{period}')
  * /reports/microsoft.graph.getM365AppUserDetail(date='{date}')
  * /reports/microsoft.graph.getM365AppUserDetail(period='{period}')
  * /reports/security/microsoft.graph.getAttackSimulationRepeatOffenders()
  * /reports/security/microsoft.graph.getAttackSimulationSimulationUserCoverage()
  * /reports/security/microsoft.graph.getAttackSimulationTrainingUserCoverage()

### RoleManagement.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### RoleManagement.ReadWrite.CloudPC

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### RoleManagement.ReadWrite.Directory

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### RoleManagement.ReadWrite.Exchange

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Schedule.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Schedule.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### SecurityActions.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### SecurityActions.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### SecurityAlert.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### SecurityAlert.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### SecurityEvents.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /security/alerts
  * /security/secureScores
* **Trigger Types**:
  * microsoft\_graph.New Secure Score
  * microsoft\_graph.New Security Alert
  * microsoft\_graph.Security Alert Subscription

### SecurityEvents.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /security/alerts
  * /subscriptions?resource=security/alerts
* **Trigger Types**:
  * microsoft\_graph.New Secure Score
  * microsoft\_graph.New Security Alert
  * microsoft\_graph.Security Alert Subscription

### SecurityIncident.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /security/incidents
  * /security/incidents/{id}

### SecurityIncident.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ServiceHealth.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Trigger Types**:
  * microsoft\_graph.Management Activity

### ServiceHealth.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ServiceMessage.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ServicePrincipalEndpoint.ReadWrite.All

This is a core permission utilized with the Rewst Microsoft Cloud Connector and is necessary for dynamic permissions. It is not necessary when using an Owned App Registration.

### Sites.FullControl.All

* **Actions**:
  * microsoft\_graph.sharepoint\_delete\_anon\_links
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PUT
  * PATCH
  * DELETE
* **URLs**:
  * /sites
  * /sites/{id}
  * /sites/{id}/analytics
  * /sites/{id}/lists
  * /sites/{id}/operations

### Sites.Manage.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Sites.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /sites
  * /sites/{id}
  * /sites/{id}/analytics
  * /sites/{id}/lists
  * /sites/{id}/lists/{id}
  * /sites/{id}/operations

### Sites.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PUT
  * PATCH
  * DELETE
* **URLs**:
  * /sites
  * /sites/{id}
  * /sites/{id}/analytics
  * /sites/{id}/lists
  * /sites/{id}/lists/{id}
  * /sites/{id}/operations

### Subscription.Read.All

* **Actions**:
  * microsoft\_graph.list\_subscriptions

### Team.Create

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### TeamMember.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /teams/{id}/members
  * /teams/{id}/members/{id}

### TeamMember.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * DELETE
* **URLs**:
  * /teams/{id}/members
  * /teams/{id}/members/{id}
  * /teams/{id}/members/microsoft.graph.add

### TeamSettings.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### TeamSettings.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Teamwork.Migrate.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### Teamwork.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /teamwork
  * /teamwork/deletedTeams
  * /teamwork/microsoft.graph.sendActivityNotificationToRecipients
  * /teamwork/teamsAppSettings
  * /teamwork/workforceIntegrations

### TeamworkTag.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### TeamworkTag.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### TeamworkTag.ReadWrite

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### TeamworkTag.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ThreatAssessment.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ThreatAssessment.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ThreatHunting.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ThreatIndicators.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ThreatIntelligence.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ThreatSubmission.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### ThreatSubmission.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### User.ManageIdentities.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### User.Read

This permission is necessary for Rewst to be able to authenticate with your Microsoft tenant. It will always be required, even for Owned App Registrations.

### User.Read.All

* **Actions**:
  * microsoft\_graph.get\_user
  * microsoft\_graph.list\_users
* **Trigger Types**:
  * microsoft\_graph.User Change Subscription

### User.ReadWrite.All

* **Actions**:
  * microsoft\_graph.assign\_license
  * microsoft\_graph.assign\_license\_to\_group
  * microsoft\_graph.create\_invitation
  * microsoft\_graph.create\_user
  * microsoft\_graph.invalidate\_sign\_in\_sessions
  * microsoft\_graph.get\_user
  * microsoft\_graph.list\_users
  * microsoft\_graph.remove\_license
  * microsoft\_graph.remove\_license\_from\_group
  * microsoft\_graph.set\_user\_manager
  * microsoft\_graph.update\_user
* **Trigger Types**:
  * microsoft\_graph.User Change Subscription

### UserAuthenticationMethod.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
* **URLs**:
  * /me/authentication/emailMethods
  * /me/authentication/fido2Methods
  * /me/authentication/methods
  * /me/authentication/microsoftAuthenticatorMethods
  * /me/authentication/operations
  * /me/authentication/passwordMethods
  * /me/authentication/phoneMethods
  * /me/authentication/softwareOathMethods
  * /me/authentication/temporaryAccessPassMethods
  * /me/authentication/windowsHelloForBusinessMethods
  * /users/{id}/authentication/emailMethods
  * /users/{id}/authentication/fido2Methods
  * /users/{id}/authentication/methods
  * /users/{id}/authentication/microsoftAuthenticatorMethods
  * /users/{id}/authentication/operations
  * /users/{id}/authentication/passwordMethods
  * /users/{id}/authentication/phoneMethods
  * /users/{id}/authentication/softwareOathMethods
  * /users/{id}/authentication/temporaryAccessPassMethods
  * /users/{id}/authentication/windowsHelloForBusinessMethods

### UserAuthenticationMethod.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
* **Methods**:
  * GET
  * POST
  * PATCH
  * PUT
  * DELETE
* **URLs**:
  * /me/authentication/emailMethods
  * /me/authentication/fido2Methods
  * /me/authentication/methods
  * /me/authentication/microsoftAuthenticatorMethods
  * /me/authentication/operations
  * /me/authentication/passwordMethods
  * /me/authentication/phoneMethods
  * /me/authentication/softwareOathMethods
  * /me/authentication/temporaryAccessPassMethods
  * /me/authentication/windowsHelloForBusinessMethods
  * /users/{id}/authentication/emailMethods
  * /users/{id}/authentication/fido2Methods
  * /users/{id}/authentication/methods
  * /users/{id}/authentication/microsoftAuthenticatorMethods
  * /users/{id}/authentication/operations
  * /users/{id}/authentication/passwordMethods
  * /users/{id}/authentication/phoneMethods
  * /users/{id}/authentication/softwareOathMethods
  * /users/{id}/authentication/temporaryAccessPassMethods
  * /users/{id}/authentication/windowsHelloForBusinessMethods

### VirtualEvent.Read

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### VirtualEvent.Read.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request

### eDiscovery.ReadWrite.All

* **Actions**:
  * microsoft\_graph.graph\_api\_request
