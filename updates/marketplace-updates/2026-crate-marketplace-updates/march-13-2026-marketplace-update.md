# March 13, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

No new Crates were released this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

#### Crates

* [AI Ticket Sentiment Analysis](../../../documentation/crates/existing-crate-documentation/openai-ticket-sentiment-setup.md)
  * Fixed ticket\_body data alias Jinja in get\_ticket\_variables
  * Set get\_escalation\_member found match condition to >= 1 to set first escalation\_email
* [Windows Patch Deployer](../../../documentation/crates/existing-crate-documentation/windows-patch-deployer-crate.md)
  * Convert computer.id to string in generate\_options Jinja
* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Enabled force\_all\_users; added input param and updated generate\_options Jinja to return all users
  * Added SuperOps and NinjaOne PSA support with new/updated workflows
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Set success transition status code to 1000 in halo\_psa\_list\_users
* [Run Powershell Script on Selected Devices](../../../documentation/crates/existing-crate-documentation/run-powershell-script-on-selected-devices-crate.md)
  * Updated ASIO task transition condition in RMM selection action
* [Rewst Microsoft GDAP Assistant](../../../documentation/crates/existing-crate-documentation/rewst-microsoft-gdap-assistant-crate.md)
  * Added get\_delegated\_admin\_relationships to Get GDAP Settings; merged with CSP results

#### Kits

There were no updates to kits this week.

#### Subworkflows

There were no updates to subworkflows this week.

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* CIPP Alert Triage Crate
* CIPP Microsoft Desired State Standards Compliance Crate

</details>
