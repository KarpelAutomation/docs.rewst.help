# Least Privilege Access Guide for ConnectWise Automate Integration

## Introduction

This guide encompasses primarily the built in actions (and some common endpoints that an MSP may hit via the generic actions), it is important to recognize that you can utilize generic actions to hit any available endpoint so you may need to grant additional permissions/remove permissions that you do not find necessary. This is intended to be used as a starting point for those to wish to practice least privilege

{% hint style="info" %}
It is assumed that you do not have conflicting permissions on the script level or group level. Additional work may be required if this is the case and Automate documentation should be referenced.
{% endhint %}

{% hint style="danger" %}
You must be careful when assigning permissions to your clients. If you copy the permissions wrong there is a chance you could overwrite existing permissions, please be sure to follow ConnectWise Documentation for best practices for assigning the client permissions.
{% endhint %}

## Configure User Class Permissions

To be able to utilize Rewst with least privilege you will need to configure a new user class named ‘Rewst Automation’. The class should then be configured with the following permissions:

### User Class Permission

| Actions                       | Permission                   |
| ----------------------------- | ---------------------------- |
| Agent Templates               | Read                         |
| Alerts                        | Update                       |
| Clients                       | Read, Update, Delete         |
| Clients → Show/Hide Passwords | Access                       |
| Clients → Show All            | Access                       |
| Computers → Force Update      | Access                       |
| Computers → Retired Assets    | Delete                       |
| Computers → Show All          | Access                       |
| Contacts                      | Read, Update, Delete         |
| Groups                        | Create, Update, Delete       |
| Groups → Scheduled Scripts    | Update                       |
| Locations → Show All          | Access                       |
| Patch Manager                 | Read, Update                 |
| Scripts                       | Read, Update, Delete         |
| Scripts → Schedule Scripts    | Update                       |
| Searches → Send Commands      | Access                       |
| Tickets                       | Create, Read, Update, Delete |
| Tickets → Ticket Requests     | Access                       |

## Configure Client Level Permissions

### Client Level Permissions

| Actions      | Permission         |
| ------------ | ------------------ |
| Locations    | Read, Edit, Delete |
| Projects     | Read               |
| Product Keys | Read               |
| Documents    | Read               |
| Passwords    | Read               |

### Default Computer Permissions (Enabled if Listed)

| Actions            | Permission |
| ------------------ | ---------- |
| Command Prompt     | Access     |
| Software and Tools | Install    |
| History            | Access     |
| Commands           | View, Send |
| Scripts            | Schedule   |
| Information        | Edit       |
| Alerts             | Clear      |
| Scheduled Scripts  | Delete     |

For more information on how to set up user classes and client permissions please visit [Connectwise Automate documentation.](https://docs.connectwise.com/ConnectWise\_Automate\_Documentation/060/300)
