# November 17, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Added new OpenAI models to the Create Chate Completion action
* Added a Create Phone action for Duo
* Added a link to the form builder from the trigger drawer in the workflow builder when a form is selected as the trigger
* Robo Rewsty workflow notes

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Updated installation instructions for Sonicwall integration
* Allow microsoft graph subscription triggers to be run for sub-orgs
* Added scopes for microsoft graph to allow for DelegatedAdminRelationship.ReadWrite.All and Enable-Mailbox
* Fixed a bug with Datto RMM was missing action contexts
* Ensure http requests respect the task timeout setting
* Removed invalid fields from Liongard actions
* Fixed a client side error with workflow listeners causing the page to crash
* Fixed a bug where the time saved was allowing negative values
* Return the description field when listing forms from the Rewst list forms action
* Fixed a bug where users could accidentally resize the right hand column in the workflow builder to zero and not be able to get it back
* Fixed a bug causing the form builder to crash if there was a dynamic field pointed at a deleted workflow
* Fixed a bug that was preventing Forms only users from viewing pods
* Fixed a bug where ConnectWise PSA Sales Activity Status was returning Types instead of Statuses

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* More App Platform features
* Improvements to the Jinja Live Editor
* Fixes for Ninja RMM token refreshing and generic action

</details>
