# January 13, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Discord integration
* Workflow tags
* Add a core action to query DNS
* Add a polling sensor for HaloPSA to allow users to trigger workflows on ticket events
* Added a jinja filter to wrap long text

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed an issue with duo pagination
* Removed automatic redirects on embedded forms to fix an issue with permissions
* Fixed a bug with fields marked as secrets in the workflow editor preventing submission of those values
* Increased default max workflow timeout to 30 days
* Add an optional custom timeout to SQL integration requests
* Fixed a bug where request headers that were integers were not being stringified
* Added code to automatically retry and attempt to reconcile proxy errors for Microsoft EXO for cmdlet proxy issues
* Fixed a bug with org mapping in Duo integration
* Fixed a bug where the workflow editor would sometimes show the “You have unsaved changes” message when there were no changes
* Added handling to the Database integration for cases where a cursor was not returned or the cursor results were empty
* Fixed a problem with “With Items” and sub-workflows sometimes causing high database load
* Bugfix for Publish Results As not working as expected
* Improved error messages for Microsoft Graph errors
* Fixed a bug where Form conditionals pointing to multi-select fields break on re-save

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Crowdstrike falcon integration - code complete and reviewed, waiting on actions
* Sonicwall NSM integration - code complete and reviewed, waiting on sonicwall to add API keys to their UI
* Marketplace improvements - code complete, waiting on additional review and testing
* Add Rewst actions to List User Invites, List Users, List Forms, and Delete User
* Replace backend for cloning and syncing to fix bugs and pave the way for Crate
* Fix a bug where users are sometimes shown a blank screen with `check.state` as the only content on login

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2023-roc-open-mics/january-13th-2023-form-management-asset-management-and-tag-management.md)
