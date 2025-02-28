---
description: Learn how to read JSON and make sense of your workflow data.
---

# Reading JSON

## Module overview

:egg: Learning to read JSON is like unlocking a map to your workflow’s data. In this module, you'll break down real JSON files, spot familiar data types, and gain the confidence to trace errors, interpret results, and fine-tune your Rewst automations.

## Video _(3:01 minutes)_

{% embed url="https://youtu.be/s46INvRSlcE" %}

## Module summary

<details>

<summary>What does JSON look like?</summary>

JSON is structured using **four key symbols** to organize data:

* **Braces `{ }`**: Group related information (like a folder).
* **Brackets `[ ]`**: Represent lists (like a drawer of items).
* **Colons `:`**: Separate **keys** (labels) from **values** (data).
* **Quotation Marks `"`**: Indicate text (strings) or numbers that aren't used for math.

</details>

<details>

<summary>Breaking down a JSON example</summary>

Example:

```json
{
  "Event": "Dinner and Concert",
  "Location": {
    "Restaurant": "The Fancy Fork",
    "Concert": "The Jazz Quartet",
    "City": "New Orleans"
  },
  "Guests": ["Alice", "Bob", "Charlie"],
  "ReservationID": 12345,
  "Cost": 200.75,
  "Completed": true}
```

In this example:

* **Braces** hold everything together.
* **Keys** like "Event" label the information.
* **Lists** of guests are inside **brackets**.
* **Values** like "Dinner and Concert" are clearly separated by **colon**

</details>

<details>

<summary>Why reading JSON matters</summary>

Understanding JSON helps you:

* **Trace errors** in workflows by checking the data at each step.
* **Debug workflows** more effectively by identifying missing or incorrect data.
* **Modify data** to improve automations by confidently extracting and using specific information from JSON responses.

By reading JSON, you gain the skills to troubleshoot, adjust, and optimize your Rewst workflows with ease.

</details>

## Practice activities&#x20;

* Take the reading JSON knowledge check:&#x20;

{% embed url="https://www.surveymonkey.com/r/BTM9JHB" %}

* Check out our [JSON practice activity](reading-json-activity.md) to solidify your understanding even more!&#x20;

## Keep on cluckin'
