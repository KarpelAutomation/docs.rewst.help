# December 5, 2025- Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **RoboRewsty**
  * Improved dark mode theming.
  * Implemented Anthropic’s context-management beta features, adding prompt-caching headers and clear\_tool\_uses support to reduce token usage, streamline Claude API context handling, and maintain full backward compatibility.
* **Integrations**
  * Added clear error messages for Google Workspace Admin actions when delegated admin is selected

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Fix bug that disabled resizing of jinja editor window.
  * Corrected an issue where enabling or disabling triggers from the Workflows table did not save changes to cloned workflows or create version-history entries, ensuring trigger state updates are now stored and tracked consistently.
* **Integrations**
  * Fixed a misconfigured ConnectWise PSA `delete_contact` endpoint that incorrectly treated `transferContactId` as a path parameter, causing API calls to fail.
  * Separated timeout errors from Rewst action timeouts by logging them as integration-level connection failures and introducing shorter connect-timeout settings to avoid misclassification and long hangs.
  * Resolved an issue where Partner ID was not being transmitted in Sophos API requests, causing partner-level endpoints to fail even when the Partner ID flag or header was set.
  * Fixed an issue where reinstalling the Microsoft Bundle continued returning data from a previously connected tenant due to cached authorization, ensuring tenant changes now take effect immediately after reconfiguration or reinstall.
* **Crates**
  * Resolved an issue in the cross-regional sync process that duplicated a workflow and incorrectly moved and altered its trigger, leaving the original workflow without a trigger and the new workflow with an invalid configuration.
* **RoboRewsty**
  * Fixed issue with syncing to docs site.
* **General**
  * Resolved an issue preventing invited users from signing in with Google SSO on the Asia instance, where valid users were incorrectly reported as “not found” after authentication.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* RoboRewsty results analysis updates
* Connectwise Asio integration

</details>
