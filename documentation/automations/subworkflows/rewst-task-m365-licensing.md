# \[REWST - TASK] M365 Licensing

This workflow streamlines Microsoft 365 license management by handling license purchases, user assignments, and license group updates, all in one automated process. It’s especially useful in broader workflows like employee onboarding, where M365 licensing needs to happen automatically.

MSPs can use it to standardize how licenses are managed across clients, cut down on manual work, and make sure users get the right licenses every time. Behind the scenes, the workflow takes care of three main tasks: buying the needed M365 licenses, assigning them to users via Microsoft Graph, and adding users to the right license groups. Centralizing these steps helps prevent common mistakes and keeps a clean audit trail of all licensing activity.

This workflow contains 7 tasks.

### Inputs

* **last\_name** - string
  * User's Last Name
  * Default: `{{ CTX.last_name|d }}`
* **ticket\_id** - string
  * If ticket id provided, will update based on licensing actions performed
  * Default: `{{ CTX.ticket_id|d }}`
* **first\_name** - string
  * User's Last Name
  * Default: `{{ CTX.first_name|d }}`
* **gbl\_groups** - array
  * List of groups for Group Based LIcensing
  * Default: `{{ CTX.gbl_groups|d([]) }}`
* **aad\_user\_id** - string
  * User ID for Azure Active Directory
  * Default: `{{ CTX.aad_user_id|d }}`
* **usage\_location** - string
  * Updates User's Usage Location in AAD
  * Default: `{{ CTX.usage_location|d }}`
* **license\_subscription** - string
  * Subsubscription ID for Microsoft 365
  * Default: `{{ CTX.license_subscription|d }}`
* **m365\_direct\_licenses** - array
  * List of M356 Direct LIcenses to be assigned
  * Default: `{{ CTX.m365_direct_licenses|d([]) }}`
* **m365\_primary\_license** - string
  * Assign M356 Primary License to user when set; This is largely for legacy functionality and is usually left empty.
  * Default: `{{ CTX.m365_primary_license|d }}`

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **assign\_m\_365\_license\_to\_graph\_user\_items**: Workflows integration: \[REWST - TASK] M365: Purchase Licenses
* **assign\_m\_365\_license\_to\_graph\_user\_single**: Workflows integration: \[REWST - TASK] M365 Licensing: Assign License to Graph User
* **failure\_catch**: Core integration: noop
* **add\_user\_to\_licence\_group**: Workflows integration: \[REWST - TASK] M365 Licensing: Add User to License Group
* **M365 Licensing**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ CTX.aad_user_id }}
```

Used as input for input field `user` in task assign\_m\_365\_license\_to\_graph\_user\_items

#### Example 2

```jinja
{{ CTX.ticket_id }}
```

Used as input for input field `ticket_id` in task assign\_m\_365\_license\_to\_graph\_user\_items
