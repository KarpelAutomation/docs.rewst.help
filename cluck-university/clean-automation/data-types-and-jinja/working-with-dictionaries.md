---
description: Managing structured data with key-value pairs.
---

# Working with dictionaries

## Module overview

In this module, you'll learn how to manage structured data with key-value pairs using dictionaries in Jinja. The video guides you through defining, accessing, and modifying dictionaries to represent real-world objects like users, tickets, or devices—empowering you to organize and manipulate data effectively in your automation workflows.

## Video _(3:39 minutes)_

{% embed url="https://youtu.be/SyU_0nQcOBQ" %}

<details>

<summary>Why it matters</summary>

* Dictionaries store data in key-value pairs, making it easier to organize and retrieve structured information.
* They are commonly used to represent real-world objects like users, tickets, or devices.

</details>

<details>

<summary>Basic dictionary operations</summary>

* **Defining dictionaries** – Enclose key-value pairs within curly braces `{ }`.
* **Accessing values** – Use keys to retrieve specific values from a dictionary.

</details>

<details>

<summary>Accessing dictionary values</summary>

* **Dot notation (`dictionary.key`)** – Works in most cases but can fail with keys containing special characters or spaces.
* **Bracket notation (`dictionary["key"]`)** – A more reliable method when handling keys that aren’t Jinja-friendly.

</details>

<details>

<summary>Modifying dictionaries</summary>

* **Updating values** – Use the `update()` function to add or change key-value pairs.
* **Removing keys** – Use `pop()` or `remove()` to delete specific entries from a dictionary.

</details>

<details>

<summary>Iterating through dictionaries</summary>

For loops with key-value pairs – Utilize two temporary variables to loop through both keys and values efficiently.

</details>

<details>

<summary>The impact</summary>

* Enables structured data management in automation workflows.
* Prevents errors by offering flexible methods to access and modify data.
* Improves efficiency when handling complex data sets, such as user profiles or ticket details.

</details>

By mastering dictionaries in Jinja, you'll transform your ability to work with structured data—ensuring your automation workflows are both robust and intelligently organized.
