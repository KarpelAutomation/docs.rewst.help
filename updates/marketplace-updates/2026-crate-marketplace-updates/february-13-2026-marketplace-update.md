# February 13, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

[Rewst CA Policy Assistant Crate](../../../documentation/crates/existing-crate-documentation/rewst-ca-policy-assistant-crate.md) - This Crate contains a form that retrieves parent tenant sign-in error logs from the last 14 days and emails a list of all enabled Conditional Access policies, with a link to each for easy navigation to the policy in Microsoft Entra.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

### Crates

* [Reset Locked Accounts](../../../documentation/crates/existing-crate-documentation/reset-locked-accounts-crate.md)
  * Ensures workflow completes and outputs "No locked accounts found" for empty result sets&#x20;
  * Implemented revised PowerShell logic to return locked-out users&#x20;
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Device lookups are now case-insensitive&#x20;
  * Resolved issue creating contacts and linking to the correct company in ConnectWise&#x20;
  * Updated Raw JSON for create contact; added int to company and fixed firstName typo
  * Added Kaseya VSA X integration override
* [Alert on Unused M365 Licenses](../../../documentation/crates/existing-crate-documentation/alert-on-unused-m365-licenses-crate.md)
  * Adjusted Jinja to ensure clear success/failure and user notification
* [Billing Count Report](../../../documentation/crates/existing-crate-documentation/billing-count-report-crate.md)
  * Adjusted Jinja to correctly aggregate Pax8 license quantities
* [Alert on Expiring App Reg Certificates](../../../documentation/crates/existing-crate-documentation/alert-on-expiring-app-reg-certificates-crate.md)
  * Edited Jinja to build objects for each app–cert pair and those with expiring certs
* [Google: User Onboarding](../../../documentation/crates/existing-crate-documentation/google-user-onboarding-crate.md)
  * Added loop\_current variable and incremented it each iteration
* [Document BitLocker Information](../../../documentation/crates/existing-crate-documentation/document-bitlocker-information-crate.md)
  * Changed online agent check to != 0 to include non-offline statuses
* [Use AI to Suggest Responses to New Tickets](../../../documentation/crates/existing-crate-documentation/use-ai-to-suggest-responses-to-new-tickets-crate.md)
  * Updated Jinja for setting the Anthropic model in set\_model
* [PSA: Update Ticket with New User Onboard Links](../../../documentation/crates/existing-crate-documentation/psa-update-ticket-with-user-onboard-links-crate.md)
  * Added check\_form\_name\_input to subworkflow; main workflow handles subworkflow failure with custom note; added static form name defaulting to Rewst Onboarding and Offboarding names&#x20;
* [Upload File to PSA Ticket](../../../documentation/crates/existing-crate-documentation/upload-file-to-psa-ticket-crate.md)
  * Changed Jinja for publish field default to CTX.publish\_type|d("1", true)&#x20;
* [Update User Attributes (On-Prem/Azure) v2](../../../documentation/crates/existing-crate-documentation/update-user-attributes-on-prem-azure-v2-crate.md)
  * Added success alias for the success output variable&#x20;
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Added minutes-worked timing from automation\_task\_offboard\_user\_time for final ticket notes&#x20;
  * For AD-synced environments, restore shared mailbox if disabled user is moved to an unsynced OU
  * Revised Jinja to filter agreements by name and company ID
* [Rewst Microsoft GDAP Assistant](../../../documentation/crates/existing-crate-documentation/rewst-microsoft-gdap-assistant-crate.md)
  * Set Force Delegated Admin to True for create\_admin\_relationship and activate\_invite actions&#x20;

### Kits

There were no updates to kits this week.

</details>

