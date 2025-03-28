# March 28th, 2025 - Marketplace Update

Explore the new changes to the Marketplace in the last week!

This can be anything from new crates, enhancements, or bug fixes!

<details>

<summary><strong>New crates and enhancements</strong></summary>

* Deactivate Inactive M365 Accounts
* Report Inactive RMM Endpoints
* Alert on Logins from Non-Native Countries
* Reset Locked Out Accounts (Refactor)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>



* Update User Attributes (On-Prem/Azure) v2
  * Added pagination logic using `@odata.nextLink` to retrieve all users, lifting the previous 100-user limit.
* Google: User Onboarding
  * Created a new subworkflow: **\[REWST-TASK] Jumpcloud: Get User** for **\[REWST - OPT GEN] User: Check Exists**.
  * Updated `sanitize_input` to allow periods in usernames (via `regex_replace`).
* Microsoft: User Onboarding
  * Added `CPC_E_8C_32GB_512GB` to Pax8 to Microsoft license lookup mapping.
  * Added dynamic address handling to Create User input fields.
  * Moved `send_password_to_manager` to a transition for consistency.
  * Respected provided device name by excluding preferred domain controller fallback when one is given (PowerShell crate shared by multiple crates).
* Windows 11 Compatibility Checker
  * Fixed `send_mail` config to use `cron_email` instead of the invalid `cron.email`.
* Google: User Offboarding
  * Updated `gws_update_user` action logic to avoid trailing commas in raw JSON when optional conditions are omitted.
* Notify on Conditional Access Policy Changes
  * Updated `check_for_empty_lists` action and added a conditional transition to handle empty results from `get_by_ids`.
* Install Acronis Backup Agent on Devices
  * Created and linked a PowerShell script template into the workflow.
* Rewst: User Onboarding
  * Added license support in `add_manual_licence_to_json` via `ms_license_lookup` data alias.
  * Added error handling for license purchases across multiple vendors:
    * Microsoft CSP
    * Pax8
    * Ingram
    * Sherweb
    * Synnex
* Amend Calendar Permission on User
  * Added `get_anchor_mailbox` action to the **\[REWST - OPT GEN] Calendar Permissions** workflow.
* Microsoft Azure Tables Connection
  * Removed space character from being excluded in the `RowKey` and `PartitionKey` regex filters.
* Enterprise Application Creation Alert
  * Modified logic to list only _new_ apps in PSA ticket notes, preventing character limit overflows.

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Report on Anti-virus/EDR Gaps

</details>

