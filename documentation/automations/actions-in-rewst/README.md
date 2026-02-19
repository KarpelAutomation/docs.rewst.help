# Actions

## What is an action?

_Actions_ are the operations available for creating and automating, which live inside of a [workflow](../workflows/). You grab these actions from the left side menu of the workflow builder, and drag them onto the workflow canvas. When you run a workflow, Rewst is completing a series of actions specified within that workflow. Once an action has been dragged onto the canvas, we refer to that dragged action as a _task_, to differentiate between a dragged and undragged action.

Once you've set up an [integration](https://docs.rewst.help/documentation/integrations), Rewst offers you a number of actions related to that integration to build your workflows. They're accessible from the accordion menus in the left side menu of the workflow builder, and sorted based on their respective sources, including integrations by brand, Core, Rewst, Transform, and Workflow. Expand any accordion to see the related actions it contains.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-04 at 4.15.14 PM.png" alt="" width="242"><figcaption><p>The actions menu of the workflow builder</p></figcaption></figure>



Each action serves a unique purpose and comes with a brief description to aid in understanding its functionality. Click on any action to begin dragging and dropping it onto your workflow builder canvas. For more on our workflow builder and how workflows are essential to Rewst, see our workflow documentation [here](https://docs.rewst.help/documentation/workflows).&#x20;

{% hint style="success" %}
Click through to any of the related action type pages to learn more.
{% endhint %}

### Core actions

These are the essential platform components like webhooks, email dispatching, and [noops](https://docs.rewst.help/documentation/workflows/actions-in-rewst/core-actions#no-operation-noop).&#x20;

{% content-ref url="core-actions.md" %}
[core-actions.md](core-actions.md)
{% endcontent-ref %}

### Integrations actions

When you set up an integration in Rewst, it comes with a predefined set of actions, which will appear in your workflow builder action menu. These actions allow you to work with various parts of the integrated product as per its API. Rewst's integrations pull in the most useful and most commonly used actions, but not all available actions. See our [individual integration setup pages](../../configuration/integrations/) for more information on available actions.

{% content-ref url="../../configuration/integrations/" %}
[integrations](../../configuration/integrations/)
{% endcontent-ref %}

### Rewst actions

These actions are for interacting with your Rewst environment. You can perform tasks such as creating organizations and users, associating with multi-tenanted objects, and setting organization variables.

{% content-ref url="rewst-actions.md" %}
[rewst-actions.md](rewst-actions.md)
{% endcontent-ref %}

### Transform actions&#x20;

These actions help you shape and modify your data for efficient workflow execution, replacing the need for complex Jinja statements.

{% content-ref url="transform-actions/" %}
[transform-actions](transform-actions/)
{% endcontent-ref %}

### Workflows actions&#x20;

These actions allow you to call other workflows within your environment. They enable you to feed information from the parent workflow as inputs and return the results upon completion.

{% content-ref url="workflows-actions.md" %}
[workflows-actions.md](workflows-actions.md)
{% endcontent-ref %}

### Generic actions

For each integration, Rewst provides a single action that isn't predefined like the other integration-related actions, but which can be used to define a URL path. Using that path for the endpoint you wish to reach in the partner's API allows you to specify data, cookies, headers, etc., for custom targeting beyond what Rewst's other predefined actions allow.&#x20;

Generic actions rely heavily on your reading the integration's API documentation and researching the endpoints yourself. Most frequently, we suggest this as a feature for more advanced users, though customers with specific goals might be required to use it early on in their onboarding process.

Generic actions are typically named after the integration in the format of `[integration] API Request`. For example, for HaloPSA the action is called `HaloPSA API Request` .

<figure><img src="../../../.gitbook/assets/image (79).png" alt="" width="246"><figcaption><p>The HaloPSA generic action</p></figcaption></figure>

{% hint style="warning" %}
Note that the paginate request option in any generic action modifies how the request is formed. This can cause issues on the API's side, causing them to behave unexpectedly and return error messages.

If your integration is missing a generic action and you'd like to see us develop one, add that feedback to our [Canny feedback collector.](https://rewst.canny.io/integrations)&#x20;
{% endhint %}



## Known actions issues and errors

This collection of issues related to actions have been reported to Rewst by our customers. If you experience an issue with actions that is not in this list, contact us in your dedicated Discord support channel.&#x20;

{% hint style="success" %}
Click on any of the issues below to expand and see its solution or information.
{% endhint %}

<details>

<summary>Brave browser</summary>

Brave browsers will block the click event on Rewst actions. This is due to the way that Brave handles the click event. To fix this, you can either [disable the Brave shield for the page](https://support.brave.com/hc/en-us/articles/360023646212-How-do-I-configure-global-and-site-specific-Shields-settings), or use a different browser.&#x20;

</details>

<details>

<summary>ThreatLocker</summary>

We have received reports that ThreatLocker may block certain Rewst actions. Threatlocker has a built-in application for Rewst IP addresses that can be added to your Ringfence policy.&#x20;

To set this up in ThreatLocker:

1. Navigate to **Modules > Application Control**.
2. Click **Policies**.
3. Select **PowerShell Ringfencing Policy**.
4. In the **Actions** section, click **Tags**.
5. Add **Rewst**.

This process may not be necessary if you have already [whitelisted our outgoing IP addresses](https://docs.rewst.help/security/security-policy), but it's something to consider if you run into any issues. Additional steps for whitelisting in ThreatLocker are outlined in this linked document.

</details>

<details>

<summary>UnreachableJoinError: The join task|route "XXXXXXX" is partially satisfied but unreachable.</summary>

This error is related to having multiple transitions going to a single action.

1. Click the **Advanced** tab within the action that has multiple transitions going to it.
2. Under the field **Task Transition Criteria**_,_ you'll likely have a 0. This means that all actions previously have to be complete before that action will run.
3. Change this to the relevant number. For example, change to a 1 so that only one of the previous actions must complete before that action runs.\
   \
   ![](<../../../.gitbook/assets/image (65).png>)

{% hint style="info" %}
In the image above, the workflow chooses the RMM of the client. Then, depending on the result, it runs a script on that system. The client likely isn't going to have multiple RMMs, so only one of the script tasks is going to run.

However, they all merge into the final **compile\_results** task at the bottom. By default, this workflow will fail, as it is expecting each script task to complete before hitting that final task.

This is where you would change the **Task Transition Criteria Sensitivity** to a `1`. This states that only one of the tasks that come into it must have been completed.

If there was a workflow where you wanted to run on two instances then you would enter `2`, for 2 tasks to be completed.
{% endhint %}

</details>
