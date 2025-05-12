# October 28, 2022 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Role based permission system
* Kaseya BMS integration
* Added jinja filters unidecode and to\_ascii

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixes for running scripts through nable
* Fix for ninja rmm to update refresh tokens
* Fixed triggers for Datto PSA
* Fixed a problem where setting the workflow timeout shorter than a task timeout prevents the workflow from being saved
* Filter out orgs marked as Deleted from the org matcher for Pax8
* Fixed a problem with forms where hidden fields were not properly hiding in some cases
* Increased the max number of results that can be returned from MS Graph actions
* Fixed a problem connecting to MS SQL server with the database integration
* Integrations section of the dashboard was showing errors when optional fields were missing
* Fixed a problem with the generic http request action where it was sometimes returning Success when receiving non - 200 level responses

</details>

<details>

<summary><strong>In review and testing</strong></summary>

* SonicWall NSM integration
* Fix: Add newer features to export/import so they are included in export data
* Improved formatting for errors coming from our api that might be displayed in result details
* Fix: MS Exchange Online cmdlet proxy errors
* Eager load dynamic options on forms
* SSL support for database connections in the database integration
* Add a rewst action to list integrations for a give org

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/roc-open-mics-north-america/2022-roc-open-mics/october-28th-2022-immybot-and-user-offboarding.md)
