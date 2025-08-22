# August 22, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Crate Marketplace**
  * Improved the "No Results" user experience when searching in the Marketplace

- Integrations
  * Added new transforms:
    * Extract part of a date
    * Range transform
    * Average transform
    * Convert from Epoch
    * URL Encode / Decode
  * Freshdesk: Updated references from domain to subdomain for consistency

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Integrations**
  * Fixed NinjaRMM "Change Organization Policy Mappings" action bug where the ID parameter was sent as a string instead of an integer, causing a Swagger API 405 error
* **Workflow Canvas**
  * Fixed wrapping of titles and buttons in workflow configuration views
* **DevOps**
  * Updated Dockerfile to build and run with Debian 12
  * Improvements to Rewsts CI/CD pipeline to make releasing more efficient.

- **Engine**
  * Migrated tasklogs and pending tasks to msgpack serialization for improved performance
  * Resolved webhook trigger functionality issues with post form and parameters
  * Ensured proper timezone handling for database compatibility

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* To make sign-in clearer for users, we will be updating the Microsoft login button from **Sign in with Entra ID** to **Sign in with Microsoft**. There's no change in functionality, and your login process for Microsoft stays the same.
* DropSuite integration
* BVoIP integration
* Leader Integration
* Hourly dashboard updates

</details>
