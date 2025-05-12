# November 4, 2022 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Workflow completion listeners (workflows triggered on completion of another workflow)
* Add a maximize button for the task editor code view
* SSL support for AWS and Azure database connections in the database integration
* Added a Rewst action to list installed integrations for an organization
* Added Kaseya BMS actions

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fix: Add newer features to export/import so they are included in export data
* Improved formatting for errors coming from our api that might be displayed in result details
* Fix a bug where CSP is preventing users from sending impersonated emails
* Refactored permission system to use database notifications to sync users and orgs
* Improved performance for frontend and the api resulting in improvements in page load time
* Fixed a bug with SQL Server database integration preventing the list\_all\_tables action from succeeding
* Enhanced logging for Kaseya VSA to capture additional information for an un-resolved bug
* Fixed immybot integrations page returning a 500 error
* Added support for an edge agent for the permission system
* Added a /healthz endpoint to the engine to improve health checking
* Prevent an empty string from being entered when selecting “In” or “Not In” for trigger criteria before entering a value
* Fix ExchangeOnline cmdlet proxy errors when converting an email to a shared mailbox

</details>

<details>

<summary><strong>In review and testing</strong></summary>

* SonicWall NSM integration
* Add role attribute to the rewst Create User Invite action
* JumpCloud integration
* Fix CW Control not running powershell scripts correctly
* Fix dynamic dropdowns loading and lifecycle
* Allow select form dropdowns to have the option of user supplied input

</details>

<details>

<summary><strong>In Development</strong></summary>

* Automatically retry http requests on connection errors
* Add periodic token refresh so in the case of an integration not being used for a long time, the refresh token doesn’t expire
* Investigate a bug report regarding Integration Overrides being removed when a user re-authenticates MS Graph
* Add a delete button to the org table in settings to allow users to delete an org
* Allow filtering the workflow list by tags
* Investigate a bug where Triggers aren’t cloning in some cases
* Investigate a bug where cloning a Workflow is blocked with a message indicated it’s linked, but the UI is not showing it as linked

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/roc-open-mics-north-america/2022-roc-open-mics/november-4th-2022-your-workflows-are-listening.md)
