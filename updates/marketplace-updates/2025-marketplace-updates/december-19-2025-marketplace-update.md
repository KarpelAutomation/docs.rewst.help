# December 19, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* [Rotate Local Workstation Passwords Crate](../../../documentation/crates/existing-crate-documentation/rotate-local-workstation-passwords-crate.md)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>



* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Updated datto\_ticket\_number input variable description to Datto Ticket Number.
  * Update Internal Note: Added the capability to post private (internal-only) notes to existing SuperOps and NinjaOne tickets.
  * Update Ticket: Implemented a feature to update an existing NinjaOne ticket.
  * Add Ticket: Added the ability to create new tickets in NinjaOne, with support for org default values.
  * Fixed typo from gorup\_required to group\_required in the list\_tenant\_groups action.
  * Added mail\_only\_user as an input.
  * Changed the initial update ticket and create ticket logic from fully failing the workflow; it now soft fails and continues the workflow.
  * Changed the device\_id value from 31 to blank.
* [Change a User's Password](../../../documentation/crates/existing-crate-documentation/change-a-users-password-crate.md)
  * Added PSAs and RMMs as associated integrations to the crate in the crate details page.
  * Added logic to control password visibility after reset, allowing the new password to be logged in the ticket when configured, instead of being accessible only via workflow results.
* [Windows Patch Deployer](../../../documentation/crates/existing-crate-documentation/windows-patch-deployer-crate.md)
  * Added PSAs and RMMs as associated integrations to the crate in the crate details page.
* [Manage Chocolatey Packages](../../../documentation/crates/existing-crate-documentation/manage-chocolatey-packages-crate.md)
  * Added PSAs as associated integrations to the crate in the crate details page.
* Microsoft: User Offboarding
  * Added AD sync handling and a post-removal delay in hybrid offboarding to prevent false errors when removing users from on-prem–synced Azure AD groups.
  * Corrected removed\_group publishing logic so it is only set after a successful group removal, preventing false success reporting during Microsoft user offboarding.
* [Amend Mailbox Permissions](../../../documentation/crates/existing-crate-documentation/amend-mailbox-permissions-crate.md)
  * Enabled pagination on all get-user actions and updated the Jinja template to correctly process paginated results. Form option generator now returns the complete user list (including large user counts) for dropdown selection.
* [Export Org Vars to CSV for Import](../../../documentation/crates/existing-crate-documentation/export-org-vars-to-csv-for-import-crate.md)
  * Refactored crate to include options for sending the CSV via email and PSA.
* [Find Inactive Computers in RMM](../../../documentation/crates/existing-crate-documentation/find-inactive-computers-in-rmm-crate.md)
  * Updated the Jinja for all\_computers in datto\_rmm\_list\_devices and datto\_rmm\_list\_site\_devices—changed from id to uid.
* [Google: User Onboarding](../../../documentation/crates/existing-crate-documentation/google-user-onboarding-crate.md)
  * Added change\_password\_next\_login as an input variable in GWS user onboarding and included it in set\_user\_attrib\_object.
* [Amend Calendar Permission on User](../../../documentation/crates/existing-crate-documentation/amend-calendar-permission-on-user-crate.md)
  * Added ticket type ORG.VARIABLES.psa\_alert\_ticket\_type when creating initial ticket (previously commented out).
* [Just-In-Time Admin Access](../../../documentation/crates/existing-crate-documentation/just-in-time-admin-access-crate.md)
  * Standardized naming to "Just-In-Time" across crate details, workflows, and forms.
* [Document Rewst Form URLs (ITGlue/Hudu)](../../../documentation/crates/existing-crate-documentation/document-rewst-form-urls-it-glue-hudu-crate.md)
  * Added additional checking for the managing org to be included when checking for enabled orgs.
* [Configure Out Of Office on Mailbox](../../../documentation/crates/existing-crate-documentation/configure-out-of-office-on-mailbox-crate.md)
  * Enabled Always Skip Cache for the Client Field.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Enhanced logging for the user onboarding workflow
* Various DropSuite Additions
* Travelling Employee CA Policy Form
* GDAP Crate Improvements

</details>
