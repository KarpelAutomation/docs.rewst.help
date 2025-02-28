---
description: Test a workflow and view the results.
---

# Testing the "Add or Remove User - Microsoft Group" form

## Module Overview

:bulb: Now that you've built your form and workflow, it's time to test the prototype by submitting the form and checking the workflow execution results. This step ensures that the workflow triggers correctly and performs the intended actions.

### Video (&#x33;_:20 Minutes)_

{% embed url="https://youtu.be/elucwgeq7Ww?si=iUjQglqjJCp-b_BY" %}

#### Steps to Test the Workflow

Log into Rewst and open the "Add or Remove User - Microsoft Group" workflow.

<details>

<summary>Step 1: Access the Form for Testing</summary>

One way to access your form is by **selecting** the "cog" icon in the workflow trigger settings. From there, **select** "View Direct URLs" and open the link to the form.

</details>

<details>

<summary>Step 2: Submit the Form</summary>

Note: Test something you're comfortable doing!&#x20;

For example, try adding (or removing) yourself to (or from) a group. This way, if the automation works, you can repeat the test to change your group membership back to what it needs to be.

1. **Select** a user.
2. **Select** a group.
3. **Select** the action.
4. **Submit** the form to trigger the workflow.

</details>

<details>

<summary>Step 3: Check the Workflow Execution Results</summary>

After submitting the form, switch to the workflow tab.

1. **Select** the "graph" icon at the top to view the workflow results.&#x20;
2. Each workflow execution will show a status (succeeded or failed), the number of successful tasks, a timestamp, and more details.
3. **Investigate** the workflow status; **select** the status to access more details.

If the workflow failed: **Click** into the failed status to find the action where it failed. **Review** the error data to understand what went wrong. Common issues might include integration problems or typos in the Jinja code.

If the workflow succeeded: Congratulations! You’ve successfully completed your first "Update Group Membership" automation.

</details>

:star: Alternatively, you can go to the "Results" tab under "Automations" to see all workflow results, and find the row that corresponds to your"Add or Remove User - Microsoft Group" workflow.

### Action Items

* Test your workflow by submitting the form and reviewing the results to ensure it triggers and performs the actions correctly.
* If the workflow fails, investigate the error data and make necessary corrections. For help with this, post in the #cluck-u Discord channel.

## Navigation
