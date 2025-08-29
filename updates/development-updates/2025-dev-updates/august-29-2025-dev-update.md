# August 29, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * Added GPT-5 models to chat completions configuration
  * Updated Hudu integration icon&#x20;
* Updated Sign in with Entra ID to Sign in with Microsoft on the login page

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Integrations**
  * Fixed 500 error in `connect_wise_psa_update_service_ticket` action when using custom property
  * Resolved ConnectWise PSA country list fetch issue causing 500 errors
  * Fixed ConnectWise PSA service survey data retrieval issue
  * Improved Acronis workflow handling:&#x20;
    * Allowed body in Acronis forms header to be sent as an object when form data is set as a header
    * Enabled custom headers to be processed by the Acronis generic API action
  * Correctly handle non-iterable values in parameter input arrays
  * Removed obsolete dashboard code related to integrations needing attention

- **Org Variables**
  * Enforced required organization variable fields to prevent error on save
- **App Builder**
  * Fixed an issue where creating new page-level permissions didn’t also grant the related app-level access, causing inconsistent behavior between page and app permissions.
- **DevOps**
  * Improved cherry-pick handling for patch-release workflow

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* DropSuite integration
* BVoIP integration
* Leader Integration
* Hourly dashboard updates

</details>
