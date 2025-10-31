# October 31, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* 1Stream Technician Toolbox

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Microsoft: User Onboarding
  * Fix: pass license SKU ID as list instead of string
  * Add Copilot SKU to template and sync to client
  * Update Jinja to retrieve default orgunit with added condition
* Use OpenAI to Suggest Responses to New Tickets
  * Align transitions across PSAs; Datto uses Description when no notes; rename Halo transition
* Document BitLocker Information
  * Use org var itg\_bitlocker\_computer\_config\_type for default config\_type\_name with 'Computer' fallback
* Document Rewst Form URLs (ITGlue/Hudu)
  * Filter to enabled orgs in list organization action
* Rewst: User Onboarding
  * Set Task Transition Criteria Sensitivity to 1 on failure\_catch noop in M365/On-Prem: Resolve Groups

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Per Machine Password Rotation
* Enhanced logging for the user onboarding workflow
* DropSuite Backup Monitoring
* Various DropSuite Additions
* 1Stream Technician Toolbox

</details>
