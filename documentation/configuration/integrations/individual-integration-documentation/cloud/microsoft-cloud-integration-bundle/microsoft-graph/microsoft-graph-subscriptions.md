# Graph subscriptions



Microsoft Graph subscriptions enable applications to receive real-time notifications when changes occur in user or organizational resources. Through Rewst, you can utilize subscriptions as workflow triggers, automating processes such as ticket creation in your PSA when a new user is added to Microsoft 365.

## Supported Subscriptions

Rewst currently supports various subscriptions, each tailored to specific organizational needs:

### User Changes

The Users trigger is a webhook trigger that receives webhooks whenever a change occurs to any user in a Microsoft Graph API organization.

**Purpose**: To monitor and respond to changes in users within a Microsoft Graph API organization.

**Trigger Details**:

* **Name**: Users
* **Description**: Changes to all users
* **Type**: Webhook trigger
* **Webhook URL template**: `/webhooks/microsoft_graph/{trigger_id}/{org_id}`

#### User Trigger Parameters[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#user-trigger-parameters) <a href="#user-trigger-parameters" id="user-trigger-parameters"></a>

The following are the parameters that can be passed to the Users trigger:

<table><thead><tr><th width="174">Name</th><th width="118">Data Type</th><th width="204">Default Value</th><th>Description</th></tr></thead><tbody><tr><td>resource</td><td>immutable <code>str</code></td><td>chats/getAllMessages</td><td>The resource to subscribe to.</td></tr><tr><td>max_expiration_time_minutes</td><td>immutable <code>int</code></td><td>60</td><td>The maximum amount of time (in minutes) before the subscription expires.</td></tr><tr><td>change_type</td><td>immutable <code>str</code></td><td>created,updated</td><td>The type of change to listen for. Possible values are "created", "updated", "deleted", and "deleted,updated".</td></tr></tbody></table>

#### User Output[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#user-output) <a href="#user-output" id="user-output"></a>

The Users trigger has a default output schema that includes the following fields:

<table><thead><tr><th width="222.33333333333331">Parameter</th><th width="178">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the change notification.</td></tr><tr><td>subscriptionId</td><td>string</td><td>The ID of the subscription.</td></tr><tr><td>subscriptionExpirationDateTime</td><td>datetime</td><td>The expiration datetime for this subscription.</td></tr><tr><td>changeType</td><td>string</td><td>The type of changes being subscribed to.</td></tr><tr><td>clientState</td><td>string</td><td>An ID used internally to validate the subscription payloads.</td></tr><tr><td>tenantId</td><td>string</td><td>The Microsoft tenant ID tied to this subscription.</td></tr><tr><td>resourceData</td><td>object</td><td>The resource data object describing the change notification.</td></tr></tbody></table>

### Group Changes

**Purpose**: To subscribe to changes in all groups within Microsoft Graph, receiving notifications when groups are created or updated.

**Trigger Details**:

* **Name**: Groups
* **Description**: Changes to all groups
* **Type**: Webhook
* **Webhook URL Template**: `/webhooks/microsoft_graph/{trigger_id}/{org_id}`

#### Group Trigger Parameters[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#group-trigger-parameters) <a href="#group-trigger-parameters" id="group-trigger-parameters"></a>

The following parameters are available for the Groups trigger:

<table><thead><tr><th width="163">Name</th><th width="131">Data Type</th><th width="202">Default Value</th><th>Description</th></tr></thead><tbody><tr><td>resource</td><td>immutable <code>str</code></td><td>chats/getAllMessages</td><td>The resource to subscribe to.</td></tr><tr><td>max_expiration_time_minutes</td><td>immutable <code>int</code></td><td>60</td><td>The maximum amount of time (in minutes) before the subscription expires.</td></tr><tr><td>change_type</td><td>immutable <code>str</code></td><td>created,updated</td><td>The type of change to listen for. Possible values are "created", "updated", "deleted", and "deleted,updated".</td></tr></tbody></table>

#### Group Output[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#group-output) <a href="#group-output" id="group-output"></a>

The output schema for the Groups trigger is an object with the following properties:

<table><thead><tr><th width="294">Parameter</th><th width="125">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the change notification.</td></tr><tr><td>subscriptionId</td><td>string</td><td>The ID of the subscription.</td></tr><tr><td>subscriptionExpirationDateTime</td><td>datetime</td><td>The expiration datetime for this subscription.</td></tr><tr><td>changeType</td><td>string</td><td>The type of changes being subscribed to.</td></tr><tr><td>clientState</td><td>string</td><td>An ID used internally to validate the subscription payloads.</td></tr><tr><td>tenantId</td><td>string</td><td>The Microsoft tenant ID tied to this subscription.</td></tr><tr><td>resourceData</td><td>object</td><td>The resource data object describing the change notification.</td></tr></tbody></table>

### New Chat Message

**Purpose**: To receive notifications for changes in chat messages across all chats.

#### Chat Message Parameters[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#chat-message-parameters) <a href="#chat-message-parameters" id="chat-message-parameters"></a>

<table><thead><tr><th>Name</th><th width="132">Data Type</th><th width="204">Default Value</th><th>Description</th></tr></thead><tbody><tr><td>resource</td><td>immutable <code>str</code></td><td>chats/getAllMessages</td><td>The resource to subscribe to.</td></tr><tr><td>max_expiration_time_minutes</td><td>immutable <code>int</code></td><td>60</td><td>The maximum amount of time (in minutes) before the subscription expires.</td></tr><tr><td>change_type</td><td>immutable <code>str</code></td><td>created,updated</td><td>The type of change to listen for. Possible values are "created", "updated", "deleted", and "deleted,updated".</td></tr><tr><td>decrypt_messages</td><td><code>bool</code></td><td><code>true</code></td><td>Whether or not to decrypt the message payloads in incoming webhooks from this subscription.</td></tr></tbody></table>

#### Chat Message Output[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#chat-message-output) <a href="#chat-message-output" id="chat-message-output"></a>

The output schema for the Chat trigger is an object with the following properties:

<table><thead><tr><th width="229">Parameter</th><th width="133">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the change notification.</td></tr><tr><td>subscriptionId</td><td>string</td><td>The ID of the subscription.</td></tr><tr><td>subscriptionExpirationDateTime</td><td>datetime</td><td>The expiration datetime for this subscription.</td></tr><tr><td>changeType</td><td>string</td><td>The type of changes being subscribed to.</td></tr><tr><td>clientState</td><td>string</td><td>An ID used internally to validate the subscription payloads.</td></tr><tr><td>tenantId</td><td>string</td><td>The Microsoft tenant ID tied to this subscription.</td></tr><tr><td>decryptedContent</td><td>object</td><td>The resource data object describing the change notification.</td></tr><tr><td>encryptedContent</td><td>object</td><td>The resource data object describing the change notification.</td></tr><tr><td>resourceData</td><td>object</td><td>The resource data object describing the change notification.</td></tr></tbody></table>

The output schema for the Chat trigger `decryptedContent` property is object with the following properties:

<table><thead><tr><th width="233">Field</th><th width="141">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the chat message.</td></tr><tr><td>replyToId</td><td>string</td><td>The ID of the message that this message is a reply to.</td></tr><tr><td>from</td><td>object</td><td>The sender of the chat message.</td></tr><tr><td>etag</td><td>string</td><td>An opaque string value that changes whenever the message is changed or deleted.</td></tr><tr><td>messageType</td><td>string</td><td>The type of the chat message.</td></tr><tr><td>createdDateTime</td><td>datetime</td><td>The timestamp of when the chat message was created.</td></tr><tr><td>lastModifiedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was last modified.</td></tr><tr><td>lastEditedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was last edited.</td></tr><tr><td>deletedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was deleted.</td></tr><tr><td>subject</td><td>string</td><td>The subject of the chat message.</td></tr><tr><td>body</td><td>object</td><td>The content of the chat message.</td></tr><tr><td>summary</td><td>string</td><td>A short summary of the chat message.</td></tr><tr><td>attachments</td><td>array</td><td>The attachments (if any) associated with the chat message.</td></tr><tr><td>mentions</td><td>array</td><td>The mentions (if any) in the chat message.</td></tr><tr><td>importance</td><td>string</td><td>The importance of the chat message.</td></tr><tr><td>reactions</td><td>array</td><td>The reactions (if any) to the chat message.</td></tr><tr><td>locale</td><td>string</td><td>The locale of the chat message.</td></tr><tr><td>policyViolation</td><td>object</td><td>If the chat message violates a policy, this property provides details.</td></tr><tr><td>chatId</td><td>string</td><td>The ID of the chat thread.</td></tr><tr><td>channelIdentity</td><td>object</td><td>The identity of the channel where the chat message was posted.</td></tr><tr><td>webUrl</td><td>string</td><td>The URL of the chat message in the Teams UI.</td></tr><tr><td>eventDetail</td><td>object</td><td>Additional details about the chat message event.</td></tr></tbody></table>

### New Chat Message Subscription by Chat ID

This trigger receives webhook notifications from Microsoft Graph for changes to chat messages in a specific chat. See [these instructions](https://www.c-sharpcorner.com/blogs/how-to-fetch-the-teams-id-and-channel-id-for-microsoft-teams) to get the chat ID from Microsoft Teams.

#### Chat message by Chat ID Parameters[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#chat-message-by-chat-id-parameters) <a href="#chat-message-by-chat-id-parameters" id="chat-message-by-chat-id-parameters"></a>

<table><thead><tr><th width="165">Name</th><th width="131">Data Type</th><th width="205">Default Value</th><th>Description</th></tr></thead><tbody><tr><td>resource</td><td>immutable <code>str</code></td><td>chats/getAllMessages</td><td>The resource to subscribe to.</td></tr><tr><td>max_expiration_time_minutes</td><td>immutable <code>int</code></td><td>60</td><td>The maximum amount of time (in minutes) before the subscription expires.</td></tr><tr><td>change_type</td><td>immutable <code>str</code></td><td>created,updated</td><td>The type of change to listen for. Possible values are "created", "updated", "deleted", and "deleted,updated".</td></tr><tr><td>decrypt_messages</td><td><code>bool</code></td><td><code>true</code></td><td>Whether or not to decrypt the message payloads in incoming webhooks from this subscription.</td></tr><tr><td>chat_id</td><td>string</td><td><code>undefined</code></td><td>The chat ID to subscribe to</td></tr></tbody></table>

#### Chat Message by Chat ID Output[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#chat-message-by-chat-id-output) <a href="#chat-message-by-chat-id-output" id="chat-message-by-chat-id-output"></a>

The output schema for the Chat trigger is an object with the following properties:

<table><thead><tr><th width="252">Parameter</th><th width="147">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the change notification.</td></tr><tr><td>subscriptionId</td><td>string</td><td>The ID of the subscription.</td></tr><tr><td>subscriptionExpirationDateTime</td><td>datetime</td><td>The expiration datetime for this subscription.</td></tr><tr><td>changeType</td><td>string</td><td>The type of changes being subscribed to.</td></tr><tr><td>clientState</td><td>string</td><td>An ID used internally to validate the subscription payloads.</td></tr><tr><td>tenantId</td><td>string</td><td>The Microsoft tenant ID tied to this subscription.</td></tr><tr><td>decryptedContent</td><td>object</td><td>The resource data object describing the change notification.</td></tr><tr><td>encryptedContent</td><td>object</td><td>The resource data object describing the change notification.</td></tr><tr><td>resourceData</td><td>object</td><td>The resource data object describing the change notification.</td></tr></tbody></table>

The output schema for the Chat trigger `decryptedContent` property is object with the following properties:

<table><thead><tr><th width="256">Field</th><th width="146">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the chat message.</td></tr><tr><td>replyToId</td><td>string</td><td>The ID of the message that this message is a reply to.</td></tr><tr><td>from</td><td>object</td><td>The sender of the chat message.</td></tr><tr><td>etag</td><td>string</td><td>An opaque string value that changes whenever the message is changed or deleted.</td></tr><tr><td>messageType</td><td>string</td><td>The type of the chat message.</td></tr><tr><td>createdDateTime</td><td>datetime</td><td>The timestamp of when the chat message was created.</td></tr><tr><td>lastModifiedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was last modified.</td></tr><tr><td>lastEditedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was last edited.</td></tr><tr><td>deletedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was deleted.</td></tr><tr><td>subject</td><td>string</td><td>The subject of the chat message.</td></tr><tr><td>body</td><td>object</td><td>The content of the chat message.</td></tr><tr><td>summary</td><td>string</td><td>A short summary of the chat message.</td></tr><tr><td>attachments</td><td>array</td><td>The attachments (if any) associated with the chat message.</td></tr><tr><td>mentions</td><td>array</td><td>The mentions (if any) in the chat message.</td></tr><tr><td>importance</td><td>string</td><td>The importance of the chat message.</td></tr><tr><td>reactions</td><td>array</td><td>The reactions (if any) to the chat message.</td></tr><tr><td>locale</td><td>string</td><td>The locale of the chat message.</td></tr><tr><td>policyViolation</td><td>object</td><td>If the chat message violates a policy, this property provides details.</td></tr><tr><td>chatId</td><td>string</td><td>The ID of the chat thread.</td></tr><tr><td>channelIdentity</td><td>object</td><td>The identity of the channel where the chat message was posted.</td></tr><tr><td>webUrl</td><td>string</td><td>The URL of the chat message in the Teams UI.</td></tr><tr><td>eventDetail</td><td>object</td><td>Additional details about the chat message event.</td></tr></tbody></table>

### New Teams Message

Changes to chat messages in all channels in all teams.

#### All Channels Chat Messages Parameters[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#all-channels-chat-messages-parameters) <a href="#all-channels-chat-messages-parameters" id="all-channels-chat-messages-parameters"></a>

<table><thead><tr><th>Name</th><th width="139">Data Type</th><th width="215">Default Value</th><th>Description</th></tr></thead><tbody><tr><td>resource</td><td>immutable <code>str</code></td><td>teams/getAllMessages</td><td>The resource to subscribe to.</td></tr><tr><td>max_expiration_time_minutes</td><td>immutable <code>int</code></td><td>60</td><td>The maximum amount of time (in minutes) before the subscription expires.</td></tr><tr><td>change_type</td><td>immutable <code>str</code></td><td>created,updated</td><td>The type of change to listen for. Possible values are "created", "updated", "deleted", and "deleted,updated".</td></tr><tr><td>decrypt_messages</td><td><code>bool</code></td><td><code>true</code></td><td>Whether or not to decrypt the message payloads in incoming webhooks from this subscription.</td></tr></tbody></table>

#### All Channels Chat Messages Output[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#all-channels-chat-messages-output) <a href="#all-channels-chat-messages-output" id="all-channels-chat-messages-output"></a>

The output schema for the Teams trigger is an object with the following properties:

<table><thead><tr><th width="290">Parameter</th><th width="137">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the change notification.</td></tr><tr><td>subscriptionId</td><td>string</td><td>The ID of the subscription.</td></tr><tr><td>subscriptionExpirationDateTime</td><td>datetime</td><td>The expiration datetime for this subscription.</td></tr><tr><td>changeType</td><td>string</td><td>The type of changes being subscribed to.</td></tr><tr><td>clientState</td><td>string</td><td>An ID used internally to validate the subscription payloads.</td></tr><tr><td>tenantId</td><td>string</td><td>The Microsoft tenant ID tied to this subscription.</td></tr><tr><td>decryptedContent</td><td>object</td><td>The resource data object describing the change notification.</td></tr><tr><td>encryptedContent</td><td>object</td><td>The resource data object describing the change notification.</td></tr><tr><td>resourceData</td><td>object</td><td>The resource data object describing the change notification.</td></tr></tbody></table>

The output schema for the Chat trigger `decryptedContent` property is object with the following properties:

<table><thead><tr><th width="270">Field</th><th width="131">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the chat message.</td></tr><tr><td>replyToId</td><td>string</td><td>The ID of the message that this message is a reply to.</td></tr><tr><td>from</td><td>object</td><td>The sender of the chat message.</td></tr><tr><td>etag</td><td>string</td><td>An opaque string value that changes whenever the message is changed or deleted.</td></tr><tr><td>messageType</td><td>string</td><td>The type of the chat message.</td></tr><tr><td>createdDateTime</td><td>datetime</td><td>The timestamp of when the chat message was created.</td></tr><tr><td>lastModifiedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was last modified.</td></tr><tr><td>lastEditedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was last edited.</td></tr><tr><td>deletedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was deleted.</td></tr><tr><td>subject</td><td>string</td><td>The subject of the chat message.</td></tr><tr><td>body</td><td>object</td><td>The content of the chat message.</td></tr><tr><td>summary</td><td>string</td><td>A short summary of the chat message.</td></tr><tr><td>attachments</td><td>array</td><td>The attachments (if any) associated with the chat message.</td></tr><tr><td>mentions</td><td>array</td><td>The mentions (if any) in the chat message.</td></tr><tr><td>importance</td><td>string</td><td>The importance of the chat message.</td></tr><tr><td>reactions</td><td>array</td><td>The reactions (if any) to the chat message.</td></tr><tr><td>locale</td><td>string</td><td>The locale of the chat message.</td></tr><tr><td>policyViolation</td><td>object</td><td>If the chat message violates a policy, this property provides details.</td></tr><tr><td>chatId</td><td>string</td><td>The ID of the chat thread.</td></tr><tr><td>channelIdentity</td><td>object</td><td>The identity of the channel where the chat message was posted.</td></tr><tr><td>webUrl</td><td>string</td><td>The URL of the chat message in the Teams UI.</td></tr><tr><td>eventDetail</td><td>object</td><td>Additional details about the chat message event.</td></tr></tbody></table>

### New Teams Message Subscription by Team and Channel ID

Changes to chat messages in a specific channel. See [these instructions](https://www.c-sharpcorner.com/blogs/how-to-fetch-the-teams-id-and-channel-id-for-microsoft-teams) to get the team ID and channel ID from Microsoft Teams.

#### Teams Message Parameters[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#teams-message-parameters) <a href="#teams-message-parameters" id="teams-message-parameters"></a>

<table><thead><tr><th width="163">Name</th><th width="128">Data Type</th><th width="206">Default Value</th><th>Description</th></tr></thead><tbody><tr><td>resource</td><td>immutable <code>str</code></td><td>teams/getAllMessages</td><td>The resource to subscribe to.</td></tr><tr><td>max_expiration_time_minutes</td><td>immutable <code>int</code></td><td>60</td><td>The maximum amount of time (in minutes) before the subscription expires.</td></tr><tr><td>change_type</td><td>immutable <code>str</code></td><td>created,updated</td><td>The type of change to listen for. Possible values are "created", "updated", "deleted", and "deleted,updated".</td></tr><tr><td>decrypt_messages</td><td><code>bool</code></td><td><code>true</code></td><td>Whether or not to decrypt the message payloads in incoming webhooks from this subscription.</td></tr><tr><td>team_id</td><td>string</td><td><code>undefined</code></td><td>The channel ID to subscribe to</td></tr><tr><td>channel_id</td><td>string</td><td><code>undefined</code></td><td>The team ID of the channel to subscribe to</td></tr></tbody></table>

#### Teams Message Output[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#teams-message-output) <a href="#teams-message-output" id="teams-message-output"></a>

The output schema for the Teams trigger is an object with the following properties:

<table><thead><tr><th width="298">Parameter</th><th width="135">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the change notification.</td></tr><tr><td>subscriptionId</td><td>string</td><td>The ID of the subscription.</td></tr><tr><td>subscriptionExpirationDateTime</td><td>datetime</td><td>The expiration datetime for this subscription.</td></tr><tr><td>changeType</td><td>string</td><td>The type of changes being subscribed to.</td></tr><tr><td>clientState</td><td>string</td><td>An ID used internally to validate the subscription payloads.</td></tr><tr><td>tenantId</td><td>string</td><td>The Microsoft tenant ID tied to this subscription.</td></tr><tr><td>decryptedContent</td><td>object</td><td>The resource data object describing the change notification.</td></tr><tr><td>encryptedContent</td><td>object</td><td>The resource data object describing the change notification.</td></tr><tr><td>resourceData</td><td>object</td><td>The resource data object describing the change notification.</td></tr></tbody></table>

The output schema for the Chat trigger `decryptedContent` property is object with the following properties:

<table><thead><tr><th width="295">Field</th><th width="133">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the chat message.</td></tr><tr><td>replyToId</td><td>string</td><td>The ID of the message that this message is a reply to.</td></tr><tr><td>from</td><td>object</td><td>The sender of the chat message.</td></tr><tr><td>etag</td><td>string</td><td>An opaque string value that changes whenever the message is changed or deleted.</td></tr><tr><td>messageType</td><td>string</td><td>The type of the chat message.</td></tr><tr><td>createdDateTime</td><td>datetime</td><td>The timestamp of when the chat message was created.</td></tr><tr><td>lastModifiedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was last modified.</td></tr><tr><td>lastEditedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was last edited.</td></tr><tr><td>deletedDateTime</td><td>datetime</td><td>The timestamp of when the chat message was deleted.</td></tr><tr><td>subject</td><td>string</td><td>The subject of the chat message.</td></tr><tr><td>body</td><td>object</td><td>The content of the chat message.</td></tr><tr><td>summary</td><td>string</td><td>A short summary of the chat message.</td></tr><tr><td>attachments</td><td>array</td><td>The attachments (if any) associated with the chat message.</td></tr><tr><td>mentions</td><td>array</td><td>The mentions (if any) in the chat message.</td></tr><tr><td>importance</td><td>string</td><td>The importance of the chat message.</td></tr><tr><td>reactions</td><td>array</td><td>The reactions (if any) to the chat message.</td></tr><tr><td>locale</td><td>string</td><td>The locale of the chat message.</td></tr><tr><td>policyViolation</td><td>object</td><td>If the chat message violates a policy, this property provides details.</td></tr><tr><td>chatId</td><td>string</td><td>The ID of the chat thread.</td></tr><tr><td>channelIdentity</td><td>object</td><td>The identity of the channel where the chat message was posted.</td></tr><tr><td>webUrl</td><td>string</td><td>The URL of the chat message in the Teams UI.</td></tr><tr><td>eventDetail</td><td>object</td><td>Additional details about the chat message event.</td></tr></tbody></table>

### New Security Alert

This trigger receives webhook notifications from Microsoft Graph for new Security Alerts.

### Security Alert Parameters[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#security-alert-parameters) <a href="#security-alert-parameters" id="security-alert-parameters"></a>

<table><thead><tr><th>Name</th><th width="166">Data Type</th><th>Default Value</th><th>Description</th></tr></thead><tbody><tr><td>resource</td><td>immutable <code>str</code></td><td>security/alerts?$filter=Status eq 'NewAlert'</td><td>The resource to subscribe to.</td></tr><tr><td>max_expiration_time_minutes</td><td>immutable <code>int</code></td><td>43100</td><td>The maximum amount of time (in minutes) before the subscription expires.</td></tr><tr><td>change_type</td><td>immutable <code>str</code></td><td>updated</td><td>The type of change to listen for. Possible values are "created", "updated", "deleted", and "deleted,updated".</td></tr></tbody></table>

### Security Alert Output[​](http://localhost:3000/docs/integrations/Cloud/Microsoft-Graph/ms-graph-subscriptions#security-alert-output) <a href="#security-alert-output" id="security-alert-output"></a>

The output schema for the Security Alerts trigger is an object with the following properties:

<table><thead><tr><th width="298">Parameter</th><th width="136">Type</th><th>Description</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>The ID of the change notification.</td></tr><tr><td>subscriptionId</td><td>string</td><td>The ID of the subscription.</td></tr><tr><td>subscriptionExpirationDateTime</td><td>datetime</td><td>The expiration datetime for this subscription.</td></tr><tr><td>changeType</td><td>string</td><td>The type of changes being subscribed to.</td></tr><tr><td>clientState</td><td>string</td><td>An ID used internally to validate the subscription payloads.</td></tr><tr><td>tenantId</td><td>string</td><td>The Microsoft tenant ID tied to this subscription.</td></tr><tr><td>resourceData</td><td>object</td><td>The resource data object describing the change notification.</td></tr></tbody></table>

For additional information, see Microsoft's[ documentation](https://learn.microsoft.com/en-us/graph/api/resources/webhooks?view=graph-rest-1.0) on graph API subscriptions.
