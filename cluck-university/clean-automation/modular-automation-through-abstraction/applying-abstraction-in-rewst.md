---
description: Enhance automation by creating reusable and modular sub-workflows.
---

# Applying abstraction in Rewst

## Module overview

In this module, you'll learn how to enhance automation by creating reusable and modular sub-workflows. The video demonstrates how sub-workflows act like functions in programming, encapsulating functionality into clear, manageable blocks. By adopting these modular design principles in Rewst, you can streamline your automation, reduce redundancy, and ensure your processes remain scalable and maintainable.

## Video _(4:22 minutes)_

{% embed url="https://youtu.be/VDiWroAnD8M" %}

<details>

<summary>Why it matters</summary>

* **Encourages reusability:** Sub-workflows function like reusable code blocks.
* **Improves maintainability:** Reduces redundancy and simplifies debugging.
* **Supports scalability:** Modular workflows adapt easily to changes.

</details>

<details>

<summary>Sub-workflows as functions</summary>

* Sub-workflows in Rewst act like functions, following the same principles:
  * **Purpose:** Define a single, clear responsibility.
  * **Inputs:** Specify required parameters.
  * **Outputs:** Determine expected results.

</details>

<details>

<summary>Best practices for sub-workflows</summary>

* **Keep it focused:** Each sub-workflow should accomplish one task.
* **Use descriptive names:** Follow a verb-noun pattern (e.g., `create_ticket`, `fetch_user`).
* **Minimize inputs:** Pass only essential data to reduce complexity.
* **Leverage existing sub-workflows:** Reuse components instead of duplicating logic.
* **Test frequently:** Validate behavior using Rewst’s test functionality.

</details>

<details>

<summary>Avoiding god-workflows</summary>

* **Definition:** A god workflow attempts to handle everything in one place.
* **Issues:** Such workflows are difficult to read, debug, and modify, leading to maintenance nightmares and unexpected errors.
* **Signs:** Overloaded with excessive conditional logic, large monolithic structure, and high risk of breaking with small changes.

</details>

<details>

<summary>Modular vs. monolithic design</summary>

| Feature                  | Monolithic Workflows | Modular Workflows           |
| ------------------------ | -------------------- | --------------------------- |
| **Speed of development** | Fast for small tasks | Requires more planning      |
| **Scalability**          | Difficult to scale   | Easily adaptable            |
| **Maintainability**      | Hard to debug        | Isolated and easy to update |
| **Flexibility**          | Rigid structure      | Components can be reused    |

* **Analogy:**
  * _Monolithic = clay_ – Easy to shape initially but hard to modify once set.
  * _Modular = Legos_ – Individual pieces snap together for flexible, scalable design.

</details>

<details>

<summary>Using pseudocode for planning</summary>

* **Define the goal:** Focus on one task at a time before scaling.
* **Break it down:** Identify key actions and decision points.
* **Write pseudocode:** Outline the logic in plain language.
* **Test & optimize:** Run tests before full deployment.

</details>

<details>

<summary>The impact</summary>

* **Reduces complexity:** Keeps workflows manageable and easy to modify.
* **Increases efficiency:** Modular design speeds up future automation efforts.
* **Enhances clarity:** Simplifies understanding and collaboration among teams.

</details>

By adopting modular sub-workflows, you'll streamline your automation, prevent workflow bloat, and build processes that are both scalable and easy to maintain.
