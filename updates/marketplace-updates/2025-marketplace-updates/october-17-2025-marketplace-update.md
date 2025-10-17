# October 17, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

We've released two new Crates this week:

* [Update Ticket with Form Link - Generic](https://docs.rewst.help/documentation/crates/existing-crate-documentation/update-ticket-with-form-link-generic-crate) - provide a variable configuration— via trigger variable— or input configuration— via workflow input— at runtime, with the name of a form you would like to use to update single or multiple tickets.
* [Workstation Offboarding](https://docs.rewst.help/documentation/crates/existing-crate-documentation/workstation-offboarding-crate) - streamline the offboarding process for workstations across multiple platforms based on device name.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Replaced single Graph API action with paginated service principal sub-workflow&#x20;
  * Improved logging: clearer messages and success aliases; no functional changes
  * Improved logging: clearer messages and success aliases; no functional changes
  * Improved logging: clearer messages and success aliases; no functional changes
  * Improved logging: clearer messages and success aliases; no functional changes&#x20;
  * Added success checks and logging across sub-workflows; added logic to determine success
  * Standardized success handling and logs in subs (mark\_success noop, boolean flags; default success false); removed data keys&#x20;

- [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * Added agent\_smith as default RMM option

* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Added retry logic for remove\_licenses
* [PSA: Update Ticket with User Offboard Links](../../../documentation/crates/existing-crate-documentation/psa-update-ticket-with-user-offboard-links-crate.md)
  * Updated Halo PSA template to handle the form link

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Per Machine Password Rotation
* BitLocker Activation - Bitlocker Management Crate series
* Enhanced logging for the user onboarding workflow
* DropSuite Backup Monitoring
* Various DropSuite Additions
* 1Stream Technician Toolbox

</details>
