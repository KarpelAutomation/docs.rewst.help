# December 16, 2022 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Added a generic http action for mailgun
* Added the option to have org variables cascade or not when running a workflow in the context of a managed organization. You can now choose if the parent organizations variables are available when running a workflow as a managed org.
* Allow org admins to enable or disable managed orgs
* Add a jinja filter to flatten lists
* Added automatic http request retries with backoff for all integrations
* Added the ability to multi-select to workflows

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Add offset based pagination to hubspot for client and client and contact list actions
* Added Remove-DistributionGroupMember to CMDLETS\_REQUIRING\_XANCHOR
* Refactored localReference dropdowns to be dynamically rendered
* Fixed a bug causing microsoft graph tokens to expire after 90 days
* Fixed a bug where calling COMPLETED\_WORKFLOW in jinja would cause cascading failure in the engine
* Fixed workflow execution locks caused by ConnectWise Manage triggers
* Refactored check\_cron\_triggers to only put a task on Kafka if the trigger should fire
* Automatically mark orgs created via microsoft CSP as enabled

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Workflow table tag filtering
* Save user preference for light/dark mode in the database
* Added Duo Accounts API
* Add jinja evaluations to trigger criteria
* Crowdstrike falcon integration
* Sonicwall NSM integration
* Optimize form conditions and add required action to conditions
* Harden internal infrastructure security

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/roc-open-mics-north-america/2022-roc-open-mics/december-16th-2022-tackle-tough-ticket-triage-troubles-and-flatten-funkily-formatted-lists.md)
