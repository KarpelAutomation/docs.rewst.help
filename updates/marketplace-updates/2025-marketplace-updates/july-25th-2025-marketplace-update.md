# July 25th, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* Document BitLocker Recovery Keys
* Add Rewst Form Link to Onboarding Request Tickets v2
* Add Rewst Form Link to Offboarding Request Tickets v2

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Google: User Onboarding
  * Added 'employee\_id' to excluded keys (60186)
* Microsoft: User Onboarding
  * Added proper handling for undefined `psa_default_tech_worktype` org var when adding time entries using "Datto PSA: Update Ticket" workflow (61620)
* Google: User Offboarding
  * Added options gen trigger to the existing ticket field in form (60946)
* Compromised User Response
  * Fixed a typo in the internal notes of `update_psa_ticket` and `create_psa_service_ticket` tasks (60655)
* Just in Time Admin Access
  * Updated Powershell script's Jinja (60995)
* Microsoft: User Onboarding
  * Added missing licenses to Pax8 SKU mapping list (57863)
* Multiple
  * Changed logic in Pax8 workflows to allow for a base product match template and an extension template to be combined to allow users to specify custom SKU matchings should they not exist in the base template (61620)

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate

- BitLocker Activation - Bitlocker Management Crate Series

</details>
