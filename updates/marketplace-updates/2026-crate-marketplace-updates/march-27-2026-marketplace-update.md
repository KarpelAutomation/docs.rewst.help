# March 27, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

No new Crates were released this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

#### Crates

* [Alert on Low Disk Space](../../../documentation/crates/existing-crate-documentation/alert-on-low-disk-space-crate.md)
  * Added CW ASIO Get Computer subworkflow and retry logic to handle API rate limits
* [Document M365 Environment](../../../documentation/crates/existing-crate-documentation/document-m365-environment-setup.md)
  * Added INFO\_PROTECTION\_GOVERNANCE to the M365 License Lookup template
* [Remove Malicious Email and Block Sender](../../../documentation/crates/existing-crate-documentation/remove-malicious-email-and-block-sender-crate.md)
  * Show "no messages/mailboxes" alert only when fewer than 500 items due to PSA limits
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Conditional ticket update when granting OneDrive sharing; checks for org variable offboarding\_suppress\_onedrive\_email
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Added TD Synnex Stellr to License Group subworkflow
  * Updated ticket description for Pax8 license purchase failure
  * Added integration override to trigger for TD Synnex Stellr
  * Published final\_upn from creation steps so it can be used for Azure AD user lookup
  * Clarified wording that form attributes (except domain) override copied user attributes
  * Built conditional OtherAttributes (c/co/countryCode) before New-ADUser to avoid empty-field failures
  * Added ticket completion logic, mark\_complete input (default true), and org variable auto\_complete\_onboarding\_ticket
  * Removed assigned\_user\_id from Assigned App User ID to resolve error
  * Updated filter\_product Jinja to include Nonprofit Staff Pricing (NCE) check
* [Agent Smith: Service Provisioning \[Install Second\]](../../../documentation/agent-smith/agent-smith-configuration-overview.md)
  * Removed duplicate "Agent Smith: IoT Hub Actions" subworkflows from parent/sub/opt gens
* [Traveling Employee CA Policy](../../../documentation/crates/existing-crate-documentation/traveling-employee-ca-policy-crate.md)
  * Set default selection for Destination Countries in MSP and Self-Service forms

#### Kits

There were no updates to kits this week.

#### Subworkflows

There were no updates to subworkflows this week.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

CIPP Microsoft Desired State Standards Compliance Crate

</details>
