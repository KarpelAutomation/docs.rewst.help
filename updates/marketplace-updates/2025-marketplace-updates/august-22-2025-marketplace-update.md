# August 22, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

* No Crate releases this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Updated the Microsoft Onboarding workflow and related PSA contact creation tasks to properly pass and utilize the child\_company input for ConnectWise PSA
  * Modified jinja in create\_contact action and moved the jinja to the raw\_json field&#x20;
  * Added success data alias to generate\_options with value of True. Added success data alias to failure\_catch with value of False. Added output for success.
  * Improved logic to handle both ticket numbers and IDs in Datto PSA
* [Rotate Account Passwords](../../../documentation/crates/existing-crate-documentation/rotate-account-passwords-crate.md)
  * Updated `Password` field on Graph `Update User` action to utilize password instead of the previous value which was generated\_password
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * 'ORG.VARIABLES.superops\_client\_id|d' was added to the list\_client\_users action as input
  * Changed options key name from 'name' to 'label'

- [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Updated the \[REWST - OPT GEN] PSA: List Tickets for Org - Rewst to properly list all tickets.
  * Updated \[REWST - TASK] SuperOps PSA: Update Ticket to point at correct ticket ID

* [Agent Smith: Service Provisioning \[Install Second\]](../../../documentation/agent-smith/agent-smith-configuration-overview.md)
  * Implemented customer filter for `Agent Smith: Get Devices List` opt get for all RMMs
* [\[Kit\]: HaloPSA Integration](../../../documentation/automations/kits/halo-psa-integration-kit.md)
  * Updated crate description, tags, and name
* Google User Onboard & Offboard crates
  * Replaced options gen within the onboarding form \[REWST - OPT GEN] User: Check Exists with \[REWST - OPT GEN] GWS: Check User Exists. Set fallback method within triggers back to `fail`

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Refactor of Sync Last Logged-In Info to PSA Asset Crate

- BitLocker Activation - Bitlocker Management Crate Series
- Workstation offboarding
- Enhanced logging for the user onboarding workflow

</details>
