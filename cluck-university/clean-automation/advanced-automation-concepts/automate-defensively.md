---
description: Building workflows that handle errors effectively.
---

# Automate defensively

## Module overview

In this module, you'll learn how to build workflows that handle errors effectively. The content explores strategies for designing automation that prevents failures, manages unexpected issues, and keeps your processes running smoothly—even when errors occur.

## Video _(12:29 minutes)_

{% embed url="https://youtu.be/tdkviAwMQlo" %}

<details>

<summary>Why it matters</summary>

* Workflows should be designed to prevent failures and unexpected issues.
* Defensive automation ensures errors don’t break the entire process.

</details>

<details>

<summary>Key strategies</summary>

* **Use on-failure transitions** – When an action fails, direct the workflow to handle the failure instead of stopping entirely.
* **Account for edge cases in code** – Anticipate issues like missing data in Jinja or list comprehension to prevent unexpected errors.
* **Leverage task transition criteria sensitivity** – Define how many transitions must execute before an action runs to avoid unintended failures.
* **Validate inputs** – Ensure incoming data is in the expected format before processing.

</details>

<details>

<summary>How to apply them</summary>

* **Use on-failure transitions** to redirect errors rather than letting them break the workflow.
* **Write defensive code** to handle missing values, unexpected inputs, and other edge cases.
* **Set appropriate transition sensitivity** to control when actions execute based on preceding step

</details>

<details>

<summary>The impact</summary>

* Reduces unexpected failures and simplifies debugging.
* Ensures workflows remain stable even when errors occur.
* Improves long-term reliability and maintainability.

</details>

By automating defensively, you'll create workflows that turn potential disruptions into manageable challenges, ensuring resilience and long-term stability.
