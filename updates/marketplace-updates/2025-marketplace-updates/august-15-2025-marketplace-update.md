# August 15, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* [Rotate Account Password Crate](../../../documentation/crates/existing-crate-documentation/rotate-account-passwords-crate.md)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Google: User Onboarding
  * Fixed issues between workflows and shared option gens&#x20;
  * Updated triggers on associated workflows to Use Org Variable with a fallback of Use Default
* [Add or Remove Group Membership](../../../documentation/crates/existing-crate-documentation/add-or-remove-group-membership-crate.md)
  * Reordered transitions in the list\_membership action&#x20;
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Updated group data construction to avoid empty strings
  * Applied filtering for group resolutions&#x20;
* [CW PSA: Pod Technician Toolbox v2](../../../documentation/crates/existing-crate-documentation/cwm-technician-toolbox-via-pod-1.md)
  * Fixed Jinja condition and updated logic in get\_org\_id&#x20;
  * Added Publish Result As for output reuse&#x20;
  * Updated Custom Condition field in the transition to match logic used in data alias&#x20;
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Added org variable for change in Jinja evaluation conditions&#x20;
  * Improved email approval workflow by adding fallback logic to recipient and sender fields&#x20;
  * Updated recipient handling to correctly process lists of approvers&#x20;
  * Enhanced reliability of the approval process&#x20;
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * Refactored workflow to reduce API calls for speed optimization&#x20;
* [Agent Smith: Device Provisioning \[Install First\]](../../../documentation/agent-smith/agent-smith-configuration-overview.md)
  * Fixed DattoRMM UID in options being overwritten by ID&#x20;
* PSA: Update Ticket with New User Onboard Links
  * Changed data aliases from ticket\_number to ticket\_id

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate

- BitLocker Activation - Bitlocker Management Crate Series
- Workstation offboarding
- Enhanced logging for the user onboarding workflow

</details>
