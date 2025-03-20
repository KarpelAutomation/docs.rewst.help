# Slack integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

The Slack integration allows Rewst users to set up real-time notifications and updates from Rewst directly within Slack. Additionally, Rewst can help with Slack user management, app management, group management, and auth management. The integration also enables users to search and access Rewst content from Slack, saving time and effort. Rewst users can set up triggers and actions that keep the team informed about their task progress or important events.

### Setup

1. **Navigate** to the integrations page in [Rewst](https://app.rewst.io/).
2. **Click on** the Slack integration.
3. **Fill out** the configuration form.
4. **Click on** the OAuth Configuration Authorize/Re-Authorize button.
5. **Select** Allow in the Slack "requesting permissions" popup window.

### Actions

### Apps

#### apps.uninstall[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#appsuninstall) <a href="#appsuninstall" id="appsuninstall"></a>

Uninstalls your app from a workspace.

| Parameter      | Description                                  | Type   |
| -------------- | -------------------------------------------- | ------ |
| client\_id     | Issued when you created your application.    | String |
| client\_secret | Issued when you created your application.    | String |
| token          | Authentication token. Requires scope: `none` | String |

### Auth

#### auth.revoke[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#authrevoke) <a href="#authrevoke" id="authrevoke"></a>

Revokes a token.

| Parameter | Description                                                                                                     | Type    |
| --------- | --------------------------------------------------------------------------------------------------------------- | ------- |
| test      | Setting this parameter to `1` triggers a _testing mode_ where the specified token will not actually be revoked. | Boolean |
| token     | Authentication token. Requires scope: `none`                                                                    | String  |

#### auth.test[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#authtest) <a href="#authtest" id="authtest"></a>

Checks authentication & identity.

| Parameter | Description                                  | Type   |
| --------- | -------------------------------------------- | ------ |
| token     | Authentication token. Requires scope: `none` | String |

### Chat

#### chat.delete[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatdelete) <a href="#chatdelete" id="chatdelete"></a>

Deletes a message.

| Parameter | Description                                                                                                                                                                                                          | Type             |
| --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- |
| as\_user  | Pass true to delete the message as the authed user with `chat:write:user` scope. Bot users in this context are considered authed users. If unused or false, the message will be deleted with `chat:write:bot` scope. | Boolean          |
| channel   | Channel containing the message to be deleted.                                                                                                                                                                        | String           |
| token     | Authentication token. Requires scope: `chat:write`                                                                                                                                                                   | String           |
| ts        | Timestamp of the message to be deleted.                                                                                                                                                                              | Number _(float)_ |

#### chat.deleteScheduledMessage[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatdeletescheduledmessage) <a href="#chatdeletescheduledmessage" id="chatdeletescheduledmessage"></a>

Deletes a pending scheduled message from the queue.

| Parameter                | Description                                                                                                                                                                                                          | Type    |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| as\_user                 | Pass true to delete the message as the authed user with `chat:write:user` scope. Bot users in this context are considered authed users. If unused or false, the message will be deleted with `chat:write:bot` scope. | Boolean |
| channel\*                | The channel the scheduled\_message is posting to                                                                                                                                                                     | String  |
| scheduled\_message\_id\* | `scheduled_message_id` returned from call to chat.scheduleMessage                                                                                                                                                    | String  |
| token                    | Authentication token. Requires scope: `chat:write`                                                                                                                                                                   | String  |

#### chat.getPermalink[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatgetpermalink) <a href="#chatgetpermalink" id="chatgetpermalink"></a>

Retrieve a permalink URL for a specific extant message

| Parameter     | Description                                                      | Type   |
| ------------- | ---------------------------------------------------------------- | ------ |
| channel\*     | The ID of the conversation or channel containing the message     | String |
| message\_ts\* | A message's `ts` value, uniquely identifying it within a channel | String |
| token         | Authentication token. Requires scope: `none`                     | String |

#### chat.meMessage[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatmemessage) <a href="#chatmemessage" id="chatmemessage"></a>

Share a me message into a channel.

| Parameter | Description                                                                                                        | Type   |
| --------- | ------------------------------------------------------------------------------------------------------------------ | ------ |
| channel   | Channel to send message to. Can be a public channel, private group or IM channel. Can be an encoded ID, or a name. | String |
| text      | Text of the message to send.                                                                                       | String |
| token     | Authentication token. Requires scope: `chat:write:user`                                                            | String |

#### chat.postEphemeral[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatpostephemeral) <a href="#chatpostephemeral" id="chatpostephemeral"></a>

Sends an ephemeral message to a user in a channel.

| Parameter   | Description                                                                                                                                                                                                                 | Type    |
| ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| as\_user    | Pass true to post the message as the authed user. Defaults to true if the chat:write:bot scope is not included. Otherwise, defaults to false.                                                                               | Boolean |
| attachments | A JSON-based array of structured attachments, presented as a URL-encoded string.                                                                                                                                            | String  |
| blocks      | A JSON-based array of structured blocks, presented as a URL-encoded string.                                                                                                                                                 | String  |
| channel\*   | Channel, private group, or IM channel to send message to. Can be an encoded ID, or a name.                                                                                                                                  | String  |
| icon\_emoji | Emoji to use as the icon for this message. Overrides `icon_url`. Must be used in conjunction with `as_user` set to `false`, otherwise ignored. See authorship below.                                                        | String  |
| icon\_url   | URL to an image to use as the icon for this message. Must be used in conjunction with `as_user` set to false, otherwise ignored. See authorship below.                                                                      | String  |
| link\_names | Find and link channel names and usernames.                                                                                                                                                                                  | Boolean |
| parse       | Change how messages are treated. Defaults to `none`. See below.                                                                                                                                                             | String  |
| text        | How this field works and whether it is required depends on other fields you use in your API call. See below for more detail.                                                                                                | String  |
| thread\_ts  | Provide another message's `ts` value to post this message in a thread. Avoid using a reply's `ts` value; use its parent's value instead. Ephemeral messages in threads are only shown if there is already an active thread. | String  |
| token       | Authentication token. Requires scope: `chat:write`                                                                                                                                                                          | String  |
| user\*      | `id` of the user who will receive the ephemeral message. The user should be in the channel specified by the `channel` argument.                                                                                             | String  |
| username    | Set your bot's user name. Must be used in conjunction with `as_user` set to false, otherwise ignored. See authorship below.                                                                                                 | String  |

#### chat.postMessage[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatpostmessage) <a href="#chatpostmessage" id="chatpostmessage"></a>

Sends a message to a channel.

| Parameter        | Description                                                                                                                                                          | Type    |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| attachments      | A JSON-based array of structured attachments, presented as a URL-encoded string.                                                                                     | String  |
| blocks           | A JSON-based array of structured blocks, presented as a URL-encoded string.                                                                                          | String  |
| channel\*        | Channel, private group, or IM channel to send message to. Note: the App must first be invited to private channels first                                              | String  |
| icon\_emoji      | Emoji to use as the icon for this message. Overrides `icon_url`. Must be used in conjunction with `as_user` set to `false`, otherwise ignored. See authorship below. | String  |
| icon\_url        | URL to an image to use as the icon for this message. Must be used in conjunction with `as_user` set to false, otherwise ignored. See authorship below.               | String  |
| link\_names      | Find and link channel names and usernames.                                                                                                                           | Boolean |
| mrkdwn           | Disable Slack markup parsing by setting to `false`. Enabled by default.                                                                                              | Boolean |
| parse            | Change how messages are treated. Defaults to `none`. See below.                                                                                                      | String  |
| reply\_broadcast | Used in conjunction with `thread_ts` and indicates whether reply should be made visible to everyone in the channel or conversation. Defaults to `false`.             | Boolean |
| text             | How this field works and whether it is required depends on other fields you use in your API call. See below for more detail.                                         | String  |
| thread\_ts       | Provide another message's `ts` value to make this message a reply. Avoid using a reply's `ts` value; use its parent instead.                                         | String  |
| unfurl\_links    | Pass true to enable unfurling of primarily text-based content.                                                                                                       | Boolean |
| unfurl\_media    | Pass false to disable unfurling of media content.                                                                                                                    | Boolean |
| username         | Set your bot's user name. See authorship below.                                                                                                                      | String  |

#### chat.scheduledMessages.list[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatscheduledmessageslist) <a href="#chatscheduledmessageslist" id="chatscheduledmessageslist"></a>

Returns a list of scheduled messages.

| Parameter | Description                                                                                                                                                           | Type             |
| --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- |
| channel   | The channel of the scheduled messages                                                                                                                                 | String           |
| cursor    | For pagination purposes, this is the `cursor` value returned from a previous call to `chat.scheduledmessages.list` indicating where you want to start this call from. | String           |
| latest    | A UNIX timestamp of the latest value in the time range                                                                                                                | Number _(float)_ |
| limit     | Maximum number of original entries to return.                                                                                                                         | Integer          |
| oldest    | A UNIX timestamp of the oldest value in the time range                                                                                                                | Number _(float)_ |
| token     | Authentication token. Requires scope: `none`                                                                                                                          | String           |

#### chat.scheduleMessage[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatschedulemessage) <a href="#chatschedulemessage" id="chatschedulemessage"></a>

Schedules a message to be sent to a channel.

| Parameter        | Description                                                                                                                                              | Type             |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- |
| as\_user         | Pass true to post the message as the authed user, instead of as a bot. Defaults to false. See chat.postMessage.                                          | Boolean          |
| attachments      | A JSON-based array of structured attachments, presented as a URL-encoded string.                                                                         | String           |
| blocks           | A JSON-based array of structured blocks, presented as a URL-encoded string.                                                                              | String           |
| channel          | Channel, private group, or DM channel to send message to. Can be an encoded ID, or a name. See below for more details.                                   | String           |
| link\_names      | Find and link channel names and usernames.                                                                                                               | Boolean          |
| parse            | Change how messages are treated. Defaults to `none`. See chat.postMessage.                                                                               | String           |
| post\_at         | Unix EPOCH timestamp of time in future to send the message.                                                                                              | String           |
| reply\_broadcast | Used in conjunction with `thread_ts` and indicates whether reply should be made visible to everyone in the channel or conversation. Defaults to `false`. | Boolean          |
| text             | How this field works and whether it is required depends on other fields you use in your API call. See below for more detail.                             | String           |
| thread\_ts       | Provide another message's `ts` value to make this message a reply. Avoid using a reply's `ts` value; use its parent instead.                             | Number _(float)_ |
| token            | Authentication token. Requires scope: `chat:write`                                                                                                       | String           |
| unfurl\_links    | Pass true to enable unfurling of primarily text-based content.                                                                                           | Boolean          |
| unfurl\_media    | Pass false to disable unfurling of media content.                                                                                                        | Boolean          |

#### chat.unfurl[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatunfurl) <a href="#chatunfurl" id="chatunfurl"></a>

Provide custom unfurl behavior for user-posted URLs

| Parameter            | Description                                                                                                                                            | Type    |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------- |
| channel\*            | Channel ID of the message                                                                                                                              | String  |
| token                | Authentication token. Requires scope: `links:write`                                                                                                    | String  |
| ts\*                 | Timestamp of the message to add unfurl behavior to.                                                                                                    | String  |
| unfurls              | URL-encoded JSON map with keys set to URLs featured in the the message, pointing to their unfurl blocks or message attachments.                        | String  |
| user\_auth\_message  | Provide a simply-formatted string to send as an ephemeral message to the user as invitation to authenticate further and enable full unfurling behavior | String  |
| user\_auth\_required | Set to `true` or `1` to indicate the user must install your Slack app to trigger unfurls for this domain                                               | Boolean |
| user\_auth\_url      | Send users to this custom URL where they will complete authentication in your app to fully trigger unfurling. Value should be properly URL-encoded.    | String  |

#### chat.update[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#chatupdate) <a href="#chatupdate" id="chatupdate"></a>

Updates a message.

| Parameter   | Description                                                                                                                         | Type   |
| ----------- | ----------------------------------------------------------------------------------------------------------------------------------- | ------ |
| as\_user    | Pass true to update the message as the authed user. Bot users in this context are considered authed users.                          | String |
| attachments | A JSON-based array of structured attachments, presented as a URL-encoded string. This field is required when not presenting `text`. | String |
| blocks      | A JSON-based array of structured blocks, presented as a URL-encoded string.                                                         | String |
| channel\*   | Channel containing the message to be updated.                                                                                       | String |
| link\_names | Find and link channel names and usernames. Defaults to `none`. See below.                                                           | String |
| parse       | Change how messages are treated. Defaults to `client`, unlike `chat.postMessage`. Accepts either `none` or `full`. See below.       | String |
| text        | New text for the message, using the default formatting rules. It's not required when presenting `attachments`.                      | String |
| token       | Authentication token. Requires scope: `chat:write`                                                                                  | String |
| ts\*        | Timestamp of the message to be updated.                                                                                             | String |

### Conversations

#### conversations.archive[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsarchive) <a href="#conversationsarchive" id="conversationsarchive"></a>

Archives a conversation.

| Parameter | Description                                                 | Type   |
| --------- | ----------------------------------------------------------- | ------ |
| channel   | ID of conversation to archive                               | String |
| token     | Authentication token. Requires scope: `conversations:write` | String |

#### conversations.close[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsclose) <a href="#conversationsclose" id="conversationsclose"></a>

Closes a direct message or multi-person direct message.

| Parameter | Description                                                 | Type   |
| --------- | ----------------------------------------------------------- | ------ |
| channel   | Conversation to close.                                      | String |
| token     | Authentication token. Requires scope: `conversations:write` | String |

#### conversations.create[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationscreate) <a href="#conversationscreate" id="conversationscreate"></a>

Initiates a public or private channel-based conversation

| Parameter   | Description                                                                                                                                                                                | Type    |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------- |
| is\_private | Create a private channel instead of a public one                                                                                                                                           | Boolean |
| name        | Name of the public or private channel to create                                                                                                                                            | String  |
| token       | Authentication token. Requires scope: `conversations:write`                                                                                                                                | String  |
| user\_ids   | **Required** for workspace apps. A list of between 1 and 30 human users that will be added to the newly-created conversation. This argument has no effect when used by classic Slack apps. | String  |

#### conversations.history[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationshistory) <a href="#conversationshistory" id="conversationshistory"></a>

Fetches a conversation's history of messages and events.

| Parameter | Description                                                                                                                                                                                                         | Type             |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- |
| channel   | Conversation ID to fetch history for.                                                                                                                                                                               | String           |
| cursor    | Paginate through collections of data by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request's `response_metadata`. Default value fetches the first "page" of the collection. | String           |
| inclusive | Include messages with latest or oldest timestamp in results only when either timestamp is specified.                                                                                                                | Boolean          |
| latest    | End of time range of messages to include in results.                                                                                                                                                                | Number _(float)_ |
| limit     | The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.                                                             | Integer          |
| oldest    | Start of time range of messages to include in results.                                                                                                                                                              | Number _(float)_ |
| token     | Authentication token. Requires scope: `conversations:history`                                                                                                                                                       | String           |

#### conversations.info[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsinfo) <a href="#conversationsinfo" id="conversationsinfo"></a>

Retrieve information about a conversation.

| Parameter             | Description                                                                                   | Type    |
| --------------------- | --------------------------------------------------------------------------------------------- | ------- |
| channel               | Conversation ID to learn more about                                                           | String  |
| include\_locale       | Set this to `true` to receive the locale for this conversation. Defaults to `false`           | Boolean |
| include\_num\_members | Set to `true` to include the member count for the specified conversation. Defaults to `false` | Boolean |
| token                 | Authentication token. Requires scope: `conversations:read`                                    | String  |

#### conversations.invite[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsinvite) <a href="#conversationsinvite" id="conversationsinvite"></a>

Invites users to a channel.

| Parameter | Description                                                         | Type   |
| --------- | ------------------------------------------------------------------- | ------ |
| channel   | The ID of the public or private channel to invite user(s) to.       | String |
| token     | Authentication token. Requires scope: `conversations:write`         | String |
| users     | A comma separated list of user IDs. Up to 1000 users may be listed. | String |

#### conversations.join[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsjoin) <a href="#conversationsjoin" id="conversationsjoin"></a>

Joins an existing conversation.

| Parameter | Description                                            | Type   |
| --------- | ------------------------------------------------------ | ------ |
| channel   | ID of conversation to join                             | String |
| token     | Authentication token. Requires scope: `channels:write` | String |

#### conversations.kick[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationskick) <a href="#conversationskick" id="conversationskick"></a>

Removes a user from a conversation.

| Parameter | Description                                                 | Type   |
| --------- | ----------------------------------------------------------- | ------ |
| channel   | ID of conversation to remove user from.                     | String |
| token     | Authentication token. Requires scope: `conversations:write` | String |
| user      | User ID to be removed.                                      | String |

#### conversations.leave[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsleave) <a href="#conversationsleave" id="conversationsleave"></a>

Leaves a conversation.

| Parameter | Description                                                 | Type   |
| --------- | ----------------------------------------------------------- | ------ |
| channel   | Conversation to leave                                       | String |
| token     | Authentication token. Requires scope: `conversations:write` | String |

#### conversations.list[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationslist) <a href="#conversationslist" id="conversationslist"></a>

Lists all channels in a Slack team.

| Parameter         | Description                                                                                                                                                                                                         | Type    |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| cursor            | Paginate through collections of data by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request's `response_metadata`. Default value fetches the first "page" of the collection. | String  |
| exclude\_archived | Set to `true` to exclude archived channels from the list                                                                                                                                                            | Boolean |
| limit             | The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached. Must be an integer no larger than 1000.                           | Integer |
| token             | Authentication token. Requires scope: `conversations:read`                                                                                                                                                          | String  |
| types             | Mix and match channel types by providing a comma-separated list of any combination of `public_channel`, `private_channel`, `mpim`, `im`                                                                             | String  |

#### conversations.members[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsmembers) <a href="#conversationsmembers" id="conversationsmembers"></a>

Retrieve members of a conversation.

| Parameter | Description                                                                                                                                                                                                         | Type    |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| channel   | ID of the conversation to retrieve members for                                                                                                                                                                      | String  |
| cursor    | Paginate through collections of data by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request's `response_metadata`. Default value fetches the first "page" of the collection. | String  |
| limit     | The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.                                                             | Integer |
| token     | Authentication token. Requires scope: `conversations:read`                                                                                                                                                          | String  |

#### conversations.open[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsopen) <a href="#conversationsopen" id="conversationsopen"></a>

Opens or resumes a direct message or multi-person direct message.

| Parameter  | Description                                                                                                                                                                                                                    | Type    |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------- |
| channel    | Resume a conversation by supplying an `im` or `mpim`'s ID. Or provide the `users` field instead.                                                                                                                               | String  |
| return\_im | Boolean, indicates you want the full IM channel definition in the response.                                                                                                                                                    | Boolean |
| token      | Authentication token. Requires scope: `conversations:write`                                                                                                                                                                    | String  |
| users      | Comma separated lists of users. If only one user is included, this creates a 1:1 DM. The ordering of the users is preserved whenever a multi-person direct message is returned. Supply a `channel` when not supplying `users`. | String  |

#### conversations.rename[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsrename) <a href="#conversationsrename" id="conversationsrename"></a>

Renames a conversation.

| Parameter | Description                                                 | Type   |
| --------- | ----------------------------------------------------------- | ------ |
| channel   | ID of conversation to rename                                | String |
| name      | New name for conversation.                                  | String |
| token     | Authentication token. Requires scope: `conversations:write` | String |

#### conversations.replies[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsreplies) <a href="#conversationsreplies" id="conversationsreplies"></a>

Retrieve a thread of messages posted to a conversation

| Parameter | Description                                                                                                                                                                                                         | Type             |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- |
| channel   | Conversation ID to fetch thread from.                                                                                                                                                                               | String           |
| cursor    | Paginate through collections of data by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request's `response_metadata`. Default value fetches the first "page" of the collection. | String           |
| inclusive | Include messages with latest or oldest timestamp in results only when either timestamp is specified.                                                                                                                | Boolean          |
| latest    | End of time range of messages to include in results.                                                                                                                                                                | Number _(float)_ |
| limit     | The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.                                                             | Integer          |
| oldest    | Start of time range of messages to include in results.                                                                                                                                                              | Number _(float)_ |
| token     | Authentication token. Requires scope: `conversations:history`                                                                                                                                                       | String           |
| ts        | Unique identifier of a thread's parent message.                                                                                                                                                                     | Number _(float)_ |

#### conversations.setPurpose[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationssetpurpose) <a href="#conversationssetpurpose" id="conversationssetpurpose"></a>

Sets the purpose for a conversation.

| Parameter | Description                                                 | Type   |
| --------- | ----------------------------------------------------------- | ------ |
| channel   | Conversation to set the purpose of                          | String |
| purpose   | A new, specialer purpose                                    | String |
| token     | Authentication token. Requires scope: `conversations:write` | String |

#### conversations.setTopic[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationssettopic) <a href="#conversationssettopic" id="conversationssettopic"></a>

Sets the topic for a conversation.

| Parameter | Description                                                         | Type   |
| --------- | ------------------------------------------------------------------- | ------ |
| channel   | Conversation to set the topic of                                    | String |
| token     | Authentication token. Requires scope: `conversations:write`         | String |
| topic     | The new topic string. Does not support formatting or linkification. | String |

#### conversations.unarchive[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#conversationsunarchive) <a href="#conversationsunarchive" id="conversationsunarchive"></a>

Reverses conversation archival.

| Parameter | Description                                                 | Type   |
| --------- | ----------------------------------------------------------- | ------ |
| channel   | ID of conversation to unarchive                             | String |
| token     | Authentication token. Requires scope: `conversations:write` | String |

### Dialog

#### dialog.open[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#dialogopen) <a href="#dialogopen" id="dialogopen"></a>

Open a dialog with a user

| Parameter     | Description                                                | Type   |
| ------------- | ---------------------------------------------------------- | ------ |
| dialog\*      | The dialog definition. This must be a JSON-encoded string. | String |
| token         | Authentication token. Requires scope: `none`               | String |
| trigger\_id\* | Exchange a trigger to post to the user.                    | String |

### Files

#### files.comments.add[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filescommentsadd) <a href="#filescommentsadd" id="filescommentsadd"></a>

Add a comment to an existing file.

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| token     |             | String |
| comment\* |             | String |
| file\*    |             | String |

#### files.comments.delete[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filescommentsdelete) <a href="#filescommentsdelete" id="filescommentsdelete"></a>

Deletes an existing comment on a file.

| Parameter | Description                                              | Type   |
| --------- | -------------------------------------------------------- | ------ |
| file      | File to delete a comment from.                           | String |
| id        | The comment to delete.                                   | String |
| token     | Authentication token. Requires scope: `files:write:user` | String |

#### files.comments.edit[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filescommentsedit) <a href="#filescommentsedit" id="filescommentsedit"></a>

Edit an existing file comment.

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| token     |             | String |
| comment\* |             | String |
| file\*    |             | String |
| id\*      |             | String |

#### files.delete[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesdelete) <a href="#filesdelete" id="filesdelete"></a>

Deletes a file.

| Parameter | Description                                              | Type   |
| --------- | -------------------------------------------------------- | ------ |
| file      | ID of file to delete.                                    | String |
| token     | Authentication token. Requires scope: `files:write:user` | String |

#### files.info[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesinfo) <a href="#filesinfo" id="filesinfo"></a>

Gets information about a team file.

| Parameter | Description                                                                                                                                                                                                                                                                                                           | Type    |
| --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| count     |                                                                                                                                                                                                                                                                                                                       | String  |
| cursor    | Parameter for pagination. File comments are paginated for a single file. Set `cursor` equal to the `next_cursor` attribute returned by the previous request's `response_metadata`. This parameter is optional, but pagination is mandatory: the default value fetches the first "page" of the collection of comments. | String  |
| file      | Specify a file by providing its ID.                                                                                                                                                                                                                                                                                   | String  |
| limit     | The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached.                                                                                                                                                                     | Integer |
| page      |                                                                                                                                                                                                                                                                                                                       | String  |
| token     | Authentication token. Requires scope: `files:read`                                                                                                                                                                                                                                                                    | String  |

#### files.list[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#fileslist) <a href="#fileslist" id="fileslist"></a>

Lists & filters team files.

| Parameter                      | Description                                                                                                                                                        | Type             |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------- |
| channel                        | Filter files appearing in a specific channel, indicated by its ID.                                                                                                 | String           |
| count                          |                                                                                                                                                                    | String           |
| page                           |                                                                                                                                                                    | String           |
| show\_files\_hidden\_by\_limit | Show truncated file info for files hidden due to being too old, and the team who owns the file being over the file limit.                                          | Boolean          |
| token                          | Authentication token. Requires scope: `files:read`                                                                                                                 | String           |
| ts\_from                       | Filter files created after this timestamp (inclusive).                                                                                                             | Number _(float)_ |
| ts\_to                         | Filter files created before this timestamp (inclusive).                                                                                                            | Number _(float)_ |
| types                          | Filter files by type. You can pass multiple values in the types argument, like `types=spaces,snippets`.The default value is `all`, which does not filter the list. | String           |
| user                           | Filter files created by a single user.                                                                                                                             | String           |

#### files.remote.add[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesremoteadd) <a href="#filesremoteadd" id="filesremoteadd"></a>

Adds a file from a remote service

| Parameter                 | Description                                                                                                              | Type   |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------ | ------ |
| external\_id              | Creator defined GUID for the file.                                                                                       | String |
| external\_url             | URL of the remote file.                                                                                                  | String |
| filetype                  | type of file                                                                                                             | String |
| indexable\_file\_contents | A text file (txt, pdf, doc, etc.) containing textual search terms that are used to improve discovery of the remote file. | String |
| preview\_image            | Preview of the document via `multipart/form-data`.                                                                       | String |
| title                     | Title of the file being shared.                                                                                          | String |
| token                     | Authentication token. Requires scope: `remote_files:write`                                                               | String |

#### files.remote.info[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesremoteinfo) <a href="#filesremoteinfo" id="filesremoteinfo"></a>

Retrieve information about a remote file added to Slack

| Parameter    | Description                                               | Type   |
| ------------ | --------------------------------------------------------- | ------ |
| external\_id | Creator defined GUID for the file.                        | String |
| file         | Specify a file by providing its ID.                       | String |
| token        | Authentication token. Requires scope: `remote_files:read` | String |

#### files.remote.list[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesremotelist) <a href="#filesremotelist" id="filesremotelist"></a>

Retrieve information about a remote file added to Slack

| Parameter | Description                                                                                                                                                                                                         | Type             |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- |
| channel   | Filter files appearing in a specific channel, indicated by its ID.                                                                                                                                                  | String           |
| cursor    | Paginate through collections of data by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request's `response_metadata`. Default value fetches the first "page" of the collection. | String           |
| limit     | The maximum number of items to return.                                                                                                                                                                              | Integer          |
| token     | Authentication token. Requires scope: `remote_files:read`                                                                                                                                                           | String           |
| ts\_from  | Filter files created after this timestamp (inclusive).                                                                                                                                                              | Number _(float)_ |
| ts\_to    | Filter files created before this timestamp (inclusive).                                                                                                                                                             | Number _(float)_ |

#### files.remote.remove[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesremoteremove) <a href="#filesremoteremove" id="filesremoteremove"></a>

Remove a remote file.

| Parameter    | Description                                                | Type   |
| ------------ | ---------------------------------------------------------- | ------ |
| external\_id | Creator defined GUID for the file.                         | String |
| file         | Specify a file by providing its ID.                        | String |
| token        | Authentication token. Requires scope: `remote_files:write` | String |

#### files.remote.share[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesremoteshare) <a href="#filesremoteshare" id="filesremoteshare"></a>

Share a remote file into a channel.

| Parameter    | Description                                                        | Type   |
| ------------ | ------------------------------------------------------------------ | ------ |
| channels     | Comma-separated list of channel IDs where the file will be shared. | String |
| external\_id | Creator defined GUID for the file.                                 | String |
| file         | Specify a file by providing its ID.                                | String |
| token        | Authentication token. Requires scope: `remote_files:share`         | String |

#### files.remote.update[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesremoteupdate) <a href="#filesremoteupdate" id="filesremoteupdate"></a>

Updates an existing remote file.

| Parameter                 | Description                                                                             | Type   |
| ------------------------- | --------------------------------------------------------------------------------------- | ------ |
| external\_id              | Creator defined GUID for the file.                                                      | String |
| external\_url             | URL of the remote file.                                                                 | String |
| file                      | Specify a file by providing its ID.                                                     | String |
| filetype                  | type of file                                                                            | String |
| indexable\_file\_contents | File containing contents that can be used to improve searchability for the remote file. | String |
| preview\_image            | Preview of the document via `multipart/form-data`.                                      | String |
| title                     | Title of the file being shared.                                                         | String |
| token                     | Authentication token. Requires scope: `remote_files:write`                              | String |

#### files.revokePublicURL[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filesrevokepublicurl) <a href="#filesrevokepublicurl" id="filesrevokepublicurl"></a>

Revokes public/external sharing access for a file

| Parameter | Description                                              | Type   |
| --------- | -------------------------------------------------------- | ------ |
| file      | File to revoke                                           | String |
| token     | Authentication token. Requires scope: `files:write:user` | String |

#### files.sharedPublicURL[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#filessharedpublicurl) <a href="#filessharedpublicurl" id="filessharedpublicurl"></a>

Enables a file for public/external sharing.

| Parameter | Description                                              | Type   |
| --------- | -------------------------------------------------------- | ------ |
| file      | File to share                                            | String |
| token     | Authentication token. Requires scope: `files:write:user` | String |

### Post Confirmation Message

#### Post Confirmation[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#post-confirmation) <a href="#post-confirmation" id="post-confirmation"></a>

Sends a Slack message with approve and deny options and pauses the workflow until a response is received

| Parameter | Description                                               | Type          |
| --------- | --------------------------------------------------------- | ------------- |
| Channel\* |                                                           | String        |
| message\* |                                                           | String        |
| Buttons   | A list of buttons that can be used to resume the workflow | Array Buttons |

#### Buttons[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#buttons) <a href="#buttons" id="buttons"></a>

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| Label     |             | String |
| Value     |             | String |
| Style     |             | String |

### Reminders

#### reminders.add[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#remindersadd) <a href="#remindersadd" id="remindersadd"></a>

Creates a reminder.

| Parameter | Description                                                                                                                                                                                                                   | Type   |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| text      | The content of the reminder                                                                                                                                                                                                   | String |
| time      | When this reminder should happen: the Unix timestamp (up to five years from now), the number of seconds until the reminder (if within 24 hours), or a natural language description (Ex. "in 15 minutes," or "every Thursday") | String |
| token     | Authentication token. Requires scope: `reminders:write`                                                                                                                                                                       | String |
| user      | The user who will receive the reminder. If no user is specified, the reminder will go to user who created it.                                                                                                                 | String |

#### reminders.complete[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#reminderscomplete) <a href="#reminderscomplete" id="reminderscomplete"></a>

Marks a reminder as complete.

| Parameter | Description                                             | Type   |
| --------- | ------------------------------------------------------- | ------ |
| reminder  | The ID of the reminder to be marked as complete         | String |
| token     | Authentication token. Requires scope: `reminders:write` | String |

#### reminders.delete[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#remindersdelete) <a href="#remindersdelete" id="remindersdelete"></a>

Deletes a reminder.

| Parameter | Description                                             | Type   |
| --------- | ------------------------------------------------------- | ------ |
| reminder  | The ID of the reminder                                  | String |
| token     | Authentication token. Requires scope: `reminders:write` | String |

#### reminders.info[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#remindersinfo) <a href="#remindersinfo" id="remindersinfo"></a>

Gets information about a reminder.

| Parameter | Description                                            | Type   |
| --------- | ------------------------------------------------------ | ------ |
| reminder  | The ID of the reminder                                 | String |
| token     | Authentication token. Requires scope: `reminders:read` | String |

#### reminders.list[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#reminderslist) <a href="#reminderslist" id="reminderslist"></a>

Lists all reminders created by or for a given user.

| Parameter | Description                                            | Type   |
| --------- | ------------------------------------------------------ | ------ |
| token     | Authentication token. Requires scope: `reminders:read` | String |

### Usergroups

#### usergroups.create[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usergroupscreate) <a href="#usergroupscreate" id="usergroupscreate"></a>

Create a User Group

| Parameter      | Description                                                                                 | Type    |
| -------------- | ------------------------------------------------------------------------------------------- | ------- |
| channels       | A comma separated string of encoded channel IDs for which the User Group uses as a default. | String  |
| description    | A short description of the User Group.                                                      | String  |
| handle         | A mention handle. Must be unique among channels, users and User Groups.                     | String  |
| include\_count | Include the number of users in each User Group.                                             | Boolean |
| name\*         | A name for the User Group. Must be unique among User Groups.                                | String  |
| token          | Authentication token. Requires scope: `usergroups:write`                                    | String  |

#### usergroups.disable[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usergroupsdisable) <a href="#usergroupsdisable" id="usergroupsdisable"></a>

Disable an existing User Group

| Parameter      | Description                                              | Type    |
| -------------- | -------------------------------------------------------- | ------- |
| include\_count | Include the number of users in the User Group.           | Boolean |
| token          | Authentication token. Requires scope: `usergroups:write` | String  |
| usergroup\*    | The encoded ID of the User Group to disable.             | String  |

#### usergroups.enable[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usergroupsenable) <a href="#usergroupsenable" id="usergroupsenable"></a>

Enable a User Group

| Parameter      | Description                                              | Type    |
| -------------- | -------------------------------------------------------- | ------- |
| include\_count | Include the number of users in the User Group.           | Boolean |
| token          | Authentication token. Requires scope: `usergroups:write` | String  |
| usergroup\*    | The encoded ID of the User Group to enable.              | String  |

#### usergroups.list[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usergroupslist) <a href="#usergroupslist" id="usergroupslist"></a>

List all User Groups for a team

| Parameter         | Description                                             | Type    |
| ----------------- | ------------------------------------------------------- | ------- |
| include\_count    | Include the number of users in each User Group.         | Boolean |
| include\_disabled | Include disabled User Groups.                           | Boolean |
| include\_users    | Include the list of users for each User Group.          | Boolean |
| token             | Authentication token. Requires scope: `usergroups:read` | String  |

#### usergroups.update[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usergroupsupdate) <a href="#usergroupsupdate" id="usergroupsupdate"></a>

Update an existing User Group

| Parameter      | Description                                                                                 | Type    |
| -------------- | ------------------------------------------------------------------------------------------- | ------- |
| channels       | A comma separated string of encoded channel IDs for which the User Group uses as a default. | String  |
| description    | A short description of the User Group.                                                      | String  |
| handle         | A mention handle. Must be unique among channels, users and User Groups.                     | String  |
| include\_count | Include the number of users in the User Group.                                              | Boolean |
| name           | A name for the User Group. Must be unique among User Groups.                                | String  |
| token          | Authentication token. Requires scope: `usergroups:write`                                    | String  |
| usergroup\*    | The encoded ID of the User Group to update.                                                 | String  |

#### usergroups.users.list[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usergroupsuserslist) <a href="#usergroupsuserslist" id="usergroupsuserslist"></a>

List all users in a User Group

| Parameter         | Description                                             | Type    |
| ----------------- | ------------------------------------------------------- | ------- |
| include\_disabled | Allow results that involve disabled User Groups.        | Boolean |
| token             | Authentication token. Requires scope: `usergroups:read` | String  |
| usergroup\*       | The encoded ID of the User Group to update.             | String  |

#### usergroups.users.update[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usergroupsusersupdate) <a href="#usergroupsusersupdate" id="usergroupsusersupdate"></a>

Update the list of users for a User Group

| Parameter      | Description                                                                                              | Type    |
| -------------- | -------------------------------------------------------------------------------------------------------- | ------- |
| include\_count | Include the number of users in the User Group.                                                           | Boolean |
| token          | Authentication token. Requires scope: `usergroups:write`                                                 | String  |
| usergroup\*    | The encoded ID of the User Group to update.                                                              | String  |
| users\*        | A comma separated string of encoded user IDs that represent the entire list of users for the User Group. | String  |

### Users

#### users.conversations[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usersconversations) <a href="#usersconversations" id="usersconversations"></a>

List conversations the calling user may access.

| Parameter         | Description                                                                                                                                                                                                         | Type    |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| cursor            | Paginate through collections of data by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request's `response_metadata`. Default value fetches the first "page" of the collection. | String  |
| exclude\_archived | Set to `true` to exclude archived channels from the list                                                                                                                                                            | Boolean |
| limit             | The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached. Must be an integer no larger than 1000.                           | Integer |
| token             | Authentication token. Requires scope: `conversations:read`                                                                                                                                                          | String  |
| types             | Mix and match channel types by providing a comma-separated list of any combination of `public_channel`, `private_channel`, `mpim`, `im`                                                                             | String  |
| user              | Browse conversations by a specific user ID's membership. Non-public channels are restricted to those where the calling user shares membership.                                                                      | String  |

#### users.identity[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usersidentity) <a href="#usersidentity" id="usersidentity"></a>

Get a user's identity.

| Parameter | Description                                            | Type   |
| --------- | ------------------------------------------------------ | ------ |
| token     | Authentication token. Requires scope: `identity.basic` | String |

#### users.info[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#usersinfo) <a href="#usersinfo" id="usersinfo"></a>

Gets information about a user.

| Parameter       | Description                                                                 | Type    |
| --------------- | --------------------------------------------------------------------------- | ------- |
| include\_locale | Set this to `true` to receive the locale for this user. Defaults to `false` | Boolean |
| token           | Authentication token. Requires scope: `users:read`                          | String  |
| user            | User to get info on                                                         | String  |

#### users.list[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#userslist) <a href="#userslist" id="userslist"></a>

Lists all users in a Slack team.

| Parameter       | Description                                                                                                                                                                                                         | Type    |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| cursor          | Paginate through collections of data by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request's `response_metadata`. Default value fetches the first "page" of the collection. | String  |
| include\_locale | Set this to `true` to receive the locale for users. Defaults to `false`                                                                                                                                             | Boolean |
| limit           | The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.                                                             | Integer |
| token           | Authentication token. Requires scope: `users:read`                                                                                                                                                                  | String  |

#### users.lookupByEmail[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#userslookupbyemail) <a href="#userslookupbyemail" id="userslookupbyemail"></a>

Find a user with an email address.

| Parameter | Description                                              | Type   |
| --------- | -------------------------------------------------------- | ------ |
| email     | An email address belonging to a user in the workspace    | String |
| token     | Authentication token. Requires scope: `users:read.email` | String |

### Views

#### views.open[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#viewsopen) <a href="#viewsopen" id="viewsopen"></a>

Open a view for a user.

| Parameter     | Description                                         | Type   |
| ------------- | --------------------------------------------------- | ------ |
| token         | Authentication token. Requires scope: `none`        | String |
| trigger\_id\* | Exchange a trigger to post to the user.             | String |
| view\*        | A view payload. This must be a JSON-encoded string. | String |

#### views.publish[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#viewspublish) <a href="#viewspublish" id="viewspublish"></a>

Publish a static view for a User.

| Parameter  | Description                                                                      | Type   |
| ---------- | -------------------------------------------------------------------------------- | ------ |
| hash       | A string that represents view state to protect against possible race conditions. | String |
| token      | Authentication token. Requires scope: `none`                                     | String |
| user\_id\* | `id` of the user you want publish a view to.                                     | String |
| view\*     | A view payload. This must be a JSON-encoded string.                              | String |

#### views.push[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#viewspush) <a href="#viewspush" id="viewspush"></a>

Push a view onto the stack of a root view.

| Parameter     | Description                                         | Type   |
| ------------- | --------------------------------------------------- | ------ |
| token         | Authentication token. Requires scope: `none`        | String |
| trigger\_id\* | Exchange a trigger to post to the user.             | String |
| view\*        | A view payload. This must be a JSON-encoded string. | String |

#### views.update[​](http://localhost:3000/docs/integrations/Chat/chat-slack-integration#viewsupdate) <a href="#viewsupdate" id="viewsupdate"></a>

Update an existing view.

| Parameter    | Description                                                                                                                                                                | Type   |
| ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| external\_id | A unique identifier of the view set by the developer. Must be unique for all views on a team. Max length of 255 characters. Either `view_id` or `external_id` is required. | String |
| hash         | A string that represents view state to protect against possible race conditions.                                                                                           | String |
| token        | Authentication token. Requires scope: `none`                                                                                                                               | String |
| view         | A view payloadThis must be a JSON-encoded string.                                                                                                                          | String |
| view\_id     | A unique identifier of the view to be updated. Either `view_id` or `external_id` is required.                                                                              | String |
