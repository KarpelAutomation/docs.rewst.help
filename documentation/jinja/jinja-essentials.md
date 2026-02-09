# Jinja essentials

## Understand Jinja syntax in Rewst

### Braces and their functions

Jinja uses brace delimiters to distinguish between expressions and statements. Specifically, it uses double curly braces `{{ }}` to surround expressions that should be replaced with output and curly braces with percent signs `{% %}` to surround statements that control the logic of the template. Jinja uses the `{# #}` syntax for comments. Anything between the opening and closing comment delimiters will be ignored by Jinja and not included in the output.

* **Output Values (`{{ }}`):** Display variables or expressions. For instance, `{{ CTX.user_id }}` in Rewst 102 shows user-specific data.
* **Code Blocks (`{% %}`):** Used for control structures like `if`, `else`, `for` loops.
* **Comments (`{# #}`):** Enable non-executable notes for clarity.

### Use the Monaco Editor in Rewst

The _Monaco Editor_ is a powerful code editor that allows you to edit and preview Jinja templates in real-time. Access the Monaco Editor in many places in the product, whenever you see the clickable ![](<../../.gitbook/assets/Screenshot 2025-11-26 at 1.57.10 PM.png>)next to a field or menu section.

<figure><img src="../../.gitbook/assets/Screenshot 2025-11-26 at 3.46.34 PM.png" alt=""><figcaption></figcaption></figure>

Here are some features and keystrokes you can use with the Monaco Editor in Rewst:

* **Syntax highlighting:** The Monaco Editor provides syntax highlighting for Jinja templates, making it easier to read and understand your code.
* **Code completion:** The Monaco Editor provides code completion for Jinja templates, suggesting possible completion options as you type.
* **Find and Replace:** The Monaco Editor provides a powerful Find and Replace feature that allows you to quickly search for and replace text within your code.
* **Keyboard shortcuts:** The Monaco Editor provides a variety of keyboard shortcuts that can help you to work more efficiently. For example:
  * **Ctrl + Space:** Trigger code completion
  * **Ctrl + /:** Toggle line commenting

{% hint style="info" %}
Note that Rewst's Jinja2 implementation displays mutable object— lists, dicts, namespaces—  in their final state immediately when first rendered, rather than their current state at render time. This differs from standard Jinja2 behavior where objects should display their state at the time of rendering.
{% endhint %}

### Work with JSON

{% hint style="info" %}
_JSON_, or _JavaScript Object Notation_, is a lightweight format for storing and transporting data, often used when data is sent from a server to a web page. When using JSON:

* Data is in name-value pairs
* Data is separated by commas
* Curly braces hold objects
* Square brackets hold arrays
{% endhint %}

**Example:**

```json
{
    "name": "Han Solo",
    "age": 34,
    "favorites": ["spaceships", "adventures"]
}
```

## **Create variables in Jinja**

Generally, _variables_ are labeled containers for data that you want to use in your workflow. Variables store task results, facilitate dynamic content generation, and enhance the readability and maintainability of Jinja templates. For example, instead of updating every user's individual name in multiple places, use a variable of `CustomerName` to hold whatever name is needed instead, seamlessly updating as needed in every place the variable is used.

### What is The Context?

_The Context_ is a central storage space that keeps track of all data generated, captured, or used throughout a workflow.  Think of it as a shared memory for a specific workflow, containing all that workflow's information.

### **Variable management with Jinja**

Variables in Rewst are specifically referred to as [data aliases](../automations/workflows/data-aliases.md). Data aliases defined within a workflow are prefixed with `CTX` for context variable, and stored in The Context. There are several variable types in Jinja. Learn more about them [here](data-types.md).&#x20;

* Use _context (CTX) variables_ in data aliases on your task's transitions to capture specific elements from the JSON data produced by your workflow's tasks. This is pivotal for storing and manipulating workflow data.
* These types of variables can be created and modified by workflow tasks but are not global. Their scope is confined to the workflow.

{% hint style="info" %}
Variables do not automatically inherit down into subworkflows or up from subworkflows. In order to pass these values through, they need to be defined as [input or output variables](../automations/workflows/data-input-and-output-input-variables-and-context-variables.md)
{% endhint %}

## Conditional statements

Jinja supports _conditional statements_ like `if,` `else` and `elif`. These statements allow you to create dynamic workflows based on specific conditions, ensuring the workflow adapts to varying scenarios.

**Examples:**

The if statement allows you to control the flow of your template based on certain conditions. If the first condition is true, expression 1 will be executed. If the first condition is false and the second condition is true, expression 2 will be executed. If both conditions are false, expression 3 will be executed.

```python
{% if condition %}
    expression 1
{% elif condition2 %}
    expression 2
{% else %}
    expression 3
{% endif %}
```

```django
{% if rooster_sound == 'cock-a-doodle-doo' %}
    <p>Time to rise and shine!</p>
{% elif rooster_sound == 'moo' %}
    <p>The rooster is having an identity crisis. Someone check the barnyard!</p>
{% else %} 
    <p>The rooster is trying out new sounds. Perhaps it's starting a band!</p>
{% endif %}
```

```django
{% if user_is_looged_in %}
    <p>Welcome, {{ user_name }}!</p>
{% else %} 
    <p>Please log in to continue.</p>
{% endif %}
```

## For loops

_For loops_ in Jinja enable you to iterate through JSON lists, executing actions for each item. The pointer, such as `thing`, points to items within the list, facilitating dynamic data processing.

**Examples:**

In this example, the for loop iterates over a list called items and prints each item to the output. The item variable represents the current item in the list being iterated over. The tag marks the end of the loop.

```python
{%- set items = ["crawfish", "butter", "rice", "garlic", "onions"] -%}
{% for item in items %}
    {{ item }}
{% endfor %}
```

```django
{% for thing in CTX.list_of_things %}
    <li>{{ thing }}</li>
{% endfor %}
```

## Jinja filters

For more detailed information on Jinja filters, see our list [here](jinja-essentials.md#jinja-filters).&#x20;

_Jinja filters_ are functions that can be applied to variables and expressions within Jinja templates to modify their output. They are used to perform a wide range of data manipulations, such as formatting strings, converting data types, and filtering lists. Some commonly used filters include `upper`, `lower`, `title`, `default,` `join`, and `random`. Jinja also allows for the creation of custom filters to meet specific needs. Overall, filters are a powerful tool that can help you to manipulate data more easily and efficiently within your Jinja templates

**Examples:**

* Truncate text: `{{ text|truncate(20) }}`
* Capitalize names: `{{ user_name|capitalize }}`
* Lowercase and replace text: `{{ user_email|lower|replace("@", "at") }}`

## Types of Jinja

### Variable expressions

_Variable expressions_ are encapsulated by double curly braces (`{{` and `}}`) and will output the value of the variable or expression as they are evaluated.

`{{ CTX.my_var }}`

### Control flow statements

These are used for decision-making functions such as `set`s, `if` statements and `for each`es. They are encapsulated by curly+percent signs (`{%` `%}`)

```django
{% set x = 100 %}
```

These statements typically do not output anything.

### Comments

Functionally, _comments_ do nothing. In the Rewst Monaco editor, you can use the hotkey `CTRL-/` to comment blocks of code.

`{# COMMENT #}`

### Whitespace

By default, when Jinja begins a statement block, it preserves any _whitespace_ characters such as spaces, carriage returns, etc., before or after the block. In many cases, you'll want to remove any spaces you did not explicitly intend to have, so the addition of the `-` character in the open and closing braces will remove the whitespace before or after the statement, respectively.

```django
{%- for part in parts_list -%}
  {{- part.name -}}
{%- endfor -%}
```

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
