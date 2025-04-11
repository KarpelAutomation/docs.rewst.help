# April 11, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * **Transforms**
    * Refang and Defang - Lets you sanitize or restore URLs and other string data for safer handling.
  * **Pax8 Page-Based Pagination**
    * Adjusts pagination logic so Pax8 data starts at page 0 for more accurate results.
  * **Rewst**
    * Actions added to help automate your App Builder Apps, Pages, and Components:&#x20;
      * List Apps
      * List Pages
      * List Page Components
      * Update Text Component Content
    * Renamed `craft_id` to `element_id` in App Builder actions, making terminology more consistent.
  * **HaloPSA**
    * Renamed “Halo PSA” references to “HaloPSA” for consistency.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Forms**
  * **Embedded Forms & Third-Party Cookies**: Fixed an issue where embedded forms could be blocked in browsers that disabled third-party cookies.
* **Integrations**
  * **Microsoft Graph License Removal**: Changed the data structure for removing licenses to arrays of strings.
  * **CSP Tenant Mapping**: Fixed a mapping bug when multiple CSP tenants are added.
  * **Action Migrations**: Tweaked how actions migrate between versions so workflows continue to operate smoothly.
* **Crate Marketplace**
  * **Delete Stale Triggers**: Old triggers are now automatically cleaned up during crate replication.
* **Dependency Updates**
  * Various regular library updates that help keep the system secure and up to date. Typically no user impact.

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* Generic GraphQL Request Action to the Rewst Integration
* Improved workflow page and workflow results page search and filter
* Workflow executions dashboard widget
* PowerShell Interpreter
* Integrations:
  * Asana
  * Cork
  * Notion
  * Slide

</details>
