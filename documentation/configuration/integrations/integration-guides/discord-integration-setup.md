# Discord integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## **What does the Discord integration do?**

Rewst's Discord integration enables seamless interaction with Discord's functionalities directly from the Rewst platform. Manage channels, messages, and more using the Discord API to enhance your communication and collaboration within Discord servers.

## **Why use the Discord integration?**

* **Channel and message management:** Effortlessly create, modify, and manage Discord channels and messages.
* **Custom commands and responses:** Design custom commands and automated responses for interactive communication.
* **Guild and role management:** Easily manage Discord server (guild) settings and user roles for better server administration.
* **OAuth configuration:** Secure integration with OAuth authentication ensuring safe and reliable connection to your Discord account.

## **Prerequisites for the Discord integration**

Before you begin, ensure you have:

* A Discord account with necessary access to a server you wish to manage in Rewst, as the API will be bound to your account's bot setup within your Discord server.
* Login credentials for your Discord account. The setup process will require authorization from both Rewst and Discord platforms.

## Set up the Discord integration

1. Navigate to Configuration > Integrations in the left side menu of your Rewst platform.
2. Search for `Discord` in the integrations page.\
   \
   ![A dark-themed information card titled "Discord" with the Discord logo displayed at the top. The card describes the Discord integration for Rewst, enabling automation of messaging and interactions using the Discord API. It lists capabilities like retrieving or creating channels, creating commands, and sending or receiving messages. The last updated date is May 1st, 2025. A labeled tag at the bottom reads "Messaging."](<../../../../.gitbook/assets/Screenshot 2025-05-01 at 3.18.26 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Click on the `Authorize` button and log into your Discord account.
5. Select the desired Discord server for use with the integration.
6. Click `Authorize` on the Discord modal to grant permissions.
7. Click **Save Configuration**.

{% hint style="info" %}
The Discord integration does not require you to complete the organization mapping process.
{% endhint %}

## Triggers for the Discord integration

| Trigger type name  | Type    | Description                                                                                                                                                                                                                            |
| ------------------ | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Slash Command      | Webhook | Triggers a workflow when a specified slash command is sent to a guild (server) channel                                                                                                                                                 |
| User Command       | Webhook | Triggers a workflow when a specified user command is activated in a guild (server)                                                                                                                                                     |
| Message Command    | Webhook | Triggers a workflow when a specified message command is activated in a guild (server)                                                                                                                                                  |
| Custom Interaction | Webhook | Triggers a workflow for a custom interaction event. The command, modal or message component must be created first. See [Discord API docs](https://discord.com/developers/docs/interactions/application-commands) for more information. |

### Set up discord integration triggers

* **Command Name**: Decide the command's name that will kick off your trigger.
* **Command Type**: Choose from Slash, User, Message, or Custom commands.
* **Guild ID**: Identify the server where this magic will happen.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

Discord's own API documentation can be found [here](https://discord.com/developers/docs/intro).

| Category            | Action                             | Description                                                              |
| ------------------- | ---------------------------------- | ------------------------------------------------------------------------ |
| **Channels**        | List Guild Channels                | List all channels in a guild (server)                                    |
| **Channels**        | Create Guild Channel               | Create a new channel for the guild                                       |
| **Channels**        | List Active Threads                | List all active threads in a guild (server)                              |
| **Channels**        | Create Channel Message             | Create a message in a channel                                            |
| **Commands**        | Create Guild Command               | Create a guild (server) command                                          |
| **Commands**        | Delete Guild (server) Command      | Delete a guild command                                                   |
| **Commands**        | List Guild Commands                | List all guild (server) commands                                         |
| **Commands**        | Edit Guild Command                 | Edit a guild command                                                     |
| **Emojis**          | List Guild Emojis                  | List all emojis in a guild (server)                                      |
| **Emojis**          | Get Guild Emoji by ID              | Get a guild (server) emoji by ID                                         |
| **Emojis**          | Create Guild Emoji                 | Create a new emoji for the guild (server)                                |
| **Generic Request** | Discord API Request                | Generic action for making authenticated requests against the Discord API |
| **Guilds**          | Get Current User Guilds (Servers)  | Get a user's guilds (servers)                                            |
| **Guilds**          | Get Guild Info by ID               | Get a guild's information                                                |
| **Interactions**    | Create Followup Message            | Create a followup message to an interaction                              |
| **Interactions**    | Edit Original Interaction Response | Edit the original interaction response                                   |
| **User**            | Get Current Authorised User Info   | Get the current authenticated user's info and scopes                     |
| **User**            | Get User Info by ID                | Get a user's information. Hidden due to requirement of a bot.            |
| **User**            | Search Guild Members               | Search for guild (serverr) members by a query                            |
| **User**            | Add Role to User                   | Add a role to a user                                                     |
| **User**            | Create Guild Role                  | Create a new role for the guild (server)                                 |
