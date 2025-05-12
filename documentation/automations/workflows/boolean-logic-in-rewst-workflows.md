# Boolean logic in Rewst workflows

## Boolean values and their role in automation

_Boolean_ values represent simple yes/no conditions, like on/off or true/false. They define rules and logic in workflows by evaluating conditions.

Boolean values are fundamental in automation workflows, controlling decision-making and process flow. Understanding Boolean logic helps ensure that workflows are efficient, reliable, and easy to maintain.

## Key boolean concepts

* **Boolean values**: Represent `true` or `false`, similar to `1` (on) and `0` (off).
* **Logical operators**: `and`, `or`, `not` determine conditions in workflows.
* **Comparison operations**: Evaluate conditions (e.g., `user_role == "admin"`).
* **Custom conditions in workflows**: Enable transitions based on Boolean evaluations.

## Boolean operators in Rewst workflows

Boolean logic controls workflow decisions using these key operators:

* **`and`** – Requires both conditions to be true.
  * Example: `user_logged_in and is_admin`
* **`or`** – Requires at least one condition to be true.
  * Example: `is_manager or is_admin`
* **`not`** – Inverts a Boolean value.
  * Example: `not user_logged_in` (returns `true` if `user_logged_in` is `false`).

## Boolean logic in action

* **True and false = false** – Both conditions must be true for `and` to return `true`.
* **True or false = true** – Only one condition needs to be true for `or` to return `true`.
* **Not false = true** – Flips the Boolean value to its opposite.

## Best practices for boolean logic in Rewst

To ensure efficiency and maintainability, follow these best practices.

### Structuring logical conditions

* **Group logic with parentheses**: Ensures conditions execute in the correct order.
  * Example: `(is_admin and is_active) or is_super_admin`
* **Use `in` for cleaner conditions**:
  * Before: `if role == "admin" or role == "super_admin"`
  * After: `if role in ["admin", "super_admin"]`

### Simplifying boolean expressions

* **Use ternary operators for concise logic**:
  * Syntax: `variable = value_if_true if condition else value_if_false`
  * Example: `status = "Active" if is_active else "Inactive"`
* **Leverage short-circuit evaluation**:
  * Skips unnecessary checks by placing the most likely condition first.
  * Example: `if user_logged_in and is_admin:` (Skips `is_admin` check if `user_logged_in` is `false`.)

{% hint style="info" %}
For more on how boolean values relate to Rewst, complete our Clean Automation course in Cluck University.
{% endhint %}
