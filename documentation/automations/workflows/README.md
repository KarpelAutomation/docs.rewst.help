# Workflows

## What is a workflow?

_Workflows_, made up of [actions](https://docs.rewst.help/documentation/workflows/actions-in-rewst) and [triggers](https://docs.rewst.help/documentation/intro-to-triggers), are the main component of Rewst's automated business processes. They gather relevant data from integrated tools such as a PSA or RMM, process it using conditional logic, and execute automated actions relating to that data. Workflows are the key to unlocking automation in Rewst.

[Crates](https://docs.rewst.help/prebuilt-automations/crates) contain pre-built workflows. Workflows can also be built from scratch, or edited to match your custom needs.&#x20;

{% hint style="warning" %}
We recommend you only edit the pre-built workflows that come in Crates after taking our courses in [Cluck University](https://learn.rewst.io). This is a more advanced way to use Rewst.

Before building any workflow, remember to sketch out what you'd like the workflow to look like, and identify the trigger that will kick it off.
{% endhint %}

{% hint style="info" %}
As of mid 2025, Rewst also offers _kits._ A kit is a collection of pre-built, pre-defined tasks that provide a quick start to setting up solutions to specific business needs, or to demonstrate all available actions within a given integration. For example, if you have a Halo PSA kit, there will be actions or automations Rewst has identified that are smaller use cases compared to our larger Crates.

Kits are a newer feature of our Crate Marketplace. Check back as the collection grows. See our up-to-date list of available kits [here](../kits/).&#x20;
{% endhint %}

## Why build workflows?

While the pre-built workflows in Crates are the quickest way to get started, a workflow built custom to your situation can offer powerful, personalized efficiency measures that fit your particular MSP and customer needs.

## Find and use workflows in Rewst

Access workflows in the Rewst platform by navigating to **Automations > Workflows** in the left side menu. Create a new workflow from scratch by clicking **Create Workflow**.\
<br>

<figure><img src="../../../.gitbook/assets/Screenshot 2025-06-05 at 3.37.00 PM (2).png" alt="A screenshot of a dashboard interface labeled &#x27;Workflows&#x27; showing a list of workflows with details including &#x27;Updated At&#x27;, &#x27;Updated By&#x27;, &#x27;Time Saved&#x27;, and options to configure each workflow. The left sidebar contains navigation options."><figcaption><p>The workflows list page, without any filters applied</p></figcaption></figure>

The list of workflows that appears in the center of your screen will include both the workflows you create and the workflows unpacked from Crates. As you continue to set up automation in Rewst, this list can grow quite a bit. The **Updated At**, **Updated By**, **Attributes**, and [**Tags**](https://docs.rewst.help/documentation/workflows/tags-in-rewst) columns each offer the option to filter your results by relevant criteria, with attributes and tags filters operating for both inclusion and exclusion of desired parameters. You can also use **Search** in the top center of your screen to find a particular workflow, and the <img src="../../../.gitbook/assets/Screenshot 2025-03-05 at 6.09.13 PM.png" alt="" data-size="line"> icon to the right to choose which columns you'd like to see in your workflow list.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-06-05 at 3.38.10 PM.png" alt="" width="159"><figcaption></figcaption></figure>

Once you create a workflow, you'll be taken to the [_workflow builder_](workflow-builder-how-to-set-up-a-workflow.md), a canvas for assembling your workflows. See our documentation for how to use the workflow builder [here](workflow-builder-how-to-set-up-a-workflow.md).&#x20;

## Synced versus unsynced workflows

Synced workflows unpacked from Crates can't be edited, and automatically update when Rewst makes changes. For more on synced workflows, including how to identify them, see our documentation on Crates and syntonization [here](../../../prebuilt-automations/crates/#synced-versus-unsynced-crates).&#x20;

## View specific workflow results

The general results page will show you the results of every workflow that has run in your organization. Apply a date range filter to view execution results from a specific time period, up to 30 days prior.

To see all results for a specific workflow, you can do the following:

1. Navigate to **Automations > Workflows**.
2. Search for the specific workflow.
3. Select <img src="../../../.gitbook/assets/Screenshot 2025-06-05 at 3.52.44 PM.png" alt="" data-size="line"> in the far right corner for that specific workflow. This will take you to a new page that will show all the results of that workflow.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-06-05 at 3.51.40 PM.png" alt="A user interface displaying a &#x27;Workflows&#x27; section with a dark background. It includes search and filter options, a list of workflows, and buttons for actions such as &#x27;Configure&#x27; and &#x27;Trigger&#x27; beside a specific workflow titled &#x27;Integration Checklists and WBS.&#x27;"><figcaption></figcaption></figure>

{% hint style="info" %}
When you delete the result of a workflow, consider it to be fully deleted. Only delete results when you are confident that they will not be needed. The result will remain in Rewst's database backup snapshots for a short length of time until it is past the retention period, at which point it will be purged. Meta data and stats about the deleted workflow execution remain in the system. Deleting a workflow execution will not affect time saved or remove time saved.
{% endhint %}

## View triggers for a specific workflow

From the workflows page, you can view triggers associated with each workflow, without leaving that page. Hover over the workflow's **triggers** count in the **Attributes** column to see a list of every trigger linked to your workflow, and toggle each on or off to suit your needs.&#x20;

<figure><img src="../../../.gitbook/assets/trigger hover gif.gif" alt=""><figcaption><p>The dialog that appears when hovering over trigger counts</p></figcaption></figure>

### Export and import workflows

You can export a workflow to share with other Rewst customers, or create your own hard copies of workflow backups. To export a workflow as a JSON bundle, navigate to the [Workflow Builder Canvas](workflow-builder-how-to-set-up-a-workflow.md#workflow-builder) and find the export option under the **Workflow Options** menu.

To import a workflow bundled as a JSON file, click **Import Bundle** in the top right navigation bar of the workflows page. Then, drag and drop your file into the upload dialog that appears.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-10-21 at 4.28.07 PM.png" alt=""><figcaption></figcaption></figure>

## Subworkflows

A _subworkflow_ is a workflow that is also a part of another workflow. In Rewst, every automation can function as either a larger executing workflow or a smaller subworkflow. Sub-workflows help you simplify complex processes, reuse logic, and manage error handling and data gathering cleanly in your Rewst automations. You can create your own subworkflows, or use one of our pre-built subworkflows, cataloged in [this section of our documentation site](../subworkflows/).&#x20;

In the example below, you have a main workflow called **Create Ticket**. In it, you choose which PSA the organization has. Once that has been decided, you then go to a subworkflow, which encompasses the actual creation of the ticket. Note the pink border and icon on the action, denoting that it is a subworkflow.

Click <img src="../../../.gitbook/assets/Subworkflow icon.png" alt="" data-size="line"> on a subworkflow to navigate directly to it. You can also view subworkflows on the main workflow page, indicated by the green **Subworkflow** button under the **Attributes** column. Clicking will reveal which workflow the subworkflow is a part of.

<figure><img src="../../../.gitbook/assets/image (58).png" alt="An image of a small subworkflow, flowing out of a larger executing workflow. The subworkflow is composed of actions, via rectangles outlined in  pink. The flow of subworkflow out of larger workflow is communicated via blue directional arrows. Under each subworkflow action, there&#x27;s the option to click a blue plus button to add additional actions on success or failure of that action."><figcaption><p>An example of subworkflows, flowing out of a larger executing workflow</p></figcaption></figure>

<figure><img src="../../../.gitbook/assets/Screenshot 2025-04-01 at 3.14.32 PM (1).png" alt="" width="563"><figcaption><p>The Subworkflow button, under the <strong>Attributes</strong> column of the workflows list page</p></figcaption></figure>



There are a few reasons to set up subworkflows.

* Ensure a tidy workflow. Rather than having 20 steps per PSA on a single workflow, we can split it up for convenience and ease of understanding.
* When addressing various objects, the equivalent of a [for each](https://docs.rewst.help/documentation/workflows/configuring-your-workflow-tasks/advanced-workflow-operations#with-items), we can pass all of the objects to a sub-workflow and get the output back of each object.
* Run logic inside a subworkflow to isolate errors, apply retry or skip logic, and handle failures cleanly while using [with items](advanced-workflow-operations-menu.md), without failing your parent workflow.
  * This is typically the best method for using with items loops inside Rewst. This allows you to run checks and balances on each iteration to prevent or handle possible failures on a per-item basis.
* Subworkflows allow you to write a workflow once and reuse it multiple times. Subworkflows also accept parameters, making them adaptable for different use cases.
* Smaller, self-contained workflows are easier to test and debug individually.

### Configure the subworkflow inputs and output

Click <img src="../../../.gitbook/assets/Screenshot 2025-09-23 at 12.27.18 PM.png" alt="" data-size="line">to Navigate to **Configure** **Workflow Settings**. Then, configure which data comes into the subworkflow, and which data you want returned to the parent workflow upon completion— your [inputs and outputs](data-input-and-output-input-variables-and-context-variables.md). There are a variety of input types. Below are a few of the most common ones.

<figure><img src="../../../.gitbook/assets/image (66) (3).png" alt="A screenshot of a sub-workflow configuration screen. At the top, there are sections labeled &#x22;Variable Configuration&#x22; and &#x22;Input Configuration&#x22; with a plus icon. Three input fields are defined:  list (type: List) with default value {{ [ ] }}, description &#x22;used for passing JSON object,&#x22; optional required checkbox.  boolean (type: Boolean) with default value {{ true }}, description &#x22;true or false,&#x22; optional required checkbox.  input_configuration (type: Text) with description &#x22;configure Inputs in the sub-wf,&#x22; optional required and multiline checkboxes.  Below, an &#x22;Output Configuration&#x22; section contains a field:  output_data with value {{ &#x22;The sub-wf test data&#x22; }}.  Each entry includes text fields for name, label, type, default value, and description, along with a red &#x22;Remove&#x22; button. At the bottom, there are &#x22;Cancel&#x22; and &#x22;Submit&#x22; buttons.  Highlighted in red boxes are the &#x22;Input Configuration&#x22; and &#x22;Output Configuration&#x22; headers, as well as a pencil icon in the top-right toolbar."><figcaption></figcaption></figure>

<figure><img src="../../../.gitbook/assets/image (67) (1).png" alt="Alt text: A screenshot of a sub-workflow execution result. The header shows &#x22;Sub_Workflow&#x22; with a green checkmark and &#x22;1 successful tasks&#x22; on the right, along with a timestamp &#x22;07-21-25 05:10 PM.&#x22;  On the left, under Input, the JSON-style data is displayed:  boolean: true  input_configuration: &#x22;string&#x22;  list: containing one object with a field user_list that includes three values: &#x22;user1&#x22;, &#x22;user2&#x22;, and &#x22;user3&#x22;.  On the right, under Result, the output is shown:  output_data: &#x22;The sub-wf test data&#x22; Published as {{ CTX.sub_wf_results }}."><figcaption></figcaption></figure>

{% hint style="info" %}
_Workflow wrapper_ is an informal term sometimes used colloquially by the ROC to describe a situation where a primary workflow is used in a separate workflow as a subworkflow. More information on workflow wrappers can be found [here](completion-handlers-and-workflow-wrappers.md).&#x20;
{% endhint %}

### Enable publish results in the parent workflow

This setting publishes the configured output, allowing your parent workflow to use the results of the subworkflow immediately.

1. Find your desired subworkflow in the **Workflows** actions menu in the left side of theWorkflow Builder.
2. Drag your subworkflow from the actions list to the Workflow Builder canvas within your parent workflow.
3. Click on the subworkflow to expose its configuration settings.
4. Enter `sub_wf_results` in the **Publish Results As** field.
5. Click **Publish**.

<figure><img src="../../../.gitbook/assets/image (68) (1).png" alt=""><figcaption></figcaption></figure>

### Access subworkflow data

Results for subworkflows are nested inside published results for workflows. For example, the following Jinja wiuld contain the subworkflow data.

```django
{{ CTX.sub_wf_results.output_data }}
```

<figure><img src="../../../.gitbook/assets/image (217).png" alt=""><figcaption></figcaption></figure>

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

{% content-ref url="../kits/" %}
[kits](../kits/)
{% endcontent-ref %}

{% content-ref url="../subworkflows/" %}
[subworkflows](../subworkflows/)
{% endcontent-ref %}
