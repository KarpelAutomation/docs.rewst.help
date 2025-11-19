# Completion handlers and workflow wrappers

## Completion handlers

_Completion handlers_ are workflows that execute after another workflow has been completed. They provide a mechanism to extend or modify existing workflows without altering their core structure. These workflows have a [context variable ](data-input-and-output-input-variables-and-context-variables.md)that can be used to reference previous contexts from the workflow that was completed. Configure completion handlers to either trigger another workflow after the existing one finishes, or execute the current workflow when another workflow is completed.

{% hint style="info" %}
You might hear some of our support staff or customers who present on our Open Mics refer to completion handlers as _workflow listeners_. Listener is a more coding-focused term that they're already familiar with. A completion handler and workflow listener are the same thing.&#x20;
{% endhint %}

### Example workflow use cases for completion handlers

Let's look at a few use cases for using completion handlers:

* Taking additional steps after the onboarding workflow is complete
  * Add additional functionality to an existing synced workflow without having to unsync it from the template.
* Alerting for failed workflow executions, like kicking off the completion handler based on a failed status

### Configure a completion handler in a workflow

1. Navigate to **Automations > Workflows**.&#x20;
2. Locate the existing workflow that you want to address. Click <img src="../../../.gitbook/assets/Screenshot 2025-03-05 at 2.43.57 PM (1).png" alt="" data-size="line"> **Workflow Completion Handlers**.
3. Note the two options in the **Completion Handlers** section. You'll need to choose which one you want to use:
   1. Run this workflow when...
      1. This will run the workflow when another workflow completes
   2. When this workflow completes...&#x20;
      1. This will result in something being done when the workflow completes
4. Define your trigger conditions. This step will differ depending on which of the two options you chose in step 3.
   1. For When this workflow completes...
      1. Click <img src="../../../.gitbook/assets/Screenshot 2025-03-07 at 2.00.23 PM (1).png" alt="" data-size="line"> to choose the workflow to trigger.
      2. Under **Trigger On Statuses**, specify the conditions for the trigger, such as **succeeded,** **failed**, **timed out**, or **canceled**. You can select multiple statuses from the drop-down list.
   2. For Run this workflow when...
      1. Click <img src="../../../.gitbook/assets/Screenshot 2025-03-07 at 2.00.23 PM (1).png" alt="" data-size="line"> to choose the workflow to trigger.
      2. Under **Trigger On Statuses**, specify the conditions for the trigger, such as **succeeded,** **failed**, **timed out**, or **canceled**. You can select multiple statuses from the drop-down list.
      3. Select your relevant integration or integrations from the drop-down selector.&#x20;
      4. Open each selected integration's accordion menu to choose your **Configuration Selection Mode** for that integration.
5. Make sure **Enabled** is toggled to on.
6. Click **Submit** to save your settings.&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-07 at 2.02.10 PM.png" alt=""><figcaption><p>An example <strong>Add Completion Handler</strong> dialog for the <strong>When this workflow completes...</strong> option</p></figcaption></figure>

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-07 at 2.08.30 PM.png" alt=""><figcaption><p>An example <strong>Add Completion Handler</strong> dialog for the <strong>Run this workflow when...</strong> option</p></figcaption></figure>

### Access the context of the previous workflow

Contexts from the previously run workflow can be accessed with the `COMPLETED_WORKFLOW` variable. You can access most info via the context including ORG and CTX such as:

1. `{{ COMPLETED_WORKFLOW.ORG.VARIABLES.cw_manage_company_id }}`
2. `{{ COMPLETED_WORKFLOW.CTX.user.username }}`

{% hint style="danger" %}
Completion handlers will always run in the context of the parent organization. If you are taking actions on a suborganization in the workflow, then you must utilize the run-as-organization functionality and overrides set at the completion handler level.

The organization ID that was used in the previous workflow context can be referenced with the following Jinja:

`{{ COMPLETED_WORKFLOW.ORG.ATTRIBUTES.id }}`
{% endhint %}

### Test completion handlers

Completion data is hard to fake for testing because it's represented as `COMPLETED_WORKFLOW.` instead of `CTX.COMPLETED_WORKFLOW.` Rather than running an entire workflow multiple times to test just this one element, create a [noop action](https://docs.rewst.help/documentation/workflows/actions-in-rewst/core-actions#no-operation-noop) that sets the test data, and use it to trigger your completion handler.

In the noop, set all of the variables that will be used in your completion handler in the On Success transition as data aliases.

It’s important that the names of the data aliases you create in the On Success transition of the noop match both:

* the names of the variables that will be used in your completion handler
* the names of the variables that will be used in the live parent workflow that your completion handler is triggered by

Add static values that represent a good test case for ensuring that your completion handler functions the way you expect.

#### Example

In the example below, we’ve created a workflow with a single noop. In the **On Success** transition, we’ve added several data aliases that represent user data that could be used to test a completion handler, which could be used after a user is onboarded or offboarded.

<figure><img src="../../../.gitbook/assets/image (50) (2).png" alt="Screenshot of the Rewst workflow editor showing a single step labeled core_noop. The transition panel on the right displays options to edit the transition, including setting a custom label, moving the step left or right, and selecting a condition (On Success, On Error, Always, or Expression). Below that, a section titled &#x22;Data Aliases&#x22; shows several variables being mapped: first_name to &#x22;Listener&#x22;, last_name to &#x22;Testing&#x22;, email to &#x22;test@rewst.io&#x22;, license to &#x22;Microsoft Business&#x22;, and password to &#x22;RadicalMongoose123!&#x22;. Each alias has controls for reordering and deleting. A &#x22;Sub-Workflow&#x22; node is partially visible at the bottom."><figcaption><p>The noop action, its On Success transition, and the corresponding data aliases</p></figcaption></figure>

Once you’ve created the noop and added the correct data, attach this workflow to your workflow completion handler as another parent workflow that will trigger the completion handler. This will enable testing.

<figure><img src="../../../.gitbook/assets/image (51) (2).png" alt="Screenshot of a Rewst workflow editor showing a step titled core_noop with an &#x22;On Success&#x22; transition. On the right, the &#x22;Edit Transition&#x22; panel is open, allowing users to add a custom label, move the step left or right, and set a condition (Success, Error, Always, or Expression). Several data aliases are configured, mapping variables like first_name, last_name, email, license, and password to static values. At the top of the screen, multiple icons are visible, and a red arrow highlights the &#x22;Show Workflow Variables&#x22; icon, which resembles two stacked squares with a connected line between them. The workflow is titled &#x22;Listener Test.&#x22;"><figcaption><p>The location of the button</p></figcaption></figure>

<figure><img src="../../../.gitbook/assets/image (52) (1).png" alt="Screenshot of the &#x22;Listener Test&#x22; workflow configuration in Rewst. The tab &#x22;When this workflow completes...&#x22; is selected, showing a section titled &#x22;Workflows listening for the completion of this Listener Test workflow.&#x22; No workflows are currently listed. Columns for trigger conditions include: On Succeeded, On Failed, On Timeout, and On Canceled. An orange arrow points to a teal plus (+) icon in the Actions column, indicating where users can add a new workflow listener. The bottom portion of the screen shows the workflow canvas and the &#x22;Edit Transition&#x22; panel with controls for labeling and positioning transitions."><figcaption><p>Click <strong>+</strong> to attach the workflow to the workflow completion handler</p></figcaption></figure>

Click **Test** to run the workflow. This will feed the variables that you’ve set with your completion handler and trigger it to run, allowing you to confirm if the variables are used as expected. If you need to run your test workflow for organizations other than your parent MSP organization, add a trigger to the workflow which will allow you to select which organization the test workflow runs for.

Alternatively, re-run from the workflow result page of the workflow that kicks off the completion handler. This would still run the workflow in total, but would be a simpler way to achieve it with fewer clicks.

## Workflow wrappers

_Workflow wrapper_ is an informal term used colloquially by the ROC to describe a situation where a primary workflow is used in a separate workflow as a [subworkflow](./#subworkflows). Whereas a completion handler only runs when a workflow completes, a workflow wrapper can run before or after completion.&#x20;

### Example workflow use cases for workflow wrappers

Let's look at a few use cases for using workflow wrappers:

* Handle pre and post-onboarding tasks
* Run a Crated workflow against a group of items, in a way it was not originally designed to do



