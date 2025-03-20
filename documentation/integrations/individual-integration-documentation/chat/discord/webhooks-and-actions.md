---
description: >-
  Post setup, leverage the following features for enhanced management and
  communication using Discord within your Rewst Workflows.
---

# Webhooks & Actions

## Webhook Triggers

Webhook triggers in Rewst's Discord integration are all about making your workflows smarter and more responsive. Here's a straightforward look at what they offer:

* **Automated Command Management**: They handle the heavy lifting of creating and updating application commands based on your configurations.
* **Custom Interaction Flexibility**: While they automate most processes, there's room for manual customization in interactions, ensuring you get exactly what you need.
* **Adaptive Workflows**: These triggers stay alert to changes, keeping your workflows in sync with the latest Discord interactions.

### Types of Triggers

* **Slash Command Trigger**: Initiates workflows for specific slash commands in guild channels.
* **User Command Trigger**: Responds to user commands in guilds.
* **Message Command Trigger**: Activates workflows for particular message commands in guilds.
* **Custom Interaction Trigger**: Handles unique interaction events, needing a bit of setup as per Discord's guidelines.

### Setting Up Triggers

* **Command Name**: Decide the command's name that will kick off your trigger.
* **Command Type**: Choose from Slash, User, Message, or Custom commands.
* **Guild ID**: Identify the server where this magic will happen.

## Endpoints & Actions

### **Channel Actions**

<table data-full-width="true"><thead><tr><th>Action Name</th><th>Method</th><th>Endpoint</th><th>Parameters</th></tr></thead><tbody><tr><td>List Guild Channels</td><td>GET</td><td><code>/guilds/{guild_id}/channels</code></td><td>(Required) <code>guild_id</code></td></tr><tr><td>Create Guild Channel</td><td>POST</td><td><code>/guilds/{guild_id}/channels</code></td><td>(Required) <code>guild_id</code>, (Optional) <code>json_body</code></td></tr></tbody></table>

### **Command Actions**

<table data-full-width="true"><thead><tr><th>Action Name</th><th>Method</th><th>Endpoint</th><th>Parameters</th></tr></thead><tbody><tr><td>Create Guild Command</td><td>POST</td><td><code>/applications/{application_id}/guilds/{guild_id}/commands</code></td><td>(Required) <code>guild_id</code>, (Required) <code>json_body</code></td></tr><tr><td>Delete Guild Command</td><td>DELETE</td><td><code>/applications/{application_id}/guilds/{guild_id}/commands/{command_id}</code></td><td>(Required) <code>guild_id</code>, (Required) <code>command_id</code></td></tr><tr><td>List Guild Commands</td><td>GET</td><td><code>/applications/{application_id}/guilds/{guild_id}/commands</code></td><td>(Required) <code>guild_id</code></td></tr><tr><td>Edit Guild Command</td><td>PATCH</td><td><code>/applications/{application_id}/guilds/{guild_id}/commands/{command_id}</code></td><td>(Required) <code>guild_id</code>, (Required) <code>command_id</code>, (Required) <code>json_body</code></td></tr></tbody></table>

### **Emoji Actions**

<table data-full-width="true"><thead><tr><th>Action Name</th><th>Method</th><th>Endpoint</th><th>Parameters</th></tr></thead><tbody><tr><td>List Guild Emojis</td><td>GET</td><td><code>/guilds/{guild_id}/emojis</code></td><td>(Required) <code>guild_id</code></td></tr><tr><td>Get Guild Emoji by ID</td><td>GET</td><td><code>/guilds/{guild_id}/emojis/{emoji_id}</code></td><td>(Required) <code>guild_id</code>, (Required) <code>emoji_id</code></td></tr><tr><td>Create Guild Emoji</td><td>POST</td><td><code>/guilds/{guild_id}/emojis</code></td><td>(Required) <code>guild_id</code>, (Required) <code>json_body</code></td></tr></tbody></table>

### **Guild Actions**

<table data-full-width="true"><thead><tr><th>Action Name</th><th>Method</th><th>Endpoint</th><th>Parameters</th></tr></thead><tbody><tr><td>Get Current User Guilds</td><td>GET</td><td><code>/users/@me/guilds</code></td><td>None</td></tr><tr><td>Get Guild Info by ID</td><td>GET</td><td><code>/guilds/{guild_id}</code></td><td>(Required) <code>guild_id</code></td></tr></tbody></table>

### **Interaction Actions**

<table data-full-width="true"><thead><tr><th>Action Name</th><th>Method</th><th>Endpoint</th><th>Parameters</th></tr></thead><tbody><tr><td>Create Followup Message</td><td>POST</td><td><code>/webhooks/{application_id}/{interaction_token}</code></td><td>(Required) <code>interaction_token</code>, (Required) <code>json_body</code></td></tr><tr><td>Edit Original Interaction Response</td><td>PATCH</td><td><code>/webhooks/{application_id}/{interaction_token}/messages/@original</code></td><td>(Required) <code>interaction_token</code>, (Required) <code>json_body</code></td></tr></tbody></table>

### **User Actions**

<table data-full-width="true"><thead><tr><th>Action Name</th><th>Method</th><th>Endpoint</th><th>Parameters</th></tr></thead><tbody><tr><td>Get Current Authorized User Info</td><td>GET</td><td><code>/users/@me</code></td><td>None</td></tr><tr><td>Get User Info by ID</td><td>GET</td><td><code>/users/{userid}</code></td><td>(Required) <code>userid</code></td></tr><tr><td>Search Guild Members</td><td>GET</td><td><code>/guilds/{guild_id}/members/search</code></td><td>(Required) <code>guild_id</code>, (Required) <code>query</code>, (Optional) <code>limit</code></td></tr><tr><td>Add Role to User</td><td>PUT</td><td><code>/guilds/{guild_id}/members/{user_id}/roles/{role_id}</code></td><td>(Required) <code>guild_id</code>, (Required) <code>user_id</code>, (Required) <code>role_id</code></td></tr><tr><td>Create Guild Role</td><td>POST</td><td><code>/guilds/{guild_id}/roles</code></td><td>(Required) <code>guild_id</code>, (Required) <code>json_body</code></td></tr></tbody></table>

