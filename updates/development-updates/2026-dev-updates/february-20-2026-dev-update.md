# February 20, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * Senteon - [Documentation](../../../documentation/configuration/integrations/integration-guides/senteon-integration.md)
  * Moved the Ingram Micro Cloud Marketplace integration from the AI category to CSP Licensing to improve discoverability and correct categorization on the integrations page.
  * Enhanced CW ASIO scope management by adding support for custom scopes while preserving default behavior to prevent authentication failures when new scopes are introduced.
* **Onboarding**
  * Updated onboarding button labels and supporting copy for improved clarity, including revised resume, setup, and completion CTAs and expanded organization variable messaging.
* **General**
  * [Webhook trigger rate limiting](https://docs.rewst.help/security/webhook-trigger-rate-limits)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Blocked exposure of secret organization variables by preventing user-supplied Jinja in workflow inputs and outputs from unredacting sensitive values.
  * Added exception handling and telemetry for unexpected publish failures so task publishing errors were logged with workflow and task context instead of failing silently.
  * Fixed workflow version history to properly retain and restore previous data alias values when only the alias value is changed and saved.
  * Ensured background workflow actions continue processing even if one post-save step fails, improving overall workflow reliability.
* **Forms**
  * Restored organization list loading for Forms role users when using the Rewst integration in form dropdowns.
* **Crate Marketplace**
  * Improved marketplace crate description parsing to prevent blank descriptions and ensure the correct summary displays across legacy and new templates.
* **Integrations**
  * Fixed an issue with the IT Glue integration where applying filters caused errors and prevented clients from refreshing or loading correctly.
  * Corrected Microsoft CSP customer lookups so List/Get actions returned full customer details even when customers were not mapped to a Rewst organization.
  * Extended Addigy device search pagination so workflows could return more than 500 devices when larger inventories were present.
* **Onboarding**
  * Updated Microsoft GDAP Assistant crate visibility to always display when CSP is selected and enable only after required prerequisites are completed, with real-time progress indicators and checklist tracking.
* **App Builder**
  * Fixed an issue preventing App Builder apps from fully cloning or importing, ensuring all pages and workflows transfer successfully within the same tenant and across environments.
* **General**
  * Fixed an issue where restoring an organization did not properly re-associate it with its parent and could result in unexpected logout behavior.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* RoboRewsty AI Workflow Builder beta

</details>
