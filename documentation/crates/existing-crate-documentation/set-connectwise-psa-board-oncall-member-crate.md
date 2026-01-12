---
hidden: true
noIndex: true
---

# Set ConnectWise PSA Board OnCall Member Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Set ConnectWise PSA Board OnCall Member Crate do?

This Crate sets an on-call member for specified ConnectWise PSA service boards by updating each board's on-call Member field through API requests. The workflow can either execute immediately or delay execution until a specified date and time, making it useful for scheduling on-call rotations in advance.

### Workflow breakdown

1. The workflow begins with the **check\_if\_delayed** task, which uses the **noop** action to perform flow control logic and determine the execution path based on whether a date and time has been provided.
2. The **check\_if\_delayed** task evaluates two possible transition conditions to determine the next step in the workflow execution.
3. If a date\_time value is provided in the workflow context, the workflow follows the "Delay" transition path and proceeds to the **delay\_until\_time** task.
4. The **delay\_until\_time** task uses the **Delay Workflow Until Date/Time** action to pause the workflow execution until the specified date and time from the CTX.date\_time variable is reached.
5. After the delay period expires, the workflow transitions from the **delay\_until\_time** task to the **cwm\_update\_board\_oncall** task.
6. If no date\_time value is provided in step 2, the workflow follows the "Set Immediately" transition path and proceeds directly to the **cwm\_update\_board\_oncall** task, bypassing the delay functionality.
7. The **cwm\_update\_board\_oncall** task uses the **CW PSA API Request** action to iterate through each board ID provided in the CTX.board\_ids list using a with\_items loop with a concurrency of 1.
8. For each board ID, the task makes a PATCH request to the ConnectWise Manage API endpoint "/service/boards/" followed by the current board ID to update the oncallMember field with the member ID specified in CTX.member\_id.
9. The API request uses JSON patch format to replace the oncallMember value with an object containing the ID of the designated on-call member.
10. Once all board updates have been completed successfully, the workflow reaches its final transition and terminates, having successfully set the on-call member for all specified ConnectWise Manage boards either immediately or at the scheduled time.

## Crate prerequisites

Before unpacking this Crate, you'll need to successfully integrate [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md) with Rewst.

## Unpack the Set ConnectWise PSA Board OnCall Member Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Set ConnectWise PSA Board OnCall Member`**.**

![](<../../../.gitbook/assets/Screenshot 2025-12-19 at 12.12.05 PM.png>)<br>

3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
6. Ensure that **Enabled** is toggled on.
7. Click **Unpack**.

### Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `Set On-Call Member for CWM Board`.
3. Click **⋮ > Usages > View Direct URLs**.&#x20;
4. Click on the link for your relevant. This will launch the form in a new tab.
5. Choose your desired information from the relevant drop-down selector fields:
   1. **PSA Boards** - Select the board or boards to set for on-call
   2. **PSA Member** - Select the technician to set as on-call
   3. Choose **When to make the adjustment**: **Update Now** or **Schedule the update**
6. Click **Submit**.
7. If this is the first time you are using the form, check in ConnectWise PSA to ensure that settings adjusted as expected.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-12-19 at 12.08.23 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
