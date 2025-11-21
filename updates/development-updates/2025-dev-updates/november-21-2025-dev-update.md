# November 21, 2025- Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Engine**
  * Improved engine-side support-access checks to ensure authorization is validated before using direct SQL queries.
* **Integrations**
  * CIPP integration - docs [here](../../../documentation/configuration/integrations/integration-guides/cipp-cyberdrain-improved-partner-portal-integration.md)
  * Arrowsphere integration - docs [here](../../../documentation/configuration/integrations/integration-guides/arrowsphere-integration.md)
  * Enabled automatic hiding of secrets like passwords and API keys in integration configurations.
  * Recategorized integrations for better searchability
  * Updated the Core noop action description to clearly reflect its role in flow control, logic handling, and data orchestration.
  * Corrected the integration name to display “OpenText Secure Cloud” with proper spacing.
  * Updated our Notion integration to support the latest API changes and prevent workflow disruptions caused by the new multi–data-source database model.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Ensured the “Org Deleted” trigger activates correctly when an organization is deleted.
* **Integrations**
  * Fixed failures in the Pax8 `get_subscription` action to ensure subscriptions fetch correctly across all environments.
  * Fixed an issue where the Datto Autotask PSA “List Attachments on Document v2” action failed to refresh options due to an `'int' object has no attribute 'encode'` error.
  * Resolved inconsistent failures in HubSpot company search and update actions to ensure reliable results and successful company updates.
  * Fixed errors in the Liongard “Get System Detail View by ID” action when manually entered IDs were used.
* **Forms**
  * Prevented user identity spoofing in GraphQL form submissions by enforcing the authenticated user’s identity in workflow context.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* RoboRewsty results analysis updates

</details>
