---
description: Store, organize, and reuse data to power smarter workflows.
---

# Variables and context

## Module overview

:egg: Variables, context variables, and data aliases help make Rewst workflows more flexible and adaptable by storing and organizing key pieces of data. In this module, you’ll learn how to extract, save, and reuse data from API responses, making your workflows more efficient and dynamic.

## Video _(4:58 minutes)_

{% embed url="https://youtu.be/23lEBwjIjBA" %}

## Module summary

<details>

<summary>What are variables?</summary>

A variable is a labeled container that holds data you can reuse. Instead of locking in specific details—like a customer's name—you can use a placeholder (e.g., `CustomerName`) that updates dynamically. \
\
Context variables, on the other hand, are specific to the workflow run and hold data generated or used during that instance, such as the current ticket ID or timestamp. \
\
Organization variables apply across all workflows, storing consistent data like company settings or API keys. Understanding the roles of context, organization, and dynamic variables helps manage both workflow-specific and shared data efficiently.

</details>

<details>

<summary>What are data aliases?</summary>

A data alias is a shortcut that extracts specific pieces of information from a JSON response and stores them in an easy-to-use variable. Instead of navigating the entire JSON structure every time, a data alias pulls out exactly what you need—like a user’s name or email—and makes it accessible throughout your workflow.

</details>

<details>

<summary>What is the context?</summary>

The context is where all data generated, captured, or used in a workflow is stored. Think of it as a shared memory for a specific workflow. Data aliases are stored in the context, making them available for reuse at any step without re-fetching the data.

</details>

<details>

<summary>Why it matters</summary>

Together, variables, data aliases, and the context make your workflows in Rewst more efficient, organized, and adaptable. These tools help you reuse workflows, reduce manual work, and customize data handling to fit any automation need.

</details>

## Practice activities

* Think of a process you often repeat—like sending a customer update or checking a user profile—and list the types of information that might change each time (e.g., name, date, status). Then, identify which of these could be stored as **variables** to make the process faster and more consistent. This will help you start recognizing where variables and data aliases can simplify tasks in Rewst.
* Take the variables and context knowledge check:&#x20;

{% embed url="https://www.surveymonkey.com/r/ZX98T2N" %}

* Check out our [variable practice activities](variables-activities.md) to solidify your understanding even more!&#x20;

## Keep on cluckin'
