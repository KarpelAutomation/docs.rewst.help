---
description: Take a deep dive into the world of Jinja.
---

# Jinja essentials

## **What is Jinja?**

_Jinja_ is a versatile templating language for creating dynamic content. It supports loops, conditional statements, and variable manipulation, making it ideal for complex data processing in workflows.

### Key features:

* **Variable manipulation:** Create and modify context variables.
* **Dynamic content creation:** Use loops and conditionals to tailor content.
* **Filter utilization:** Apply built-in filters for efficient data processing.

## Understand Jinja syntax in Rewst

### Braces and their functions:

* **Output Values (`{{ }}`):** Display variables or expressions. For instance, `{{ CTX.user_id }}` in Rewst 102 shows user-specific data.
* **Code Blocks (`{% %}`):** Used for control structures like `if`, `else`, `for` loops.
* **Comments (`{# #}`):** Enable non-executable notes for clarity.

### Working with JSON:

**Format:** JSON (JavaScript Object Notation) structures data in key-value pairs.

**Example:**

```json
{
    "name": "Han Solo",
    "age": 34,
    "favorites": ["spaceships", "adventures"]
}
```

## Core concepts in Jinja

### Conditional statements:

Jinja supports conditional statements like `if,` `else` and `elif`. These statements allow you to create dynamic workflows based on specific conditions, ensuring the workflow adapts to varying scenarios.

**Example:**

```django
{% raw %}
{% if user_is_looged_in %}
    <p>Welcome, {{ user_name }}!</p>
{% else %} 
    <p>Please log in to continue.</p>
{% endif %}
{% endraw %}
```

```django
{% raw %}
{% if rooster_sound == 'cock-a-doodle-doo' %}
    <p>Time to rise and shine!</p>
{% elif rooster_sound == 'moo' %}
    <p>The rooster is having an identity crisis. Someone check the barnyard!</p>
{% else %} 
    <p>The rooster is trying out new sounds. Perhaps it's starting a band!</p>
{% endif %}
{% endraw %}
```

### For loops:

_For loops_ in Jinja enable you to iterate through JSON lists, executing actions for each item. The pointer, such as `thing`, points to items within the list, facilitating dynamic data processing.

**Example:**

```django
{% raw %}
{% for thing in CTX.list_of_things %}
    <li>{{ thing }}</li>
{% endfor %}
{% endraw %}
```

### Jinja filters:

* **Basics:** Transform data with pre-defined functions to streamline common tasks, enhancing efficiency in data processing.
* **Examples:**
  * Truncate text: `{{ text|truncate(20) }}`
  * Capitalize names: `{{ user_name|capitalize }}`
  * Lowercase & Replace text: `{{ user_email|lower|replace("@", "at") }}`

## Advanced Jinja in Rewst

### List comprehension in action

*   **Functionality:** Efficiently creates new lists from existing ones, based on specific criteria. You can combine filters and conditions to produce concise, targeted lists, all in one Jinja expression.

    > “Give me a list of all X from Y, but only if Z.”
* **Application:** Tailors data selection in workflows, enhancing efficiency and precision.

**Three-step structure**

List comprehension combines filters and conditions to create concise and targeted lists. This structure (`[item for item in list if condition]`) allows you to filter data efficiently.

1. **Output:** Define what you want to extract or manipulate (e.g., `user.id`).
2. **Construction:** Specify the list to iterate over (e.g., `CTX.my_user_list`).
3. **Conditions:** Apply conditions to filter data (e.g., `if user.enabled == true`).

**Example:**

```django
{{ 
    [
        user.id
        for user in CTX.my_user_list
        if user.enabled == true
    ]
}}
```

This example demonstrates filtering active users from `CTX.my_user_list`.

#### List comprehension with conditions

* **Purpose:** Allows you to filter data based on specific criteria.
  * For example, using filters like `lower` to standardize data before comparison.
* **Benefit:** Ensures more accurate and relevant data processing, critical for complex workflows.

#### List comprehension with math

* **Purpose:** This method allows you to apply specific mathematical functions to each element in a list, thereby modifying the output based on your needs.
* **Benefit:** Offers a succinct method to apply mathematical transformations across a list, yielding a new list with modified values.

**Example:**

```python
squared_numbers = [num * num for num in list_of_numbers]
```

If `list_of_numbers = [1, 2, 3, 4]`, then the `squared_numbers` list after applying the above list comprehension will be `[1, 4, 9, 16]`.

This concise approach efficiently applies the squaring function to each item in the original list and collects the results in a new list.

{% hint style="info" %}
Interested in seeing Jinja examples in the platform? Search the crate marketplace for _**Rewst Examples: Jinja Comprehension**_. Once it's unpacked you'll find common Jinja examples provided by our ROC.
{% endhint %}

***

## **Create variables in Jinja**

### **In-workflow variable creation**

* **Purpose:** Vital for organizing and managing data within workflows.
* **Usage:** Variables store task results, facilitate dynamic content generation, and enhance the readability and maintainability of Jinja templates.

### **Variable management with Jinja:**

* **Creation and modification:** Use context (`CTX`) variables in Data Aliases on your Task's Transitions to capture specific elements from the JSON data produced by your workflow's tasks. This is pivotal for storing and manipulating workflow data.
* **Scope and accessibility:** These types of variables can be created and modified by workflow tasks but are not global; their scope is confined to the workflow.
