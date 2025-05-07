# February 3, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Improved/refactored cloning - shallow cloning
* Integrated with Orbit

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed CW Automate "New Running Script"
* Fixed clone un-linking
* Fixed time Interval sensor doesn't run for all activated orgs
* Fixed cloning bug where workflow timeout was validating against the wrong task timeouts causing some clone requests to hang
* Fixed CloudFront Forbidden error when using ConnectWise Manage generic API calls
* Conditionally show “Run For” section of Triggers if the trigger is able to be run for other orgs
* Prevent sending markdown fields on form submission

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Azure integration
* Add timezone support for cron triggers
* Add ability to favorite actions
* Fix cloning items with circular references
* Allow webhooks to receive workflow output
* Add Rewst Actions for User Invites, Users, and Forms
* Allow users to “favorite” actions
* Microsoft graph subscription triggers
* Add a action to check if an org has MS CSP consent

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2023-roc-open-mics/february-3rd-2023-ai-generated-diagnostics.md)
