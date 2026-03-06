# March 6, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Workflows**
  * Optimized webhook trigger performance by replacing synchronous GraphQL calls with direct database queries and Redis-based trigger caching.
  * Updated the Core Webhook trigger Secret Key field description to clarify that it is recommended—not required—for Wait for Results functionality.
* **General**
  * Fixed org picker breadcrumbs so they consistently displayed the correct full organization path across navigation and search states.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Resolved an issue where the hard delete cron job failed to remove workflows and orphaned subworkflow actions, causing engine crashes when deleting soft-deleted organizations.
* **Integrations**
  * Restored N-able N-sight option refreshing so client mappings loaded correctly for integrations using XML-based API responses.
  * Fixed Google domain-wide delegation token exchange failures that prevented non-admin users from accessing supported Google Workspace APIs like Gmail and Drive.
  * Fixed an issue where MySQL connections using SSL failed, preventing successful queries through the SQL integration.
  * Fixed an issue where the List Integrations for Organization action failed when run at the parent organization level.
  * Updated ImmyBot actions to include newly required API parameters, resolving workflow failures caused by recent ImmyBot API changes.
  * Updated the OpenAI action to use the `v1/responses` endpoint, restoring compatibility with current OpenAI models.
* **Jinja**
  * Fixed `parse_csv` so provided `fieldnames` are correctly applied when parsing lists of string lists, instead of treating the first row as headers.
* **App Builder**
  * Improved custom domain validation by removing the “Unknown Error” message and displaying clearer feedback when reserved domains are used.
* **General**
  * Added analytics tracking for guided onboarding

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* RoboRewsty AI Workflow Builder
* Side navigation update
* Lexful Integration

</details>
