# January 30, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Marketplace**
  * Added functionality to display integrations for crates, improving marketplace filtering and prerequisite visibility.
* **General**
  * Displayed current Rewst version in profile menu
  * Removed notification bell from navigation
* **Integrations**
  * Standardized the Datto Autotask integration name to **Autotask PSA** across the platform to reduce confusion and improve consistency.
* **RoboRewsty**
  * Added Extended Thinking streaming for RoboRewsty on Claude (Anthropic API and AWS Bedrock), enabling a toggleable reasoning view without persisting it to the database.
* **Workflows**
  * Added tracking for workflow creation events across all creation methods to improve visibility into automation adoption.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Authentication**
  * Fixed Google SSO logins in the Asia region that could fail with “Not Authorized – User not found” after successful authentication.
* **Marketplace**
  * Fixed an issue where crates failed to unpack for organizations with previously deleted sub-orgs by correctly resolving organization references during trigger creation.
  * Fixed clone syncing failures for workflows with large numbers of clones, preventing interrupted syncs and ensuring updates complete across all organizations.
* **Workflows**
  * Fixed an error that prevented saving or enabling cloned/unpacked triggers (“filterValidOrganizations is not a function”).

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Onboarding indicators
* Webhook trigger rate limiting

</details>
