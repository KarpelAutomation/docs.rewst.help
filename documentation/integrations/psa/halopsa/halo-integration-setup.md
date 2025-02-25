---
description: This document outlines the requirements and setup for the Halo integration.
---

# Halo integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../general/multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

### Set up the API account

Before configuring the Rewst integration you must generate an API user. Here is the instruction for the generation of the integration user:

1. **Log in** to Halo PSA as an Administrator.
2. **Go to** _Configuration_ → _Agents_ → _New_.
3. **Create** an Agent for Rewst to use. We suggest naming this user Rewst API or similar.
4. **Grant** the user permissions according to what you would like Rewst to do for you.
5. **Navigate** to _Configuration_ → _Integrations_ → _HaloPSA API_ ([Halo Authorization Docs](https://halo.haloservicedesk.com/apidoc/authorisation)).
6. **Create** an Application.
7. **Select** View Applications.
8. **Click** the New button.
9. **Use** the authentication method for Client ID and Secret (Services).
10. **Navigate** to the permissions tab.
11. **Select** the all option.
12. **Navigate** to the following location: `Teams & Agents` > `Agents` > `"API's Selected Agent"` > `Departments & Teams`
13. **Click** Edit on the top left and within Teams select Add
14. **Select** all of the Teams and click Save

{% hint style="warning" %}
**Required for Mapping Customers in the Integration**

When creating the API Agent, ensure that the `Allow use of all Customers` Client Restriction setting is set to `Yes` if you want to allow Rewst to interact with your customer records.
{% endhint %}

### Configure the integration

Once you have created an API account, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Go to** the _Configuration_ → _Integrations_ in the left sidebar.
3. **Click** on or search for _Halo PSA_.
4. **Complete** the form with the details you created:
   1. **Resource Server Hostname**: Halo PSA Resource Server hostname, e.g. `example.halopsa.com`.
   2. **Client ID**: ID for the Application registered in Halo PSA
   3. **Tenant ID**: When using a cloud-hosted Halo PSA instance this must be specified. This value can be found in the Halo PSA web application under _Configuration_ → _Integrations_ → _HaloPSA API_ → _API Details_.
   4. **Auth Server Hostname**: Halo PSA Auth Server hostname, e.g. `example.halopsa.com/auth,` if different from Resource Server Hostname
   5. **Client Secret**: Authentication secret for the Application registered in Halo PSA
   6. **Is On-Premise?**: Whether or not the Halo PSA instance is hosted on an on-premise server
5. **Save** the configuration. Rewst will do a quick validation of your input.

Beneath that integration authentication section you will see the following options:

1. **Suggest Values**: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.
2. **Refresh Options**: This will re-read the potential mapping options - both organizations and companies in Halo.
3. **Save Mappings** This will apply mapping configuration changes.

## Troubleshooting Halo PSA integration setup

### Customers are Not Showing Up When Refreshing Options

If you are running into an issue where customers are not showing when refreshing options, this is due to an issue with permissions. Make sure to check that both the User and API user have the following permissions, at minimum:&#x20;

* View Customers
* View Support Tickets
* Add Time Entries
* Create Support Tickets

{% hint style="danger" %}
You may need to uninstall and reinstall the halo integration for the new permissions to take place.&#x20;
{% endhint %}

### Boards and teams are not visible in configure organizational variable form

If you can't see boards or teams in the configure organizational variable form, this is due to incorrect permissions. In order to resolve this issue, you will need to add the API User to the teams that you want to see in the form.&#x20;

### Email, name, department is missing or CAB ID is invalid

If you run into an issue where the Email, Name, Department, or other information is missing or you see that the CAB ID is either invalid or mandatory, this is due to custom fields used in creating tickets. In order to use these custom ticket fields, you have a couple of options:

* The Custom Field IDs need to be added as an organization variable
* The Custom Field should not be marked as mandatory

### New User Onboarding and Offboarding Crate Halo Issues

Rewst only uses the bare minimum of fields for ticket creation in these Crates.

#### Ticket Creation

* team
* source
* summary
* user\_id
* client\_id
* site\_name
* status\_id
* category\_1
* category\_2
* category\_3
* category\_4
* priority\_id
* details\_html
* tickettype\_id
* new\_approvalprocess\_cab
  * type
  * cab\_id

#### Ticket Updates

* note
* outcome
* ticket\_id
* new\_status
* who\_agent\_id
* timetaken

{% hint style="danger" %}
It's possible that Halo is set up to require multiple other fields. If this is the case, there are two paths:

1. You can make sure additional fields are not checked as required.
2. You can unsync the Crate and modify it to include the required fields in your setup.&#x20;
{% endhint %}
