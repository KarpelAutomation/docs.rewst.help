# April 11th, 2025 - Marketplace Update

Explore the new changes to the Marketplace in the last week!

This can be anything from new crates, enhancements, or bug fixes!

<details>

<summary><strong>New crates and enhancements</strong></summary>

* Alert on Privilege Role Account Creation

</details>

<details>

<summary><strong>Bug fixes and chores</strong></summary>



* Microsoft: User Onboarding
  * changed powershell code in \[REWST - TASK] Create On Prem Exchange Mailbox to avoid null values being converted to strings
  * changed custom transition condition to account for "error" message instead of just "failure"
  * fixed task criteria sensitivity for check\_send\_mail\_only action from 0 to 1 in \[REWST - TASK] User Onboarding: Create Azure AD User
  * Removed noops that are now unnecessary because subscription\_id is now an optional input for the Sherweb task:
  * check\_sub\_id\_supplied
  * no\_sub\_given\_cannot\_continue
  * changed field input from CTX.desk\_phone\_number number to CTX.phone\_number in format\_phone\_numbers\_and\_custom\_display\_name action    \
    Added phone\_number\_format field in the form and set it as an input variable in the wf
  * added idp\_config as input variable to \[REWST - PROC] Microsoft: User Onboarding with default value of ORG.VARIABLES.primary\_identity\_provider|d|lower    \
    added idp\_config input variable description
  * added input to fields in the action for both update and create contact
* Find Inactive Computers in RMM
  * Updated crate description with support RMM platforms.
  * Added error handling for instances where Ninja RMM does not return OS infromation for an endpoint.
  * Removed random noop and fixed immybot listing
* Billing Count Report
  * added status = "Active" param for pax\_8\_list\_companies action in order to filter companies and avoid timeout errors
* Update User Attributes (On-Prem/Azure) v2
  * Added &$filter=accountEnabled eq true to the query in get\_aad\_users action to filter out disabled accounts
* Microsoft: User Offboarding
  * Added Immybot integration override on template workflow for \[REWST - OPT GEN] Users: List users in Entra or On-Prem AD

</details>

<details>

<summary><strong>Coming soon!</strong></summary>

* Disk Space Monitoring/Alerting
* Org Charter Builder

</details>

