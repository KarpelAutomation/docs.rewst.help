---
description: Creating clear, consistent, and self-explanatory names.
---

# Naming tasks and variables

## Module overview

In this module, you'll learn how to create clear, consistent, and self-explanatory names for tasks and variables in your automation workflows. The video covers why naming matters and provides key principles and best practices to ensure your workflows are intuitive and easy to maintain.

## Video _(9:01 minutes)_

{% embed url="https://youtu.be/622f9VYvrxk" %}

<details>

<summary>Why it matters</summary>

* Well-named variables and actions improve readability and maintainability.
* Clear names reduce confusion and make workflows easier to understand.

</details>

<details>

<summary>Key naming principles</summary>

* **Be descriptive** – Names should indicate what the variable or action stores or does.
* **Use proper grammar** – Use plural for lists (e.g., `tickets`, `users`) and singular for single items (`user`).
* **Follow a verb-noun format** – Use action-oriented names for workflows (e.g., `delete_user`, `get_ticket`).
* **Stay consistent** – Choose a naming convention (e.g., snake\_case, camelCase) and apply it uniformly.

</details>

<details>

<summary>Best practices</summary>

* **Use meaningful lengths** – Avoid names that are too vague (like `x` or `tempVar`) or excessively long.
* **Avoid reserved words** – Certain words have specific meanings in Jinja and should not be used alone.
* **Limit numbers and special characters** – Only use them when required by integrations.
* **Use universally understood abbreviations** – Stick to widely recognized terms like `ID`, `UUID`, and `DB`.
* **Be specific with attributes** – Name objects broadly (`ticket`, `device`) and their attributes clearly (`ticket_id`, `device_serial`).

</details>

<details>

<summary>The impact</summary>

* **Self-documenting workflows** – Clear names make the workflow understandable without extra documentation.
* **Faster troubleshooting** – Easy-to-read naming simplifies debugging and modifications.
* **Improved collaboration** – Consistent naming conventions help teams work together more effectively.

</details>

By applying these thoughtful naming conventions, you'll create automation workflows that are not only more intuitive and readable but also easier to maintain and scale over time.
