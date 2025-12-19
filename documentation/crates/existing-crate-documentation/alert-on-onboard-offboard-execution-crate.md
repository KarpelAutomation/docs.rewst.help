# Alert on Onboard/Offboard Execution Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Onboard/Offboard Execution Crate do?

Our Alert on Onboard/Offboard Execution Crate ensures that your security protocols are upheld during critical transitions like onboarding or offboarding. This Crate sends automated notifications to a specified email address whenever an onboarding or offboarding automation is run, letting you know if the execution was successful or unsuccessful. The Crate enables you to perform the following:

* Automatically send an email to the designated address, a great way to notify a point of contact at your customer's company when a user has been onboarded or offboarded
* Enhance security measures during sensitive operations like onboarding and offboarding
* Work seamlessly with any existing onboarding or offboarding workflows you may have

### How the Crate works

* The system recognizes when an onboarding or offboarding automation is initiated.
* An automated email is dispatched to the specified security email address, detailing the action taken.

{% hint style="info" %}
Note that this Crate has no triggers. Its workflow is meant to be set up using a workflow [completion handler](../../automations/workflows/completion-handlers-and-workflow-wrappers.md), which will run after the onboarding or offboarding workflows execute. You'll need to manually connect it to your desired workflow— either the workflow unpacked from the Microsoft: User Onboarding Crate or the workflow unpacked from the Microsoft: User Offboarding Crate.
{% endhint %}

## Crate prerequisite

To choose the email where the notification will be sent, you must set the [organization variable ](../../configuration/organization-variables.md#manually-add-a-new-organization-variable)`onboard_offboard_notification_email` before unpacking this Crate.    &#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2025-12-10 at 4.13.55 PM.png" alt=""><figcaption></figcaption></figure>

## Unpack the Alert on Onboard/Offboard Execution Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Alert on Onboard/Offboard Execution`.

    \
    ![](<../../../.gitbook/assets/image (1).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.&#x20;
6.  Enter **Time Saved** under **Crate Configuration**.&#x20;



    <figure><img src="../../../.gitbook/assets/image (1) (2).png" alt=""><figcaption></figcaption></figure>
7. Click **Unpack**.

### Additional setup steps: Make the completion handler

Follow [steps here](https://docs.rewst.help/documentation/automations/workflows/completion-handlers-and-workflow-wrappers) to set up the completion handler for the workflow unpacked from the Crate. You want to add the completion handler so that the workflow unpacked with the Crate,`[ROC] Listener: New Employee Run Notification`, would trigger when the initial workflow completes. This initial workflow would be either the [Microsoft: User Onboarding workflow](microsoft-user-onboarding-crate-v2/) or the [Microsoft: User Offboarding workflow](microsoft-user-offboarding-crate.md), depending on how you want to use the Crate.

1. Navigate to the desired Microsoft: User workflow.
2. Choose the **When this workflow completes** tab.
3. Set the **Trigger On Statuses** section to run the workflow as all possible statuses: **succeeded**, **failed**, **timeout**, and **canceled**.
4. If desired, set specific organizations for this completion handler to apply to. Click **Add All** to apply the completion handler to all organizations.
5. Ensure that **Enabled** is toggled on.
6. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-12-10 at 4.05.12 PM.png" alt=""><figcaption><p>Be sure to add all statuses, which will send an email for all possible initial workflow execution results.</p></figcaption></figure>

### Test the Crate

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Search for the workflow you used as the initial workflow in your completion handler.&#x20;
3. Click on that workflow to open it in the Workflow Builder.
4. Click **Test** to run that workflow.&#x20;
5. Check the email address indicated in your set organization variable to ensure that an email was sent.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
