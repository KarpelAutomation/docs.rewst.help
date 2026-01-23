# January 23, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

* [Traveling Employee CA Policy Crate](../../../documentation/crates/existing-crate-documentation/traveling-employee-ca-policy-crate.md)
* [Rewst Microsoft GDAP Assistant Crate](../../../documentation/crates/existing-crate-documentation/rewst-microsoft-gdap-assistant-crate.md)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

### Crates

* [Document M365 Environment](../../../documentation/crates/existing-crate-documentation/document-m365-environment-setup.md)
  * Replaced deprecated Microsoft licensing download endpoint with a template; removed endpoint tasks and updated all references&#x20;
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Expanded ISO 3166 country code data; added workflow to look up ISO codes; added usage\_location input and updated AD user tasks to reference new ISO values
  * Updated Device Name field logic in \[REWST - PROC] User: Change Password to include primary/preferred domain controller org variables&#x20;
  * Added validation to ensure SQL integration is installed and db\_override is enabled before proceeding&#x20;
* Rewst: User Onboarding - deprecated Crate updated to support customers using legacy versions
  * Updated Get Subscribed Products sub-workflow to use a SKU template instead of pulling from Microsoft; affects older onboarding forms&#x20;

### Subworkflows

* \[REWST - TASK] CW Control: Run Powershell - used by every Crate that works with RMM integrations
  * Added logging to check\_if\_device\_name\_id noop and old\_find\_session\_groups&#x20;

</details>

<details>

<summary><strong>Coming soon</strong></summary>

REWST Conditional Access Policy Assistant Crate

</details>
