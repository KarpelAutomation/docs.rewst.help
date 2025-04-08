# January 6, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Added Duo Accounts API
* Added a generic API action for Hudu
* Added Jinja evaluations to trigger criteria
* Added sender options in addition to “noreply” for the core sendmail function
* Added the ability to re-order data aliases
* Allow form fields to be set by query parameters
* Added support for org variable inheritance when rendering jinja in form fields
* Allow Jinja Live Editor examples to be shared
* Added details\_html field to HaloPSA ticket actions
* Added a “View results for workflow” button to the workflow builder page
* Added a “datedelta” function to give better control over add/removing to/from dates and allowing you to pick “Second Friday in given month” - action added too

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Save users dark mode preference in the database instead of local storage
* Improved error messages for mailgun generic requests
* Added utf-8 encoding to headers sent Microsoft EXO to allow non-ascii characters
* Improved the performance of workflow results pruning to reduce database locks
* Added class\_name field to search\_resource actions for Hubspot
* Fixed a UI bug causing an unhandled exception when selecting a trigger criteria with the “in” operation for ConnectWise Manage Ticket Update
* Added a wrapper ensure all Jinja render errors are caught and handled
* Updated Microsoft EXO to use PrimarySmtpAddress instead of UserPrincipalName to allow actions to work for users who have a User Id that is different from the email address
* Added Queues as a reference option to Datto PSA to populate dynamic option fields
* Improved error messages for IngramMicro
* Increased the number of results per-page for IT Glue actions
* Fixed the “Copy Result” link when viewing the Results By Workflow page

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Workflow table tag filtering
* Crowdstrike falcon integration
* Sonicwall NSM integration
* Optimize form conditions and add required action to conditions
* Bugfix for Publish Results As not working as expected
* Add a core action to query DNS
* Replace backend for cloning and syncing to fix bugs and pave the way for Crate Marketplace improvements
* Add Rewst actions to List User Invites, List Users, List Forms, and Delete User
* Discord integration
* Fix a backend problem with “With Items” and sub-workflows causing excessive database locks
* Add a polling sensor for HaloPSA to allow users to trigger workflows on ticket events

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/roc-open-mics-north-america/2023-roc-open-mics/january-6th-2023-capacity-alert-your-inbox-is-at-99.md)
