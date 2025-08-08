# June 27, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* No Crate releases this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Fixed client-side crash by replacing NULL id with empty string in failure option generation&#x20;
  * Updated PowerShell to search by UPN if no match on samAccountName&#x20;
  * Modified option generator for PSA contacts to include a `default` key based on org var&#x20;
  * Corrected transition logic from `desk_phone_number` to `mobile_phone_number`&#x20;
  * Adjusted supervisor option generator and removed redundant action&#x20;
  * Added a update ticket on failure transition to update the ticket with the failure data and workflow result&#x20;
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Removed ticket status override so Halo handles default update&#x20;
  * Added Jinja to include removed licenses in final ticket update&#x20;
  * Added public note action for Halo PSA ticket update&#x20;
* Rewst: User Onboarding
  * Excluded guest accounts using filter `userType ne "Guest"`&#x20;
* [OpenAI Ticket Sentiment Analysis](../../../documentation/crates/existing-crate-documentation/openai-ticket-sentiment-setup.md)
  * Prevented Priority field from updating when not included in config&#x20;
* [Time Savings Report](../../../documentation/crates/existing-crate-documentation/time-savings-report-crate.md)
  * Fixed JinjaEvaluationException on cron when email\_addresses is a list&#x20;
* [Alert on Expiring App Reg Secrets](../../../documentation/crates/existing-crate-documentation/alert-on-expiring-app-reg-secrets-crate.md)
  * Fixed incorrect Company ID being set on created ticket&#x20;
* Google: User Onboarding
  * Handled case where there are no organization units in create user action&#x20;
* GWS and Microsoft: Onboard and Offboard
  * Improved approval flow input parsing to support list, comma-separated string, or single email string&#x20;
* Multiple
  * Replaced manual CSV override with cron-updated MS template CSV&#x20;

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate
* Document Bitlocker Recovery Keys (Bitlocker Management Crate Series)

</details>
