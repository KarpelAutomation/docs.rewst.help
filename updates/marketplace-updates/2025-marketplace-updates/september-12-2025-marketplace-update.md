# September 12, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* No Crate releases this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Added missing log aliases; improved conditional no-op/sub logs; added success aliases and default success output
  * Fixed typos in ticket note template ("be" removal, "Received" spelling)
  * Shared mailbox flows: added log aliases; refined transition messages; added success checks and aliases
  * Log/message cleanup across actions; added success aliases; no functional changes. This was done for 17 different workflows.
  * Updated descriptions for Microsoft User Location and PSA Contact Location
  * Added fallback when no Location ID; clearer success logs; improved failure message
* Add Rewst Form Link to Offboarding Request Tickets v2
  * Corrected typo in generate\_link\_note action
* Sync AzureAD Account Information with ConnectWise PSA Contacts (v3)
  * Added handling for syncing business phones
* [M365 CSP/GDAP Permission Checker ](../../../documentation/crates/existing-crate-documentation/m365-csp-gdap-permission-checker-crate.md)
  * Replaced retry no-op with 20s delay
* Document Rewst Org Variables
  * Added ORG.VAR.psa\_default\_board\_id input to Create\_Error\_Ticket
* [Billing Count Report](../../../documentation/crates/existing-crate-documentation/billing-count-report-crate.md)
  * Filtered Auvik devices to billable/online; added Manage Status lookup for billable devices
* [Configure New GDAP Relationship](../../../documentation/crates/existing-crate-documentation/configure-new-gdap-relationship-crate.md)
  * Fixed "Relationship Name" label; updated naming guidance; added 50-char limit note
* Assign Asset/Config to Ticket based on Contact
  * Improved LastLoggedInUser-to-contact matching across more name formats
* [CW PSA: Pod Technician Toolbox v2](../../../documentation/crates/existing-crate-documentation/cwm-technician-toolbox-via-pod-1.md)
  * Removed unsupported form references; cleaned List Forms transitions

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* BitLocker Activation - Bitlocker Management Crate series
* Workstation offboarding
* Enhanced logging for the user onboarding workflow

</details>
