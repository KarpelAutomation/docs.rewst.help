---
description: >-
  Configure the "Follow First" setting to prioritize Task Transition conditions,
  ensuring the workflow follows the most relevant path first. Additionally,
  create actions for Microsoft Exchange Online us
---

# Creating a Microsoft Exchange Online path in the workflow

## Module Overview

:bulb: Now that we have logic in the workflow that checks for specific values of the Microsoft "group" object properties, and we've connected to the "Microsoft Graph" path, we need to build a similar path for updating group membership using Microsoft Exchange Online.

### Video (&#x35;_:48 Minutes)_

{% embed url="https://youtu.be/A9OgX8v-WZc" %}

<details>

<summary>Step 1: Configuring the Transition Mode of the check_group_type action</summary>

1. **Select** the "check\_group\_type" noop.
2. **Select** the Advanced Tab.
3. **Select** "Follow First" under Transition Mode.

</details>

<details>

<summary>Step 2: Creating Microsoft Exchange Online Path</summary>

1. **Rename** the "add\_or\_remove" noop to "add\_or\_remove\_graph".
2. **Copy and Paste** the "add\_or\_remove\_graph" noop below the "Exchange Online" transition.
3. **Rename** the copied noop to "add\_or\_remove\_exchange".
4. **Connect** the "Exchange Online" transition to the "add\_or\_remove\_exchange" noop.

</details>

<details>

<summary>Step 3: Implementing Add to Group using Microsoft Exchange Online</summary>

1. **Add** the "Invoke Command" action from Microsoft Exchange Online below the "add" transition of the "add\_or\_remove\_exchange" noop.
2. **Select** the InvokeCommand action.
3. **Enter** "Add-DistributionGroupMember" for Cmdlet Name.
4. **Add** the parameters:
   * Member: `{{ CTX.user_id }}`
   * Identity: `{{ CTX.group_id }}`
   * BypassSecurityGroupManagerCheck: `{{ true }}`
5. Rename the action to "add\_group\_member"

</details>

<details>

<summary>Step 4: Implementing Remove from Group using Microsoft Exchange Online</summary>

1. **Copy and paste** the "add\_group\_member" action from Microsoft Exchange Online below the "remove" transition of the "add\_or\_remove\_exchange" noop.
2. **Select** the copied action.
3. **Select** the InvokeCommand action.
4. **Enter** "Remove-DistributionGroupMember" for Cmdlet Name.
5. **Add** the parameters:
   * Member: `{{ CTX.user_id }}`
   * Identity: `{{ CTX.group_id }}`
   * BypassSecurityGroupManagerCheck: `{{ true }}`
6. **Rename** the action to "remove\_group\_member"

</details>

### Action Item

* Add or remove users from groups, ensuring the workflow uses the correct actions based on the group type.

## Navigation
