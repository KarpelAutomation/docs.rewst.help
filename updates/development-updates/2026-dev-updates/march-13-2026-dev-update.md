# March 13, 2026 - Dev update

Explore what new changes the Dev team has deployed in the last week.

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Workflows**
  * Triggers view - dedicated page to view all triggers
* **Integrations**
  * Lexful integration - Enables the automation of IT documentation management in Lexful. Documentation found [here](../../../documentation/integrations/integration-guides/lexful-integration.md).
  * Updated branding from ConnectWise Control to ConnectWise ScreenConnect across the platform and website to align with ConnectWise’s current brand standards.
  * Added a v2 ConnectWise ASIO endpoint action for listing computers to improve compatibility where the legacy list endpoint could fail.
* **General**
  * Navigation redesign
  * RoboRewsty AI generated workflows

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Integrations**
  * Fixed an issue where Google Workspace Admin actions could not clear recoveryPhone and recoveryEmail fields when left blank.
  * Fixed an issue where OpenAI Create Response requests in background mode could fail when empty optional objects were sent to the API.
  * Improved Azure OpenAI error handling by showing clear guidance for unsupported model actions instead of raw Azure errors.
* **Onboarding**
  * Fixed an issue where onboarding questionnaire submissions could fail validation due to a null priority value when switching between custom “Other” responses and standard options.
* **RoboRewsty**
  * Enabled transitions, including conditions and data aliases, to be created by RoboRewsty on terminal workflow tasks without requiring a downstream target.
  * Prevented duplicate approval submissions by disabling approval bubble actions immediately when clicked.
* **App Builder**
  * Fixed an issue where the AppBuilder Theme Settings panel could fail to load for apps with missing theme data by restoring the default theme instead of showing an error.
* **General**
  * Fixed an issue where consumers did not restart after a RabbitMQ reconnection, which could cause message processing to stop until the service was restarted.
  * Fixed an issue where the Admin View (Staff Only) section could appear but could not be navigated to in the side navigation for non-staff users when Support Access was enabled.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Hatz AI integration

</details>
