# February 6, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

No new Crates were released this week.&#x20;

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

### Crates

* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Only AD sync when IDP is `on_prem` with ADSync; otherwise skip
  * Fix OneDrive Owner permission grant errors - objectNotSupported/400
  * Ticket Number options: `psa_company_id` now populated from PSA Child Company form field
* [Clean up Global Address List from Disabled Users](../../../documentation/crates/existing-crate-documentation/clean-up-global-address-list-from-disabled-users-crate.md)
  * Exclude shared mailboxes from GAL removal
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Check for existing license before purchasing; sequence M365 licensing steps&#x20;
  * Add CW ASIO to Run PowerShell via RMM; create ConnectWise ASIO: Run PowerShell workflow
  * Add ArrowSphere licensing logic and subworkflows
  * Fix check\_time logic in PSA Update Ticket subworkflows: Halo, ConnectWise PSA, Autotask, Kaseya, ServiceNow based on `no_ticket_time` flags&#x20;
  * Remove divide-by-60 in `calculate_ticket_time`&#x20;
  * Update `determine_provider` to honor PSA `mail_only` flag; used across crates&#x20;
* [Amend Calendar Permission on User](../../../documentation/crates/existing-crate-documentation/amend-calendar-permission-on-user-crate.md)
  * Align structure with updated workflow; correct permission checks
* [Run Powershell Script on Selected Devices](../../../documentation/crates/existing-crate-documentation/run-powershell-script-on-selected-devices-crate.md)
  * Add ConnectWise ASIO to On-Prem Run PowerShell on Org Domain Controller
* [Billing Count Report](../../../documentation/crates/existing-crate-documentation/billing-count-report-crate.md)
  * Add ConnectWise ASIO
* [CW PSA: Pod Technician Toolbox V2](../../../documentation/crates/existing-crate-documentation/cwm-technician-toolbox-via-pod-1.md)
  * Add ConnectWise ASIO to RMM: Get Computer
* [Rotate Local Workstation Passwords](../../../documentation/crates/existing-crate-documentation/rotate-local-workstation-passwords-crate.md)
  * Add ConnectWise ASIO to RMM: List Workstation
* [Automation Toolkit](../../../documentation/crates/existing-crate-documentation/automation-toolkit-crate.md)
  * Add ConnectWise ASIO to RMM: List Child Sites
* [Install Acronis Backup Agent on Devices](../../../documentation/crates/existing-crate-documentation/install-acronis-backup-agent-on-devices-crate.md)
  * Add ConnectWise ASIO to RMM: List Installed Softwares
* [Document Group Details V2](../../../documentation/crates/existing-crate-documentation/document-m365-groups-setup.md)
  * Check `group_members` before match\_hudu\_contact
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * Update M365: Get License Groups to include assignedLicenses, filter groups with assigned licenses
* [Traveling Employee CA Policy](../../../documentation/crates/existing-crate-documentation/traveling-employee-ca-policy-crate.md)
  * Add trigger overrides to all four triggers in the Crate
* Add Rewst Form Link to Offboarding Request Tickets - deprecated Crate
  * Update custom Jinja transition to include Autotask PSA; rename transition

### Kits

* [\[Kit\] Billing Count Reporting](../../../documentation/automations/kits/billing-count-kit.md)
  * Add ConnectWise ASIO integration
* [\[Kit\]: HaloPSA Integration](../../../documentation/automations/kits/halo-psa-integration-kit.md)
  * Modify ticket type ID assignment to require psa\_alert\_ticket\_type; subworkflow used in multiple Crates

</details>

<details>

<summary><strong>Coming soon</strong></summary>

REWST Conditional Access Policy Assistant Crate

</details>

