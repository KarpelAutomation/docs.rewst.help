# December 12, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* [Use AI to Suggest Responses to New Tickets](../../../documentation/crates/existing-crate-documentation/use-ai-to-suggest-responses-to-new-tickets-crate.md)
  * Refactored workflow, added Anthropic support, and changed the title of the Crate
* [Duo Identity Verification](../../../documentation/crates/existing-crate-documentation/duo-identity-verification-crate.md)
* [Dropsuite: New Account](../../../documentation/crates/existing-crate-documentation/dropsuite-new-account-crate.md)
* [Dropsuite: Backup Monitoring](../../../documentation/crates/existing-crate-documentation/dropsuite-backup-monitoring-crate.md)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [AI Ticket Sentiment Analysis ](../../../documentation/crates/existing-crate-documentation/openai-ticket-sentiment-setup.md)
  * Updated the inputs for sub-workflows so it correctly passes in the PSA to all ticketing sub-workflows. Also updated the transition conditions to respect this change.
* [M365: Disable Inactive User Accounts](../../../documentation/crates/existing-crate-documentation/m365-disable-inactive-user-accounts-crate.md)
  * Crate now identifies inactive users based on last successful interactive sign-in
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Added Microsoft 365 E5 license to subscribed products
  * Improved error logging for Create Azure AD User workflow
  * Removed a hardcoded device\_id value in powershell workflow used to add user to on-prem group
* [CW PSA: Pod Technician Toolbox v2](../../../documentation/crates/existing-crate-documentation/cwm-technician-toolbox-via-pod-1.md)
  * Excluded disabled form triggers in list forms action
  * Updated pod\_device\_action to run as org\_id; added N-able Get Computer to RMM: Get Computer; added integration overrides to New Ticket trigger
  * Updated generated offboarding link to auto-populate ticket\_number
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Added SuperOps integration override and option generators supporting SuperOps
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * Added nable\_device\_filter\_id field with option generator to populate values
* [Google: User Offboarding](../../../documentation/crates/existing-crate-documentation/google-user-offboarding-crate.md)
  * Added option to remove all licenses when selected; requires automatic licensing disabled
* [Workstation Offboarding](../../../documentation/crates/existing-crate-documentation/workstation-offboarding-crate.md)
  * Form: Added Ticket ID and optional Ticket Note; Workflow: Added create/update ticket logic based on presence of Ticket ID

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Per Machine Password Rotation
* Enhanced logging for the user onboarding workflow
* Various DropSuite Additions
* Travelling Employee CA Policy Form
* GDAP Crate Improvements

</details>
