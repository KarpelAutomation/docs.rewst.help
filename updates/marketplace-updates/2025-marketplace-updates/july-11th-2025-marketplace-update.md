# July 11th, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* No Crate releases this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Alert on Expiring App Reg Secrets
  * Updated spelling from 'Organisation' to 'Organization' in the initial description field of the action. (59975)
* Microsoft: User Onboarding
  * Fixed "Time Taken" field in HaloPSA Update Ticket workflow being recorded in hours instead of minutes. (57396)
  * Fixed log message for `check_nable_mapping` action from Kaseya VSA to N-able N-central. (60533)
  * Fixed transition condition Jinja for `manual_license_required` action's 'No Licenses Purchased'. (60533)
  * Removed Jinja for Middle Name in the username field for the Onboarding form; changed field to auto-populate from the `middle_name` field in the form. (60838)
* Windows Patch Deployer
  * Fixed `List Operating Systems with Patches` workflow not generating options for certain RMMs like NinjaRMM due to mismatched device ID data types. (60307)
* Licensing Template
  * Added the missing `M365_DISC0VER_RESPOND` entry to both licensing templates. (53016)
* Alert on Login from Non-Native Country
  * Updated crate description to note that an Entra ID Premium P1 or P2 license is required to use this crate. (55436)
* Microsoft: User Offboarding
  * Modified Jinja for `remove_from_m365_group` action to output M365 groups even when on-prem groups are empty/null. (60294)
  * Added ability to set `Work Type` / `Billing Code ID` via org var in `Datto PSA: Update Ticket` workflow when adding time entry. (47644)
* Configure Organizational Variables
  * Replaced static options for Phone Number format with an options generator that supports default selection based on org variable. (28918)
  * Supported `Default Work Type` dropdown for Datto PSA. (47644)
* CW PSA: Pod Technician Toolbox v2
  * Removed default input variable value for username. (60577)
* CWM: Technician Toolbox via Pod
  * Removed unsupported/deprecated MFA action. (22737)

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate
* Document BitLocker Recovery Keys (Bitlocker Management Crate Series)
* BitLocker Activation (Bitlocker Management Crate Series)

</details>
