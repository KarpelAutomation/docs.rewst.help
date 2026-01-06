# December 19, 2025- Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Check back next week!

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Integrations**
  * Improved Datto Autotask PSA integration error messaging and clearly require the API Tracking Identifier to prevent authentication failures.
  * Fixed Pax8 OAuth token refresh failures by clearing client ID and secret after successful OAuth authorization to prevent conflicting credential modes.
  * Investigated and resolved an unintended spike in Halo PSA “New ticket record” trigger executions in Prod-UK to prevent excessive and duplicate workflow activations.
* **Workflows**
  * Fixed boolean workflow task parameter sizing to ensure full-width alignment and consistent layout across related input fields.
  * Expanded S3 dehydration to all serialized fields with a database fallback to improve durability and reduce Postgres storage.
* **RoboRewsty**
  * Fixed RoboRewsty follow-up conversation failures so users can continue chats after the first message without errors.
* **General**
  * Added adaptive rate limiting and startup jitter to database notification reprocessing to prevent queue flooding and cascading pod failures during engine restarts.
  * Configured Redis task TTL via an environment variable to control task result key retention and reduce memory growth.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Connectwise Asio integration

</details>
