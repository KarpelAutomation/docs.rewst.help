# August 1st, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* No Crate releases this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Microsoft: User Onboarding
  * Replaced Graph GET user action with the generic equivalent (62538)
* Document User Details v2
  * Changed timeout for `list_contact_assets` and action timeout for `hudu_documentation_list_company_assets` (32346)
* Document M365 Environment
  * Changed the 'time saved' value of several workflows to 240 (61030)
* Microsoft: Onboard & Offboard
  * Reverted change that caused the new user onboarding crate to be unable to send email with ctx.supervisor for onprem (62520)
* Microsoft: User Onboarding
  * Changed `copy_existing_user` script to consider custom emails and domain checking for created and copied users (61605)
* Windows Patch Deployer
  * Fixed subworkflow's cron not starting by moving trigger to main workflow, also updated crate description (59601)
* Microsoft: User Onboarding
  * Changed On-Prem user list workflow so that if we are requesting the UPN then the UPN is preferred over the samAccountName (61253)
* Microsoft: User Onboarding
  * Added `purchase_error` aliases to all disti subs and also added `purchase_error` output (57126)
* Pax8 Extra License Removal
  * Added new licenses to the Pax8 mapping template (48156)

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate

- BitLocker Activation - Bitlocker Management Crate Series
- Workstation Offboarding

</details>
