# Troubleshoot workflow executions and task results

{% hint style="success" %}
If the issue involves another platform like your [RMM](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations),[ PSA](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations), or email system, check that platform's documentation or status page for recent changes or requirements.
{% endhint %}

## Workflow executions for troubleshooting

{% hint style="info" %}
See our documentation for how to view workflow results [here](https://docs.rewst.help/documentation/automations/workflows#view-specific-workflow-results).&#x20;

To learn the fundamentals of troubleshooting in Rewst, sign up for our course in [Cluck University](https://learn.rewst.io/troubleshooting-in-rewst).
{% endhint %}

* Use the organization-level view to see all workflow executions for one organization.
* Use the workflow-level view to focus on one workflow across all organizations.
* Both paths lead to the Workflow Execution Summary, where troubleshooting begins.

{% embed url="https://www.youtube.com/watch?t=36s&v=rX60BBs15yc" %}

## How to read the workflow execution summary

The inputs and context sections tell the story of what data your workflow received and what the workflow did with that data. Learning to scan these two areas quickly is one of the most important skills in Rewst troubleshooting.

*   The **Inputs** section shows the raw data that entered into the workflow, usually via form, webhook, or parent workflow.\
    \


    <figure><img src="../../../.gitbook/assets/image (72) (2).png" alt=""><figcaption></figcaption></figure>
*   The **Context** section shows variables created or passed between tasks. [Context variables](broken-reference) can change over the execution of the workflow, and each new iteration of variables will be in this list in chronological order.\
    \


    <figure><img src="../../../.gitbook/assets/image (2) (6).png" alt=""><figcaption></figcaption></figure>
* Common issues which lead to failed workflow tasks include typos, casing mismatches, missing values, or broken Jinja.

## Task results

Task results give you a detailed view of what happened in a workflow, and why something may have failed. By learning to read the request, the response, and the task logic, you can identify the issue and know where to take action next.

Task results display two key pieces of information:

* The _request_ Rewst sent—such as a JSON payload or API call to an integration
* The _response_ that came back—typically with a status code and message body

Reading both helps you determine if the failure came from your setup, your data, or the external system.

### **How is data stored in context?**

* `{{ RESULT.result }}` stores a specific part of the task’s output, often the core data value.
* **Publish result as** saves the full response object to a named key in a context variable.
* These outputs can be reused in later tasks through Jinja. For example, by using `Publish result` on one task to create the context variable `user_list`, you can reference that tasks's output on a future task with the Jinja syntax `{{ CTX.user_list }}`.

### Most common task failures

| Failure type                  | What the failure means                                                                                                                                    | How to resolve the issue                                                                                                                                                                                                                                               |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Jinja error`                 | Rewst couldn’t evaluate the task due to bad syntax, missing data, or invalid filters                                                                      | Use the live context editor to test the Jinja expression and verify available values                                                                                                                                                                                   |
| `Integration not authorized`  | 401 or 403 errors mean the integration is either not connected or lacks permissions                                                                       | Recheck integration settings and scopes. If you change permissions in the external tool, reauthorize the integration in Rewst to apply the updates.                                                                                                                    |
| `Request rejected by API`     | 404, 405, or other 4XX/5XX errors mean the request structure is incorrect—or you may not have access to view the item being requested                     | Compare the request to the integration’s documentation—check the endpoint path, HTTP method, and resource IDs                                                                                                                                                          |
| `200 OK, but no result`       | The request was accepted, but didn’t return useful data. This may mean no results matched the query, or the operation isn’t designed to return a response | Review the request parameters and expected output. Check if the API is designed to return a result for this operation, or if it executed successfully with no output                                                                                                   |
| `Transition criteria not met` | The task was skipped because a transition condition wasn’t met—often due to logic that didn’t evaluate as expected or pathing that skipped this task      | <p>Review the transition logic and task flow. Check for incorrect conditions or task paths that prevent the transition from executing</p><p>If the issue isn’t obvious, look at the last successful task—errors upstream often cause transitions to fail silently.</p> |

## Use contextual tools to troubleshoot your workflow

Rewst gives you three powerful tools: the [live editor](../../rewst-tools/the-live-editor.md), which lets you test Jinja expressions using real context data without re-running the full workflow, the _re-run_ button, which lets you re-run the full workflow using the same inputs, and the test button, which offers a quick way to demo the workflow.

### Use the [live editor](../../rewst-tools/the-live-editor.md) when:

* You’re troubleshooting a Jinja error
* You’re checking if a context variable exists or is formatted correctly
* You want to preview loops, filters, or logic before adding it to a workflow
* You need to manipulate or explore context safely without running the workflow

### Use the [test button](workflow-builder-how-to-set-up-a-workflow.md) in the workflow editor when:

* You’re building or editing a workflow
* You want to test changes as you go by running a true execution, not just testing data
* You need a fast feedback loop while adjusting tasks

### Use the re-run button when:&#x20;

* You’ve fixed something and want to confirm the outcome
* You’re testing workflows with consistent inputs like forms or webhooks
* You want to validate that a change resolved the issue end-to-end

{% hint style="warning" %}
If you do plan to re-run the workflow but want to avoid unintended changes, take steps to isolate it for safe testing. That might include:

* Temporarily commenting out tasks that make changes
* Using a test org or test input values
* Adding conditional logic to skip sensitive steps during testing
{% endhint %}

## Know when to escalate your failure to Rewst support

{% hint style="info" %}
This four step model is introduced and outlined in our Cluck University training. For details on these steps with visual examples, see our course [**Troubleshooting in Rewst**](https://learn.rewst.io/troubleshooting-in-rewst).
{% endhint %}

Remember to ask yourself the following questions while troubleshooting your results.

{% stepper %}
{% step %}
### Where did it run?

Check the org-level vs. workflow-level execution. Use the **graph icon** or **Automations > Results**.
{% endstep %}

{% step %}
### What data came in?

Review the **Inputs** section to confirm trigger values or parent workflow data were passed correctly.
{% endstep %}

{% step %}
### What was created in context?

Open the **Context** tab and look for expected variables. Check for typos, nulls, or casing mismatches.
{% endstep %}

{% step %}
### What failed, and why?

Click into the failed task. Read the error message and check:

* Jinja issues
* Transition criteria
* Integration authorization
* API request and response details
* External system behavior - check platform documentation if the task involves an outside service
{% endstep %}
{% endstepper %}

If you've dealt with each of these points and still can't resolve the issue, [escalate to Rewst's support team](../../../support-and-community/roc-support/). Include the following in your ticket:

* The org and workflow name
* A link to the Workflow Execution Summary
* Task result screenshots
* What you've tried so far

Support will be able to help you faster, and with fewer back-and-forth steps.
