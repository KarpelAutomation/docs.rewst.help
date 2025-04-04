# April 4, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **App Builder**
  * **Data Table Hidden Columns**\
    Added an option to pass data from hiden columns in data tables, providing greater control over which columns are visible.
  * **Element Name Settings**\
    You can now assign a node ID to element names, making it easier to track and manage page components in the builder.
* **Engine**
  * **Move Database Topics to RabbitMQ**\
    Improved the engine’s reliability and scalability by migrating database-related message topics to RabbitMQ.
  * **Integration Requests in RabbitMQ**\
    Continued the switch to RabbitMQ for handling engine integration requests, boosting performance and consistency.
* **Integrations**
  * **Microsoft EXO OData Parameters**\
    Added support for OData parameters `$select` `$count` and `$top`in Microsoft Exchange Online actions for more flexible mailbox queries.
  * **Datto PSA Appointments**\
    Introduced new actions to help manage appointments within Datto PSA.
  * **N-Central Actions**\
    Expanded the N-Central integration with additional remote monitoring and management actions.
  * **Link Header–Based Pagination**\
    API calls now support Link headers in Custom Integrations (v2) for easier navigation of large datasets.
  * **MS Graph Email Subscriptions**\
    You can subscribe to changes in Microsoft Graph emails for real-time workflow triggers.
  * **Transforms**
    * **Date-Time Comparisons** – Compare date/time values in your workflow transformations.
    * **Remove Duplicates** – Filter out duplicate items automatically within your data sets.
* **Workflow Builder**
  * **Automatically Restart Delayed Executions**\
    Any workflows that become delayed will attempt to restart automatically, helping keep important processes moving.&#x20;

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **App Builder**
  * **Light Mode Improvements**\
    Resolved lingering styling issues in Light Mode for a more polished look.
  * **Missing Custom Components Navigation**\
    Restored a missing link that provides quick access to your custom components.
  * **Open Nav Sidebar on Non-Editor Pages**\
    The sidebar now appears correctly on all pages, not just in the editor view.
* **Workflow Builder**
  * **Template Link Regression**\
    Resolved issues that broke certain workflow template links, restoring expected functionality.
* **Triggers**
  * **Unset Secret for Unpacked Crate Webhooks**\
    Prevent leftover secrets from interfering with newly unpacked crates.
  * **Webhook Trigger Testing**\
    Improved reliability and error handling when testing crate-related webhook triggers.
* **Support Access**
  * **Create/Delete Organization Buttons**\
    Support users granted access to your org can now correctly see and can use the create/delete organization buttons in the interface.
* **Integrations**
  * **Business Days Calculation**\
    Fixed a bug where calculating business days between two dates occasionally returned incorrect results.
  * **Empty Dictionary Returns**\
    Restored proper behavior for scenarios that should produce an empty dictionary when no valid data is found.
  * **Hudu Client Error Path**\
    Fixed a bug that caused some Hudu client errors to be mishandled.
  * **N-Central Output Schema Tabbing**\
    Corrected tabbing and formatting issues for N-Central output schemas.
* **Forms**
  * **Initialize Dropdown Free-Solo Off**\
    Dropdown fields now default to non–free-solo mode, avoiding unexpected custom entries.
  * **Debounced Option Retrieval (Feature-Flagged)**\
    For performance, dropdowns can now use a short delay (debounce) when retrieving options.
* **Engine**
  * **Settings Alignment**\
    Aligned new engine settings with infrastructure requirements to avoid deployment conflicts.
  * **Dockerfile & QA Scripts**\
    Corrected references in Dockerfiles and QA deployment scripts for more reliable package uploads.

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* Generic GraphQL Request Action to the Rewst Integration
* Improved workflow page and workflow results page search and filter
* Workflow executions dashboard widget
* PowerShell Interpreter

</details>
