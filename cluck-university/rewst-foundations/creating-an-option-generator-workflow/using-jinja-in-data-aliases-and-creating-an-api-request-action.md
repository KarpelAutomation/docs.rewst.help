---
description: >-
  Use a data alias to store the "options" for a form field and accurately map
  those options in workflow output configuration.
---

# Using Jinja in data aliases and creating an API request action

## Module Overview

:bulb: In this Options Generator workflow, you'll use data aliases to manage how individual actions store data from integrations. You'll also implement custom API requests when Rewst doesn't offer a built-in action, leveraging Microsoft Graph API documentation. Two key skills, one workflow—like finding that double-yolk at breakfast!

### Video (1&#x32;_:52 Minutes)_

{% embed url="https://youtu.be/8zGCKXkHTAU" %}

Remember, everything we’re doing is to output data to the group field connected to this Option Generator. That's the ultimate goal of this workflow!

#### Add Actions to the Workflow

<details>

<summary>Step 1: Add a noop action</summary>

1. **Add** a noop to the workflow canvas.
2. **Follow** the instructions in: [adding-actions-to-add-remove-workflow.md](../building-a-basic-form-and-workflow/adding-actions-to-add-remove-workflow.md "mention")to configure the noop.
   * Alternatively, you can **copy** the noop from the "Add or Remove User - Microsoft Group" workflow and paste it into this Option Generator.
3. **Search** "graph list groups" in the search bar.
4. **Add** List Groups action under the "Add to Group" transition of the add\_or\_remove noop.
5. **Connect** the transition from Add to Group to the List Groups action
6. **Search** "graph api" in the search bar.
7. **Add "**&#x47;raph API Request" below "remove from group" transition.
8. **Rename** "Graph API Request" to "list\_user\_groups"

</details>

<details>

<summary>Step 2: Adding Graph Actions</summary>

1. **Search** for "graph list groups" in the search bar.
2. **Add** List Groups below the "Add to Group" transition of the add\_or\_remove noop.
3. **Connect** the transition from Add to Group to the List Groups action
4. **Search** "graph api" in the search bar.
5. **Add** "Graph API Request" under the "Remove from Group" transition of the noop.
6. **Rename** the "Graph API Request" to "list\_user\_groups".
7. S**elect** the Jinja Editor icon for the Endpoint field in "list\_user\_groups"&#x20;
   * **Add** `/users/{{ CTX.user_id }}/memberOf`&#x20;
8. **Close** the Jinja Editor.
9. **Add** a data alias in the transition of the "list\_user\_groups" action
   * Key: `group_list`
   * Value: `{{ RESULT.result.data.value }}`
10. **Rename** "microsoft\_graph\_list\_groups" to "list\_all\_groups"
11. **Add** a data alias in the transition of "list\_all\_groups"
    * Key: `all_groups`
    * Value: `{{ RESULT.result.data.value }}`
12. **Copy** the "list\_user\_groups" API request action and **move** it below "list\_all\_groups"
13. **Connect** the transition of "list\_all\_groups" to "list\_user\_groups" from the previous step

</details>

<details>

<summary>Step 3: Adding Jinja Logic</summary>

1. A**dd** a noop below the copied "list\_user\_groups" and **connect** the transition from "list\_user\_groups"
2. **Rename** the noop "build\_group\_list"
3. **Create** a data alias in "build\_group\_list"
   * Key: `group_list`
   * Value
   *   ```
       {{-
       ```

       ```
         [
           group
           for group in CTX.all_groups
           if group.id not in
           [
             user_group.id
             for user_group in CTX.user_groups
           ]
         ]
       -}} 

       ```

15) **Click** _Publish_ to save the workflow.

</details>

### Action Item

* Add and configure a new Generic API Action to execute specific functionality based on the API documentation. Ensure the API endpoint, method, headers, and parameters are set according to the documentation for proper integration.
* Review [how-to-reference-data-with-variables.md](../../micro-courses/how-to-reference-data-with-variables.md "mention") to store objects from the action into Data Aliases.

## Navigation
