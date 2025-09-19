# September 19, 2025 - Dev update

Explore what new changes the Dev team has deployed in the last week!

This can be anything from new features, bug fixes, or QoL changes!

<details>

<summary><strong>New features and items</strong></summary>

* **Integrations**
  * Dropsuite - Enables automation of cloud backups and disaster recovery
  * Leader - Enables automation of billing information and license purchase
* **Crate Marketplace**
  * Redesign of crate marketplace page
* **Workflows**
  * Added `xml_to_dict` Jinja filter

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* **Dashboard**
  * Fixed issue where stats table wasn’t updating after workflow deletions

- **Workflows**
  * Added error message for empty workflow results
  * Fixed overflow in `to_human_time_from_seconds`
  * Renamed “Listeners” label to “Completion Handler”
  * Fixed Task Editor JSON validation to prevent invalid JSON
  * Added required field error message when cloning workflows
  * Resolved issue with `selectTriggerParams` incorrectly applying to all triggers&#x20;
- **Integrations**
  * Fixed errors when handling XML requests in Webroot triggers
  * Improved handling of 40x errors in NinjaRMM Generic API Request
  * Added behind-the-scenes active tenant call for SonicWall
  * Changed Sophos `X-Partner-ID` handling to workaround multilevel defaults&#x20;
  * Fixed GoDaddy domain listing error with contacts
  * Renamed ProofPoint setup field for clarity
  * Corrected required fields in ConnectWise PSA – Update Agreement Additions task
  * Fixed invalid input syntax for type UUID in “Update Organization Tags” in Rewst Update Organizations action

* **App Builder**
  * Expanded icon library with additional Material UI icons
  * Increased frequency of App Builder health checks

</details>

<details>

<summary><strong>Coming Soon</strong></summary>

* RoboRewsty AI in Rewst

- BVoIP integration
- Hourly dashboard updates

</details>
