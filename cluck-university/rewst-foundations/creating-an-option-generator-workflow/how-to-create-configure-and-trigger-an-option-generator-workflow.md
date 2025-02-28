---
description: >-
  Implement the sketch from the previous module by creating an Options
  Generator, configuring its initial inputs and output, and setting up the
  appropriate trigger.
---

# How to create, configure, and trigger an option generator workflow

## Module Overview

:bulb: Planning a workflow before building speeds up the process by sorting out logistics upfront, so you can focus on execution later. The inputs and outputs are key to this module—without them, the options generator won't work.

### Video (&#x34;_:23 Minutes)_

{% embed url="https://youtu.be/cXp2GFEb4iU" %}

Log into Rewst and complete the following steps.

<details>

<summary>Step 1: Create a Workflow</summary>

1. **Create** a new workflow called "Option Generator for Microsoft Groups."
   * Personalize the name and add tags to your liking.
2. **Select** the pencil icon to configure the workflow settings.
3. **Select** "Option Generator" for the workflow type.
   * As a bonus, this will add an "option gen" tag to your workflow, so you can easily filter for those in your list of all the workflows.
4. **Add** Time Saved
5. **Add** the _Input Configurations_
   * `user_id`
   * `action`
6. **Add** the _Output Configuration_
   * Field Name: options
   * **Select** the Jinja Editor Icon
   * **Enter** `CTX.group_list`

7: **Select** _Submit_ to save the settings

</details>

<details>

<summary>Step 2: Add Workflow Trigger</summary>

1. _**Select**_ the lightning bolt to add a workflow trigger.
2. **Enter** "option generator" for the name
3. **Toggle** Enabled to enable the trigger.
4. **Search** for "always" in the "trigger type" dropdown
5. **Select** 'Core - Always Pass.'
   * The workflow will trigger as soon as we have a "user" and an "action" selected - before the form is submitted.
6. **Select** Microsoft Graph for integration override.
7. **Select** your own organization
   * Test with a user you're comfortable with (maybe yourself).
   * If you want to use this process for your customers, refer to the optional instructions below.
8. **Submit** to save the trigger.

</details>

<details>

<summary>Optional: Instructions for All Managed Organizations</summary>

### Step 1: Configure the Trigger

1. Configure the trigger Option Generator for Microsoft Groups
   1. Activate Trigger to Run For: Toggle "All current(#) and future managed organizations"

### Step 2: Creating an Options Generator for Users

1. Create a new workflow
2. Name the workflow Users Option Generator
3. Configure the Workflow settings
   1. Workflow Type:
      1. Options Generator
   2. Output Configuration:
      1. Field Name: `options`
      2. Value: `{{ CTX.users }}`
   3. Select Submit
4. Add the Microsoft Graph action `List Users`
5. Create a Data Alias in the `List Users` action.
   1. Key: `users`
   2. Value: `RESULT.result.data.value`
6. Add a Trigger
   1. Name: Graph Users Always Pass
   2. Toggle Enabled
   3. Trigger Type: Core - Always Pass
   4. Integration Overrides: Microsoft Graph
   5. Activate Trigger to Run For: Toggle "All current(#) and future managed organizations"
      1. You can always pick and choose specific organizations.

### Step 3: Connect the Users Option Generator to the User Field.

1. Navigate to the Form hcreated in Lesson 2
2. Select the User field
3. Toggle Workflow Generated
4. Select the Users Option Generator
5. Change `label` to `displayName` under Label Field
6. Select the Trigge

</details>



### Action Item

* Create a workflow and configure its properties, inputs, and outputs to function as an Option Generator.
* Setup a trigger for the Option Generator workflow.
* Add an Integration Override to the Option Generator so it can be used across all your managed organizations. This ensures the workflow is flexible and scalable for different environments

## Navigation
