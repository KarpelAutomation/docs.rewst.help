# July 7, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* No new features this week

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed a bug that was preventing the saving of custom integrations
* Created a v2 of the core generate password action so that passwords can be properly redacted from results
* Added the ability to send NULL parameters from EXO commands
* Fixed a problem with Mailgun integration where the send\_mail action was not including the api\_url configuration parameter
* Fixed a problem with Microsoft Azure Key Vault where we were sending the base\_url twice resulting in errors
* Added input variables to the new data alias list feature on the workflow builder
* Improved the search feature for actions on the workflow builder
* Change the verbiage from User Invites to Authorized Users to more accurately reflect the functionality of that feature
* Allow crates and integrations to be linked without including an organization id in the path so they can be easily shared
* Update sonicwall nsm integration base url to reflect changes made on their side
* Fix a bug causing very large crates like New User Onboard appear as though they were getting stuck durring the installation process
* Fixed a bug in the Acronis integration where generic api requests were not respecting pagination

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Read only role
* Add escaping for database integration passwords
* Crate marketplace filter on tags
* Fix for tag colors in the autocomplete component
* Workflow builder notes feature and task multi-select

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2023-roc-open-mics/july-7th-2023-fowl-play-with-openai-and-azure-openai.md)
