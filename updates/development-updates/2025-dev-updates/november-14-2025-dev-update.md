# November 14, 2025- Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **RoboRewsty**
  * Improved reliability when stopping or restarting conversations: We’ve made improvements to prevent chat’s from locking up or being lost during context switching. RoboRewsty should now handle interruptions a bit more gracefully.
  * Conversation history: Timestamps should now appear correctly in chat history window.
  * Streaming responses: RoboRewsty now streams responses as it thinks, so you don’t have to wait for the full reply to load.
  * Pop-out chat experience: We’ve made adjustments to the RoboRewsty pop-out mode so it matches the functionality of the embedded chat experience.
* **Workflows**
  * Made performance improvements on the workflow builder canvas. This is especially noticeable for scenarios where actions on the workflow canvas have many parameters with many options in dropdown fields.
* **Integrations**
  * Updated setup instructions for the Cloudmore integration

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Workflows**
  * Fixed an issue where services were not properly loading workflow partition routing at startup, ensuring consistent and efficient query routing across all services.
  * Corrected UI issue for action parameter Key/Value pairs
  * Fixed an issue where the “Select All” checkbox in tables displayed one extra row beyond those visible on the current page. The selection count now correctly matches only the rows displayed to the user.
* **Integrations**
  * Fixed a bug in Transforms where the **Average** action failed when the List field contained invalid or null values.
  * Resolved an issue where the Google Licensing Manager integration could not complete authorization, even though the Google Admin SDK authorized successfully.
  * Fixed an issue where the Exchange actions in certain offboarding workflows could fail with a decompression error (`incorrect header check`) for specific tenants.
  * Fixed bug in Hudu Documentation - Create Asset for Company action fields that caused page crash
  * Fixed an issue where the **Send SMS** action could report success even when Twilio rejected the message—such as when sending from a US number to a UK recipient. The action now correctly reflects delivery failures, ensuring customers are accurately informed when an SMS cannot be sent.
  * Fixed an issue where the ITGlue **Get Location** action formatted the `include` parameters incorrectly by sending them as repeated fields instead of a comma-separated list. The action now sends the correct format, ensuring proper retrieval of related data.
  * Removed extra space when rendering links from a markdown template in to the Core - Sendmail

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* ArrowSphere integration
* CIPP integration

</details>
