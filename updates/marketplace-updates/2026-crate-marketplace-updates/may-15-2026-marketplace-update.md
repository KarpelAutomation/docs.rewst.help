# May 15, 2026 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

[Rewst's AI PSA Analyzer](../../../documentation/crates/existing-crate-documentation/rewsts-ai-psa-analyzer-crate.md) - This Crate uses Rewst’s internal AI or your integrated Anthropic or OpenAI provider to analyze ticket data and recommend the most effective automations for your customers' needs. The workflow pulls filtered ticket data from a specific number of days. Using AI to evaluate that data, it identifies the most relevant existing Rewst Crates and recommends custom automations if needed. Runtime may vary depending on the PSA platform and ticket volume.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

#### Crates

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Fixed false failure logs being reported during valid retry attempts
  * Onboarding New User Ticket Summary will reference requestor now if username is empty
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * The field nable\_device\_filter\_id is now hidden if customer does not have n\_able as their default RMM
* AI Ticket Categorization Crates - Added Hatz AI implementation to the 3 AI Crates:
  * [Use AI to Suggest Responses to Tickets](../../../documentation/crates/existing-crate-documentation/use-ai-to-suggest-responses-to-new-tickets-crate.md)
  * [AI Ticket Categorization](../../../documentation/crates/existing-crate-documentation/openai-ticket-categorisation-setup.md)
  * [AI Ticket Sentiment Analysis Crate](../../../documentation/crates/existing-crate-documentation/openai-ticket-sentiment-setup.md)
* [CIPP: Alert Triage](../../../documentation/crates/existing-crate-documentation/cipp-alert-triage-crate.md)
  * Updated the Has Valid Tenants Jinja to handle different payloads and updated the template to handle varying alert shapes
* [Amend Mailbox Permissions](../../../documentation/crates/existing-crate-documentation/amend-mailbox-permissions-crate.md)
  * Updated the Jinja to include shared mailboxes and enabled pagination if more than 1000 users are returned
* [Amend Calendar Permission on User](../../../documentation/crates/existing-crate-documentation/amend-calendar-permission-on-user-crate.md)
  * Changed the ID from Identity to ExternalDirectoryObjectId
* [Microsoft: User Offboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-offboarding-crate.md)
  * Empty files are now moved to the offboarding folder
  * Offboarding folder email notifications are now delivered to target recipients

#### Kits

There were no updates to kits this week.

#### Subworkflows

There were no updates to subworkflows this week.

</details>
