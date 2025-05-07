# August 4, 2023 - Dev Update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* New actions for parsing html and xml
* Crate marketplace tag filtering
* Added a shuffle filter to Jinja
* Workflow builder notes
* Workflow builder multi-select
* New data transform actions
* New Crate Details page

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Improved logging for task render failures
* Modified task timeouts to register as a failure
* Modified auto-populate conditions for forms to prevent possible collision with option generator default selection
* Updated forms markdown textfield render condition to reset after submit
* Updated the error messages for Authorized Users to remove "invite" terminology
* Updated the copyright date on Rewst email templates
* Improved toast messages by preventing text from getting cut off and adding a copy button
* Fix a bug where not all organization pickers are showing results recursively
* Upgrade frontend and graph-api from NodeJS 16 to 18
* Removed early return 200 response for datto psa webhooks

</details>

<details>

<summary><strong>In review, testing and development</strong></summary>

* Fix a bug with datto psa webhooks where a 200 response is always returned even when the request isn't valid
* Fix base url for acronis US-2 region
* Update crate cards on Crate Marketplace page and add new sort/filtering options
* Make workflow name, time savings, and original execution available in workflow listeners
* Fix a bug where deleting a user would not delete their associated user invite

</details>

If you'd like to see these in action, review the latest [Open Mic recording here](../../roc-open-mics/rewst-open-mics-north-america/2023-roc-open-mics/august-4th-2023-aharon-on-a-plane.md)
