# November 18, 2022 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Added a dialog to display all workflows/triggers a form is used with as well as the form URLs
* Added a button to refresh Microsoft CSP customer list
* Added dynamic options for form fields that accept Rewst organizations or users
* Added `Get Date` action with timezone options (Transforms pack)
* Added action to get CW Automate script execution history
* \[Internal] Added staff only button to delete organizations
* \[Internal] Added staff only button to delete users

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed bug where workflow generated option fields would get stuck in a loading state
* Updated Microsoft EXO actions to retry with alternate `X-AnchorMailbox` headers in the event of a failure when running `Set-[...]` or `Add-MailboxPermission` cmdlets
* Fixed bug where empty `With Items` tasks could cause workflows to hang indefinitely
* Include integration icon link with public API responses
* Improvements to loading and lifecycle for dynamic dropdowns. (performance/cleanup)
* Fixed table sorting on the org variables page in the UI
* Fixed missing data supplied to Kaseya BMS PATCH requests
* Made form and webhook URLs sorted and searchable
* Utilize round-robin messaging architecture for internal event publishing (performance/scalability)
* Increase rows per page options for tables
* Changed the org picker sorting to be case insensitive
* \[Internal] Improve incoming API request logging

</details>

<details>

<summary><strong>In review and testing</strong></summary>

* SonicWall NSM integration
* Fix CW Manage pods not refreshing
* Add generic API request for HubSpot
* Crowdstrike Falcon integration
* JumpCloud integration
* Fix CW Control not running powershell scripts correctly
* Add role attribute to the Rewst Create User Invite action
* Hide secrets in workflow parameters
* Automatically retry HTTP requests on connection errors during actions

</details>

<details>

<summary><strong>In Development</strong></summary>

* Update Integration Overrides to work with Export/Import & Cloning
* Overhauls to the Cloning process, including the cloning of triggers
* Add periodic token refresh so in the case of an integration not being used for a long time, the refresh token doesn’t expire
* Investigate a bug report regarding Integration Overrides being removed when a user re-authenticates MS Graph
* Allow filtering the workflow list by tags
* Investigate a bug where cloning a Workflow is blocked with a message indicated it’s linked, but the UI is not showing it as linked
* Optimize Jinja conditions for forms
* Improvements to cron trigger performance

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2022-roc-open-mics/november-18th-2022-jinja-conditions-in-templates-scripts.md)
