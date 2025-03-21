# March 21, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Optimized crate unpacking leading to lower unpack times

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed workflow canvas action panel resizing error
* Updated Slack integration OAuth callback to fix error on authorization
* Fixed form error on field name edit
* Fixed multiple jinjaRenders causing page lag on crate triggers with overrides
* Fixed not authorized error due to permissions on new rewst user creation
* Fixed custom domain error message showing before any domain is entered
* Updated Duo - Un-assign Phone from User action to use DELETE method
* Migrated App Builder components to use new component versions table for easier migrations on future updates
* Removed colon after context in workflow results
* Allowed user impersonation for Datto PSA Create Ticket v2 action
* Fixed failing Open AI Create Image action
* Fixed custom integration sytax error causing broken action
* Added error handling for Google Workspace Admin "No access token found in the response." error
* Implemented cross-region SSO authentication for LMS
* Fixed error where page workflows with Jinja output were triggering twice in certain circumstances
* Removed App Builder feature flag

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* Generic GraphQL Request Action to the Rewst Integration
* Support Access logs
* Workflow executions dashboard widget

</details>
