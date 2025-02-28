---
description: >-
  These two crucial features will elevate your automation skillset, setting you
  up to create highly efficient workflows.
---

# Subworkflow and with items overview

## Module Overview

It's time to put a workflow in a workflow...making it a "sub-workflow" and creating a "parent/child" relationship.

### Video (&#x35;_:38 Minutes)_

{% embed url="https://youtu.be/RVSrHrsJ5n4" %}

Log into Rewst and complete the following steps

<details>

<summary>Step 1: Adding a Sub Workflow</summary>

1. **Search** Add or Remove User in the Search Actions search bar.
2. **Add** the Add or Remove User workflow into the current workflow.
3. **Select** the sub workflow.
4. **Rename** the workflow "update\_groups".

</details>

<details>

<summary>Step 2:  Configuring Sub Workflow Parameters</summary>

1. **Select** the Jinja Editor for the action field.
   * **Enter** \{{ `CTX.action }}`
   * **Close** the Jinja Editor
2. **Select** the Jinja Editor for the user\_id field.
   * **Enter** `{{ CTX.user_id }}`
   * **Close** the Jinja Editor
3. **Select** the Jinja Editor for the group\_id field
   * **Enter** `{{ item() }}`
   * **Close** the Jinja Editor

</details>

<details>

<summary>Step 3: Configuring WIth Items</summary>

1. **Select** the Advanced tab
2. **Select** the Jinja Live Editor for the With Items field
   1. **Enter** `{{ CTX.group_ids }}`
   2. **Close** the Jinja Editor
3. **Publish** the workflow

</details>

### Action Item

Test the "With Items" feature with other actions in Rewst to see how it performs and functions.

### Navigation
