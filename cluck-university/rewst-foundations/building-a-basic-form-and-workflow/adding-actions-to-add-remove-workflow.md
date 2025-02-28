---
description: Create part of a workflow to test, starting with just a few actions.
---

# Adding actions to the "Add or Remove User - Microsoft Group" workflow

## Module Overview

:bulb: You'll notice that a workflow looks kind of like a flowchart -- that's why you began with a simple sketch. It's time to translate the process from paper to Rewst workflow!

### Video (&#x35;_:46 Minutes)_

{% embed url="https://youtu.be/lvGk9KIxWec?si=7ttLX9UqAZ0e5a-E" %}

#### Steps to Add Actions to the Workflow

**Open** the "Add or Remove User - Microsoft Group" workflow, which (up to this point) only has the workflow configuration settings and trigger set up. Complete the following steps to add your workflow actions.

<details>

<summary>Step 1: <strong>Add the First Action – a "Noop" Decision Point</strong></summary>

1. **Search** for and add a "noop" action to your workflow.&#x20;
2. **Rename** the action to "add\_or\_remove."
3. **Configure** this action as a decision point by adding two custom condition transitions:

For the first transition, **label** it "Add to Group," select _custom condition_, and enter `{{ CTX.action == "add" }}` in the Jinja editor. Notice that if you open the editor (by selecting the "Jinja burger" icon to access a pop-up window), typing "CTX." will show you the three input variables that you added to the workflow configuration settings, and you can select "action" rather than typing it manually.

For the second transition, **label** it "Remove from Group," select _custom condition_, and enter `{{ CTX.action == "remove" }}` in the Jinja editor.

</details>

:star: A **noop** action is often used as a placeholder or decision point. Feel free to make this action a "favorite" by selecting the star icon. You can access favorite actions by right-clicking anywhere on the workflow canvas.

<details>

<summary>Step 2: Add the Action to Add a Group Member</summary>

1. **Search** for "Graph Add."
2. **Drag and drop** the "Add Group Member" Microsoft Graph action into the workflow canvas, connecting it to the Add transition from the "add\_or\_remove" action by clicking the dot (at the bottom of the transition box) and holding down to "draw" an arrow to the action.
3. **Select** the action and **enter** the required parameters in the Jinja editor:

For Group, **enter** `{{ CTX.group_id }}`.

For User, **enter** `{{ CTX.user_id }}`.

</details>

:star: This setup (Jinja code in the Microsoft Graph action) allows the action to work with any group and user ID from the submitted form.

<details>

<summary>Step 3: Add the Action to Remove a Group Member</summary>

1. **Search** for "Graph Remove."
2. **Drag and drop** the "Remove Group Member" action below the "Remove" transition, connecting the two.
3. **Repeat** the steps to add the same code for the action parameters as you did for the "Add Group Member" action.

</details>

<details>

<summary>Step 4: Edit Action Names (Optional but Recommended)</summary>

To make the workflow clearer, consider **editing** the names of the actions to remove the "Microsoft\_Graph\_" prefix. Shorter action names are easier to view/read on the workflow canvas.

</details>

<details>

<summary>Step 5: Publish the Workflow</summary>

Remember, while Rewst auto-saves your work, it’s a good habit to **publish** after significant updates. This not only saves your progress but also allows you to add comments that can be useful if you ever need to revert to a previous version through the "Workflow History" icon.

</details>

### Action Items

Add the actions to your workflow as outlined above, ensuring that you configure each action correctly and connect them to the appropriate transitions.

## Navigation
