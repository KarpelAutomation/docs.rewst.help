---
description: >-
  Recognize JSON formatting in the context of the Jinja live editor + Use the
  Live Editor to practice Jinja code on data from the context
---

# Introduction to Jinja, JSON, and the context

## Module Overview

:bulb: Let's explore the format of JSON data in the context of the Jinja Live Editor, to visualize and experiment with data as part of Rewst workflows.

### Video _(1:10 Minutes)_

{% embed url="https://youtu.be/FqAISlf40wM?si=Som5P-HrI1KtbPkf" %}

### Video (_3:50 Minutes)_

{% embed url="https://youtu.be/H_lX0k871zU?si=bGNgniYjFsAX1Abt" %}

<details>

<summary>Key Concepts About Jinja and JSON</summary>

* Jinja is the templating language used in Rewst workflows. It allows you to create placeholders in your code that are filled in with real data when the workflow runs.
* Think of Jinja as your tool for working with dynamic data like user names, group IDs, and actions.
* Every time a Rewst workflow runs, the data processed is shown in JSON (JavaScript Object Notation) format in the context of the workflow.
* JSON organizes data into objects (also called context variables in Rewst workflows), with key: value pairs. For example, "action" is a key and "add" could be the value.

</details>

<details>

<summary>Working with Object Attributes</summary>

In JSON, objects may have additional attributes, organized within more braces. You can access a specific attribute using dot notation.

* For example, to get the organization ID, use "CTX.organization.id" in the Jinja Live Editor.
* If you need the entire object, ask for "CTX.organization" to get all its attributes and values.

</details>

<details>

<summary>Accessing Context Data in Rewst</summary>

To get familiar with your context data, complete these steps in Rewst:

1. Open the "Add or Remove User - Microsoft Group" workflow and go to the "workflow results" by selecting the graph icon.
2. Open the most recent success and review the Context data. This will show you all the information processed during the workflow execution.

Key objects like "action," "user\_id," and "group\_id" are visible as part of the context data. These were configured in the workflow input and are now accessible for use in Jinja code.

</details>

<details>

<summary>Exploring the Jinja Live Editor</summary>

The Jinja Live Editor is a great place to experiment with Jinja code. You can paste in JSON data and practice writing Jinja statements without affecting any real data.

</details>

### Action Items

* Read the [Jinja Essentials ](https://docs.rewst.help/documentation/jinja/jinja-essentials)documentation for more information on Jinja and JSON, including Rewst examples&#x20;
* Review the context data from your "Add or Remove User - Microsoft Group" workflow execution (part of the lesson, "Building a Basic Form and Workflow").&#x20;

## Navigation
