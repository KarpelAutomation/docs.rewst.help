# February 6, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Workflows**
  * Re-enabled safety check that stops the system from creating triggers for organizations that are disabled or deleted.
* **General**
  * Piloting - Guided Onboarding

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Prevented saving triggers with empty or whitespace-only names when using the Test Trigger Criteria dialog.
* **App Builder**
  * Fixed DomainAppSession cookies to expire correctly, reducing the risk of unauthorized access from stale sessions.
  * Removed AppSession and cookie tokens from App Builder page props to prevent exposing JWTs in client-side HTML.
* **Integrations**
  * Ensured headers and body parameters were persisted when reopening the Microsoft Graph Batch Beta Graph API Request action.
* **General**
  * Enhanced performance metric observability.
  * Added metric tracking for RoboRewsty.
  * Updated app dependencies.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Webhook trigger rate limiting

</details>
