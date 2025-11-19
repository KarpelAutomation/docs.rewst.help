# On-Premises Active Directory Password Expiration Alerts Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the On-Premises Active Directory Password Expiration Alerts Crate do?

Our On-Premises Active Directory Password Expiration Alerts Crate automates the process of monitoring password expiration for on-premises Active Directory users, ensuring that users are notified well in advance. By sending timely email alerts, it helps maintain security and minimizes disruptions by prompting users to update their passwords before they expire.

This workflow is designed for on-premises Active Directory only. It does not monitor or interact with cloud-based directories like Entra ID. This Crate doesn't perform password resets; it only sends notifications. Users must update their passwords manually through the appropriate channels. The workflow does not provide real-time alerts. There may be a slight delay between when a password expiration is detected and when the notification is sent.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Automatically checks for user passwords expiring in 14, 7, 3, and 1 day, ensuring users are well-informed ahead of time
* Sends email alerts to users, reminding them to change their passwords before the expiration date, reducing the risk of account lockout
* Ensures that passwords are updated promptly, reducing the likelihood of unauthorized access due to expired passwords
* Streamlines the password management process, lowering the frequency of IT support tickets related to password issues and freeing up resources for other critical tasks

The workflow is initiated by a scheduled task that runs a PowerShell script at predefined intervals.&#x20;

If Rewst's [PowerShell interpreter](../../rewst-tools/powershell-interpreter.md) tool is installed, Crate workflows which have multiple-system dependencies will have increased efficiency with faster and more consistent cloud-native executions that are completed in seconds.

## Crate prerequisites

One of the following RMM integrations must be set up before unpacking this Crate:

* [ConnectWise Control](../../configuration/integrations/integration-guides/connectwise-control-screenconnect.md)
* [Datto RMM](../../configuration/integrations/integration-guides/datto-rmm-integration-setup.md)
* [ImmyBot](https://app.gitbook.com/u/kmMNMlugUvf2cfCtyBQgNnIYH1H2)
* [Kaseya VSA](../../configuration/integrations/integration-guides/kaseya-vsa-integration-setup.md)
* [Kaseya VSA X](../../configuration/integrations/integration-guides/kaseya-vsa-x-integration-setup.md)
* [N-able (NAble)](../../configuration/integrations/integration-guides/n-able-n-sight-integration.md)
* [NinjaOne](https://app.gitbook.com/o/mdGoyUomPKsvu1TSazxc/s/AQQ1EHVcEsGKBPVHmiav/documentation/configuration/integrations/integration-guides/ninjaone-integration-setup)
* [SuperOps](../../configuration/integrations/integration-guides/superops-integration.md)

The following must be set up before unpacking this Crate:

* [PowerShell](../../jinja/use-powershell-scripts-in-rewst.md) scripts
* `password_expiry_crate_admin_email`  [organization variable](../../configuration/organization-variables.md#what-is-an-organization-variable)

## Unpack the On-Premises Active Directory Password Expiration Alerts Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `On-Premises Active Directory Password Expiration Alerts`.​



    ![](<../../../.gitbook/assets/image (259).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter **Time Saved** under **Crate Configuration**.
7. Ensure that **Enabled** is toggled on under **Configure Triggers**.\
   Note that you have the option under the **Cron Job** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
8. Click **Unpack**.

### Test the Crate <a href="#test-the-crate" id="test-the-crate"></a>

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `[REWST - TASK] Run Powershell via RMM`.



    <figure><img src="../../../.gitbook/assets/image (5).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder.
4. Select either **Form Trigger** or **Password Change Form** from the trigger drop-down list.
5. Click **Test** in the top right corner of the Workflow Builder Canvas.
6. Set or fill out the following fields accordingly:
   * **Trigger Context Organization** - Select the applicable organization\
     Choose an organization and user you use for testing, to allow you to log in and confirm that the desired results are achieved.&#x20;
   * **Password**  - Change the user's password
   * **PSA Ticket ID** - Update ticket with the details of this workflow run
   * **Username** - User context under which the PowerShell script will run
   *   **IDP Configuration** - The accepted values are:

       * `on_prem`
       * `hybrid_no_sync`
       * `azure_ad`
       * `on_prem_only`&#x20;

       If no value is provided. the value will be determined via organization variable logic.
   * **skip\_ticket** - Set to true if you do not want any ticketing done
   * **Unlock Account** - Unlocks account for locked out accounts
   * **User ID** - User ID if no username provided
   * **Force Password Reset** - Force the user to change their password when logging in, defaults to true
7. Click **Test**.
8. Allow the workflow to run.
9. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
