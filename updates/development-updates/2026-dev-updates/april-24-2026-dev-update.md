# May 1, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Workflow Builder**
  * The new [Workflow Builder](../../../documentation/automations/workflows/new-workflow-builder.md) is now enabled for all customers. A redesigned experience bringing a more intuitive way to build and manage your workflows.
  * We added a Compact Auto Layout toggle that reduces node spacing, making it easier to view and manage larger workflows.
  * We added the ability to navigate workflows using the Data Aliases tab, making it quicker to find and reference your data aliases while building.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Integrations**
  * An issue has been fixed in the Liongard integration where the Create User action was missing the Environment and Environment Group fields required when assigning Manager or Reader roles.
  * We fixed an issue in the Lexful integration where refresh option dropdowns only returned the first \~40 values due to a pagination bug.
  * The `platform.agent.read` scope has been added to the default permission set for the ASIO integration.
* **Crates**
  * The Crate details page now correctly surfaces whether a primary workflow is synced or unsynced, giving better visibility into the state of your installed Crates.
* **Onboarding**
  * Child level Crate executions now count towards Crate execution tracking, giving a more accurate picture of overall Crate usage.
* **Engine**
  * We fixed an issue where integration overrides were not accepting Jinja expressions when using Name Search mode.
  * An issue where `sites.id` was not being typed as a Universally Unique Identifier during site existence checks, which could cause unexpected errors, was resolved.
  * We improved the efficiency of workflow dehydration by reusing a singleton S3 client rather than creating a new one each time.
  * We added a `tenantFilter` query parameter to the CIPP List MFA Users action, allowing results to be filtered by tenant.
  * A policy mapping error in the Addigy integration that was causing actions to fail has been resolved.
* **Workflow Builder**
  * We removed an unused patch field from workflow history queries, reducing unnecessary data being fetched in the background.
* **RoboRewsty**
  * We removed distracting hover animations in the RoboRewsty chat window that were causing a jarring jump effect when moving the mouse over conversation elements.
  * An issue where RoboRewsty was setting workflow timeouts too low, which could cause workflows to terminate before completing, has been fixed.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* RoboRewsty - editing of scripts and templates
* Action Version History

</details>
