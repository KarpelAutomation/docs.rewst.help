---
description: Understand how JSON organizes data in your workflows.
---

# Intro to JSON

## Module overview

:egg: JSON is how APIs deliver data in a clear, organized format that both machines and people can understand. In this module, you'll learn how Rewst uses JSON to structure workflow results, making it easy to find and work with the data you need.

## Video _(3:10 minutes)_

{% embed url="https://youtu.be/cp7PqZnxW_E" %}

## Module summary

<details>

<summary>What is JSON?</summary>

JSON stands for **JavaScript Object Notation**, and it’s the format most APIs use to send data. Think of JSON like a **well-organized folder system**:

* Each "folder" is labeled with a specific category (like "temperature" or "name").
* Inside, you'll find the corresponding data (like “72°F” or “John Doe”).
* Some folders even have **nested folders** for more details (like "Address" containing "Street" and "City").

</details>

<details>

<summary>Example of a JSON folder structure </summary>

Below is an example JSON structure that mirrors this concept:

<img src="../../../.gitbook/assets/Screenshot 2025-02-06 at 8.29.46 AM (1).png" alt="" data-size="original">

* The **"Top Folder"** is "Person Information", storing details about an individual.
* The **"Name" folder** contains a nested folder  "John Doe", which stores "First" and "Last" names.
* The **"Address" folder** has its own nested folders for "Street Number" and "Street Name", each containing relevant data.

</details>

<details>

<summary>How JSON works in Rewst</summary>

When Rewst runs a workflow, it collects data from APIs and organizes it in **JSON format**.

* The **context** in Rewst acts like a big folder containing all the data gathered during the workflow.
* You can drill down into this folder to find specific results, like weather details or user profiles, labeled clearly for easy navigation.

</details>

<details>

<summary>Why JSON matters for automation</summary>

Understanding JSON helps you read the **results** of your workflows in Rewst.

* It makes it easier to find the data you need at each step.
* Think of JSON as a **map** that guides you through your automation results, so you don’t get lost in random text.

JSON simplifies complex data, making Rewst workflows easier to manage and understand.

</details>

## Practice activities&#x20;

* Take the JSON knowledge check:&#x20;

{% embed url="https://www.surveymonkey.com/r/BSSLMJW" %}

## Keep on cluckin'
