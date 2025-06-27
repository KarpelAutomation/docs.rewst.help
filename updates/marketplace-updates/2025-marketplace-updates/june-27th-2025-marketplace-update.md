# June 27th, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* No Crate releases this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Fixed client-side crash by replacing NULL id with empty string in failure option generation (SC56708)
  * Updated PowerShell to search by UPN if no match on samAccountName (SC56570)
  * Modified option generator for PSA contacts to include a `default` key based on org var (SC56184)
  * Corrected transition logic from `desk_phone_number` to `mobile_phone_number` (SC57980)
  * Adjusted supervisor option generator and removed redundant action (SC51204)
  * Added a update ticket on failure transition to update the ticket with the failure data and workflow result&#x20;
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Removed ticket status override so Halo handles default update (SC55709)
  * Added Jinja to include removed licenses in final ticket update (SC58745)
  * Added public note action for Halo PSA ticket update (SC58330)
* Rewst: User Onboarding
  * Excluded guest accounts using filter `userType ne "Guest"` (SC28968)
* [OpenAI Ticket Sentiment Analysis](../../../documentation/crates/existing-crate-documentation/openai-ticket-sentiment-setup.md)
  * Prevented Priority field from updating when not included in config (SC54878)
* [Time Savings Report](../../../documentation/crates/existing-crate-documentation/time-savings-report-crate.md)
  * Fixed JinjaEvaluationException on cron when email\_addresses is a list (SC57833)
* [Alert on Expiring App Reg Secrets](../../../documentation/crates/existing-crate-documentation/alert-on-expiring-app-reg-secrets-crate.md)
  * Fixed incorrect Company ID being set on created ticket (SC34139)
* Google: User Onboarding
  * Handled case where there are no organization units in create user action (SC58430)
* GWS and Microsoft: Onboard and Offboard
  * Improved approval flow input parsing to support list, comma-separated string, or single email string (SC55660)
* Multiple
  * Replaced manual CSV override with cron-updated MS template CSV (SC53613)

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate
* Document Bitlocker Recovery Keys (Bitlocker Management Crate Series)

</details>
