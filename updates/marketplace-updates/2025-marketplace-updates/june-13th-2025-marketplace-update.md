# June 13th, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* OpenText Core Endpoint Protection: Create Ticket from File Detection Crate
* Nodeware: Alert To PSA Crate

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>



* PSA Create Ticket subworkflow:
  * Added additional log\_ data aliases for automation\_log generation.
  * Added success data alias and output for testing/conditional logic usage.
* ConnectWise PSA Update Ticket workflow:
  * Change of start and end noop action names.
  * Removed unnecessary retry count var.
  * Added more log\_ data aliases for automation\_log generation.
  * Added success alias for testing/conditional logic usage.
* Halo PSA Update Ticket workflow:
  * Change of start and end noop action names.
  * Added more log\_ data aliases for automation\_log generation.
  * Added success alias for testing/conditional logic usage.
* Datto PSA Update Ticket workflow:
  * Change of start and end noop action names.
  * Added more log\_ data aliases for automation\_log generation.
  * Added success alias for testing/conditional logic usage.
* SuperOps Create Ticket workflow:
  * Fix incorrect reference for system org variable (org mapping) in workflow to use correct org variable.
* Alert on AV/EDR coverage gaps
  * Updated `sentinel_one_filter_computers` task to return the first MAC address if there are multiple.
  * Fixed for loop in `sentinel_one_filter_computers` task referring to undefined variable.
  * Updated workflow to run even if only 1 AV system is configured.
* Halo PSA Create Ticket workflow:
  * Added org variable for allowing override of the `General User` search keyword in the list users action.
  * Changed `On Success` fallback to handle if the `General User` can't be matched so that it will still create the ticket instead of hitting the failure catch.
* FreshDesk Update Ticket workflow:
  * Change of start and end noop action names.
  * Added more log\_ data aliases for automation\_log generation.
  * Added success alias for testing/conditional logic usage.
  * Change task name for creating an external note from `create_internal_note` to `create_external_note` to match intended purpose.
* Export PSA Ticket Overview to CSV:
  * Optimized CW PSA sub performance by using a single `list_time_entries` action instead of one get\_time\_entries action per ticket.
  * Added support for the following PSAs:
    * Datto PSA
    * Freshdesk
    * HaloPSA
    * Kaseya BMS
* Kaseya BMS Update Ticket workflow:
  * Change of start and end noop action names.
  * Added more log\_ data aliases for automation\_log generation.
  * Added success alias for testing/conditional logic usage.
  * Fixed issue where status update was not being passed and only org variables would override the status when hitting the complete\_workflow branch.
* Service Now Update Ticket workflow:
  * Change of start and end noop action names.
  * Added more log\_ data aliases for automation\_log generation.
  * Added success alias for testing/conditional logic usage.

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Patch deployer
* Refactor of Sync Last Logged-In Info to PSA Asset Crate

</details>
