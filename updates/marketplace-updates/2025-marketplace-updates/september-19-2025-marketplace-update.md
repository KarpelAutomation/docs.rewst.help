# September 19, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* [Huntress: AD Account Lockdown](../../../documentation/crates/existing-crate-documentation/huntress-edr-ad-account-lockdown-crate.md)

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Updated supervisor field to use "Options Gen" trigger
  * Added conditional transitions to get\_shared\_mailbox; handle error string; show "No Shared Mailboxes Found" when applicable
  * Refined user\_on\_prem action: clearer error messaging; separate "not found" from other errors
  * Standardized subs: publish result aliases, added conditions/logging, removed data keys; success aliases; repositioned action\_failure
  * Added missing messages and log aliases; removed data keys in sub-workflow evals
* Find Inactive Computers in RMM
  * Updated Jinja for initial description to handle null/empty inactive\_computer list
* [Alert on Login from Non-Native Country](https://app.gitbook.com/o/mdGoyUomPKsvu1TSazxc/s/AQQ1EHVcEsGKBPVHmiav/documentation/crates/existing-crate-documentation/alert-on-login-from-non-native-country-crate)
  * Fetch ISO country data from templates and filter by ISO code
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Removed get\_mailbox\_no\_anchor; revised anchor UPN retrieval

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Add Form Link to PSA Ticket Based on Type
* Per Machine Password Rotation
* BitLocker Activation - Bitlocker Management Crate series

- Enhanced logging for the user onboarding workflow

</details>
