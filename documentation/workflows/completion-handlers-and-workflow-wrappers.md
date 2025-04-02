# Completion handlers and workflow wrappers

## Completion handlers

_Completion handlers_ are workflows that execute after another workflow has been completed. They provide a mechanism to extend or modify existing workflows without altering their core structure. These workflows have a [context variable ](data-input-and-output-input-variables-and-context-variables.md)that can be used to reference previous contexts from the workflow that was completed. Configure completion handlers to either trigger another workflow after the existing one finishes, or execute the current workflow when another workflow is completed.

### Example workflow use cases for completion handlers

Let's look at a few use cases for using completion handlers:

* Taking additional steps after the onboarding workflow is complete
  * Add additional functionality to an existing synced workflow without having to unsync it from the template.
* Alerting for failed workflow executions, like kicking off the listener based on a failed status

### Configure a completion handler in a workflow

1. Navigate to **Automations > Workflows**.&#x20;
2. Locate the existing workflow that you want to address. Click <img src="../../.gitbook/assets/Screenshot 2025-03-05 at 2.43.57 PM (1).png" alt="" data-size="line"> **Workflow Completion Handlers**.
3. Note the two options in the **Completion Handlers** section. You'll need to choose which one you want to use:
   1. Run this workflow when...
      1. This will run the workflow when another workflow completes
   2. When this workflow completes...&#x20;
      1. This will result in something being done when the workflow completes
4. Define your trigger conditions. This step will differ depending on which of the two options you chose in step 3.
   1. For When this workflow completes...
      1. Click <img src="../../.gitbook/assets/Screenshot 2025-03-07 at 2.00.23 PM (1).png" alt="" data-size="line"> to choose the workflow to trigger.
      2. Under **Trigger On Statuses**, specify the conditions for the trigger, such as **succeeded,** **failed**, **timed out**, or **canceled**. You can select multiple statuses from the drop-down list.
   2. For Run this workflow when...
      1. Click <img src="../../.gitbook/assets/Screenshot 2025-03-07 at 2.00.23 PM (1).png" alt="" data-size="line"> to choose the workflow to trigger.
      2. Under **Trigger On Statuses**, specify the conditions for the trigger, such as **succeeded,** **failed**, **timed out**, or **canceled**. You can select multiple statuses from the drop-down list.
      3. Select your relevant integration or integrations from the drop-down selector.&#x20;
      4. Open each selected integration's accordion menu to choose your **Configuration Selection Mode** for that integration.
5. Make sure **Enabled** is toggled to on.
6. Click **Submit** to save your settings.&#x20;

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-07 at 2.02.10 PM.png" alt=""><figcaption><p>An example <strong>Add Completion Handler</strong> dialog for the <strong>When this workflow completes...</strong> option</p></figcaption></figure>

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-07 at 2.08.30 PM.png" alt=""><figcaption><p>An example <strong>Add Completion Handler</strong> dialog for the <strong>Run this workflow when...</strong> option</p></figcaption></figure>

### Access the context of the previous workflow

Contexts from the previously run workflow can be accessed with the `COMPLETED_WORKFLOW` variable. You can access most info via the context including ORG and CTX such as:

1. `{{ COMPLETED_WORKFLOW.ORG.VARIABLES.cw_manage_company_id }}`
2. `{{ COMPLETED_WORKFLOW.CTX.user.username }}`

{% hint style="danger" %}
Completion handlers will always run in the context of the parent organization. If you are taking actions on a suborganization in the workflow, then you must utilize the run-as-organization functionality and overrides set at the completion handler level.

The organization ID that was used in the previous workflow context can be referenced with the following Jinja:

`{{ COMPLETED_WORKFLOW.ORG.ATTRIBUTES.id }}`
{% endhint %}

## Workflow wrappers

_Workflow wrapper_ is an informal term used colloquially by the ROC to describe a situation where a primary workflow is used in a separate workflow as a [subworkflow](./#subworkflows). Whereas a completion handler only runs when a workflow completes, a workflow wrapper can run before or after completion.&#x20;

### Example workflow use cases for workflow wrappers

Let's look at a few use cases for using workflow wrappers:

* Handle pre and post-onboarding tasks
* Run a Crated workflow against a group of items, in a way it was not originally designed to do

