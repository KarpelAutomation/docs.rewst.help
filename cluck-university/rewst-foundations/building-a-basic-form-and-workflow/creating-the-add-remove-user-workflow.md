---
description: >-
  Create part of a workflow to test + Configure the workflow settings and
  trigger to use information from the form
---

# Creating the "Add or Remove User - Microsoft Group" workflow

## Module Overview

:bulb: Now that you’ve decided to trigger a workflow using a form and have built that form, it’s time to create the workflow. This is where the automation takes shape.

### Video (_4:57 Minutes)_

{% embed url="https://youtu.be/hT0EREu7bGM" %}

This workflow will be tailored to work with the "Add or Remove User - Microsoft Group" form. It’s useful to keep that form open in a nearby browser tab while you work through the next few steps.

<details>

<summary>Step 1: Access the Workflow Builder</summary>

1. Within _Automations_, **navigate** to _Workflows_ and **select** the "Create" button.
2. **Title** the workflow "Add or Remove User - Microsoft Group."&#x20;

</details>

:star: You can add your name or other details to the title. Creating tags like "Work in Progress" or "Training Demo" can help you organize and remember the purpose of each workflow.

#### **Configure Workflow Settings**

<details>

<summary>Step 2: Configure Workflow Settings</summary>

1. **Click** the _pencil icon_ to access the workflow configuration settings.
2. **Keep** the Workflow Type as "Standard."
3. **Add** your estimated time saved (e.g., 300 seconds or 5 minutes, an estimate of how long this process would take you to do manually).
4. For input variables, **add** three input configurations using the "+" icon: action, user\_id, and group\_id. Mark each as "required." This will enable autocomplete in the Jinja editor, helping to avoid typos and save time.
5. **Submit** your settings to save the configuration.&#x20;

</details>

:star: You can review the workflow configuration any time by selecting the pencil icon again to "open" and "close" this area.

<details>

<summary>Step 3: Add the Workflow Trigger</summary>

1. **Select** the _lightning bolt_ icon to create a new trigger.
2. **Name** the trigger (e.g., "form trigger") and toggle it to "enabled" so it’s active immediately.
3. **Search** for "form," then select "Core - Form Submission" as the trigger type.
4. In the Trigger Parameters section, **select** the form you just created. If needed, you can **search** for it by title.
5. For the integration override, **select** your _Microsoft Graph API integration_ to ensure data comes from your own instance.
6. To keep it simple, **enable** the workflow only for your current organization.
7. **Submit** to save the trigger.&#x20;

</details>

:star: You can review the trigger details later by selecting the cog icon next to the trigger name, to open and close the trigger editor.)

<details>

<summary>Step 4: Publishing and Version Control</summary>

After completing a significant piece of work (like adding a trigger or actions), **hit** "Publish." This allows you to name your progress, which can be helpful if you need to revert to an earlier version.

</details>

:star: Regularly publishing and naming your workflow versions will help you retrace your steps if you ever need to revert to an earlier iteration.

### Action Items

Create your workflow using the steps outlined above, ensuring you configure the input variables (in workflow configuration settings) and trigger (to connect to the form you've built).

## Navigation
