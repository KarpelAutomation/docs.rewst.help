# Workflows

## What is a workflow?

_Workflows_, made up of [actions](https://docs.rewst.help/documentation/workflows/actions-in-rewst) and [triggers](https://docs.rewst.help/documentation/intro-to-triggers), are the main component of Rewst's automated business processes. They gather relevant data from integrated tools such as a PSA or RMM, process it using conditional logic, and execute automated actions relating to that data. Workflows are the key to unlocking automation in Rewst.

[Crates](https://docs.rewst.help/prebuilt-automations/crates) contain pre-built workflows. Workflows can also be built from scratch, or edited to match your custom needs.&#x20;

{% hint style="warning" %}
We recommend you only edit the pre-built workflows that come in Crates after taking our courses in [Cluck University](https://learn.rewst.io). This is a more advanced way to use Rewst.

Before building any workflow, remember to sketch out what you'd like the workflow to look like, and identify the trigger that will kick it off.
{% endhint %}

## Why build workflows?

While the pre-built workflows in Crates are the quickest way to get started, a workflow built custom to your situation can offer powerful, personalized efficiency measures that fit your particular MSP and customer needs.

## Subworkflows

A _subworkflow_ is a workflow that is also a part of another workflow. In Rewst, every automation can function as either a larger executing workflow or a smaller subworkflow.&#x20;

In the example below, you have a main workflow called **Create Ticket**. In it, you choose which PSA the organization has. Once that has been decided, you then go to a subworkflow, which encompasses the actual creation of the ticket. Note the pink border and icon on the action, denoting that it is a subworkflow.

Click <img src="../../.gitbook/assets/Subworkflow icon.png" alt="" data-size="line"> on a subworkflow to navigate directly to it. You can also view subworkflows on the main workflow page, indicated by the green **Subworkflow** button under the **Attributes** column. Clicking will reveal which workflow the subworkflow is a part of.

<figure><img src="../../.gitbook/assets/image (4).png" alt=""><figcaption><p>An example of subworkflows, flowing out of a larger executing workflow</p></figcaption></figure>

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-01 at 3.14.32 PM (1).png" alt="" width="563"><figcaption><p>The Subworkflow button, under the <strong>Attributes</strong> column of the workflows list page</p></figcaption></figure>



There are a few reasons to set up subworkflows.

* Ensure a tidy workflow. Rather than having 20 steps per PSA on a single workflow, we can split it up for convenience and ease of understanding.
* When addressing various objects, the equivalent of a [for each](https://docs.rewst.help/documentation/workflows/configuring-your-workflow-tasks/advanced-workflow-operations#with-items), we can pass all of the objects to a sub-workflow and get the output back of each object.
* Subworkflows allow you to write a workflow once and reuse it multiple times. Subworkflows also accept parameters, making them adaptable for different use cases.
* Smaller, self-contained workflows are easier to test and debug individually.

{% hint style="info" %}
_Workflow wrapper_ is an informal term sometimes used colloquially by the ROC to describe a situation where a primary workflow is used in a separate workflow as a subworkflow. More information on workflow wrappers can be found [here](completion-handlers-and-workflow-wrappers.md).&#x20;
{% endhint %}

## Find and use workflows in Rewst

Access workflows in the Rewst platform by navigating to **Automations > Workflows** in the left side menu.

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-04 at 3.39.58 PM.png" alt=""><figcaption></figcaption></figure>

The list of workflows that appears in the center of your screen will include both the workflows you create and the workflows unpacked from Crates. As you continue to set up automation in Rewst, this list can grow quite a bit. The **Updated By**, **Attributes**, and [**Tags**](https://docs.rewst.help/documentation/workflows/tags-in-rewst) columns each offer the option to filter your results by relevant criteria. You can also use **Search** in the top right corner to find a particular workflow, and the <img src="../../.gitbook/assets/Screenshot 2025-03-05 at 6.09.13 PM.png" alt="" data-size="line"> icon to the right to choose which columns you'd like to see in your workflow list.

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-04 at 3.40.33 PM.png" alt="" width="143"><figcaption></figcaption></figure>

Once you create a workflow, you'll be taken to the [_workflow builder_](workflow-builder-how-to-set-up-a-workflow.md), a canvas for assembling your workflows. See our documentation for how to use the workflow builder [here](workflow-builder-how-to-set-up-a-workflow.md).&#x20;

## View specific workflow results

The general results page will show you the results of every workflow that has run in your organization. To see all results for a specific workflow, you can do the following:

1. Navigate to **Automations > Workflows**.
2.  Search for the specific workflow.\


    <figure><img src="../../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>
3.  Select the graph icon in the far right corner for that specific workflow. \


    <figure><img src="../../.gitbook/assets/image (1) (2).png" alt=""><figcaption></figcaption></figure>

This will take you to a new page that will show all the results of that workflow.\




## Additional workflow documentation

{% content-ref url="workflow-builder-how-to-set-up-a-workflow.md" %}
[workflow-builder-how-to-set-up-a-workflow.md](workflow-builder-how-to-set-up-a-workflow.md)
{% endcontent-ref %}

{% content-ref url="../actions-in-rewst/" %}
[actions-in-rewst](../actions-in-rewst/)
{% endcontent-ref %}

{% content-ref url="task-transitions.md" %}
[task-transitions.md](task-transitions.md)
{% endcontent-ref %}

{% content-ref url="data-aliases.md" %}
[data-aliases.md](data-aliases.md)
{% endcontent-ref %}

{% content-ref url="best-practices-for-designing-workflows.md" %}
[best-practices-for-designing-workflows.md](best-practices-for-designing-workflows.md)
{% endcontent-ref %}

{% content-ref url="advanced-workflow-operations-menu.md" %}
[advanced-workflow-operations-menu.md](advanced-workflow-operations-menu.md)
{% endcontent-ref %}

{% content-ref url="data-input-and-output-input-variables-and-context-variables.md" %}
[data-input-and-output-input-variables-and-context-variables.md](data-input-and-output-input-variables-and-context-variables.md)
{% endcontent-ref %}

{% content-ref url="option-generator-workflows.md" %}
[option-generator-workflows.md](option-generator-workflows.md)
{% endcontent-ref %}

{% content-ref url="completion-handlers-and-workflow-wrappers.md" %}
[completion-handlers-and-workflow-wrappers.md](completion-handlers-and-workflow-wrappers.md)
{% endcontent-ref %}

{% content-ref url="boolean-logic-in-rewst-workflows.md" %}
[boolean-logic-in-rewst-workflows.md](boolean-logic-in-rewst-workflows.md)
{% endcontent-ref %}

{% content-ref url="document-with-roborewsty.md" %}
[document-with-roborewsty.md](document-with-roborewsty.md)
{% endcontent-ref %}

