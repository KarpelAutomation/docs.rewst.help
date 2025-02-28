---
description: Recognize where to use Jinja in workflows.
---

# Using Jinja in Rewst workflows

## Module Overview

:bulb: In Rewst workflows, Jinja helps us work with variables in automations. You’ll see variables in places like:

* Form field names&#x20;
* Workflow configuration settings
* Action parameters (like "publish results as")
* Workflow transitions (custom conditions, data aliases)

Context variables are created and modified through workflow actions and transitions, making data reusable across the workflow. Let’s break down some key workflows where Jinja plays a role.

### Video (&#x36;_:31 Minutes)_

{% embed url="https://youtu.be/UgcaWp9rZi8?si=40ubnOI6blYq8rjO" %}

<details>

<summary>Jinja Throughout the Rewst Foundations Course</summary>

Here are a few examples of how and where you'll use Jinja in other course lessons:

* **Building a Basic Form and Workflow:** Form field names become input variables (e.g., `user_id`, `group_id`, `action`), which are passed into the workflow context for each form submission. If you've already completed this lesson, you've used Jinja by using code in your action parameters: `CTX.group_id` and `CTX.user_id` .
* **Creating an Option Generator Workflow:** You’ll configure output variables like `{{ CTX.group_result }}` for workflow output.
* **Workflow Logic:** Custom conditions use Jinja to check variable attributes, e.g., `{{ Graph }}` transition.
* **Getting Modular with a Sub-Workflow:** Input variables become required parameters when this workflow is used in a "parent workflow."

</details>

<details>

<summary>How Data is Created in a Workflow</summary>

Data is created through workflow actions in two ways:

1. **Action Result:** When the action runs, Rewst gets raw data (e.g., Microsoft Graph API response) stored in the "Result" section.
2. **Data Alias:** If a transition condition is met, data aliases can store results (e.g., success or failure).

Check out this example of a Microsoft Graph List Groups action:

* Data is stored in `group_list` and validated by a data alias called `hooray`in the "on success" transition.
* If the action fails, the data alias `boo`would show in the workflow execution results (as it is added to the "on failure" transition).

**Pro Tip:** Use a data alias to store and modify data as needed. You’ll practice this in the lesson on Creating an Option Generator Workflow.

</details>

### Action Items

Beyond the examples reviewed in this module, you can also use Jinja in a feature available for workflow actions, called "Publish Results As." To see this in action, watch the video on how to reference data with variables [here](https://docs.rewst.help/cluck-university/electives/how-to-reference-data-with-variables).

## Navigation
