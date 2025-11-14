# Google: User Offboarding Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Google: User Offboarding Crate do?

The Google Workspace User Offboarding Crate automates and simplifies the process of offboarding users from a Google Workspace environment. Enhance efficiency, ensure accuracy, and maintain consistency, ensuring all key tasks for user deprovisioning are completed securely and effectively.

This Crate does not delete user data, but transfers it to the appropriate recipient. Permanent deletion policies must be managed externally. It doesn't support synchronization with on-premises Active Directory for offboarding tasks. Customized data retention or deletion workflows beyond basic data transfer must be handled separately. License removal, email forwarding, and setting out-of-office are not available for this Crate.

### How the Crate works

The workflow is triggered when the onboarding form is submitted with all required details. It automatically suspends the user's Google Workspace account to prevent access, and completes a custom array of actions related to offboarding, which you select during the completion of the form.

## Crate prerequisites

Our [Google Workspace Admin integration](../../configuration/integrations/integration-guides/google-admin/google-workspace-admin-sdk-integration-setup.md) must first be successfully set up before unpacking this Crate.

Your [PSA ](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations)must be successfully integrated with Rewst.

You must first add the [organization variables](../../configuration/organization-variables.md#what-is-an-organization-variable) `primary_identity_provider` and `default_PSA` in Rewst.&#x20;

## Unpack the Google: User Offboarding Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Google: User Offboarding`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-08-27 at 1.14.41 PM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Enter your estimated time saved.
6. Click **Unpack**.

### Use the Crate

{% hint style="warning" %}
The form unpacked with this Crate offers a section for advanced settings. They should only be used if you fully understand their impact. For questions about the ramifications of using advanced settings, [contact Rewst Support](../../../support-and-community/roc-support/).&#x20;
{% endhint %}

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[Crate] GWS: User Offboarding`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains your relevant user. This will launch the form in a new tab.\
   ![](<../../../.gitbook/assets/Screenshot 2025-09-18 at 5.07.22 PM.png>)
5. Select name of the relevant user from the drop-down selector.&#x20;
6. Enter a **Password** into the relevant field if you wish to specify a new password for the account when disabling.
7. The following checkboxes are checked on by default, but can be unchecked to your preference:
   1. **Remove from all Groups**
   2. **Disable Account**
   3. **Invalidate Active Sessions**
8. If you have Nodeware integrated with Rewst, an additional **Nodweare Actions** section will appear on the form.&#x20;
   1. Check the **View Nodeware Options** box to see available options.
   2. Select a Nodeware asset to decommission from the drop-down selector.
9. Optional - check on **Enable Advanced Options** if desired, to expose the following additional advanced fields for the user:\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-18 at 5.07.45 PM.png>)\

   1. **Delay User Offboarding -** Check this box to expose additional fields to allow a specific **Account Creation Date** and **Timezone**
   2. **Mailbox Access -** Check this box to expose an additional field to add users who will have access to the offboarded employee's mailbox&#x20;
   3. **Forward Mail -** Check this box to expose an additional field to add a user who will be forwarded all of the offboarded user's emails, with the prerequisite that this user must click the link sent to them in a Google email within 1 hour of its arrival
   4. **Hide from GAL**
   5. **Set Out of Office Message** - Check this box to expose a text field where you may enter the message which will be sent to anyone who attempts to email the offboarded user
   6. **Remove Mobile Devices**&#x20;
   7. **Transfer Drive Contents** -  Check this box to expose an additional field to add a user who will be transferred ownership of the contents of the offboarded employee's Google Drive&#x20;
   8. **Remove all Licenses**&#x20;
   9. **Remove Manager / Supervisor**&#x20;
   10. **Remove EmployeeID**
   11. **Disable PSA Contact**
10. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
