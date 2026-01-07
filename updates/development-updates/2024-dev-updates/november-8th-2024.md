# November 8, 2024 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Multiplayer workflows have been fully released
* Added a root level USER namespace to Jinja
* Added an action column to Datatable components in App Builder that allows for opening a dialog and passing the
* Added a confirmation dialog when deleting Apps in App Builder

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* UI enhancements for Microsoft Cloud Bundle
* Fixed liongard pagination issues related to filtering
* Fixed bugs with syncing the crate marketplace across regions
* Added integration test generator to automatically setup tests for integrations to catch more bugs
* Improved error logging for workflow execution kick off
* Fixed the Get Ticket action for Freshdesk
* Simplified timezone naming anywhere there is a dropdown to select a timezone
* Fixed a problem where updating a sub-workflow was not updating the parent workflow causing bugs with sub-workflow inputs
* Fixed ORG.INTEGRATIONS jinja to only return integrations for the ORG in scope and not it's child orgs
* Fixed the Generic API request action for custom integrations v2
* Added more scopes to Google Workspace Admin actions
* Fixed a bug with Webroot integration access token caching
* Hide the Authorize button on custom integration v2 integrations for authorization schemas that it's not relevant for
* Fixed a bug with auth checks for embedded forms causing users to receive a 503 row context to be used in jinja in that dialog
* Replaced calls from our engine to our graph-api to retrieve integration configurations with direct database calls to improve performance and eliminate network connection level bugs
* Increased max page size and max pages for Bit Defender integration
* Fixed a bug with MS Graph Teams Sensors where they were unable to be used to create multiple triggers
* Fixed a bug related to org mapping causing Workflow Initialization Failures
* Fixed a bug with Webroot causing Client AttributeError when requesting the access\_token
* Fixed a bug where updating a cron trigger would sometimes not apply the change to all trigger instances

</details>

<details>

<summary><strong>Deployed behind feature flags awaiting QA review and feedback</strong></summary>

* Quickbooks integration (Stff review)
* Xero integration (Staff review)
* BambooHR integration (Staff review)
* Nodeware integration (Staff review)
* Bitdefender integration (Staff review)
* Github integration (Staff Review)
* Granular forms permissions (QA review)
* IT Portal integration (QA review)
* Cove integration (QA review)
* App Builder page export/import functionality (Staff review)

</details>

<details>

<summary><strong>In code review and development</strong></summary>

* Full App export/import (Code review)
* Crushbank integration (Code review)
* Nodeware integration (Code review)
* SQL Database integration refactor (Code review)
* ConnectSecure v4 (In development)
* Pax8 Refactor (In development)

</details>
