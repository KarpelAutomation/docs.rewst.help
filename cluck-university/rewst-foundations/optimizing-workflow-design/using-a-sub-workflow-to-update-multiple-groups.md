# Using a subworkflow to update multiple groups

## Module Overview

We'll configure our workflow to send the `feedback message` as an output, allowing us to provide capture the `feedback_message` in a Sub Workflow.

### Video (&#x34;_:39 Minutes)_

{% embed url="https://youtu.be/e_MiMy2-cTw" %}

Log into Rewst and complete the following steps

<details>

<summary>Step 1: Setting up an Output Configuration</summary>

1. **Select** the Configure Workflow Setting Icon (the pencil  icon) of our main workflow.
2. **Add** a New Output Configuration
   * **Field Name**: feedback\_message
   * **Value**: `{{ CTX.feedback_message }}`
3. **Select** Submit

</details>

### Action Item

Review [data-input-and-output.md](../../../documentation/workflows/data-input-and-output.md "mention") to gain further understanding of Output Configurations.

### Navigation

