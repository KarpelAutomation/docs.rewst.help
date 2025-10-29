# Liongard MFA Remediation Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Liongard MFA Remediation Crate do?

Our Liongard MFA Remediation Crate is designed to complement Liongard's Cyber Risk Actionable Alerts. It triggers upon creation of an actionable alert ticket in your PSA with the title **Exposure to User Account(s) Due to Lack of Strong Authentication**. The automation then checks Microsoft Azure for users without MFA registered and adds them to a conditional access policy to enforce MFA. Users can be directly assigned to the policy or added via a group.

### How the Crate works

* Liongard generates a ticket via actionable alerts upon identifying users that lack strong authentication.
* Once the conditional access policy is configured, the workflow automatically assigns users without MFA to the policy, enforcing the MFA.
* The Liongard - MFA Remediation Setup form is unpacked with the Crate and is used in the setup process.

## Crate prerequisites

The [Liongard integration](../../configuration/integrations/integration-guides/liongard-integration-setup.md) must be set up before unpacking this Crate.

The following are optional integrations but will enhance the Crate's functionality if configured:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
* [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/)

Take note of the following guidelines:

* Ensure that Liongard's Cyber Risk Alert Template is enabled for the environment and configured to send tickets to your PSA.
* This workflow uses conditional access policies to enforce multi-factor authentication, requiring a functional Microsoft Azure tenant with Microsoft Azure AD P1 licenses or trial licenses enabled.
* Prior to execution, complete the Liongard - MFA Remediation Setup form to ensure correct configuration of Organization Variables.

## Unpack the Liongard MFA Remediation Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Liongard MFA Remediation`.

    \
    ![](<../../../.gitbook/assets/image (220).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Toggle on the **Enabled** toggle button only for your relevant PSA integration under **Configure Triggers**. By default, this toggle button is set to off within the integration accordion menus. Note that you have the option to activate the Crate for all future organizations in addition to the current one. You may also set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.
8. Navigate to **Forms.** Search for the form `Liongard - MFA Remediation Setup` that is unpacked with the Crate.
9. Click **⋮> Usages> View Direct URLs**, then click on the link for the form related to your desired organization.
10. Use the form to continue the setup:
    * **Client** - Select the applicable client.
    * **Conditional Access Policy** - Select the conditional access policy to be used that will enforce MFA for users that do not have it enforced. This field accepts custom inputs, and then a new policy will be created.
    * **Conditional Access Policy Group** - This is an optional field. If a new conditional access policy is being created, you can specify a group or create a new group to be used in the new policy.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-10-29 at 3.08.51 PM.png" alt=""><figcaption></figcaption></figure>

11. Click **Submit**.

### Test the Crate

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `Liongard - MFA Remediation`.\


    <figure><img src="../../../.gitbook/assets/image (219).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Select the preferred trigger from the trigger selector:
   * **ConnectWise PSA Ticket**
   * **Datto PSA Ticket**
   * **Halo Ticket**
   * **Kaseya BMS**
5. Click **Test** in the top right corner of the Workflow Builder Canvas.
6. Select the applicable **Trigger Context Organization**.
7. Click **Test**.
8. Allow the workflow to run.
9. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.
10. Check in your Liongard's portal to ensure that the workflow is able to check Microsoft Azure for users without MFA registered and add them to a conditional access policy as expected. If you don't see the desired result in Liongard, return to Rewst and view your workflow's execution results.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
