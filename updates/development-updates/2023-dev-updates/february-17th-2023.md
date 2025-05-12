# February 17, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Throw error when an unreasonable value is entered for password length
* Allowed for POST to a workbook using the Graph API

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed password field in graph actions not passing actual value
* Bugfix: Can't update the name of any org var
* Bugfix: Missing transition arrows for shallow clones
* Bugfix: Problem creating org (via csp). (Or, at least we're now surfacing a descriptive error msg)
* Bugfix: Webhook secrets weren't working for sub-org trigger instances
* Upgraded and added additional postgres read-replicas to handle large clone-sync jobs

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Add timezone support for cron triggers
* Fix cloning items with circular references
* Microsoft graph subscription triggers
* SonicWall

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/roc-open-mics-north-america/2023-roc-open-mics/february-17th-2023-trigger-review-and-qa.md)
