# August 29, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* [Refactor of Sync Last Logged-In Info to PSA Asset Crate](../../../documentation/crates/existing-crate-documentation/assign-autotask-configuration-contact-based-on-last-logged-in-user-crate.md)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Update User Attributes (On-Prem/Azure) v2
  * Added a Graph action to retrieve the user's current settings
  * Modified the usageLocation field to be set with the user's current usageLocation value
* Google: User Onboarding
  * Replaced user check exist workflow with Google Workspace specific user check exists workflow
* [Billing Count Report](../../../documentation/crates/existing-crate-documentation/billing-count-report-crate.md)
  * Fixed Datto RMM filtering mechanisms for more accuracy
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Standardized ticket list output naming in ConnectWise Manage
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Added and modified automation log messages and success data alias, also provided a label to custom transition on send\_password\_to\_supervisor action
  * Updated automation logs, renamed actions, and added success data alias
  * Fixed issue in the input for create\_contact action's email field, updated automation logs, renamed actions
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * Altered property naming patterns in output parameters and updated form condition

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* BitLocker Activation - Bitlocker Management Crate series
* Workstation offboarding
* Enhanced logging for the user onboarding workflow

</details>
