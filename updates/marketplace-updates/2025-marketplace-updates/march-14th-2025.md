# March 14th, 2025 - Marketplace Update

Explore the new changes to the Marketplace in the last week!

This can be anything from new crates, enhancements, or bug fixes!

<details>

<summary><strong>New crates and enhancements</strong></summary>

* Microsoft 365 Subscription Renewal Alerts

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Just in Time Admin Access
  * Modified PS script to control inline disable via a Jinja if statement for non-Control cases.
  * Removed truncation inline in the PS script and moved it out of the sub.
  * Modified value of `CTX.username` to truncate at 20 characters, solving username match issues.
* Microsoft: User Onboarding
  * Swapped multi-select field for a dropdown field.
  * Changed condition logic for subscription selection.
  * Removed START to get\_subscribed products transition arrow.
  * Moved "subscription provided" above get\_subscribed products and connected START to it.
  * Updated approve and deny transitions to use TASKS and updated webhook response body.
  * Added mail-only user option on the form.
  * Removed yellow warning Markdown text for advanced options and set it to purple at the bottom of the form.
  * Corrected spelling from "licence" to "license".
  * Fixed text formatting of internal note for PW Push by adding a missing space.
  * Added Power BI Pro for Faculty in the templates.
  * Added warning markdown on onboarding form when "Require Password Change" and "User cannot change password (On-Prem)" are both checked.
  * Removed `CTX.force_password_change = false` condition for `cannot_change_password` to ensure visibility when the field is ticked.
* Microsoft: User Offboarding
  * Added `|d` to line 8 of options data alias on synnex\_list\_subs action.
  * Corrected typo from "Offboading" to "Offboarding".
* Rewst: User Offboarding v1
  * Added output for `CTX` by defining `full_context` data alias on END noop.
* Rewst: User Offboarding V2
  * Changed `on_prem_user` field Jinja to set the default value to `d([])` (an empty array) instead of `d({})`.
* Windows 11 Compatibility Checker
  * Changed logic to reference `WORKFLOW.org_id` instead of trigger instance for the managing org ID.
* OpenAI Image Generation Demo
  * Changed model to `gpt-3.5-turbo-instruct` on `write_an_image_input` and `edit_input` actions.
* OpenAI Ticket Categorization
  * Added "List Subtypes" action to pull only active subtypes for CWM.
  * Updated the Association CSV to filter active subtypes.
* Add or Remove Group Membership
  * Added description to `List Current Group Membership` field in `[Rewst Master v2] Groups - Add or Remove Membership` form: "Groups in the field will be excluded from removal"
* Alert on Onboard/Offboard Execution
  * Updated workflow to use an org var for email recipient.
  * Removed `emailto` from variable configuration.
  * Used `ORG.VARIABLES.onboard_offboard_notification_email` as the email recipient.
  * Added `check_org_variable` noop.
  * Added START and END noops.
* CWM to Graph Sync
  * Fixed workflow failing due to deactivating an already inactive contact.
  * Added a check before deactivating a contact in the "Graph User is Disabled" transition.
  * Replaced deprecated tasks:
    * `cwm_get_contact_by_email`
    * `cwm_get_contact_by_name`
    * `cwm_get_contact_by_id`
    * `cwm_create_contact`

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Deactivate Inactive M365 Accounts
* Report on Orphaned RMM Agents
* Report on Anti-virus/EDR Gaps

</details>

