# April 4th, 2025 - Marketplace Update

Explore the new changes to the Marketplace in the last week!

This can be anything from new crates, enhancements, or bug fixes!

<details>

<summary><strong>New crates and enhancements</strong></summary>

* Webroot / Sentinel One Coverage Gaps

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* PowerShell Execution
  * Removed redaction on input from Powershell execution sub for Datto RMM on `rmm_site_id` input.

- Update Ticket with User Offboard Links
  * Added `or CTX.id` to the alias `form_url` so it works correctly for Halo tickets.
- Microsoft: User Offboarding
  * Updated PS script to ensure groups output is always an array.
  * Updated Jinja to combine `on_prem` and `azure` lists at the end of the flow.
  * Added `|d(x,true)` to inputs of subworkflows to prevent empty strings causing failures.
- Password Generators
  * Switched names for various Password Generator workflows and actions to correct misnaming.
- Windows 11 Compatibility Checker
  * Added Name and Last Login columns for CSV reporting.
- Ad-Hoc Install/Uninstall Software via Chocolatey
  * Fixed NinjaRMM task failing due to `TypeError`.
  * Typecasted fields in `ninja_rmm_list_devices_detailed` to fix epoch conversion.
- Pax8 License Removal
  * Added two new licenses.
  * Added org var to allow customization of ignored licenses list.
- Attach Config Item to Ticket based on Last User
  * Added logic to Datto section to handle empty email strings by setting them to "No Contact".
- Rewst: User Offboarding V2
  * Replaced old "run powershell" task with updated version.
- Microsoft: User Onboarding
  * Wrote new workflow to sync Microsoft SKUs and created a new template with legacy support.
  * Increased `create_password_entry` timeout from 5 to 15 seconds.
  * Removed stray whitespace in `friendly_password` system field in password generator action.
- Bulk Create Client from PSA
  * Reduced concurrency of `create_rewst_org` from 5 to 1 due to performance issues.
- Operational Analytics
  * Shortened app name to reduce SSL provider errors due to long slugs.
- Alert On Users Without MFA Enforced
  * Updated Jinja in subworkflow to match on webhook type name instead of hardcoded ID for better environment compatibility.

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Disk Space Monitoring/Alerting
* New Admin Alerting

</details>

