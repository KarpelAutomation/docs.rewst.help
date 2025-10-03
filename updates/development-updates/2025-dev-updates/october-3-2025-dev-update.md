# September 26, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **RoboRewsty**
  * Tailored guidance, troubleshoot errors, and document workflows.
  * More features coming in Q4

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **App Builder**
  * Fixed issue where page workflows were not performing proper auth checks
  * Resolved overly restrictive domain validation
* **Crates**
  * Fixed issue where default integration overrides from crate triggers were failing to clone when crates are replicated between environments
* **Forms**
  * Fixed dynamic urls for deleted orgs
* **Integrations**
  * Updated missing parameters for Duo - Create Bypass Code action
  * Fixed filtering on Huntress - List Agents action
  * Fixed connection failures to MySQL server
  * Fixed JSON handling in Microsoft Graph "send inquiry" action
  * Updated Datto integration to use the correct username field
* **Workflows**
  * Fixed an issue where, in Array/List inputs with child objects, clicking any Remove button always deleted the final item instead of the intended one
  * Allow for 0 time saved entry when editing workflow attributes on workflow list page
  * Fixed missing `trigger_type` in webhook contexts to ensure workflows receive complete trigger metadata
  * Fixed foreign key constraint error when updating workflows with orphaned form triggers
* **Engine**
  * Improved handling of certain cron job failures to ensure the engine-cron leader pod remains stable

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* BVoIP integration
* Hourly dashboard updates

</details>
