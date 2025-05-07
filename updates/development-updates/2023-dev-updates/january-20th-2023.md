# January 20, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Added a “Time Saved” feature to workflows

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Replace backend for cloning and syncing to fix bugs and pave the way for Crate improvements
* Fix a bug where users are sometimes shown a blank screen with `check.state` as the only content on login
* Fixed a bug with dynamic options for HaloPSA
* Fixed a bug with SentinelOne
* Added a redirect to an error page on login failure
* Datto RMM integration was not displaying a helpful error message when not properly configured. The error message is now more descriptive.
* Fixed a couple small bugs with bulk editing workflow tags, like the colors not displaying properly
* Database maintenance to fix auto-vacuum function and TaskLog records missing a foreign key to WorkflowExecution records
* Met with NinjaRMM to get sliding authentication tokens for our client\_id. Ninja users no longer have to re-authenticate every month!

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Fix a bug with ConnectWise Manage webhooks where ConnecWise will close the the connection before we’re able to read a large body resulting in an error seen on their side that could cause the hook to become disabled
* Add Rewst actions to List User Invites, List Users, List Forms
* Add a cron-job to periodically refresh Microsoft tokens so they don’t expire if they’re not used for an extended period of time
* Add Microsoft graph subscriptions as workflow triggers
* Small UX improvements for jinja trigger criteria
* Add the expected data type to workflow task fields

</details>

If you'd like to see these in action, review the latest[ Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2023-roc-open-mics/january-20th-2023-backend-re-architecture-episode-ii-attack-of-the-clones.md)
