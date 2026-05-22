# May 21, 2020 - Marketplace update

<details>

<summary><strong>New Crates</strong></summary>

No new Crates were released this week.&#x20;

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

#### Crates

* [Microsoft: User Onboarding](../../../documentation/crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/)
  * Updated onboarding form to make force\_password\_change and password\_never\_expires mutually exclusive
  * Added | json filter to pax8\_sku\_mapping alias in \[REWST TASK] Licenses: Update Quantity
  * Updated \[REWST - TASK] CW ASIO: Run PowerShell list\_shell\_scripts failure transition to use input script\_id or default ID&#x20;
  * Added CW, SX, and BQ to ISO 3166 country code options generator (90206)
  * Added object in script at correct sequence&#x20;
  * Reordered FAILURE transition for core\_await\_webhook\_request and set webhook expiration to 85800&#x20;
* [Configure Organizational Variables](../../../documentation/crates/existing-crate-documentation/configure-organization-variables.md)
  * Added default\_sla to Create or Update Org Variable
* [Google: User Onboarding](../../../documentation/crates/existing-crate-documentation/google-user-onboarding-crate.md)
  * Updated check\_copy\_user to use manager's email address instead of ID&#x20;
* [Rewst Microsoft GDAP Assistant](../../../documentation/crates/existing-crate-documentation/rewst-microsoft-gdap-assistant-crate.md)
  * Fixed Jinja failure in Create GDAP Relationship sub-workflow that stopped execution&#x20;
  * Corrected msp\_created\_relationships filter to use customer.tenantId and de-duplicated customer\_name\_history
* [Compromised User Response](../../../documentation/crates/existing-crate-documentation/compromised-user-response-crate.md)
  * Updated Jinja in external\_forward\_rules to return only external emails&#x20;
* [Reset Locked Accounts](../../../documentation/crates/existing-crate-documentation/reset-locked-accounts-crate.md)
  * list\_locked\_accounts now runs as org using CTX.org\_id in \[REWST - OPT GEN] List Locked-Out Accounts

#### Kits

There were no updates to kits this week.

#### Subworkflows

There were no updates to subworkflows this week.

</details>
