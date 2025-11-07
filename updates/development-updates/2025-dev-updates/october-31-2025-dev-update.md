# October 31, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * [Cloudmore integration](../../../documentation/configuration/integrations/integration-guides/cloudmore-integration.md)
* **Workflows**
  * Improved workflow execution performance by targeting specific database partitions during processing, reducing unnecessary locks and query overhead.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Integrations**
  * Made User Type a required field for NinjaOne List Users by Type action&#x20;
  * Fixed an issue with link-based pagination that prevented workflows from properly retrieving and processing deeply nested results keys values across integrations.
* **Crate Marketplace**
  * Fixed bug where link to workflows would break if the workflow is used in multiple crates
  * Prevented crates attempting to sync to disabled or deleted orgs
* **Dashboard**
  * Added correct data sources for dashboard weekly view to allow for CSV download
* **Forms**
  * Fixed an issue where embedded forms displayed all options instead of applying configured option filters, ensuring consistent behavior between embedded and direct form links.
* **Permissions**
  * Fixed errors caused by invalid role IDs by enforcing validation for system and custom roles.

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* RoboRewsty MCP improvements

</details>
