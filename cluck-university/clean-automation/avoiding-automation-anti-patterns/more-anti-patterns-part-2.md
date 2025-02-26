---
description: Avoiding inefficiencies in execution, maintainability, and flexibility.
---

# More anti-patterns (part 2)

## Module overview

In this module, you'll learn how to identify and avoid inefficiencies that compromise execution, maintainability, and flexibility in automation workflows. The video details common anti-patterns that can slow down processes, create technical debt, and make workflows hard to scale and debug. By understanding these pitfalls, you can optimize your automation for better performance and long-term sustainability.

## Video _(15:36 minutes)_

{% embed url="https://youtu.be/Uiv3lsA1b10" %}

<details>

<summary>Why this matters</summary>

* Poor execution settings can slow down workflows or overwhelm APIs, leading to failures.
* Lack of planning for future changes creates technical debt and rigidity.
* Overcomplicated Jinja expressions and poor documentation make workflows hard to read, maintain, and scale.

</details>

<details>

<summary>Inefficient execution settings (with items concurrency issues) </summary>

* **What it is:** Setting concurrency too low (slow execution) or too high (exceeding API limits).
* **Why it’s a problem:**
  * Too low: Automation takes too long.
  * Too high: API rate limits may be exceeded, causing failures.
* **How to avoid it:** Adjust concurrency based on task and system limits to balance speed and constraints.

</details>

<details>

<summary>Not designing for future scalability </summary>

* **What it is:** Creating workflows without considering future updates or scaling needs.
* **Why it’s a problem:** Leads to workflows that are hard to modify, collaborate on, and debug as business needs change.
* **How to avoid it:** Use modular design, descriptive naming, and plan for expansion by anticipating future requirements.

</details>

<details>

<summary>Tight coupling to specific tools</summary>

* **What it is:** Building workflows that depend entirely on a single tool or system.
* **Why it’s a problem:** If the tool changes or is replaced, major rework is required, limiting flexibility.
* **How to avoid it:** Use generic variable names and encapsulate vendor-specific actions in sub-workflows to simplify system swaps.

</details>

<details>

<summary>Assuming data will always be present</summary>

* **What it is:** Writing workflows that don’t account for missing or empty data.
* **Why it’s a problem:** Can cause errors when expected values are absent and lead to failures in conditional logic.
* **How to avoid it:** Use default values (e.g., the `D` filter in Jinja), check for empty lists before access, and implement robust error handling for missing inputs.

</details>

<details>

<summary>Overcomplicated Jinja expressions</summary>

* **What it is:** Writing dense, unreadable Jinja calculations instead of breaking them into smaller, manageable parts.
* **Why it’s a problem:** Increases the risk of errors and makes debugging and maintenance more difficult.
* **How to avoid it:** Store calculations in variables, use context variables to simplify expressions, and break down logic into clear steps.

</details>

<details>

<summary>Poor documentation and misleading comments</summary>

* **What it is:** Adding redundant, unclear, or outdated comments that confuse rather than clarify.
* **Why it’s a problem:** Misleads future maintainers and obscures the true functionality of workflows.
* **How to avoid it:** Write comments that explain intent, avoid excessive or misleading annotations, and remove outdated commented-out code.

</details>

<details>

<summary>How to apply this in automation</summary>

* Optimize execution speed by balancing concurrency settings.
* Plan for future changes with modular workflows and clear naming conventions.
* Minimize dependencies on specific tools to maintain flexibility.
* Write clear, maintainable Jinja expressions by using variables and context data.
* Use meaningful documentation to aid troubleshooting and collaboration.

</details>

By avoiding these anti-patterns, your automation workflows will remain scalable, efficient, and easy to maintain.
