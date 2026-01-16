# January 16, 2026- Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * New integration - Connectwise Asio
  * Added Generic action for Twilio
  * Added new OpenText Secure Cloud actions to let you view and manage customer services and subscriptions directly in Rewst.
  * Added the Microsoft category back to integrations, making Microsoft-related integrations easier to find and organize.
  * Improved OAuth2 handling for custom integrations by refreshing tokens based on their actual expiration and adding a way to clear cached tokens to prevent workflow failures.
  * Updated the NinjaRMM integration branding to NinjaOne and added PSA categorization, with no impact to existing workflows.
* **RoboRewsty**
  * Added approval flow when querying services.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Fixed an issue where cloned workflow transitions could incorrectly reconnect to the same action after reopening a workflow.
  * Fixed an issue where large organizations could hit database limits when loading action options, improving reliability for high-volume accounts.
* **Integrations**
  * Fixed an issue where the Datto PSA “suggest matches” feature could fail with service errors for large accounts, restoring reliable matching.
  * Fixed an issue where custom integration refreshes did not respect paging settings, ensuring all records are correctly retrieved.
  * Fixed an issue where GraphQL user invite actions failed when passing valid boolean values.
  * Fixed an issue where pagination settings prevented org mapping from being available in CIv2 integrations.
  * Fixed an issue where the ConnectWise Manage integration could show errors when saving configuration, even with valid credentials.
  * Fixed an issue where the N-able N-sight integration could fail when refreshing options or listing clients.
  * Fixed an issue where Microsoft Exchange pagination could stop early, ensuring all results are returned consistently.
  * Fixed an issue where older Dropsuite integration configurations could stop working unexpectedly, preventing unnecessary re-authentication.
  * Fixed an issue where the Microsoft Cloud integration could show an incorrect or missing app registration link in the setup page.
  * Fixed Microsoft CSP customer actions so they return complete and correct customer data, including customers not yet mapped to Rewst organizations.
  * Fixed the Proofpoint statistics action to use the correct API parameters so it returns accurate and complete reporting data.
* **RoboRewsty**
  * Fixed an issue where RoboRewsty conversations could fail to start due to a Redis error, improving reliability during conversation setup.
  * Improved RoboRewsty startup performance by caching prompt data, reducing repeated API calls during agent initialization.
* **App Builder**
  * Fixed an issue where App Builder custom components could lose link URLs and icons when reused on new pages.
* **Triggers**
  * Reduced unnecessary system notifications by only sending trigger update events when meaningful changes occur, improving performance and stability.
* **Forms**
  * Removed technical data-type labels from form input fields to make Forms clearer and easier to use for non-technical users.
* **Crate Marketplace**
  * Fixed an issue in the Crate Marketplace where Microsoft integration links now correctly point to the Microsoft bundle instead of individual integrations.
* **General**
  * Fixed the Profile menu Settings link so it correctly opens Settings for the active organization instead of an error page.
  * Improved browser support and build reliability by updating supported browser targets and resolving outdated dependency warnings.
  * Improved icon button visibility across administrative pages and modal components by fixing color contrast issues in the theme.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Onboarding indicators

</details>
