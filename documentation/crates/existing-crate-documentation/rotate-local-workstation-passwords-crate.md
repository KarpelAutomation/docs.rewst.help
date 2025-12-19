# Rotate Local Workstation Passwords Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Rotate Local Workstation Passwords Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

This Crate provisions a dedicated local administrator account on each workstation and rotates that account’s password on a weekly schedule by default.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* The Crate's workflow retrieves the workstation list from your RMM.
* It then uses PowerShell to manage the local administrator account by:
  * Creating the configured admin account on each workstation with the account name defined in the trigger.
  * Rotating the password on a weekly schedule, defaulting to every Friday but modifiable in the trigger
* Each generated password in your configured documentation tool is then documented.
  * On the first run, a Flexible Asset in IT Glue or Asset Layout Type in Hudu is automatically created. The type name is **Local Administrator Password Rotation**.
  * For each workstation, an asset is created or updated based on MAC address, to include workstation name, MAC address, and corresponding password.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which validates that both documentation and RMM integrations are properly configured by checking for required organization variables and determines the documentation platform to use.
2. The **rmm\_list\_workstations** task using the **\[REWST - OPT GEN] RMM: List Workstations** action retrieves a list of all workstations from the configured RMM system for the organization.
3. The **check\_variables** task using the **noop** action validates that workstations were successfully retrieved and that an admin username is available, routing to failure if either condition is not met.
4. The **rotate\_passwords** task using the **\[REWST - TASK] Run Powershell via RMM** action executes a PowerShell script on each workstation through the RMM to rotate the local administrator password, running with concurrency of 5 devices at a time.
5. The **check\_for\_changed\_passwords** task using the **noop** action evaluates the results from the password rotation task to determine if any passwords were successfully changed.
6. The **get\_documentation\_asset** task using the **\[REWST - CRATE] Rotate Local Password: Upsert Asset** action retrieves or creates the appropriate documentation asset structure in either IT Glue or Hudu based on the configured documentation platform.
7. The **update\_documentation** task using the **\[REWST - PROC] Rotate Local Password: Update Documentation** action updates the documentation platform with the new password information for each device that had its password successfully rotated, running with concurrency of 5 devices at a time.
8. Any failures throughout the process are handled by the **failure\_catch** task using the **noop** action, which sets the success flag to false and routes to the end of the workflow.

## Crate prerequisites

Your [RMM](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) must be successfully integrated with Rewst.&#x20;

[IT Glue](../../configuration/integrations/integration-guides/it-glue-integration-setup.md) or [Hudu](../../configuration/integrations/integration-guides/hudu-integration-setup.md) integration must successfully be set up with Rewst.

## Unpack the Rotate Local Workstation Passwords Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Rotate Local Workstation Passwords`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/Screenshot 2025-12-02 at 4.18.38 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on for **Cron Job** under **Configure Triggers**. Note that you have the option under the accordion menu of the trigger to activate the Crate for all future organizations in addition to the current one. You may also set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

## Use the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule. To edit a cron trigger in the workflow to either test it once or change the time it will routinely run:

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for `[REWST - CRATE] Rotate Local Workstation Passwords`**.**
3. Click on the workflow to view it in the Workflow Builder.
4. Click ![](<../../../.gitbook/assets/image (226).png>) to open the **Edit Trigger** menu.
5. The default **Cron Schedule** under **Trigger Parameters** is currently set to Friday at 3:20 PM UTC. This may be kept as is or if desired, be modified. To modify, update the timing of the cron trigger in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.
7. Click **Save**.
8. You'll see a green message at the top of your screen indicating the trigger is saved.
9. Check your documentation tool to ensure that the asset is created.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
