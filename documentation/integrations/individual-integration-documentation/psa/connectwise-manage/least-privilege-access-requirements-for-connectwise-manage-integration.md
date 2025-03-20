# Least privilege access requirements for ConnectWise PSA integration

### Introduction

This document provides guidance on the least privileged access required for integrating ConnectWise PSA with Rewst. The aim of this document is to provide the necessary information required to configure the integration securely and to minimize the risk of unauthorized access or data leakage.

For more information on how to authenticate your ConnectWise PSA account [check out the Integration Setup page](connectwise-integration-setup.md).

### Authentication requirements

To initiate the successful authentication of the ConnectWise PSA integration with Rewst, and pull back the list of companies you want to associate, the following permission scopes are needed:

* System → Member Maintenance: Inquire
* Companies → Company Maintenance: Inquire

{% hint style="danger" %}
If you are seeing a 403 Forbidden error when running workflows, this is due to incorrect permissions. Ensure that the above authentication requirements are complete to resolve this error.&#x20;
{% endhint %}

### Additional action requirements

In addition to the above that’s required for authentication, there are several more actions the ConnectWise integration is capable of taking within Rewst. To use them all, you’ll need the following additional security roles configured for this account:

* Companies → Configurations: Add, Edit, Inquire
* Companies → Contacts: Add, Edit, Inquire
* Companies → Manage Attachments: Add (My), Edit (My), Delete(My), Inquire
* Companies → Team Members: Inquire
* Service Desk → Service Tickets: Add, Edit, Inquire
* Service Desk → Service Ticket – Dependencies: Add, Edit, Inquire
* Service Desk → Close Service Tickets: Edit, Inquire
* Service Desk → Merge Tickets: Add, Edit, Inquire
* Project → Project Ticket: Add, Edit, Inquire&#x20;
* Project → Project Ticket - Dependancies: Add, Edit, Inquire&#x20;
* Project → Close Project Tickets: Edit, Inquire
* System → My Account: Add (My), Edit (My), Delete (My), Inquire (My)
* System → Table Setup: Add, Inquire (Additional customization can be done to allow or disallow tables)
* Time & Expense → Time Entry: Add, Edit, Delete (My), Inquire
* Time & Expense → Time Entry Billable Option: Add, Edit, Delete(My), Inquire
* Finance → Agreements: Inquire
* Finance → Billing View Time: Inquire: ALL _\*Required for adding billable time to tickets_
* Finance → Billing View Time: Edit: ALL _\*Required for adding billable time to tickets_

### Breakdown of Actions per Security Role

The following tables outline the various actions the ConnectWise PSA integration can take within Rewst, grouped by their security roles in ConnectWise, and each of their required permission levels to be able to execute them in workflows. We also have a generic request action, that will require any relevant scopes for what it’s being used for. For more information on the ConnectWise API and its required permissions, please refer to the [Official ConnectWise API documentation](https://developer.connectwise.com/).

#### Companies

<table><thead><tr><th width="253">Actions</th><th width="286.3333333333333">API Endpoint</th><th>Required Permission</th></tr></thead><tbody><tr><td>List Companies</td><td>/company/companies</td><td>Inquire</td></tr><tr><td>Get Company</td><td>/company/companies/{id}</td><td>Inquire</td></tr><tr><td>List Communication Types</td><td>/company/communicationTypes</td><td>Inquire</td></tr><tr><td>List Contacts</td><td>/company/contacts</td><td>Inquire</td></tr><tr><td>Get Contact</td><td>/company/contacts/{id}</td><td>Inquire</td></tr><tr><td>Create Contact</td><td>/company/contacts</td><td>Add</td></tr></tbody></table>

#### Service Desk

<table><thead><tr><th width="260">Actions</th><th width="286.3333333333333">API Endpoint</th><th>Required Permission</th></tr></thead><tbody><tr><td>List Service Tickets</td><td>/service/tickets</td><td>Inquire</td></tr><tr><td>Get Service Ticket</td><td>/service/tickets/{id}</td><td>Inquire</td></tr><tr><td>Get Tasks</td><td>/service/tickets/{id}/tasks</td><td>Inquire</td></tr><tr><td>Create Task</td><td>/service/tickets/tasks/{id}</td><td>Add</td></tr><tr><td>Create Bulk Tasks</td><td>/service/tickets/tasks/bulk</td><td>Add</td></tr><tr><td>Update Task</td><td>/service/tickets/tasks/{id}</td><td>Edit</td></tr><tr><td>Update Service Ticket</td><td>/service/tickets/{id}</td><td>Edit</td></tr><tr><td>Create Service Ticket</td><td>/service/tickets</td><td>Add</td></tr></tbody></table>

#### Time & Expense

<table><thead><tr><th width="265">Actions</th><th width="278.3333333333333">API Endpoint</th><th>Required Permission</th></tr></thead><tbody><tr><td>Add Time Entry</td><td>/time/entries</td><td>Add</td></tr></tbody></table>

#### Finance

<table><thead><tr><th width="267">Actions</th><th width="276.3333333333333">API Endpoint</th><th>Required Permission</th></tr></thead><tbody><tr><td>List Agreements</td><td>/finance/agreements</td><td>Inquire</td></tr></tbody></table>
