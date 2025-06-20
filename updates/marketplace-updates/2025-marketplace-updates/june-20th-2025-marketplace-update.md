# June 20th, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* Windows Patch Deployer

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Export Org Vars to CSV for Import
  * Updated 3rd and 5th crate tokens for clarity and compatibility with import crate
  * Updated crate description to specify CSV formatting compatibility
* Microsoft: User Onboarding
  * Set email\_domain field to required to prevent failure
  * Fixed task criteria sensitivity for `failed_to_create_user` action
* Microsoft: User Offboarding
  * Added fallback actions in the On Failure path for mailbox retrieval
* Update Ticket Sub - Automation Logs and Success Statuses
  * Renamed "begin" to "START" and "end" to "END"
  * Removed unused `retry_count` and `seconds_to_delay` aliases
  * Added success aliases
* Deactivate ConnectWise PSA Contacts when their Company is Deactivated
  * Updated Jinja expression for `contact_list` data alias
* Alert on Low Disk Space
  * Added missing automation logs for Agent Smith and SuperOps
* Reset Microsoft MFA
  * Updated form field from `ticket_number` to `ticket_id` to match workflow
* Microsoft Subscription Renewal Alerts
  * Truncated ticket summary to 100 characters to prevent duplication
  * Updated ticket check logic to match truncated summaries
* Billing Count Report
  * Updated "Upload CSV To Ticket" task to support unsupported PSA (Kaseya BMS) via webhook

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate
* Bitlocker Management Crate Series

</details>
