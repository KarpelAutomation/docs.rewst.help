# January 16, 2026 - Marketplace Update

<details>

<summary><strong>New Crates</strong></summary>

There are no new Crates this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

### Crates

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Altered Device Name field Jinja to use org primary/preferred domain controller&#x20;
  * Added validation for SQL integration installed and db\_override enabled
  * Renamed "Azure AD" to "Entra ID"; add/align input labels; require last name, username, and email domain
  * Added complete automation log as final PSA ticket note for audit trail
* [Automation Toolkit](../../../documentation/crates/existing-crate-documentation/automation-toolkit-crate.md)
  * Changed crate visibility from private to public&#x20;
* [Export Org Vars to CSV for Import](../../../documentation/crates/existing-crate-documentation/export-org-vars-to-csv-for-import-crate.md)
  * Switched transition condition to email in check\_documentation\_type; set END criteria to 1&#x20;
* [Remove Malicious Email and Block Sender](../../../documentation/crates/existing-crate-documentation/remove-malicious-email-and-block-sender-crate.md)
  * Added email\_list defined check and graceful failure path; set End sensitivity to 1
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Fixed anchor mailbox issue; no longer a required input
* [Just-In-Time Admin Access](../../../documentation/crates/existing-crate-documentation/just-in-time-admin-access-crate.md)
  * Set Temporary Password to Always Skip Cached to prevent reuse
* [Document Group Details v2](../../../documentation/crates/existing-crate-documentation/document-m365-groups-setup.md)
  * Added check for group members to avoid failure when none matched

### Subworkflows

* [Halo PSA: Update Ticket](../../../documentation/automations/subworkflows/rewst-task-halo-psa-update-ticket.md)
  * Linked add\_public\_note success to complete workflow noop
* [Halo PSA: Create Ticket](../../../documentation/automations/subworkflows/rewst-task-halo-psa-create-ticket.md)
  * Added tech\_id input; default Agent ID from ORG.VARIABLES.psa\_default\_tech\_id when null&#x20;

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Traveling Employee CA Policy Form Crate
* GDAP Crate Improvements for easier setup of the Microsoft Cloud Integration Bundle

</details>
