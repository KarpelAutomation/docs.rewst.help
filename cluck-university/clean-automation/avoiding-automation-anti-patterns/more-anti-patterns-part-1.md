---
description: Identifying and avoiding common inefficiencies.
---

# More anti-patterns (part 1)

## Module overview

In this module, you'll learn to identify and avoid common inefficiencies in automation by recognizing anti-patterns that compromise flexibility and performance. The video covers pitfalls such as hardcoded values, over-fetching data, and redundant calculations—issues that can slow down your processes and increase complexity. By addressing these anti-patterns, you can build leaner, faster, and easier-to-maintain workflows.

## Video _(6:39 minutes)_

{% embed url="https://youtu.be/_PzMmpw1Qy8" %}

<details>

<summary>Why this matters</summary>

* Hardcoded values and redundant calculations make workflows inflexible and harder to maintain.
* Over-fetching data slows down processes and increases complexity.
* Addressing these anti-patterns improves efficiency, readability, and scalability.

</details>

<details>

<summary>Magic string anti-pattern</summary>

* **What it is:** Hardcoding specific values (e.g., email addresses, numbers) instead of using variables.
* **Why it’s a problem:** It makes workflows rigid, harder to modify, and unclear.
* **How to avoid it:** Use variables instead of fixed values to improve flexibility and readability.

</details>

<details>

<summary>Over-fetching data</summary>

* **What it is:** Retrieving more data than needed (e.g., pulling full user objects when only an ID is required).
* **Why it’s a problem:** It increases processing time and complexity, especially at scale.
* **How to avoid it:** Use filters to limit data retrieval and select only the necessary fields.

</details>

<details>

<summary>Redundant calculations</summary>

* **What it is:** Repeating the same calculations multiple times, often in loops.
* **Why it’s a problem:** It wastes processing power and slows down execution.
* **How to avoid it:** Use hoisting—move calculations outside of loops—and store repeated values in variables to avoid recalculation.

</details>

<details>

<summary>How to apply this in automation</summary>

* Replace hardcoded values with variables for clarity and flexibility.
* Limit data retrieval using filters and selecting only the needed fields.
* Optimize calculations by reducing redundant computations inside loops.

</details>

By eliminating these anti-patterns, you'll create automation workflows that are leaner, faster, and much easier to maintain.
