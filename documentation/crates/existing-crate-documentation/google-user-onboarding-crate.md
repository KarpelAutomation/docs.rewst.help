# Google: User Onboarding Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Google: User Onboarding Crate do?

The Google: User Onboarding Crate automates and streamlines the process of onboarding new users into a Google Workspace environment. Enhance efficiency, accuracy, and consistency, ensuring all key tasks for new user creation are completed seamlessly.

This Crate does not support synchronization from on-premises Active Directory to Google Workspace. Licenses are applied based on the organizational unit selected from the form, without advanced custom rules. Any manual corrections or input errors must be handled outside of the workflow.

### How the Crate works

The workflow is triggered when the onboarding form unpacked from the Crate is submitted with all required details. Automatically create a new user account in Google Workspace using details provided via the form, and complete an array of standard onboarding actions for that user, all from one convenient location.

## Crate prerequisites

Our [Google Workspace Admin integration](../../configuration/integrations/integration-guides/google-admin/google-workspace-admin-sdk-integration-setup.md) must first be successfully set up before unpacking this Crate.

Your [PSA ](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations)must be successfully integrated with Rewst.

You must first add the [organization variables](../../configuration/organization-variables.md#what-is-an-organization-variable) `primary_identity_provider` and `default_PSA` in Rewst.&#x20;

## Unpack the Google: User Onboarding Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Google: User Onboarding`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-08-27 at 1.14.48 PM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Enter your estimated time saved.
6. Click **Unpack**.

### Use the Crate

{% hint style="warning" %}
The form unpacked with this Crate offers a section for advanced settings. They should only be used if you fully understand their impact. For questions about the ramifications of using advanced settings, [contact Rewst Support](../../../support-and-community/roc-support/).&#x20;
{% endhint %}

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[Crate] GWS: User Onboarding`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains your relevant user. This will launch the form in a new tab.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-18 at 4.46.22 PM.png>)
5. Select the ticket number from the drop-down selector. Alternatively, leave the **Existing** **Ticket Number** field blank to create a new ticket.
6. Enter the user's **First Name** and **Surname** into the relevant fields.
7. Choose the relevant domain for the user's email from the **Email Domain Name** drop-down selector.
8. If desired, check on the **Copy User Attributes** box to copy attributes such as group memberships and licenses from an existing selected user. The form defaults this box to unchecked.
9. Choose the applicable Google Workspace Group from the **GWS Groups** drop-down selector.
10. Specify the org unit that the user should be created in by choosing from the **Org Unit** drop-down selector.
11. Optional - check on **Enable Advanced Options** if desired, to expose the following additional advanced fields for the user:\
    \
    ![](<../../../.gitbook/assets/Screenshot 2025-09-18 at 4.47.28 PM.png>)
    1. **Custom Display Name**
    2. **Job Title**
    3. **Department**
    4. **Manager**
    5. **Create Company Contact in PSA** - Create a contact in your PSA for that company with the first and surname of the new user, along with their email address
    6. **Password** - Generate and securely store the initial password
    7. **Store Password in Ticket** - Document the password for the new user in the PSA ticket
    8. **Delay User Creation -** Check this box to expose additional fields to allow a specific **Account Creation Date** and **Timezone**
    9. **PSA Child Company**
    10. **RMM Child Site**
12. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
