---
description: >-
  Identify common Jinja syntax and filters + Use the Live Editor to practice
  Jinja code on data from the context
---

# Basic Jinja syntax and filters

## Module Overview

:bulb: It's time to tackle basic Jinja syntax and filters. These building blocks will help you write and practice Jinja code in the Jinja Live Editor, and eventually use it in your Rewst workflows.

### Video (_5:21 Minutes)_

{% embed url="https://youtu.be/2guz71Ytizo?si=a30A-pkaAT2Qbh5d" %}

Key Concepts About Jinja Syntax

<details>

<summary>Output Dynamic Content:</summary>

* Use two curly braces to output or print data from your workflow.&#x20;
* Example:`{{ CTX.action }}` outputs the value of the "action" variable, such as "add" or "remove."

</details>

<details>

<summary>Jinja Statements:</summary>

* Use `{% %}` for code blocks that control logic, such as if/else statements or loops.
* Example:`{% if CTX.action == "add" %} The user was added{% else %} The user was removed{% endif %}`

</details>

<details>

<summary>Comments:</summary>

* Use `{# #}` to add comments in your code. Comments are ignored during execution but help others (or yourself) understand the code.
* Example:`{# This is a comment #}`

</details>

<details>

<summary>Removing Extra Spaces:</summary>

* Use a dash inside any of these delimiters to strip extra spaces.
* Example:`{{- CTX.action -}}`

</details>

<details>

<summary>Jinja Filters</summary>

Filters modify data in Jinja without changing the original information. Common filters allow you to format dates, capitalize text, or provide default values.

* Example: Use the `d` filter to avoid errors if a context variable is empty:

`{{ CTX.group.displayName | d }}` outputs an empty string if there is no display name for the group.

</details>



### Action Items

1. Review Context Data from the "Building a Basic Form and Workflow" Lesson

Open the workflow results from your "Add or Remove User - Microsoft Group" workflow and review the context data. Practice rendering the following Jinja code in the Jinja Live Editor, and notice that the results match the values of the context data for the variables:



* `{{ CTX.action }}`
* `{{ CTX.user_id }}`
* `{{ CTX.group_id }}`

2. Complete the Lunch Menu Exercises:

Navigate to the "Lesson Resources" section to access the "Lunch Menu" sample data set and instructions for using Jinja syntax and filters in the Jinja Live Editor. Focus on:

* Rendering values from the context
* Applying Jinja filters to format the output
* Practicing list comprehension (using two different methods -- a Jinja statement, and list comprehension).

By practicing these exercises, you’ll solidify your understanding of Jinja syntax, filters, and data manipulation in Rewst workflows.

## Navigation
