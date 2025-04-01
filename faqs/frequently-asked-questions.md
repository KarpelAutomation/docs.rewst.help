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

