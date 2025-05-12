# Slack integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Slack integration do?

The Slack integration allows Rewst users to set up real-time notifications and updates from Rewst directly within Slack. Additionally, Rewst can help with Slack user management, app management, group management, and auth management. The integration also enables users to search and access Rewst content from Slack, saving time and effort. Set up triggers and actions that keep your team informed about their task progress or important events.

## Set up the Slack integration

1. Navigate to Configuration > Integrations in the left side menu of your Rewst platform.
2. Search for `Slack` in the integrations page.\
   \
   ![A dark-themed information card titled "Slack" featuring the Slack logo at the top. The card outlines how the Slack integration supports automation of communication and collaboration in Rewst. It mentions using the Slack API in workflows to manage users, send messages, and post confirmations. The last update date is noted as March 6th, 2025. At the bottom, there is a single labeled tag: "Messaging."](<../../../../../.gitbook/assets/Screenshot 2025-05-01 at 3.13.41 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Note the **Include Admin Scopes** drop-down selector under **Parameters**. Set this to **True** if authorizing an account that uses Slack Enterprise. Leave it as **False** if the Slack account is not an Enterprise account.
5. Click **Authorize**. A dialog will appear.
6. Click **Allow**.
7. Click **Save Configuration**.

## Actions and endpoints

| Category                      | Action                      | Description                                                                                              |
| ----------------------------- | --------------------------- | -------------------------------------------------------------------------------------------------------- |
| **Apps**                      | apps.uninstall              | Uninstalls your app from a workspace.                                                                    |
| **Auth**                      | auth.revoke                 | Revokes a token.                                                                                         |
| **Auth**                      | auth.test                   | Checks authentication & identity.                                                                        |
| **Chat**                      | chat.delete                 | Deletes a message.                                                                                       |
| **Chat**                      | chat.deleteScheduledMessage | Deletes a pending scheduled message from the queue.                                                      |
| **Chat**                      | chat.getPermalink           | Retrieve a permalink URL for a specific extant message                                                   |
| **Chat**                      | chat.meMessage              | Share a me message into a channel.                                                                       |
| **Chat**                      | chat.postEphemeral          | Sends an ephemeral message to a user in a channel.                                                       |
| **Chat**                      | chat.postMessage            | Sends a message to a channel.                                                                            |
| **Chat**                      | chat.scheduledMessages.list | Returns a list of scheduled messages.                                                                    |
| **Chat**                      | chat.scheduleMessage        | Schedules a message to be sent to a channel.                                                             |
| **Chat**                      | chat.unfurl                 | Provide custom unfurl behavior for user-posted URLs                                                      |
| **Chat**                      | chat.update                 | Updates a message.                                                                                       |
| **Conversations**             | conversations.archive       | Archives a conversation.                                                                                 |
| **Conversations**             | conversations.close         | Closes a direct message or multi-person direct message.                                                  |
| **Conversations**             | conversations.create        | Initiates a public or private channel-based conversation                                                 |
| **Conversations**             | conversations.history       | Fetches a conversation's history of messages and events.                                                 |
| **Conversations**             | conversations.info          | Retrieve information about a conversation.                                                               |
| **Conversations**             | conversations.invite        | Invites users to a channel.                                                                              |
| **Conversations**             | conversations.join          | Joins an existing conversation.                                                                          |
| **Conversations**             | conversations.kick          | Removes a user from a conversation.                                                                      |
| **Conversations**             | conversations.leave         | Leaves a conversation.                                                                                   |
| **Conversations**             | conversations.list          | Lists all channels in a Slack team.                                                                      |
| **Conversations**             | conversations.members       | Retrieve members of a conversation.                                                                      |
| **Conversations**             | conversations.open          | Opens or resumes a direct message or multi-person direct message.                                        |
| **Conversations**             | conversations.rename        | Renames a conversation.                                                                                  |
| **Conversations**             | conversations.replies       | Retrieve a thread of messages posted to a conversation                                                   |
| **Conversations**             | conversations.setPurpose    | Sets the purpose for a conversation.                                                                     |
| **Conversations**             | conversations.setTopic      | Sets the topic for a conversation.                                                                       |
| **Conversations**             | conversations.unarchive     | Reverses conversation archival.                                                                          |
| **Dialog**                    | dialog.open                 | Open a dialog with a user                                                                                |
| **Files**                     | files.comments.add          | Add a comment to an existing file.                                                                       |
| **Files**                     | files.comments.delete       | Deletes an existing comment on a file.                                                                   |
| **Files**                     | files.comments.edit         | Edit an existing file comment.                                                                           |
| **Files**                     | files.delete                | Deletes a file.                                                                                          |
| **Files**                     | files.info                  | Gets information about a team file.                                                                      |
| **Files**                     | files.list                  | Lists & filters team files.                                                                              |
| **Files**                     | files.remote.add            | Adds a file from a remote service                                                                        |
| **Files**                     | files.remote.info           | Retrieve information about a remote file added to Slack                                                  |
| **Files**                     | files.remote.list           | Retrieve information about a remote file added to Slack                                                  |
| **Files**                     | files.remote.remove         | Remove a remote file.                                                                                    |
| **Files**                     | files.remote.share          | Share a remote file into a channel.                                                                      |
| **Files**                     | files.remote.update         | Updates an existing remote file.                                                                         |
| **Files**                     | files.revokePublicURL       | Revokes public/external sharing access for a file                                                        |
| **Files**                     | files.sharedPublicURL       | Enables a file for public/external sharing.                                                              |
| **Legacy Send Invite**        | admin.users.invite          | Invites a user to Slack by email.                                                                        |
| **Post Confirmation Message** | Post Confirmation Message   | Sends a Slack message with approve and deny options and pauses the workflow until a response is received |
| **Reactions**                 | reactions.add               | Adds a reaction to an item.                                                                              |
| **Reactions**                 | reactions.get               | Gets reactions for an item.                                                                              |
| **Reactions**                 | reactions.list              | List reactions made by a user.                                                                           |
| **Reactions**                 | reactions.remove            | Remove a reaction from an item.                                                                          |
| **Reminders**                 | reminders.add               | Creates a reminder.                                                                                      |
| **Reminders**                 | reminders.complete          | Marks a reminder as complete.                                                                            |
| **Reminders**                 | reminders.delete            | Deletes a reminder.                                                                                      |
| **Reminders**                 | reminders.info              | Gets information about a reminder.                                                                       |
| **Reminders**                 | reminders.list              | Lists all reminders created by or for a given user.                                                      |
| **Send Invite**               | Send Invite                 | Invites a user to Slack by email.                                                                        |
| **Usergroups**                | usergroups.create           | Create a User Group                                                                                      |
| **Usergroups**                | usergroups.disable          | Disable an existing User Group                                                                           |
| **Usergroups**                | usergroups.enable           | Enable a User Group                                                                                      |
| **Usergroups**                | usergroups.list             | List all User Groups for a team                                                                          |
| **Usergroups**                | usergroups.update           | Update an existing User Group                                                                            |
| **Usergroups**                | usergroups.users.list       | List all users in a User Group                                                                           |
| **Usergroups**                | usergroups.users.update     | Update the list of users for a User Group                                                                |
| **Users**                     | users.conversations         | List conversations the calling user may access.                                                          |
| **Users**                     | users.identity              | Get a user's identity.                                                                                   |
| **Users**                     | users.info                  | Gets information about a user.                                                                           |
| **Users**                     | users.list                  | Lists all users in a Slack team.                                                                         |
| **Users**                     | users.lookupByEmail         | Find a user with an email address.                                                                       |
| **Views**                     | views.open                  | Open a view for a user.                                                                                  |
| **Views**                     | views.publish               | Publish a static view for a User.                                                                        |
| **Views**                     | views.push                  | Push a view onto the stack of a root view.                                                               |
| **Views**                     | views.update                | Update an existing view.                                                                                 |
