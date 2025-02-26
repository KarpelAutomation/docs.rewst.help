---
description: Improve efficiency by prioritizing common conditions first.
---

# Short circuit evaluation

## Module overview

In this module, you'll learn how to improve efficiency by prioritizing common conditions first using short-circuit evaluation. The video explains how strategically ordering your conditions can reduce unnecessary checks, streamline your logic, and enhance the overall performance and maintainability of your automation workflows.

## Video _(8:59 minutes)_

{% embed url="https://youtu.be/1bBOqpHMupY" %}

<details>

<summary>Why it matters</summary>

* Reduces unnecessary checks and improves performance.
* Helps automation workflows run more efficiently.

</details>

<details>

<summary>How short-circuit evaluation works</summary>

* Place the most common condition first to avoid redundant evaluations.
* If a condition is true, subsequent conditions are skipped.
*   **Example**: If `user_is_logged_in` is false, Jinja skips checking `user_is_admin`.

    ```django
    if user_is_logged_in and user_is_admin:
    ```

</details>

<details>

<summary>Grouping logic with parentheses</summary>

* Parentheses define the execution order, similar to math operations.
*   **Example**: This ensures `is_admin and is_active` is evaluated before `or is_super_admin`.

    ```django
    (is_admin and is_active) or is_super_admin
    ```
* Changing the grouping can alter logic—use them deliberately.

</details>

<details>

<summary>Using in for cleaner comparisons</summary>

* Instead of writing multiple `or` conditions:&#x20;
  *   Simplify it by using:

      ```
      if role == "admin" or role == "super_admin":
      ```

      ```django
      if role in ["admin", "super_admin"]:
      ```
* This approach is easier to modify when adding more values.

</details>

<details>

<summary>Ternary operators for concise conditions</summary>

* Condenses lengthy `if-else` logic into a single line.
* _Syntax:_ `variable = value_if_true if condition else value_if_false`
*   _Example:_

    ```django
    status = "Active" if is_active else "Inactive"
    ```
* Makes the code read naturally and eases maintenance.

</details>

<details>

<summary>The impact</summary>

* **Faster workflows:** Prioritizing common conditions saves processing time.
* **Cleaner logic:** Reduces unnecessary nesting and redundancy.
* **Easier maintenance:** Improves readability and simplifies modifications.

</details>

By applying short-circuit evaluation, you'll build automation workflows that are both efficient and easy to understand, ensuring your code remains robust and scalable over time.
