# December 5, 2025 - Marketplace Update

<details>

<summary><strong>New Crates and enhancements</strong></summary>

There are no new Crates this week.

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>

* Microsoft: User Onboarding
  * Added primary\_identity\_provider input parameter for sub-workflow/external value scenarios
  * Updated Location field Jinja to check usage\_location before org
  * Disabled custom input for user\_location in the onboarding form
* Run Powershell Script on Selected Devices
  * Updated check\_device\_returned condition to evaluate using >= 1
* Agent Smith: Device Provisioning \[Install First]
  * Added retry logic to re-query devices when initial query fails
* Configure Organizational Variables
  * Use installed PSA when no default\_psa or org variable is set
* AI Ticket Categorization
  * Added GPT-5 models to the OpenAI template
  * Added support for OpenAI GPT-5 in crate configuration and new Anthropic Claude models; updated model selection options
* Document Rewst Form URLs (ITGlue/Hudu)
  * Updated example org var value to include quotes around string values in list

</details>

<details>

<summary><strong>Coming soon</strong></summary>

* Per Machine Password Rotation
* Enhanced logging for the user onboarding workflow
* Various DropSuite Additions
* Travelling Employee CA Policy Form
* GDAP Crate Improvements
* Duo Identity Verification

</details>
