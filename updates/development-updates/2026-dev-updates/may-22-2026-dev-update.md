# May 22, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * Standardized Microsoft bundle logo sizing and appearance across light and dark mode in the integration setup wizard.
* **Onboarding**
  * Added guided customer import options during onboarding based on the customer’s PSA platform and configuration status.
  * Displayed detailed per-row CSV import errors in the bulk organization import modal so customers can quickly identify and fix failed imports.
  * Made CSP Licensing and Documentation integrations optional during onboarding so customers can skip these steps and continue setup at their own pace.
* **RoboRewsty**
  * Improved RoboRewsty task updates so workflows with multi-line Jinja templates can be created and edited successfully.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Crate Marketplace**
  * Secured crate unpacking argument access so customers can only retrieve unpacking configurations for organizations they manage.
* **Integrations**
  * Allowed customers to recreate deleted or hidden integrations without being blocked by invisible name conflicts.
* **Roborewsty**
  * Fixed RoboRewsty trigger creation and updates so users can successfully add and modify workflow triggers through AI assistance.
  * Fixed RoboRewsty HTTP request generation so headers and parameters are saved as proper key-value fields instead of broken character-indexed values.
* **Workflow Builder**
  * Fixed an issue in the new workflow canvas where editing object-list fields could unintentionally clear existing parameter values.
  * Secured workflow configuration access so users can only view input and output schemas for workflows in organizations they manage.
  * Restored shift+click multi-selection in the new Workflow Builder so users can select, move, and manage multiple nodes more precisely.
  * Fixed Action Options dropdowns in the new workflow builder so saved values display correctly immediately when opening action settings.
  * Improved workflow completion reliability by preventing intermittent database connection and Jinja timeout failures.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Updated Rewst login page

</details>
