# April 19, 2024 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Added company filters to Freshdesk
* Allow Menu and Accordion components on login pages for App Platform
* Okta integration
* Permission v2 (starting with App Platform)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed a bug where Hudu company actions were missing the http method
* Fixed a bug where workflow input defaults were not being used outside of workflow testing
* Refactored Freshdesk to use standard integration abstractions
* Fixed Action Options and Delete actions for Sophos
* Fixed ConnectWise PSA action labels
* Fixed a bug where Custom Input and Dropdowns were not working as expected in App Platform
* Fixed an issue where forms with a field without a name would cause the frontend to crash
* Redirect users to an error page if a user query fails in App Platform
* Fixed the HubSpot Authorize button on integration configuration page
* Fixed a bug causing Charts to crash in App Platform
* Fixed a problem with Null handling for ConnectWise Automate Batch Script Schedule action
* Disable the Authorize button for integrations if required fields are not filled out
* Re-ordered Component library and renamed some components in App Platform
* Made ConnectWise Automate Update EDF action easier to use
* Adjusted N-Able pagination limit
* Fixed an error seen when viewing org variables when an org id is not present on the variable (due to the org being deleted)
* Fixed a bug where switching org context while viewing a form would throw an error if the org being switched to doesn't have that form

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Google Workspace integration (In Review)
* ITPortal integration (In Review)
* Workflow version control (In Review)
* Visual workflow processing and debugging (In Review)

</details>
