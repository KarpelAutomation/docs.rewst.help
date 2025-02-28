---
description: >-
  Create an option generator workflow designed for a Rewst form field + Use a
  data alias to store the "options" for a form field and accurately map those
  options in workflow output configuration
---

# Introduction to option generators

## Module Overview

:bulb: When automating processes like "Add or Remove User - Microsoft Group," it's crucial to ensure that the options provided are dynamic, not static. If we continue using the same list of groups for every user and action, we waste time and potentially make errors by automating something that doesn’t apply. Here’s how we can fix that using an option generator workflow.

### Video (&#x36;_:08 Minutes)_

{% embed url="https://youtu.be/NGImOFnyeo8" %}

#### Introduction to Option Generators

An option generator workflow allows us to provide tailored options (like a list of groups) based on the user and the action they choose. For example, depending on the user and whether they want to add or remove someone from a group, the list of groups should change accordingly. This workflow dynamically generates the options, so they're always relevant to the task at hand.

<details>

<summary>Creating a Workflow with Custom Options</summary>

To implement this, follow these key steps:

1. **Determine the Options:**&#x20;

First, **decide** what options need to be displayed based on the user’s selection. For example, the list of groups should change depending on whether the action is to "add" or "remove" a user.

2. **Store the Options:**&#x20;

We will **create** a context variable to store these options. In this case, let’s call the variable `group_list`. This will allow us to easily reference the list of groups at any stage of the workflow.

3. **Map the Options in Workflow Output:**&#x20;

Finally, reference the `group_list` variable in your workflow output. This will ensure the relevant options appear in the Rewst form field.

</details>

<details>

<summary>Using Data Aliases for Option Management</summary>

The context variable `group_list` will be populated through a data alias, a concept covered in the Jinja lesson. A data alias allows you to store and manipulate the data returned by your workflow actions. In our example, it stores the list of groups—filtered dynamically based on the user and action.

</details>

<details>

<summary>Visualizing the Workflow</summary>

Before building the option generator, it’s helpful to sketch out your workflow to clarify the inputs and outputs:

* **Inputs:** The user and action determine which groups to show.
* **Outputs:** Two lists of groups:
  * One list contains the user's current groups (for removing a user).
  * One list contains groups that the user is not a member of yet (for adding the user to new groups).

In this workflow, the first action is a decision point: "add to group" or "remove from group." Each option leads to different steps, such as retrieving the user's current groups or generating a list of groups they can join.

</details>

<details>

<summary>Handling the "Add to Group"</summary>

For the "add" action, we need to **create** a new list by subtracting the user's current groups from the total list of groups. To do this, you can use list comprehension within the Jinja code for your data alias, `group_list`.

In both cases (add or remove), we end up with the context variable `group_list` that stores the relevant groups for that user. This is then mapped to the Rewst form field using the variable `{{ CTX.group_list }}` in the workflow output configuration.

</details>

### Action Item

* Practice creating a simple option generator workflow in Rewst.
* Use a data alias to store and filter options based on a user’s action (e.g., add or remove).
* Map the context variable `group_list` to your workflow’s output configuration using Jinja syntax.



## Navigation
