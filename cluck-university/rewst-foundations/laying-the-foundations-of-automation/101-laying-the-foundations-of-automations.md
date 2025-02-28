---
description: >-
  Scope an automation by planning with the end state in mind and involving your
  stakeholders
---

# Automating a business process

## Module Overview

💡 Throughout the rest of this course, we will focus on how to automate a business process. Get a preview of what's coming up in the remaining lessons.

### Video (_2:46 Minutes_)

{% embed url="https://youtu.be/YVg-n0lRiwM?si=V82305-jnCFDogpB" %}

This will be a step-by-step journey, starting simple and iterating on the process over time -- from an MVP of a workflow (with just 3 steps) to using a sub-workflow in a parent workflow for ultimate automation efficiency. Here's a snapshot of what you'll do in upcoming lessons:

#### Building a Basic Form and Workflow

**Main Objective:** Create a basic automation with three steps: adding or removing a user from a group using the Microsoft Graph integration.

<details>

<summary>Steps:</summary>

1. **Build** a request form that triggers the automation.
2. **Connect** the form to a workflow where the automation takes place.
3. **Test** the workflow to ensure it works correctly.

</details>

#### Jinja Essentials for Workflow Automation

**Main Objective:** Learn how to use Jinja, the templating engine in Rewst, to pass data through your workflows for specific results.

<details>

<summary>Steps:</summary>

1. **Review** the basics of Jinja syntax.
2. **Apply** Jinja in the _Live Editor_ to manipulate data (and test your code).

</details>

#### Creating an Option Generator Workflow

**Main Objective:** Enhance your request form by creating a workflow that generates relevant options based on the user and action selected.

**Bonus:** In one of the modules for this lesson, you'll learn how to customize your own action (if a "pre-built" action in Rewst doesn't yet exist) by using API documentation.

<details>

<summary>Steps:</summary>

1. **Build** an option generator workflow.
2. **Update** the request form to connect to this workflow.
3. **Test** the updated form to ensure it displays the correct groups.

</details>

#### Managing Workflow Paths

**Main Objective:** Handle group updates that require Microsoft Exchange Online using Powershell commands.

<details>

<summary>Steps:</summary>

1. **Identify** which groups need to be updated through _Exchange Online_.
2. **Integrate** _Powershell_ commands into your workflow.

</details>

#### Implementing Error-Handling in Rewst Workflows

**Main Objective:** Add techniques for error-handling to a workflow.

<details>

<summary>Steps:</summary>

1. **Add** "on failure" transitions to certain actions
2. **Create** data aliases to store feedback messages for the results of certain actions
3. **Learn** why/when to update "task transition criteria sensitivity" on an action

</details>

#### Optimizing Workflow Design

**Main Objective:** Combine everything you've learned to create an efficient automation that updates multiple groups and provides feedback.

<details>

<summary>Steps:</summary>

1. **Update** your request form to handle multiple groups.
2. **Use** a sub-workflow and "with items" to process each group for the user and action.
3. **Set up** an email notification to inform the requester of the automation results.

</details>

####

<details>

<summary>Support and Resources</summary>

As you progress through these lessons (at your own pace!), remember that each one is accompanied by step-by-step instructions and additional resources to deepen your understanding. Return to these materials at any time for a refresher.

If you encounter any challenges, we’re here to help! Register for live office hours for direct support, or drop your questions in the Rewst Discord #cluck-u channel to get assistance from professors and peers.

</details>

### Action Items

Before moving on, ensure that your main organization and Microsoft Graph integrations are set up.&#x20;

Once that's done, you’re ready to dive into creating your own form and workflow. This is where the real hands-on building begins!

## Navigation
