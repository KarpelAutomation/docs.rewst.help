---
description: Using true/false values to control workflow logic.
---

# Introduction to Boolean logic

## Module overview

In this module, you'll learn how Boolean logic uses true/false values to drive decision-making in automation workflows. The video explains the basics of Boolean values, comparison operations, and logical operators, empowering you to set precise conditions and build smarter, more effective automations.

## Video _(4:49 minutes)_

{% embed url="https://youtu.be/aj9Y3EVSBEY" %}

<details>

<summary>Why it matters</summary>

* Boolean values (`true` or `false`) determine key automation decisions.
* Logical operators (`and`, `or`, `not`) control conditions and transitions in workflows.

</details>

<details>

<summary>Basics of Boolean logic</summary>

* **Boolean values** – Represent `true` or `false`, analogous to `1` (on) and `0` (off).
* **Comparison operations** – Check conditions (e.g., `user_role == "admin"`) to drive workflow logic.
* **Custom conditions in workflows** – Enable transitions based on whether conditions evaluate to `true`.

</details>

<details>

<summary>Boolean operators</summary>

* **`and`** – Both conditions must be true (e.g., `user_logged_in and is_admin`).
* **`or`** – At least one condition must be true (e.g., `is_manager or is_admin`).
* **`not`** – Inverts the Boolean value (e.g., `not user_logged_in` returns `true` if `user_logged_in` is `false`).

</details>

<details>

<summary>Boolean logic in action</summary>

* **True and false = false** – Both conditions must be true for `and` to return `true`.
* **True or false = true** – Only one condition needs to be true for `or` to return `true`.
* **Not false = true** – Flips the Boolean value to its opposite.

</details>

<details>

<summary>The impact</summary>

* Ensures workflows follow logical, error-free decision-making.
* Prevents mistakes by accurately evaluating conditions.
* Optimizes automation by allowing you to implement complex rules and checks.

</details>

By mastering Boolean logic in Jinja, you'll enhance your ability to build workflows that are not only smarter and more precise but also robust in handling complex decision-making processes.
