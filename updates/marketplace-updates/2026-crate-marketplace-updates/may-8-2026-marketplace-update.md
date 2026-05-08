# May 8, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

No new Crates were released this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

#### Crates

* [Agent Smith: Service Provisioning \[Install Second\]](../../../documentation/agent-smith/agent-smith-configuration-overview.md)
  * Updated form descriptions to specify which org variables to use&#x20;
  * Removed the **Remove Control Device** form the action dropdown&#x20;
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Show group display names in onboarding ticket notes instead of GUIDs&#x20;
  * Enhanced user validation: detect existing users by email, UPN, and proxyAddresses; on-prem AD checks proxyAddresses to prevent duplicates&#x20;
  * Fixed conditional for get\_all\_security\_groups in "List On-Prem Groups — Not Tenant Specific— subworkflow&#x20;
  * Fixed false positives in User: Check Exists; improved on-prem error detection; standardized failure handling; added task logs&#x20;
  * Debugged/validated BYOD SQL integration; fixed user\_exists false positive; confirmed db\_override gate and skipCache wiring; updated docs and workflow lists&#x20;
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Refactored OneDrive grant: create Offboarding\_Transfer, move root items, share with recipient&#x20;
* [Triage SentinelOne Tickets](../../../documentation/crates/existing-crate-documentation/triage-sentinelone-tickets-crate.md)
  * Tightened trigger criteria: run only when Entity.summary contains `sentinelone`, `machine`, and `threat`
* [CIPP: Alert Triage](../../../documentation/crates/existing-crate-documentation/cipp-alert-triage-crate.md)
  * Rewrote Build Ticket Variables as template to support both drift and flat payloads; dedupes and routes standards alerts correctly&#x20;

#### Kits

There were no updates to kits this week.

#### Subworkflows

There were no updates to subworkflows this week.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

Rewst's AI PSA Analyzer - This Crate uses Rewst’s internal AI or your integrated Anthropic or OpenAI provider to analyze ticket data and recommend the most effective automations for your customers' needs.

</details>
