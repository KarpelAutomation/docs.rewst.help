# October 10, 2025 - Marketplace Update



<details>

<summary><strong>New Crates and enhancements</strong></summary>

* [SecureCloud](../../../documentation/configuration/integrations/integration-guides/opentext-secure-cloud-integration.md) has been added to the user onboarding workflow of our [Microsoft User Onboarding Crate](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/). Check out this Crate's documentation to learn about the new functionality.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Improved logging across multiple actions; clearer messages and success aliases; no functional changes
  * Added Office 365 G3 GCC NCE to PAX8 MS Mapping template
  * Updated Ingram Micro to Microsoft License Lookup with Microsoft Teams item
  * Datto PSA contact creation now uses custom email or Azure override if specified
* [Billing Count Report](../../../documentation/crates/existing-crate-documentation/billing-count-report-crate.md)
  * Fixed exclusion of SentinelOne data when Microsoft 365 was not installed
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * Fixed mail\_only PSA value not persisting
* [Assign Asset/Config to Ticket based on Contact](../../../documentation/crates/existing-crate-documentation/assign-asset-config-to-ticket-based-on-contact-crate.md)
  * Improved HaloPSA device matching by checking multiple fields for hostname
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Added retry logic to reset password block
* [Alert when Users' Mailboxes are Reaching Quota](../../../documentation/crates/existing-crate-documentation/alert-when-users-mailboxes-are-reaching-quota-crate.md)
  * Updated Kaseya BMS tenant lookup to reference ORG.VARIABLES.service\_request\_queue\_name when available
* [Time Savings Report](../../../documentation/crates/existing-crate-documentation/time-savings-report-crate.md)
  * Added input variables: datetime, group\_by, result\_type, additional\_recipients

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

- Workstation Offboarding

</details>

