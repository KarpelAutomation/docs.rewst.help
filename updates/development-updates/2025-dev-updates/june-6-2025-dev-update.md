# June 6, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Improved workflow page and workflow results page search and filter
* OpenText SecureCloud integration
* Added Base64 encode/decode Transforms actions, improving flexibility in workflow handling.
* App Builder&#x20;
  * Supports workflows as dynamic options in dropdown components.
  * Page Builder now allows adjusting size settings for Container components.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Improved reliability of initial webhook trigger setup in Crates by not pre-populating secret keys.
* Resolved a PowerShell interpreter issue causing errors during resource group refreshes.
* Fixed an issue where default values weren't correctly applied to nested parameters, causing unexpected behavior in workflows.
* Adjusted the Webhook trigger response to properly render PowerShell output.
* Corrected missing permission scopes in HubSpot integration, resolving authorization errors.
* Fixed Datto Autotask Create Ticket V2 action handling to provide accurate error responses.
* Resolved a variable reference issue in Hubspot integration Create Deal action.
* Updated Webroot integration logic to prevent duplicate triggers.

- Reduced action pane autosave delay in Workflow Builder to prevent data loss when closing side panels.
- App Builder
  * Fixed an issue preventing pasting into the CSS editor within App Builder.
  * Corrected an issue causing CSS editor styles not to apply correctly to iframe content.
  * Addressed toast notification errors related to Jinja template issues in App Builder.
  * Modified App Builder cookies to handle browsers blocking third-party cookies by default, improving login reliability.
- Updated the workflow partitioning schedule from weekly to daily, ensuring improved performance and reliability.
- Ensured workflow list page content displays correctly on smaller desktop screens.
- Improved cleanup of App Builder restricted domains.

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* Generic GraphQL Request Action to the Rewst Integration

- Workflow executions dashboard widget
- Marketplace searchability improvements

</details>
