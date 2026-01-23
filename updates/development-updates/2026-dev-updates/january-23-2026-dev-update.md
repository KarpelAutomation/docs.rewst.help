# January 23, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * Updated Connectwise Asio setup instructions
  * Updated the ServiceNow integration to allow access to all relevant tables and API endpoints, removing the previous limitation to a single customer table.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Resolved an issue where searching for actions in the workflow editor was taking much longer than expected, restoring fast and responsive search results.
  * Fixed an issue where unpublished workflow canvas changes could be lost when updating inputs or outputs before publishing.
* **Integrations**
  * Improved security for the Microsoft Cloud bundle by ensuring the initial refresh token is no longer exposed unencrypted during setup.
  * Fixed an issue where custom integration actions could disappear from the integration editor while still appearing in workflows, ensuring all actions are consistently visible and editable.
  * Resolved an issue where the CIPP integration connectivity test could return a false 403 error during setup, even though the integration worked correctly in workflows.
  * Fixed an issue in Custom Integrations where integrations with working pagination did not appear as available for org mapping, allowing pagination and org mapping to be used together correctly.
  * Enhanced OAuth2 support for Custom Integrations with expiration-aware token refresh, automatic retry on auth failures, and a manual “Clear Token Cache” option to prevent workflow disruptions.
  * Fixed an issue where selecting an alternate IT Glue configuration in the integration settings did not persist, allowing users to switch between multiple IT Glue instances correctly.
  * Fixed an issue where creating a Kaseya VSA agent install package could fail or cause workflows to hang, ensuring the Machine Group ID is handled correctly and workflows complete as expected.
* **RoboRewsty**
  * Fixed a Redis cache key collision between Jinja filter documentation endpoints by isolating cache keys and applying consistent TTLs, preventing GraphQL “Expected iterable” errors.
  * Fixed an issue where RoboRewsty chat messages could appear more than once in a conversation.
* **App Builder**
  * Fixed an issue where the App Builder logout button did not properly sign users out
  * Fixed an issue where cloned App Builder apps loaded the wrong scripts in templates, causing pages to render incorrect code after cloning or syncing.
  * Fixed an issue where App Builder buttons with “Refresh on Click” enabled could cancel workflow execution, ensuring workflows now start before the page refreshes.
  * Fixed a crash in App Builder Theme Settings when clearing or entering an invalid hex color, ensuring the color picker now handles bad input gracefully.
  * Updated the default App Builder sign-in page to use Microsoft’s official “Sign in with Microsoft” wording and icon, improving branding consistency and user clarity for new apps.
* **Triggers**
  * Fixed an issue where soft-deleted or disabled organizations could block trigger operations (including tag-based triggers and crate unpacking) by ensuring trigger instances are only created for active organizations.
* **General**
  * Fixed an issue where dropdown fields on the tables could truncate text at 1920×1080 resolution, ensuring options remain fully visible and readable.
  * Improved first-time login error handling so users without an invite are routed to a clearer “No Invite” page (showing the attempted email) instead of the generic fallback error.
  * Added dual-project Amplitude tracking with dynamic config so new custom events can be safely tested in a sandbox project and promoted to production analytics only when approved.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Onboarding indicators
* Webhook trigger rate limiting

</details>
