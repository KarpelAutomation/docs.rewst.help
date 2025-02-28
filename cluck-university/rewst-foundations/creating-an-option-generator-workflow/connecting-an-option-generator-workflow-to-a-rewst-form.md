---
description: >-
  Now all that's left is connecting that workflow to the "Add or Remove User -
  Microsoft Groups" form...the one you created in  the "Building a Basic Form
  and Workflow" lesson.
---

# Connecting an option generator workflow to a Rewst form

## Module Overview

:bulb: In this last module we'll update the Rewst form to use the Option Generator built in the previous module. If you skipped ahead and don't have that form, or any workflows, don't worry - you can still catch up. So whether you're watching this to continue building what we started earlier in this course, or just to see how Option Generators work, let's jump in to see how it's done!

### Video (&#x35;_:55 Minutes)_

{% embed url="https://youtu.be/7TWjgVSnEus" %}



<details>

<summary>Step 1: Connecting a form to an Option Generator Workflow</summary>

1. **Navigate** to the Form created in [building-a-basic-form-and-workflow](../building-a-basic-form-and-workflow/ "mention")
2. **Reorder** the fields, moving "Action" between the User and Group field.
3. **Select** the Group field and **enable** "Workflow Generated".
4. In the "Workflow" field, **select** your Option Generator
   1. You can find it easier by **typing** its title
5. In "Label Field" **enter** "displayName"
6. In Trigger, **select** the trigger to the Option Generator.
7. Under Workflow Inputs:
   * **Select** "Populate from form field" for the action field
     * **Select** `action` from the dropdown
   * **Select** "Populate from form field" for the user\_id field
     * **Select** `user_id`
8. **Save** the Form.

</details>

<details>

<summary>Step 2: Testing the Option Generator</summary>

1. **Select** the View Usages (_List Icon_)
2. **Select "**&#x56;iew Direct URLs" -> "Open the URL for your Organization"
3. **Select** a User
4. **Choose** add or remove.
5. **Click** the Group field dropdown.

</details>

### Action Item

* Test the form to ensure the Group field populates with different options based on the selected action.

## Navigation
