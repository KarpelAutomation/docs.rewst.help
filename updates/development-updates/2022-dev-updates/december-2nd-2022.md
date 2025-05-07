# December 2, 2022 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* Vastly improved runtimes and performance of workflows
* Optimized workflow conductor size and reduced overall size by 90%
* Discovered and fixed places in the engine code where postgres sessions were not being closed automatically resulting in session build up
* Profiled and optimized the engine code to reduce the start time of large workflows from \~8 minutes to less than a second
* Hide secrets fields in task forms and don’t return the full data similar to what we do in integration settings screenshot
* Added a generic API action for Hubspot
* Added a button to open the jinja editor populated with the workflow context from the run screen
* Jumpcloud integration
* Improved the iframe style and experience a little bit for embedding forms by making it responsive to the width of the container
* Added the option to insert an SSL certificate for the database integration to support SSL for databases not hosted on Azure or AWS

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Fixed a bug where ConnectWise Manage pods weren’t properly refreshing with new data
* Added “role” attribute to Create User Invite action
* \[Internal] Optimized test running in our build tool by splitting test individual and not by class
* Fixed an edge case bug causing the workflow builder to crash if the field was expecting a string and an array was provided
* Fixed a bug with hubspot company webhooks where we weren’t properly pluralizing “company” to “companies”
* Fixed bug on the integration settings page for ingram micro cloud
* Removed Staff requirement for user invites
* \[internal] Added a cron job to sync our permission system
* Fixed a bug where HubSpot actions accepting custom\_properties would fail if no custom\_properties object was passed.
* Fixed a bug where eagerly loaded dynamic form options were always pulling from the original cache and not refreshing from source
* Added validation for trigger parameters. Previously fields were just marked as required but the system was allowing them to be submitted when empty resulting in bugs
* Improved error messages for expired NinjaRMM tokens

</details>

<details>

<summary><strong>In review and testing</strong></summary>

* Add jinja evaluation to trigger criteria for more flexible logic
* Add tags to workflows so users can group and search workflows by tag
* Crowdstrike integration
* Replace cloning backend with code used for import/export. This will fix bugs and current short-comings of the current cloning system
* Optimize form conditionals
* Implement automatic http request retries with backoff

</details>

<details>

<summary><strong>In Development</strong></summary>



</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2022-roc-open-mics/december-2nd-2022-using-custom-http-requests-haveibeenpwned-with-your-existing-integrations.md)
