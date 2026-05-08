# May 8, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * [Action version history](https://docs.rewst.help/documentation/automations/actions-in-rewst#action-version-updates) - When an integration action used in your workflows has been updated or has a breaking change, Rewst will now alert you directly in the platform so you can take action before anything breaks.
* **Onboarding**
  * [Client Import to Rewst organization](../../../documentation/settings/organizations.md) - Added the ability to import customer organizations directly into Rewst via CSV import or PSA import (Autotask PSA, HaloPSA, or ConnectWise PSA)
* **Workflow Builder**
  * Added Follow First transition tooltips and right-click navigation to edit transition order directly from the workflow canvas.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Integrations**
  * Improved Addigy API requests to handle pagination correctly across v1 and v2 endpoints.
  * Restored Addigy mapping refreshes so policy and organization options can be selected after reinstalling the integration.
  * Added Australia and Europe environment support to the 1Stream integration for region-specific API connectivity.
  * Improved CW ASIO access token errors to show the API response details when credential exchange fails.
  * Fixed Ubiquiti org mapping to display nested site names correctly and save the mapped site IDs.
* **Workflow Builder**
  * Improved workflow save validation to prevent false version-conflict errors caused by browser and server clock drift.
  * Restored Jinja viewing and editing for action inputs in the new workflow canvas.
  * Fixed workflow version diffing to prevent notes from appearing as changed when no actual workflow changes were made.
  * Stabilized Integration Overrides in the new canvas so affected actions remain visible and settings render correctly.
* **RoboRewsty**
  * Improved RoboRewsty conversation handling to prevent token-limit crashes and retry transient model errors automatically.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Check back soon!

</details>
