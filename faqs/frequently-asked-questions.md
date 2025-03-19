---
layout:
  title:
    visible: true
  description:
    visible: false
  tableOfContents:
    visible: true
  outline:
    visible: true
  pagination:
    visible: false
---

# Frequently asked questions

### General

<details>

<summary>You keep mentioning the "ROC", who or what is that?</summary>

Our Robotic Operations Center, or ROC team, is here to support you in your journey to create, monitor, and manage your workflows. As a member of the Kewp, you'll have access to our dedicated team of specialists through [Discord](https://discord.gg/rewst), [Support Tickets](../support/roc-support/) and our ROC Open Mic Friday calls.

</details>

<details>

<summary>Am I creating my own workflows / forms etc, or are you?</summary>

Once we have you set up with your first workflow, you can take advantage of our ever-expanding [Crate library to install pre-build workflow bundles](../prebuilt-automations/crates/). You will also be able to take advantage of our Cluck Univeristy courses in live and self-serve formats to learn about building your own solutions. You can get started here! Don't forget, the ROC team will be here to support you on your automation journey!

</details>

<details>

<summary>Why can't I click on actions when using the Brave browser?</summary>

There is an issue with the Brave browser where it will block the click event on actions. This is due to the way that Brave handles the click event. To fix this, you can either disable the Brave shield for the page, or you can use a different browser. The feature is called "Shields Off" in Brave.

</details>

<details>

<summary>I use Threatlocker and it's causing issues with executions in Rewst. How do I fix it?</summary>

We have heard that some of our customers encounter issues with Threatlocker blocking certain actions. To help with this, we have some information that may be useful.

Threatlocker has a built-in application for Rewst IP addresses that can be added to your ringfence policy. Here are the steps to do so:

1. Go to Modules
2. Navigate to Application Control
3. Click on Policies
4. Select PowerShell Ringfencing Policy
5. In the Actions section, click on Tags
6. Add Rewst

This process may not be necessary if you have already [whitelisted our outgoing IP addresses](../security/security-policy.md), but it's something to consider if you run into any issues.

</details>

### Platform

<details>

<summary>How do I access variables in a workflow? Normal and Workflow Listeners too!?</summary>

When running a workflow, you can access the variables within that workflow by accessing what we call "The Context". The context is accessible by using `{{ CTX.<variable_name> }}` - this will autocomplete in the workflow editor.

We also have some default variables that are accessible in all workflows, such as the org id, org variables, etc. These are accessible by using `{{ ORG.<thing> }}`. Note there are a couple of these:

* `{{ ORG.VARIABLES.<variable_name> }}` - Accesses the org variables from the org that the workflow is running in.
* `{{ ORG.ATTRIBUTES.<variable_name> }}` - Accesses the org attributes from the org that the workflow is running in, such as the ORG ID

You are also able to take advantage of workflow listeners. Workflow Listeners, also known as Completion Handlers, are workflows that execute after another workflow has been completed. These listeners have a context variable that can be used to reference previous contexts from the workflow that was completed. This is done by using `{{ COMPLETED_WORKFLOW.CTX.<variable_name> }}` - this should autocomplete in the workflow editor.

An example is if you have `{{ CTX.first_name }}` which has the value of "Zelda", in the workflow listener workflow you would access it with `{{ COMPLETED_WORKFLOW.CTX.first_name }}` which would also have the value of "Zelda".

Finally, you can access the task output using `{{ TASKS.<task_name>.result.result }}` - this will autocomplete in the workflow editor.

It's worth noting this also works for workflow listeners, so if you have a workflow listener that runs a task, you can access the output of that task using `{{ COMPLETED_WORKFLOW.TASKS.<task_name>.result.result }}`

</details>

<details>

<summary>How do I add a new client into Rewst after the onboarding stage?</summary>

Adding a client into Rewst is currently the most manual aspect of using Rewst. There are a few moving parts that have to be done in order to make sure everything works correctly. [You can find the steps to add a client to Rewst here](../documentation/user-management/adding-a-new-client-to-rewst.md).

There is also a prebuilt automation (also known as a Crate) to add Clients to Rewst. [You can find the setup instructions here.](../prebuilt-automations/existing-crate-documentation/add-client-to-rewst-setup.md)

</details>

<details>

<summary>What is Shallow Cloning?</summary>

Shallow cloning is a feature of the Rewst platform that allows you to create a copy of an existing workflow or form. This is useful if you have a workflow that is very similar to another workflow, but you want to make a few small changes to it.

**What's the difference between cloning and shallow cloning?**

Cloning copies the entire resource "pack" (workflow, forms, templates, triggers, etc) and when cloning into your own org, you end up with multiple duplicates of the same resource. This can result in a lot of clutter, confusion, and an overall messy environment which makes it difficult to manage.

Shallow cloning copies that single selected resource, but re-uses all of the dependencies that it has. This means that if you have a sub-workflow that is part of a main workflow, and you shallow clone that sub-workflow, you will end up with a copy of the sub-workflow. This means that you can make changes to the sub-workflow without affecting the original workflow.

**Okay, but how do I do it?**

This is one of the great things about how we have implemented the product - there is actually no change to how you clone or shallow copy a resource. We will automatically detect if you are cloning something into your own org, and if so, we will shallow-clone it instead. This removes the "Synchronize" button on the popup modal and instead shows a little bit of verbiage to explain what is happening - and link you here!

</details>

### Forms

<details>

<summary>How can I give my clients access to a form?</summary>

In order for a client to access a form, you must invite them to the Rewst platform.

It is important however that you first switch to that client in the dropdown on the top left of Rewst.

<img src="../.gitbook/assets/client-selector.png" alt="" data-size="original">

You then click the person icon in the top right which will bring up the below menu.

<img src="../.gitbook/assets/invite-new-users (2).png" alt="" data-size="original">

Enter their e-mail and they will then be able to access the platform.

It's important to note that at this time, there is no way to stop them from accessing the Rewst platform if they need access to a specific form - however, it will only give users access to what is in that specific org account, not your top-level MSP account.

</details>

### Workflows

<details>

<summary>What does this error mean? "UnreachableJoinError: The join task|route "XXXXXXX" is partially satisfied but unreachable."</summary>

This error is related to having multiple transitions going to a single action.

1. Within the action that has multiple transitions going to it, click the Advanced tab
2. Under the field _"Task Transition Criteria"_ you will likely have a 0, which means that all actions previously have to be complete before that action will run.
3. Amend this to the relevant number, e.g. change to 1 so that only one of the previous actions must complete before that action runs

<img src="../.gitbook/assets/task-transition-criteria.png" alt="" data-size="original">

In the image above, the workflow chooses the RMM of the client and then depending on the result, runs a script on that system. The client likely isn't going to have multiple RMMs, so only one of the "script" tasks is going to run.

However, they all merge into the final "compile\_results" task at the bottom. By default, this workflow will fail as it is expecting each script task to complete before hitting that final task.

This is where you would amend that Task Transition Criteria, in this case, to a 1. This states that only one of the tasks that come into it must have been completed.

If there was a workflow where you wanted to run on two instances (say you had a script run on Ninja, but also wanted to do something on Immy and then compile the results) then you would use 2, for 2 tasks to be completed.

</details>

<details>

<summary>What is meant by the term "Workflow Wrapper" when discussed by the ROC team?</summary>

The term "Workflow Wrapper" is an informal term sometimes used colloquially by the ROC to describe what the Rewst platform officially refers to as a "sub-workflow."

If you encounter the use of the term "Workflow Wrapper" in conversations in the kewp, or with other Rewst users, understand that it refers to a parent workflow that contains one or more sub-workflows. For the official documentation and guidelines on creating and managing sub-workflows, please consult the [Different Types of Workflows](../documentation/workflows/different-types-of-workflows.md#subworkflow) section.

</details>
