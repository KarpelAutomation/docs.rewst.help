# January 9, 2026 - Marketplace Update

<details>

<summary><strong>New Crates</strong> </summary>

There are no new Crates this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

### Crates

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Use email as UPN to prevent incorrect user assignment
  * Enable mail\_nickname input on the form for on‑prem environments
  * Use specified\_share\_server as device\_name when provided; fix variable typo
  * Update ticket with correct password info during onboarding
  * Add transition to set description to external\_note when internal\_note task runs
  * Re-sync Create User task to apply run\_ad\_sync logging fix
  * Add transition for override list in set\_output\_var
  * Change work\_minutes filter type from int to float in final ticket updates
  * Updated datto\_ticket\_number input description to "Datto Ticket Number"
  * Added ability to post private/internal notes to existing SuperOps and NinjaOne tickets
  * Implemented updating of an existing NinjaOne ticket
  * Added ability to create new NinjaOne tickets with org default values
* [Add or Remove Group Membership](../../../documentation/crates/existing-crate-documentation/add-or-remove-group-membership-crate.md)
  * Fix empty user list by updating the form
  * Add 'groups-aad' option to manage\_users\_or\_groups
* [PSA: Update Ticket with User Offboard Links](../../../documentation/crates/existing-crate-documentation/psa-update-ticket-with-user-offboard-links-crate.md)
  * Update trigger to support orgs using items or not
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * Add "Created Offboarding Ticket" form item; update Options Gen/ORG variable logic for psa\_offboarding\_user\_ticket\_item
  * Add FR and NZ to M365 Usage Locations options
  * Added field for requester ID for SuperOps to the \[ROC] Rewst: Simple Organizational Variable Form for Child Accounts form
* [PSA: Update Ticket with New User Onboard Links](../../../documentation/crates/existing-crate-documentation/psa-update-ticket-with-user-onboard-links-crate.md)
  * Update trigger to support with/without items
* [Enterprise Application Creation Alert](../../../documentation/crates/existing-crate-documentation/enterprise-application-creation-alert-crate.md)
  * Add input mapping to ticket\_type\_id in create\_psa\_service\_ticket action
* [Document Rewst Org Variables](../../../documentation/crates/existing-crate-documentation/document-rewst-org-variables-crate.md)
  * Add Getting Started tag to this crate; remove it from Rewst: User Onboarding
* [Report on Disabled M365 Users with Licenses](../../../documentation/crates/existing-crate-documentation/report-on-disabled-m365-users-with-licenses-crate.md)
  * Use trigger type name "Webhook" instead of ID in condition
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Use user\_filter input instead of hardcoded asterisk (\*)&#x20;
* [Billing Count Report](../../../documentation/crates/existing-crate-documentation/billing-count-report-crate.md)
  * Wrap CTX.id in array for auvik\_list\_devices\_info/details input handling
* [Bulk Create Client from PSA](../../../documentation/crates/existing-crate-documentation/bulk-create-client-from-psa-crate.md)
  * Add SuperOps support in Stage 2: Create Organisations
* [Reset Microsoft MFA](../../../documentation/crates/existing-crate-documentation/reset-microsoft-mfa-crate.md)
  * Made Ticket ID a dynamic dropdown; added "Skip Ticket Creation" checkbox to guide correct workflow path
* [Cork: Compliance Event to PSA Ticket](../../../documentation/crates/existing-crate-documentation/cork-compliance-event-to-psa-ticket-crate.md)
  * Updated filter to include only tickets with a resolved date and status not 1–4
* [M365: Disable Inactive User Accounts](../../../documentation/crates/existing-crate-documentation/m365-disable-inactive-user-accounts-crate.md)
  * Added required PSAs and RMMs as associated packages
* [Change a User's Password](../../../documentation/crates/existing-crate-documentation/change-a-users-password-crate.md)
  * Added PSAs and RMMs as associated integrations on the crate details page

### Workflows

* \[REWST - TASK] Agent Smith: Run Powershell
  * Move output data alias from query\_device 404 to retry max-retries transition
* \[REWST - TASK] SuperOps: Create Ticket
  * Default technician and requester to None in create\_ticket action for this subworkflow in our ticket creation subworkflow, used whenever we create a ticket in any Crate

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Enhanced logging for the user onboarding workflow
* Various DropSuite Additions
* Traveling Employee CA Policy Form
* GDAP Crate Improvements

</details>
