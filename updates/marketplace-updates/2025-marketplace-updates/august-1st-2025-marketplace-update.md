# August 1, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* No Crate releases this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Microsoft: User Onboarding
  * Replaced Graph GET user action with the generic equivalent&#x20;
* Document User Details v2
  * Changed timeout for `list_contact_assets` and action timeout for `hudu_documentation_list_company_assets`&#x20;
* Document M365 Environment
  * Changed the 'time saved' value of several workflows to 240&#x20;
* Microsoft: Onboard & Offboard
  * Reverted change that caused the new user onboarding crate to be unable to send email with ctx.supervisor for onprem&#x20;
* Microsoft: User Onboarding
  * Changed `copy_existing_user` script to consider custom emails and domain checking for created and copied users
* Windows Patch Deployer
  * Fixed subworkflow's cron not starting by moving trigger to main workflow, also updated crate description
* Microsoft: User Onboarding
  * Changed On-Prem user list workflow so that if we are requesting the UPN then the UPN is preferred over the samAccountName&#x20;
* Microsoft: User Onboarding
  * Added `purchase_error` aliases to all disti subs and also added `purchase_error` output&#x20;
* Pax8 Extra License Removal
  * Added new licenses to the Pax8 mapping template (48156)

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate

- BitLocker Activation - Bitlocker Management Crate Series
- Workstation Offboarding

</details>
