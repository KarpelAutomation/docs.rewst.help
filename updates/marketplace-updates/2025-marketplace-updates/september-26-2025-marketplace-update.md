# September 26, 2025 - Marketplace Update



<details>

<summary><strong>New Crates and enhancements</strong></summary>

There are no new Crates this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Removed Secondary Email Domain field
  * Reviewed the REWST - PROC Microsoft: User Onboarding - Rewst workflow and its sub-workflows and confirmed the `secondary_email_domains` variable is not utilized
* [Deactivate ConnectWise PSA Contacts when their Company is Deactivated](../../../documentation/crates/existing-crate-documentation/deactivate-connectwise-psa-contacts-when-their-company-is-deactivated-crate.md)
  * When a company is listed as inactive, the workflow now creates a dummy replacement contact for that company
  * With a replacement set, the crate can then delete/disable the original default contact
* [Alert on Login from Non-Native Country](https://app.gitbook.com/o/mdGoyUomPKsvu1TSazxc/s/AQQ1EHVcEsGKBPVHmiav/documentation/crates/existing-crate-documentation/alert-on-login-from-non-native-country-crate)
  * Updated the filter in microsoft\_graph\_list\_logins to check if include\_failed\_attempts or not
* [Add Client to Rewst ](../../../documentation/crates/existing-crate-documentation/add-client-to-rewst-setup.md)
  * Updated the option configuration from "sites" to "site" to fix error
* [Huntress EDR: AD Account Lockdown](../../../documentation/crates/existing-crate-documentation/huntress-edr-ad-account-lockdown-crate.md)
  * Increased webhook timeout length from 8 hours to 1 day&#x20;

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Add Form Link to PSA Ticket Based on Type
* Per Machine Password Rotation
* BitLocker Activation - Bitlocker Management Crate series
* Enhanced logging for the user onboarding workflow
* DropSuite Backup Monitoring
* Various DropSuite Additions
* 1Stream Technician Toolbox
* Secure Cloud Addition to User Onboarding

</details>
