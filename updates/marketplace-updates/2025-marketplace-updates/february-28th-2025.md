# February 28th, 2025 - Marketplace Update

Explore the new changes to the Marketplace in the last week!

This can be anything from new crates, enhancements, or bug fixes!

<details>

<summary><strong>New crates and enhancements</strong></summary>

* No new crates this week

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Get License Groups
  * Swapped out `list_groups` to use a Generic Graph API call to fix an issue preventing License Groups data from returning.
* Microsoft: User Onboarding
  * Added `remove_mobile_devices` to selected transition conditions.
  * Added a retry loop and a new transition to handle a specific error.
  * Updated the transition for `manual_license_required` to properly assign a license after manual purchase.
  * Updated a form field description for clarity on sending passwords via SMS.
  * Edited internal note description Jinja to output `CTX.external_note` if `CTX.internal_note` is empty.
  * Implemented and tested a fix to correctly output licenses.
* Rewst: User Offboarding V2
  * Added `remove_mobile_devices` as a condition in `Execute transition`'s Jinja in `Begin - Exchange Actions`.
* CWM: Technician Toolbox via Pod
  * Updated LiveLink URLs to use `{ APP.engine_url }` for regional parity.
* Windows 11 Compatibility Checker
  * Fixed a typo in `matched_computers` data alias' condition.
* Google: User Offboarding
  * Fixed the `Transfer Drive Contents` dropdown condition to display correctly based on `transfer_drive` instead of `forward_mail`.
* Microsoft: User Offboarding
  * Fixed `group_ids` alias to return an empty list if no groups exist, preventing workflow failures.

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Microsoft365 Subscription Renewal Alerts

</details>

