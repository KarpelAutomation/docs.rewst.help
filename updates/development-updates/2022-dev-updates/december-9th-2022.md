# December 9, 2022 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Allow workflow results to be filtered by workflow name
* Added an as\_timezone jinja function to convert a datetime to a specific timezone
* Added a “List Forms” rewst action

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed a problem where ConnectWise Control integration was not running scripts properly
* Fixed a bug in the workflow editor where sub-workflow selection was showing all workflows the user had access to instead of only those for the current selected org
* Fixed a bug where InsufficientPermissionsException was thrown when using MSFT EXO with CSP enabled to execute the cmdlet New-TransportRule
* Fixed a bug that was preventing Org Mappings from being removed
* Validate required fields for trigger inputs

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Workflow list multi-select to be able to delete multiple workflows at once and allow for future bulk actions
* Workflow tagging to be able to group workflows and search by tag in the workflow list
* Automatic http request retries with back-off
* Allow org admins to be able to enable/disable managed orgs
* Add offset-based pagination to hubspot integration
* Automatically mark orgs created via CSP as enabled
* Improve cron trigger performance
* Add configurable cascading behavior to org variables
* Optimize form conditions and add required action to conditions
* Shareable jinja live editor code examples
* Add jinja evaluations to trigger criteria

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2022-roc-open-mics/december-9th-2022-jinja-expansion.-plus-mendy-and-jared.md)
