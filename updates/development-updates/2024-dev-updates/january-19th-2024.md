# January 19, 2024 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* No new features this week. Tune into the next ROC call for a big update!

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed a bug with Hubspot webhooks where the `unroll_paginated` parameter was undefined
* Fixed a bug with clone syncing when clone\_overrides is set to NULL

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

**On QA**

* Fix a bug with refreshing OAuth2 tokens for custom integration
* Workflow normalization v1

**In Review**

* Improved Time Saved functionality with Task level Time Saved and persistence beyond workflow execution retention.
* Support for new Auvik region: US 5
* New jinja filters for `combine` to allow merging of dictionaries and `hash` to support numerous types of hashing
* Fixes for Fleixble Asset Fields in ITGlue
* Add an action for Liongard to get metric values
* Add support for application/json in oauth\_token\_request\_content\_type for Custom Integrations
* Fix a bug with Pax8 Cancel Subscription action
* Nerdio integration
* Support for custom error pages in App Platform, like 404

**In Development**

* Refactor Microsoft integration configuration setup to improve UX and offer a better permission system
* Custom integrations overhaul

</details>
