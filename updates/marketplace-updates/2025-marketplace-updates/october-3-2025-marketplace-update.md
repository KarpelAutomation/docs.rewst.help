# October 3, 2025 - Marketplace Update



<details>

<summary><strong>New Crates and enhancements</strong></summary>

There are no new Crates this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Updated `check_if_failed` logic to validate expected successes based on IDP config
  * Added types to raw JSON in cw\_create\_contact
* [PSA: Update Ticket with User Offboard Links](../../../documentation/crates/existing-crate-documentation/psa-update-ticket-with-user-offboard-links-crate.md)
  * Added region-specific links in the description
* [Configure New GDAP Relationship](../../../documentation/crates/existing-crate-documentation/configure-new-gdap-relationship-crate.md)
  * Fixed truncation in `create_admin_relationship` by updating Jinja code
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Added removed\_groups data alias on check\_azure success to keep variable consistent across all paths, including skip-Azure
* Export PSA Ticket Overview to CSV
  * Updated Datto sub-workflow outputs to publish results for parent workflow
* [Rotate Account Passwords](../../../documentation/crates/existing-crate-documentation/rotate-account-passwords-crate.md)
  * Added error handling for missing RMM results and extra comparison to prevent duplicate password documentation entries
* [Amend Mailbox Permissions](../../../documentation/crates/existing-crate-documentation/amend-mailbox-permissions-crate.md)
  * Added integration overrides to the workflow

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Add Form Link to PSA Ticket Based on Type
* Per Machine Password Rotation
* BitLocker Activation - Bitlocker Management Crate series
* Enhanced logging for the user onboarding workflow
* DropSuite Backup Monitoring
* Various DropSuite Additions
* 1Stream Technician Toolbox
* Secure Cloud Addition to User Onboarding
* Workstation Offboarding

</details>
