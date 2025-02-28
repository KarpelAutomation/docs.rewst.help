---
description: Create a form that contains the required input to automate a process
---

# Building the "Add or Remove User - Microsoft Group" form

## Module Overview

:bulb: Every Rewst workflow begins with a "trigger." Here, our trigger will be a Rewst form. The form will include fields for selecting a user, a group, and an action (add or remove).

### Video (_5:22 Minutes)_

{% embed url="https://youtu.be/dHzdH0iLddY" %}

Log into Rewst and complete the following steps.

<details>

<summary>Step 1: Access the Form Builder</summary>

1. **Go to** _Automations -> Forms_.
2. **Click** the "+" icon to create a new form.&#x20;
3. **Name it** "Add or Remove User - Microsoft Group Form"&#x20;

</details>

:star: Feel free to personalize the title with your name and/or "training demo".

<details>

<summary>Step 2: Create the User Selection Field</summary>

1. **Use** the "Dropdown" field type for selecting a user from a list.
2. **Set** "user\_id" as the Field Name (this is important for later workflow steps).&#x20;
3. **Label** the field "User" and provide a clear description like "Select a user."
4. **Make** the field required and enable _Dynamic Options_ to pull data from Microsoft Graph, selecting _Microsoft Graph_ as the integration and _Users_ as the Resource.

</details>

:star: Title case matters! Ensure the **Field Name** is lowercase, one word (or if using multiple words, joined with an underscore as per this example).

<details>

<summary>Step 3: Create the Group Selection Field</summary>

1. **Add** another "Dropdown" field for selecting a group.
2. **Set** "group\_id" as the _Field Name_.
3. **Label** the field "Group" and describe it as "Select a group."
4. **Make it** a required field, enable "Dynamic Options," and select "Microsoft Graph" as the integration with "Groups" as the _Resource_.

</details>

<details>

<summary>Step 4: Create the Action Selection Field</summary>

1. **Use** _Radio Buttons_ for the action selection field.
2. **Set** "action" as the _Field Name_ and label it "Action" with the description "Select one."
3. **Define** the options: "Add to Group" with a value of "add" and "Remove from Group" with a value of "remove." Title case is important! Ensure all "values" are lowercase, one word.
4. **Ensure** the field is required and save your work.

</details>

<details>

<summary>Step 5: Save and Preview</summary>

1. **Save** your form by clicking the _disk icon_ and selecting "submit."
2. **Preview** the form by clicking the _eye icon_ to see how it looks.

</details>

:star: Remember: Making mistakes is part of the learning process! If you make an error while building your form, you can always go back and edit or delete fields.

### Action Items

* Create your form in Rewst following the steps outlined above, ensuring you include fields for user selection, group selection, and action selection.
* Make sure to set up your Microsoft Graph integration if you haven’t already, as it's required for the dynamic options in the form fields (and you'll see those after creating the workflow).

## Navigation
