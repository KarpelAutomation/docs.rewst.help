# March 6, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

No new Crates were released this week.&#x20;

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

### Crates

* [Amend Mailbox Permissions](../../../documentation/crates/existing-crate-documentation/amend-mailbox-permissions-crate.md)
  * Updated to use \[REWST - OPT GEN] Get Mailbox Folder Permissions instead of \[ROC] version&#x20;
  * Microsoft Exchange actions now run as org&#x20;
  * Disabled template trigger using \[ROC] Amend Mailbox Permissions form&#x20;
* [Google: User Offboarding](../../../documentation/crates/existing-crate-documentation/google-user-offboarding-crate.md)
  * Reordered tasks: run check\_mailbox\_access and grant\_mailbox\_access before disabling user attributes&#x20;
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Added check to ensure user has a mailbox before adding shared mailboxes&#x20;
  * Added mail\_only\_user input to User: List; when true, route to m365\_list\_users&#x20;
  * Added SuperOps and NinjaOne PSA support; new List Company Locations/Upsert Contact workflows; updated PSA tasks Upsert Contact, List Company Locations, and List Contact Types

### Kits

There were no updates to kits this week.

### Subworkflows

There were no updates to subworkflows this week.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* CIPP Alert Triage Crate
* CIPP Microsoft Desired State Standards Compliance Crate

</details>
