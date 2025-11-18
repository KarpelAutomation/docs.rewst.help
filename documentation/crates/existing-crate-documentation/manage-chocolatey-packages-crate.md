# Manage Chocolatey Packages Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Duo: Manage Phones Crate in our Crate Marketplace.
{% endhint %}

## What does the Manage Chocolatey Packages Crate do?

This Crate allows you to install or uninstall specific software via Chocolatey on a chosen client's device, directly from your PSA ticket.

### Crate prerequisites

Before unpacking this Crate, you must have your [PSA integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which serves as the entry point and immediately transitions to the next step.
2. The **list\_computers** task executes the **\[REWST - TASK] List Computers** action to retrieve a list of computers from the default RMM system for the specified organization, creating a mapping of computer IDs to labels for later use in ticket descriptions.
3. If the **list\_computers** task succeeds, it publishes a computers\_map dictionary for fast lookup and proceeds to the next step; if it fails, it sets an empty dictionary but continues the workflow execution.
4. The **run\_powershell\_via\_rmm** task executes the **\[REWST - TASK] Run Powershell via RMM** action with items iteration, running PowerShell scripts on each computer ID provided in the input with a concurrency limit of 5 simultaneous executions.
5. Regardless of success or failure, the **run\_powershell\_via\_rmm** task transitions to the **is\_ticket\_id\_provided** task, which uses the **noop** action to check if a ticket ID was provided in the workflow input.
6. If a ticket ID is provided, the workflow transitions to the **update\_ticket\_internal\_note** task, which executes the **\[REWST - TASK] Update Ticket Internal Note** action to add the execution results as an internal note to the existing PSA ticket.
7. If no ticket ID is provided, the workflow transitions to the **psa\_create\_ticket** task, which executes the **\[REWST - PROCESS] PSA: Create Ticket** action to create a new PSA ticket with the Chocolatey package management results.
8. Both the **update\_ticket\_internal\_note** and **psa\_create\_ticket** tasks transition to the **END** task on success, or to the **FAILED** task on failure, both using the **noop** action.
9. The **FAILED** task, if reached, transitions to the **END** task to complete the workflow execution.
10. The **END** task uses the **noop** action and publishes an automation log template before completing the workflow, serving as the final step regardless of the execution path taken.

## Unpack the Manage Chocolatey Packages Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Manage Chocolatey Packages`**.**\
   \
   <img src="../../../.gitbook/assets/Screenshot 2025-11-17 at 5.01.40 PM.png" alt="" data-size="original">
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.&#x20;
5. Click **Continue**.
6. Note that you have the option under the Form Submission accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or for integration overrides. Ensure that **Enabled** is toggled o&#x6E;**.**
7. Click **Unpack**.

### Use the form

1. Navigate to **Automations > Forms.**
2. Search for the form named `Chocolatey: Manage Packages`**.**
3. Click **⋮** and select **Usages**.
4. Click **View Direct URLs**.
5. Click the link that corresponds to your desired organization.
6. In the **Organization** drop-down of the form, choose the org you'd like to use to run the form.
7. Select your desired **Action**.
8. Enter the name of the Chocolatey package to process in the **Package Name** field.
9. Select which computers to run the action on in the **Computers** drop-down selector.
10. Select an existing ticket to log the output of the workflow. If no choice is made, Rewst will create a new ticket.
11. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-11-17 at 5.08.03 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
