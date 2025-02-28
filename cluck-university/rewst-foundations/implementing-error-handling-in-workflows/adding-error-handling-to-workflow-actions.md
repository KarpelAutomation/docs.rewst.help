---
description: >-
  So far, we've been working on what to do next based on the success of our
  actions. But...what if something fails
---

# Adding error handling to workflow actions

## Module Overview

We've come a long way together, and we're about to develop another key skill: building error-handling techniques into our workflows.

### Video (&#x36;_:55 Minutes)_

{% embed url="https://youtu.be/VPHBRRIQnQI" %}

Log into Rewst and complete the following steps

<details>

<summary>Step 1: Adding On Failure Transition to Key Actions</summary>

1. **Click** the add button on the get\_group action to add a new transition
2. **Select** the new transition
3. **Select** On Failure under Condition
4. **Repeat** the process for each Microsoft Graph action and Exchange Online action.

</details>

<details>

<summary>Step 2: The FInish Noop</summary>

1. **Add** a noop towards the bottom right of the workflow
2. **Renam**e it Finish
3. **Connect** all of the On Failure transitions to the Finish noop.
4. **Connect** the On Success transitions of the Microsoft Graph and Exchange Online actions to the Finsih noop.
5. **Connect** the Dynamic Transition to the Finish noop.

</details>

<details>

<summary>Step 3: Configuring the Finish Noop</summary>

1. **Select** the Finish noop.
2. **Select** the Advanced Tab.
3. **Set** Task Transition Criteria to 1.

</details>

### Action Item

Review the lesson resources on task transitions and experiment with adjusting the number of transitions. Observe what happens when multiple transitions feed into a no-op, while also tweaking the task transition criteria sensitivity. This will help you understand how different sensitivity levels affect the workflow's behavior and execution paths in various scenarios.

Start thinking about how you'd like to implement error handling in your workflows. Consider whether you'd prefer simple feedback messages, detailed error logs, or automated corrective actions. Defining clear criteria for handling different types of errors can ensure smoother workflow execution and make troubleshooting more efficient.

### Navigation

