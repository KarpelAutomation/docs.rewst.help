---
description: Finishing up our Parent workflow
---

# Adding other parent workflow actions

## Module Overview

Before testing our sub-workflow, we'll add the necessary actions to send an email to the user who filled out the form. This ensures they receive confirmation or relevant information about the workflow's execution via the `feedback_message.`

### Video (1&#x31;_:55 Minutes)_

{% embed url="https://youtu.be/axNOfoTb7EQ" %}

Log into Rewst and complete the following steps

<details>

<summary>Step 1: Identifying the User Who Filled Out the Form</summary>

1. **Add** the Microsoft Graph Get User action in the parent workflow
2. **Connect** the On Success transition to update\_groups
3. **Select** the action
4. **Rename** the action "get\_user"
5. **Select** the On Success transition of get\_user
6. **Create** a Data Alias
   1. **Name**: target\_user
   2. **Value:** `{{ RESULT.result.data.value }}`

</details>

<details>

<summary>Step 2: Collecting Feedback Messages</summary>

1. **Add** a noop below update\_groups
2. **Connect** the On Success transition of update\_groups to the noop.
3. **Rename** the noop "list\_feedback\_messages"
4. **Create** a Data Alias
   1. Name: `feedback_message_list`
   2.  Value:&#x20;

       ```django
       {{- 
          [
             message.result.feedback_message
             for message in TASKS.update_groups.collected_results
          ]
       -}}
       ```

</details>

<details>

<summary>Step 3:  Sending the Email of Feedback Messages</summary>

1. **Add** the sendmail action below list\_feedback\_messages
2. **Connect** the On Success transition from list\_feedback\_messages to sendmail.
3. **Rename** the action to send\_mail
4. **Select** send\_mail
5. **Configure** send\_mail
   1. **Recipient:** `{{ CTX.user.username }}`
   2. **Subject:** Your request to update Microsoft Groups for the User `{{ CTX.target_user.displayName | d }}`.
   3. **Title:** Your request to update Microsoft Groups for the User `{{ CTX.target_user.displayName | d }}`.
   4.  **Message:** Here are the results of your request to update Microsoft Groups for the User `{{ CTX.target_user.displayName | d }}`.

       `{{ CTX.feedback_message_list | join("\n* ")}}`

</details>

### Action Item

With actions that implement With Items, test the Collected Results and use Publish Result As to simplify managing collected\_results of actions.

### Navigation
