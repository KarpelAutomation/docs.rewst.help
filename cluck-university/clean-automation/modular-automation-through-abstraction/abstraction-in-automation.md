---
description: Using functions to simplify complexity and promote reusability.
---

# Abstraction in automation

## Module overview

In this module, you'll learn how abstraction in automation—using functions—can simplify complexity and promote reusability. The video explains how functions encapsulate complex logic into reusable blocks of code, making your workflows more efficient, easier to maintain, and straightforward to update.

## Video _(5:32 minutes)_

{% embed url="https://youtu.be/_X75hcFH1lw" %}

<details>

<summary>Why it matters</summary>

* **Avoids redundancy:** Encourages the DRY (Don't Repeat Yourself) principle.
* **Enhances maintainability:** Centralized updates apply everywhere the function is used.
* **Improves clarity:** Workflows become easier to read and understand.

</details>

<details>

<summary>Abstraction in action: The vending machine analogy</summary>

* Users interact only with inputs (like money and item selection) while the internal mechanics remain hidden.
* Similarly, functions let you work at a high level, abstracting away internal complexities.

</details>

<details>

<summary>Understanding functions</summary>

* Functions are reusable blocks of code designed to perform specific tasks.
* Consider the **purpose** of the function, the **inputs** it requires, and the **outputs** it returns or modifies.
*   **Example in Jinja**: The `lower` filter abstracts the complexity of converting text to lowercase.

    ```django
    {{ username | lower }}
    ```

</details>

<details>

<summary>Best practices for writing functions</summary>

* **Single Responsibility Principle (SRP):** Each function should do only one thing.
* **Descriptive naming:** Use a clear verb-noun structure (e.g., `get_user`, `create_ticket`).
* **Avoid unexpected side effects:** Ensure functions do not modify unrelated data.

</details>

<details>

<summary>The impact</summary>

* **Simplifies automation:** Reusable functions reduce complexity.
* **Boosts efficiency:** Changes apply universally, preventing duplication.
* **Improves workflow design:** Clear, modular functions lead to more maintainable processes.

</details>

By leveraging abstraction with functions, you'll create automation that is scalable, modular, and easier to manage.
