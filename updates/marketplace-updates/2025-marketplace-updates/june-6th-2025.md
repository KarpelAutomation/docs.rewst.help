# June 6th, 2025 - Marketplace Update

Explore the new changes to the Marketplace in the last week.

This can be anything from new Crates, enhancements, or bug fixes.

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* CW Pod Technician Toolbox -refactor
* Cork Compliance Event to PSA Ticket

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>



* SuperOps - Create Ticket Sub - Automation Logs and Success Statuses
  * Updated workflow name to \[REWST TASK] SuperOps: Create Ticket
* FreshDesk - Create Ticket Sub - Automation Logs and Success Statuses
  * Modified begin and end to be BEGIN and END
  * Removed retry count
  * Noticed that the company ID field is commented out
  * Removed extra ticket\_id alias
* Reset Locked Accounts
  * Added options gen trigger to the field ticket\_id
* Microsoft: User Onboarding
  * Add support for GCC in Pax8 product matching
* Run Powershell Script on Selected Devices
  * Updated the Computers field on the form to use the opt gen workflow
* Datto PSA
  * Resolved issue where NULL internal note causes ticket update failure
  * Fixed issues with time charge and ticket notes
* Kaseya BMS - Create Ticket Sub - Automation Logs and Success Statuses
  * Changed begin and end to BEGIN and END
  * Replaced RESULT and TASKS with PRA refs
  * Adjusted transitions to properly handle contact\_email\_provided
  * Removed retry\_count var
  * Changed name to match standard
  * Added logging and checks for required vars
  * Added success
* ServiceNow - Create Ticket Sub - Automation Logs and Success Statuses
  * Changed name to \[REWST TASK] ServiceNow: Create Ticket
  * Updated begin and end to be BEGIN and END
  * Fixed mapping for company\_id
  * Fixed issue with contact\_id not getting mapped
  * Fixed issues with ticket references
  * Added logs
  * Added success
  * Updated to use sys\_id instead of number
* Google: User Offboarding
  * Changed json\_body\[0].name Jinja
  * Changed site id field Jinja
  * Fixed the inactive field Jinja as it was originally inverting the boolean input

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Patch deployer

</details>

