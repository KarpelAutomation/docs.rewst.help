# June 2, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Added the is\_enabled flag to the rewst organization actions
* Allow Admin level users to delete users from the UI
* Added an option to Microsoft Graph generic api requests to allow users to specify whether to use delegated permissions or application permissions
* Added the ability to toggle Time Saved to show for all managed orgs or just the current org
* Added pagination to the organization variables page
* Updated Datto PSA integration config to allow users to specify company filters to limit the number of companies returned to Rewst
* Updated tags to select a random color when they're created instead of defaulting them to black

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed an authorization bug for embedded forms
* Fixed a bug where shallow copying a form removed workflow inputs
* Fixed an edge case bug causing the workflow builder to crash
* Fixed a bug where Exchange Online integration was reporting "not installed" when using CSP Delegation
* Sonicwall NSM: Change to new Tenant Selection Method
* Fixed sorting by Trigger count on the forms list page
* Fixed ConnectWise Manage PATCH method for generic api requests
* Fixed the labels for Acronis Registration Token actions
* Fixed the column sizes for Organization Variables list page

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Sophos integration
* Fix a bug when re-running sub-workflows to not re-run the parent workflow with the sub-workflow's inputs
* Add the ability to add tags to a workflow on the workflow creation modal
* Crate marketplace: add the ability to filter on tags
* Improvements to form condition evaluation

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2023-roc-open-mics/june-2nd-2023-new-beginnings-and-saving-time-with-rewst.md)
