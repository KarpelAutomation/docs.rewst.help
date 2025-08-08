# July 4, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* No Crate releases this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Use OpenAI to Suggest Responses to New Tickets
  * Added missing tags and associated packs.&#x20;
  * Added missing triggers, now all are configurable during unpack.&#x20;
* Add Client to Rewst
  * Added conditional statements for form fields `superops_client_id` and `nable_customer_id`.&#x20;
* Rewst Examples: Jinja Comprehension
  * Fixed Jinja in the `last_day_of_month` alias to work with any date, not just the current date.&#x20;
* Remove Supervisor Workflow
  * Fixed Task Transition Error on `failure_catch` by setting it to 1 from 0.&#x20;
* Microsoft: User Onboarding
  * Fixed mismatched transitions for internal and external notes.&#x20;
  * Updated to use CRON-updated Microsoft product list over hard-coded value.&#x20;
  * Added `skipCache` to `[REWST - TASK] List On-Prem Groups (Not Tenant Specific)` and updated `[REWST - OPT GEN] On-Prem: List All Groups`.&#x20;
  * Changed user location Jinja for `create user` action.&#x20;
* Add or Remove Group Membership
  * Toggled `List OnPrem Groups` field to be hidden by default.&#x20;
* \[ROC] PSA - CWM: Triage SentinelOne Threat Alerts
  * Added a check for `Machine (\\S*)` in the `computer_name` condition.&#x20;
* Amend Calendar Permission on User
  * Added crate details.&#x20;
  * Applied client-provided filter update to `List_Users` to include `UserMailbox` and `SharedMailbox`.&#x20;
* \[Kit] Microsoft: User Onboarding
  * Updated Jinja in alias `CTX.combined_user_attributes` to include `CTX.street` from the form for PSA contact update.&#x20;

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate
* Document BitLocker Recovery Keys (Bitlocker Management Crate Series)

</details>
