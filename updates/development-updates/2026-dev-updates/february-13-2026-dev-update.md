# February 13, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Organizations**
  * Improved auto-generation of organization slugs to automatically handle reserved words and prevent creation errors.
* **General**
  * Improved authentication performance by adding a database index on `users.sub` to eliminate sequential scans on every request.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Fixed a canvas crash by resolving a missing `onDeleteTrigger` reference so Workflow Settings open correctly from the gear icon.
  * Fixed an issue where action boolean dropdown selections in workflows reverted to False, ensuring selected values (including None) persist correctly.
* **App Builder**
  * Fixed custom domain provisioning to properly handle Caddy API failures, ensuring errors are logged and retried instead of silently failing.
* **Forms**
  * Fixed an issue where fields removed from a Form Org Instance were incorrectly re-enabled after saving changes to the parent form.
  * Fixed number input fields so manually typed values correctly trigger Jinja-based form conditions without requiring arrow button interaction.
* **RoboRewsty**
  * Fixed document indexing of Rewst docs to improve RoboRewsty knowledge base.
* **General**
  * Fixed engine restart republishing to avoid looping on the same unacknowledged database notification, reducing noise and improving notification recovery.
  * Expanded custom event tracking for improved behavioral metrics.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* [Webhook trigger rate limiting](https://docs.rewst.help/security/webhook-trigger-rate-limits) - February 17th
* RoboRewsty AI Workflow Builder beta

</details>
