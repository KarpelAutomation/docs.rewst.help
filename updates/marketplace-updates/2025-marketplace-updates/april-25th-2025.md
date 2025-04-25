# April 25th, 2025 - Marketplace Update

Explore the new changes to the Marketplace in the last week!

This can be anything from new crates, enhancements, or bug fixes!

<details>

<summary><strong>New crates and enhancements</strong></summary>

* SuperOps RMM Support
* Detect Duplicate Accounts

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>



* Amend Calendar Permission on User
  * Add support for localized calendar names via org var `localized_calendar_name`
  * Updated note aliases for clarity and consistency
* Billing Count Report
  * Updated integration outputs to fix "Actual Sentinelonesku" value always evaluating to null
* Deactivate ConnectWise PSA Contacts when their Company is Deactivated
  * Fixed missing `CTX.` in list comprehension jinja, which prevented contact disabling
* Google: User Offboarding
  * Changed form field from Date to Date Time
* Google: User Onboarding
  * Added inputs: first\_name, last\_name, email\_domain, username, etc.
* Identify Users in Bypass Mode
  * Added `psa_default_board_id` var to board input on create ticket task
* M365: Alert on New Admin Accounts
  * The ticket was missing the role in the output. This was resolved by changing the role to user.role
* Microsoft: User Offboarding
  * Fixed logging issues in Exchange action that caused subs to fail
  * Added noop fallback and default idp\_config if subworkflow used directly
  * Added subworkflow to determine anchor mailbox fallback value
* Microsoft: User Onboarding
  * Added support to choose a device by name for "Agent Smith: Run Powershell" action
  * Passed in idp\_config to fix the supervisor issue and added the correct company name variable in the inputs for create user
  * Sorted licenses by offerName to ensure the shortest matching name is selected first.
  * Modified jinja to handle CTX.psa\_contact\_location to set to null when getting an empty string input
* \[REWST- TASK] ConnectWise PSA: Update Ticket
  * Updated the task transition sensitivity to 1 (prevs 0) on action (task id in Templates Prod US - 01932b4b705374d3aeb69357bf323677) add\_time\_entry
* \[Rewst Master v2] Get User Licenses with Friendly Names
  * Updated template GUID from: ced5de96-280c-4559-955a-9f70406cc55c to 0195fc31-921c-783d-aaa8-acccc567b69a (cron update). This uses the now automatically update template instead of the one we've be manually updating.
* Report on Disabled M365 Users with Licenses
  * Fixed ticket filtering via ClosedFlag not working for non-CW PSA
* Reset Locked Accounts
  * Checked box for allow custom input on New Password field
* Rewst: User Onboarding
  * Added failure transition, message prefix standardization, and generic failure messaging in form

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* SuperOps PSA Support
* Disk Space Monitoring/Alerting
* Acronis Deployment Refactor

</details>

