# February 20, 2026 - Marketplace Update

<details>

<summary><strong>New Crates</strong></summary>

No new Crates were released this week.&#x20;

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

### Crates

* [Assign Autotask Configuration Contact Based on Last Logged In User](../../../documentation/crates/existing-crate-documentation/assign-autotask-configuration-contact-based-on-last-logged-in-user-crate.md)
  * Created sub-workflow for item failures; added condition to pull active configurations and contacts with email addresses
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Added correct options generator for Exchange Server dropdown&#x20;
  * Added ticket-handling tasks and gating to avoid updates to non-existent tickets; creates/branches appropriately&#x20;
  * Added employee\_id support to form and workflows
  * Product name for `CPC_E_4C_16GB_128GB` in Pax8 license lookup template corrected
  * Made device lookups case-insensitive&#x20;
  * Fixed creation/linking of new contacts to correct company in ConnectWise&#x20;
* [Traveling Employee CA Policy](../../../documentation/crates/existing-crate-documentation/traveling-employee-ca-policy-crate.md)
  * Added update/delete in Self-Serve; improved location detection; support updating country/assigned users; added Time Entry org variable; allow policy deletion&#x20;
* [Add or Remove Group Membership](../../../documentation/crates/existing-crate-documentation/add-or-remove-group-membership-crate.md)
  * Added pagination to `list_user_group_membership` action&#x20;
* [Reset Locked Accounts](../../../documentation/crates/existing-crate-documentation/reset-locked-accounts-crate.md)
  * Ensured workflow completes cleanly and reports "No locked accounts found" on empty results&#x20;
  * Implemented revised PowerShell logic to return locked-out users&#x20;
* [Alert on Unused M365 Licenses](../../../documentation/crates/existing-crate-documentation/alert-on-unused-m365-licenses-crate.md)
  * Adjusted Jinja to complete successfully or fail with clear notification
* [Billing Count Report](../../../documentation/crates/existing-crate-documentation/billing-count-report-crate.md)
  * Adjusted Jinja to correctly aggregate Pax8 license quantities
* \[Deprecated] M365 CSP/GDAP Permission Checker - update to old version of Crate still in use with some customers
  * Add option to set org var gdap\_list\_all\_tenants=true to include tenants with expired admin relationships&#x20;

### Kits

There were no updates to kits this week.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* CIPP Alert Triage Crate
* CIPP Microsoft Desired State Standards Compliance Crate

</details>

