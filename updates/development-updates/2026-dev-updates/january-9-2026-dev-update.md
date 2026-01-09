# January 9, 2026- Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * Added a generic Huntress API request action to allow calling endpoints not covered by existing integration actions.
  * Implemented organization mappings for the Cloudmore integration to enable proper organization configuration.
  * Added support for the new Datto Autotask Australia 3 (ww29) data center option so customers can select the correct endpoint.
  * Improved ConnectWise PSA opportunity creation to safely handle empty or optional nested fields and prevent API errors during workflow execution.
  * Updated the SQL Database integration to support standard multi-tenancy, secure encrypted credentials, proper transaction handling, and modern async database drivers.
* **Database**
  * Implemented locking and caching improvements to reduce Postgres lock durations and improve workflow and dashboard throughput.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Integrations**
  * Fixed action param type casting for nested objects within arrays to ensure values are converted according to their defined schema.
  * Fixed the HaloPSA “Add or Update Assets” action to include support for asset fields, aligning it with API capabilities.
  * Fixed Microsoft CSP customer dynamic dropdown options to prevent errors when loading mapped customers in forms.
  * Fixed Arrowsphere order creation by cleaning up empty nested product objects and correcting YAML schema types to prevent API errors and documentation failures.
  * Fixed the SuperOps “New Ticket Record” trigger to include ticket context data so workflows can reference and act on the triggering ticket.
  * Fixed the Bitdefender “List Endpoint” action to return endpoints for the specified client organization when a parentId is provided.
  * Fixed the GraphQL updatePage mutation to include the site reference during permission checks, allowing existing pages to be updated successfully.
  * Preserved certificate newlines in the SQL integration to ensure valid PEM formatting.
  * Fixed Kaseya BMS API retries by capping Retry-After delays to prevent long-running sleep loops and unresponsive workflows.
* **RoboRewsty**
  * Fixed RoboRewsty message looping and added request resume functionality to improve chat persistence and reconnection across refreshes and tab changes.
  * Improved RoboRewsty chat bubble styling in light mode to increase contrast, readability, and overall visual clarity.
  * Fixed RoboRewsty chat scrolling so mouse wheel actions no longer scroll the background page.
* **Triggers**
  * Fixed workflow triggers so disabled organizations are no longer selected or executed when using “All current and future orgs."
  * Fixed the Trigger Version Control dialog so trigger version history opens correctly without errors.
* **Jinja**
  * Fixed inconsistent Jinja evaluation for action transition data aliases so results match regardless of whether aliases are set on the action or a separate noop.
* **Forms**
  * Fixed multi-select form default behavior so previous selections are cleared when dynamic options return no default values.
* **General**
  * Updated Statsig dynamic config retrieval to run asynchronously in an executor, preventing event loop blocking and improving performance.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Connectwise Asio integration

</details>
