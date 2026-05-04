# May 1, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

[CIPP Microsoft Desired State/Standards Compliance Crate](../../../documentation/crates/existing-crate-documentation/cipp-microsoft-desired-state-standards-compliance-crate.md) - Our CIPP: Microsoft Desired State/Standards Compliance Crate monitors Microsoft 365 tenant configurations against a desired state baseline using the CIPP (CyberDrain Improved Partner Portal) integration.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

#### Crates

* [PSA: Update Ticket with User Offboard Links](../../../documentation/crates/existing-crate-documentation/psa-update-ticket-with-user-offboard-links-crate.md)
  * Corrected the Halo transition condition from "Halo PSA" to "HaloPSA"
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Added missing `log_ data` aliases
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Updated the Jinja to strip out zero-width Unicode characters in `ms_sku_to_friendly_name`
  * Added a filter to only return enabled users
  * Updated AD On Prem: Copy Existing User script to use the Manager property for HomeDrive and HomeDirectory
  * Added missing SKU `M365_F1_COMM`
* [Run Powershell Script on Selected Devices](../../../documentation/crates/existing-crate-documentation/run-powershell-script-on-selected-devices-crate.md)
  * Updated CW ASIO: Run PowerShell to use v2 API endpoints for `list_computers` and `run_powershell`
  * Added cw\_asio evaluation in `rewst_get_organization_variable`
* [Find Inactive Computers in RMM](../../../documentation/crates/existing-crate-documentation/find-inactive-computers-in-rmm-crate.md)
  * Updated List Computers to use the v2 API endpoint and include last-contact and online status data
* [Microsoft Subscription Renewal Alerts](../../../documentation/crates/existing-crate-documentation/microsoft-subscription-renewal-alerts-crate.md)
  * Workflow will not return tickets for all mapped organizations
* [Agent Smith: Device Provisioning \[Install First\]](../../../documentation/agent-smith/agent-smith-configuration-overview.md)
  * Changed query approach to handle case-insensitivity in device names
* [Add or Remove Group Membership](../../../documentation/crates/existing-crate-documentation/add-or-remove-group-membership-crate.md)
  * Fields now appear based on identity provider

#### Kits

There were no updates to kits this week.

#### Subworkflows

There were no updates to subworkflows this week.

</details>
