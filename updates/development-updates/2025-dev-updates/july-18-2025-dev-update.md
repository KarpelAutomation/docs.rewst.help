# July 18, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Crates**
  * Improved reliability of automatic crate sync process by removing manual sync of forms
* **Integrations**
  * Added support for custom HTML branding in core confirmation messages.
  * NinjaOne integration now includes new actions for ticketing and documentation.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **App Builder**
  * Fixed issue by preventing unnecessary conversion of HTML code into React elements.
  * Ensured reserved keyword "microsoft" is correctly validated and disallowed in Custom Domains.

- **Dashboard**
  * Fixed inconsistency between chart and table task counts.
- **Engine**
  * Improved workflow success and failure internal visibility for improved planning
  * Enhanced storage efficiency and performance by implementing Msgpack+Zlib compression for workflow execution contexts.
  * Improved Msgpack encoding handling to align with existing JSON handling standards.
  * Resolved handling of null characters within JSONB data.
  * Fixed bigint-to-number conversion after Msgpack unpacking to prevent GraphQL issues.
- **Integrations**
  * Fixed Microsoft Graph integration issue preventing subscription setups for groups and user changes.
- **Workflows**
  * Removed unnecessary search text filter from sub-workflow views.
  * Eliminated legacy `process_new_workflow` feature flag.
- **Crates**
  * Improved Crate Marketplace by hiding the "uncategorized" category when empty.
  * Updated crate replication logic to bypass feature flagging tool for API users.

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* DropSuite integration
* BVoIP integration
* Leader Integration

</details>
