# June 20, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* App Builder
  * Added new page presets and improved default app themes
  * Added new Size and Spacing settings
* Crate Marketplace
  * Improved the search and filtering in the Crate Marketplace &#x20;
* Dashboard
  * Introduced the workflow executions dashboard widget
* Forms
  * Added more custom operators to options filters, enabling advanced filtering
* Workflows
  * Added the ability to filter workflows by a new “Listener” attribute

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* App Builder
  * Fixed an issue where the LoginContainer component map element was incorrect
  * Ensured the cookies provider is loaded properly and updated generated files
  * Fixed evaluation conditions with white space handling
  * Updated menu context to correctly use the app theme
* Integrations
  * Added headers to the Microsoft CSP Generic Request so that users can send an “Accept” header for the Request Headers
  * Improved org mapping for TD Synnex StreamOne Ion
  * Resolved duplicate Twilio “Create Message” action
  * Fixed Microsoft Bundle tenant ID population issues affecting crate workflows
* Settings
  * Filters can now be applied to organizations by tags
  * Fixed an issue with filtering users by roles
* Workflows
  * Reduced workflow initiation failures to near-zero by removing internal GraphAPI dependencies for time-sensitive executions and switching to direct DB queries

- Workflow Builder
  * Resolved visual error with action parameters

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* Check back next week!

</details>
