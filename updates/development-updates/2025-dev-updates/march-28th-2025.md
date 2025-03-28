# March 28, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **App Builder**
  * **New HTML Container Size Settings**\
    You can now customize the size of HTML containers within App Builder.
  * **New Theme and Style Redesign**\
    Updated with a fresh theme and improved styling to enhance the look and usability of pages.
* **Integrations**
  * **Transforms: Any/All**\
    Introduced the ability to evaluate multiple conditions in transforms using “any” or “all.”
  * **Transforms: Map to Attribute**\
    A new transform lets you map one set of data attributes to another.
  * **Transforms: Select Attribute**\
    Easily select specific attributes from incoming data in your transforms.
  * **BitDefender New Companies Endpoint for Organization Mapping**\
    Integrations now leverage the latest companies endpoint for improved org mapping.
  * **Shortcut Integration**\
    Base functionality and required actions for the Shortcut integration have been added.
  * **Traceless Integration**\
    Base functionality and required actions have been implemented for the new Traceless integration.
* **Engine**
  * **Fail API and Engine When Proper Keys Aren't Set**\
    Strengthened encryption requirements in production.
  * **OAuth Exception Handling**\
    Improved error handling for OAuth flows to prevent unexpected overrides and provide clearer failure messages.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **App Builder**
  * **Automatic Creation of Component Instances on Publish**\
    As a prerequisite to synced custom components, when you publish a page, the App Builder automatically creates a corresponding ComponentInstance row, making page management simpler.
  * **Skipping Page Variable Auth Checks if None Found**\
    Prevents potential errors when no page variables require authentication.
  * **Iframe Rendering**\
    Fixed an issue that prevented pages built in App Builder from working correctly inside iframes.
  * **Light Mode Fixes in Page Builder**\
    Resolved styling issues in the Page Builder’s light mode.
* **Forms**
  * Addressed an issue where dropdown and multi-select fields could be overridden by manually inserted query parameters.
* **Integrations**
  * **Google Workspace Admin SDK Pagination**\
    Correctly paginates large results for more accurate data retrieval.
  * **Remove Old Feature Flags**&#x20;
  * **Stripe Integration Null Checks**\
    Resolves issues with missing data when configuring Stripe actions.
  * **Microsoft CSP Consent Check**\
    Accounts for both legacy and modern bundle installations to ensure correct consent checks.
  * **Transforms: Split Text with Default Values**\
    Fixed an error that occurred when using default values while splitting text.
* **Settings**
  * **Feature Preview Setting**\
    Updated checks to ensure correct toggling and visibility of preview features.
* **Workflow Builder**
  * **Error Handling for Importing Bundles**\
    Provides better clarity and stability when importing workflows.
* **Dependencies**
  * **Next.js Upgrade**\
    Updated the Next.js framework to enhance performance and resolve compatibility issues.

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* Generic GraphQL Request Action to the Rewst Integration
* Improved workflow page and workflow results page search and filter
* Workflow executions dashboard widget
* PowerShell Interpreter

</details>
