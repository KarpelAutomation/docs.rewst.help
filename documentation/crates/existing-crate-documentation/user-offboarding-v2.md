# User Offboarding V2 Crate

{% hint style="warning" %}
This Crate is [deprecated](../crate-deprecation-faq.md). Documentation remains for legacy users. For new users, search for and set up the Microsoft: User Offboarding Crate in our Crate Marketplace instead.
{% endhint %}

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates).&#x20;
{% endhint %}

## What does the User Offboarding V2 Crate do?

Our User Offboarding V2 Crate offers a robust logging system and greater flexibility than our original V1 of the Crate. It was designed with standardization and simplification in mind. Each of the workflow tasks and functions are contained within a subworkflow that contains a log message with the results and status of the subworkflow. This allows for easier troubleshooting, and even modification of the workflow.

## Why use the User Offboarding Crate?

* Offboard users that are in the following Active Directory configurations:
  * Azure Active Directory
  * On-premises
  * Hybrid Synced - Active Directory sync
  * Hybrid Not Synced - No Active Directory sync
* Increase time savings and decrease the potential for user error
* Maintain compliance and security standards
* Generate an audit trail by logging actions and their result within your PSA

## Crate prerequisites

{% hint style="info" %}
For more on integrations, see our introductory documentation [here](https://docs.rewst.help/documentation/integrations).

For more on organizational variables, see our introductory documentation [here](../../../).
{% endhint %}

### Required integrations:

* The [Microsoft Cloud integration bundle](https://docs.rewst.help/documentation/integrations/cloud/-cloud-integration-bundle) must be set up. This enables Microsoft Graph API access for Azure AD and M365 deprovisioning.

### Optional integrations:

* For on-premises setup, you’ll need an [RMM integration](https://docs.rewst.help/documentation/integrations/rmm) or [Agent Smith](https://docs.rewst.help/documentation/agent-smith) to run commands against the domain controller.
* [PSA Integration](https://docs.rewst.help/documentation/integrations/psa) must be setup. This is required for automated ticket creation and ticket updates.
* [Documentation Integrations](https://docs.rewst.help/documentation/integrations/documentation) must be set up if you wish to create documentation in your knowledge base.

## Required organization variables

| Variable                             | Description                                                                                                                                                                                         |
| ------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| default\_psa                         | Identifies the PSA that you use                                                                                                                                                                     |
| default\_rmm                         | Identifies the RMM that you use                                                                                                                                                                     |
| primary\_identity\_provider          | Specify where users are created for the organization, either on premise or in Entra                                                                                                                 |
| psa\_default\_board\_id              | The default PSA board (or other organizing feature) that Rewst will use to create tickets on when running automations                                                                               |
| psa\_default\_ticket\_status         | The default ticket status that Rewst will use when updating tickets. This is the status that Rewst will use when actively working on a ticket. It usually set to "In Progress" or a similar status. |
| psa\_ticket\_status\_completed\_task | The default ticket status that Rewst will use when we finish an automation. Consider this the "quality check" status to make sure everything ran properly.                                          |

## Optional organization variables

| Variable                                   | Description                                                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| no\_ticket\_time                           | Set this when you don't want automation to put time\_worked in tickets. The "Yes" option will add notes in the ticket we create when running an automation. The "No" option will let us impersonate a technician to apply time under there name for automations that run. We do this because we can't apply time via the API for most PSAs. |
| require\_approval\_for\_offboarding\_users | set ‘true’ to require approval for offboarding a user.                                                                                                                                                                                                                                                                                      |
| offboarding\_user\_approval\_email         | set this to the person who needs to approve the user being offboarded.                                                                                                                                                                                                                                                                      |
| preferred\_domain\_controller              | Choose this DC instead of letting automation decide                                                                                                                                                                                                                                                                                         |
| rmm\_preferred\_adconnect\_server          | If your ADConnect is on a specific server, specify it here                                                                                                                                                                                                                                                                                  |
| onprem\_no\_adsync                         | If there is no ADSync configured between on-prem and M365 (needs to be added manually)                                                                                                                                                                                                                                                      |
| psa\_default\_tech\_id                     | Tech Id to user when updating ticket time                                                                                                                                                                                                                                                                                                   |
| psa\_default\_ticket\_urgency              | Sets the tickets urgency (PSA specific)                                                                                                                                                                                                                                                                                                     |
| **psa\_default\_ticket\_source**           | Sets the tickets source (PSA specific)                                                                                                                                                                                                                                                                                                      |
| psa\_default\_ticket\_priority             | Sets the tickets priority (PSA specific)                                                                                                                                                                                                                                                                                                    |
| psa\_default\_ticket\_impact               | Sets the tickets impact (PSA specific)                                                                                                                                                                                                                                                                                                      |
| psa\_default\_tech\_worktype               | Sets the tickets worktype (PSA specific)                                                                                                                                                                                                                                                                                                    |
| nable\_device\_filter\_id                  | if using n-able rmm, this is required to properly match the preferred domain controller.                                                                                                                                                                                                                                                    |
| automation\_task\_offboard\_user\_time     | Default time for the "Offboard User" workflow, to add to the ticket at completion                                                                                                                                                                                                                                                           |



## Unpack the User Offboarding V2 Crate

1. Navigate to **Crates > Marketplace** in the left side menu of the Rewst platform.
2. Search for `Rewst: User Offboarding V2`\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-03-12 at 3.33.22 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Click **Continue**.
6. If you wish, update the workflow name.
7. Add your **Time Saved**.
8. Click **Unpack** to install the workflows, triggers, and forms. A dialog will appear with the in-progress Crate unpacking. Note that this is a large Crate, and the process may take a few minutes.

<figure><img src="../../../.gitbook/assets/2024-07-26_13-18-55 (1).gif" alt=""><figcaption></figcaption></figure>

## Test the Crate

1. Navigate to **Automations > Forms**.
2. Search for `user offboarding` to find the form unpacked from the Crate.
3.  Click the ⋮ next to the form.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-03-12 at 3.35.42 PM.png" alt=""><figcaption></figcaption></figure>
4. Click **usages**, then **View direct URLs**.
5. Select the form of the customer for which you wish to test.
6. Run through the form and test offboarding a user.

## Considerations when migrating between Crate versions

If you're considering migrating from V1 of this Crate to V2, follow the steps found on the page below:

{% content-ref url="../migrating-between-crate-versions.md" %}
[migrating-between-crate-versions.md](../migrating-between-crate-versions.md)
{% endcontent-ref %}

{% hint style="success" %}
Note: Rewst-managed workflows that contain the above functionality will automatically be updated when v1 is officially deprecated.
{% endhint %}

## How is this different from v1?

While there are numerous bug fixes and enhancements to V2, below is a list of the most requested changes.

* Improved ticketing functionality and control
* Support for the following Active Directory configurations:
  * Azure AD
  * On-premises (NEW)
  * Hybrid Synced (ENHANCED)
  * Hybrid Not Synced (ENHANCED)
* Ability to offboard email-only users when the primary identity provider is on-premises AD.
* New modular design that allows for rapid enhancements, fixes, and customizations.
* Expanded error handling allowing for task-specific logging
* Improved parallel action execution addressing bugs that prevented the use of workflow listeners.

## Troubleshoot the User Offboarding V2 Crate

Common issues include:

* Missing org variables can cause the workflow to fail or not work as expected.
* Missing trigger overrides can cause errors in the workflow.

Tips:

* This workflow contains a robust logging system, and can be checked for detailed information on sub-workflow success and data output. This can be used to diagnose issues in the workflow.
* The notes section of this workflow is one of its most powerful features. You can search the notes tab for functions such as `disable account` or `mailbox` and quickly be taken to that section of the workflow. This can be useful to find specific parts of the workflow that you want to adjust or view.

{% hint style="success" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

