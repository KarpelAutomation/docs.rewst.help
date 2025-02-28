---
description: >-
  I heard you like workflows, so I put a workflow in your workflow, so you can
  automate while you automate.
---

# Creating a new parent workflow

## Module Overview

With the introduction of Sub Workflows, we now have the ability to have workflows trigger other workflows, unlocking endless possibilities and providing a powerful new tool to enhance the design and flexibility of our future workflows.

### Video (&#x33;_:48 Minutes)_

{% embed url="https://youtu.be/a5KAdfur_sY" %}

Log into Rewst and complete the following steps

<details>

<summary>Step 1: Creating a Sub Workflow</summary>

* **Open** a new tab
* **Navigate** back to the Workflows section of Rewst
* **Create** a new Workflow
  1. **Name**: Add or Remove User - Multiple Microsoft Groups.

</details>

<details>

<summary>Step 2: Configure the Sub Workflow</summary>

1. **Select** the Configure Workflow Setting icon
2. **Add** Time Saved
3. **Add** the following Input Configurations
   * action
   * user\_id
   * group\_ids
     * Type: List
4. **Select** Submit

</details>

<details>

<summary>Step 3: Add a Trigger</summary>

1. **Select** the Add Trigger icon
2. **Name** the trigger "Form Trigger"
3. **Toggle** Enabled
4. **Select "**&#x43;ore - Form Submission" for Trigger Type
5. **Add** an Integration Overrides
   1. **Select** Microsoft Graph for Integration
6. **Select** the "Add or Remove user - Multiple Microsoft Group Form" for Form
7. **Select** Submit

</details>

### Action Item

In your own processes, begin considering how to apply sub workflows in current and future automations.

### Navigation
