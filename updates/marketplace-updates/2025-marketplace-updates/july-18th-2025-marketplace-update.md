# July 18, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* Updated template logic to sync Microsoft product display names in the cron updated Microsoft SKU List&#x20;
* Added GUID resolution subworkflow with friendly name output in notes&#x20;

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Add or Remove Group Membership](../../../documentation/crates/existing-crate-documentation/add-or-remove-group-membership-crate.md)
  * Added `|d([], true)` filter for both transitions in the 365\_or\_onprem action&#x20;
* Compromised User Response
  * Added retry logic for get\_app\_activity\_report&#x20;
  * Implemented support for uploading ticket attachments to Kaseya BMS and other PSAs&#x20;
* [Document M365 Environment](../../../documentation/crates/existing-crate-documentation/document-m365-environment-setup.md)
  * Truncated long IT Glue trait lists and attached full list as HTML&#x20;
  * Automatically create missing fields on flexible asset types&#x20;
* Export MS365 Licences to CSV
  * Added support for Kaseya BMS and Freshdesk using new subworkflows&#x20;
* Multiple
  * Changed `interpreter_override` default logic using `|d` in the Agent Smith run Powershell workflows.&#x20;
* Prompt to Combine Similar Tickets
  * Added handling for Pod timeouts to prevent hard failure
* Set AD User Attribute
  * Fixed script value on line 13 from `$set_result` to `$pre_result`&#x20;

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate
* Document BitLocker Recovery Keys - Bitlocker Management Crate Series
* BitLocker Activation - Bitlocker Management Crate Series
* Refactor of Add Onboarding/Offboarding Link to PSA Ticket Crate

</details>
