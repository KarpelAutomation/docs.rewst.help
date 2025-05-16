# May 16, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Integrations
  * **HaloPSA:** Added a new option (`novalidate`) to skip validation in HaloPSA Ticket actions, enhancing flexibility during ticket management.
  * **ServiceNow:** Introduced a new trigger to monitor and react to new database records in ServiceNow, enabling more responsive automation.

- **Transforms - Date Formatting:** New transform available to easily format dates within workflows, simplifying date management across automations.

* **App Builder**
  * Navigation Update: The page navigator has been moved to the header and now includes an app selector, improving ease of navigation between pages and apps.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Integrations
  * **Sophos:** Corrected parameter handling for firewall upgrade actions, ensuring smooth automation.
  * **GoDaddy Integration:** Fixed pagination for domain listings, resolving issues where not all domains appeared correctly.
  * **Google Workspace Admin:** Improved integration setup instructions, clarifying installation steps.
  * **CW Control:** Restored compatibility for invoke command actions and sub-workflows, significantly improving operational reliability.
  * **Webroot:** Improved GSM integration handling by allowing optional GSM keys and setting default triggers.
  * **Datto PSA:** Resolved an issue by renaming a duplicate action for creating service tickets, preventing confusion during workflow creation.
* Dashboard
  * Removed unused integration errors section for a cleaner and more focused user experience.
* Form Builder
  * **Number Input Validation:** Fixed a validation bug with the number input component, ensuring accurate user input handling.
* Workflows
  * **Jinja Error Logs:** Addressed missing Jinja error logs, now accurately displayed on results pages, aiding in troubleshooting.
  * **Powershell Packs:** Resolved an issue affecting overrides in Powershell packs, enhancing stability and reliability.
  * **Powershell Processing:** Adjusted processing timeout settings for improved stability and session handling.
* Maintenance
  * Migrated end-to-end tests to GitHub Actions, streamlining development and deployment processes.
  * Updated regional settings for crate replication, enhancing consistency across environments.

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* Generic GraphQL Request Action to the Rewst Integration
* Improved workflow page and workflow results page search and filter
* Workflow executions dashboard widget
* TD Synnex StreamOne Ion

</details>
