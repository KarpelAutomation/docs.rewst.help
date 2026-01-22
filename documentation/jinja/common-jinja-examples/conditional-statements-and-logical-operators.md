# Conditional statements and logical operators

## **Introduction**

In the context of Jinja templating, conditional statements and logical operators are vital tools for creating dynamic and responsive templates. This article provides an in-depth exploration of `if`, `elif`, and `else` statements, as well as the logical operators `and`, `or`, and `not` within the framework of Jinja.

### **Understand `if`, `elif`, and `else` statements in Jinja**

In Jinja templating, `if`, `elif`, and `else` statements function similarly to their counterparts in traditional programming languages. They enable you to control the flow of your templates based on specific conditions.

* `if` is a foundational conditional statement in Jinja. When the specified condition is true, the associated template code block within the `if` statement is executed.
* `elif` stands for "else if" and is utilized to check additional conditions after the initial `if` statement. `elif` is evaluated only if the preceding `if` statement is false.
* `else` is a fallback option. It executes a template code block when none of the preceding conditions (`if` and `elif`, if present) are true.

### **Example 1: Use `if` and `else` statements in Jinja**

```django
{%- set dogs = 1 -%}
{%- set cats = 0 -%}
{%- if dogs -%}
    {{- "we have dogs!\n" -}}
{%- else -%}
    {{- "sorry no dogs today\n" -}}
{%- endif -%}

{%- if not cats -%}
    {{- "sorry, no cats today.\n" -}}
{%- else -%}
    {{- "we have cats!\n" -}}
{%- endif -%}

```

### **Example 2: Use `if`, `elif`, and `else` ladders in Jinja**

```django
{%- set value = 1 -%}
{%- if value == 2 -%}
    {{- "value is 2" -}}
{%- elif value == 3 -%}
    {{- "value is 3" -}}
{%- elif value == 4 -%}
    {{- "value is 4" -}}
{%- elif value == 5 -%}
    {{- "value is 5" -}}
{%- else -%}
    {{- "value is "+value | string -}}
{% endif %}


```

{% hint style="danger" %}
While using multiple `elif` statements can be an option, it's generally not the best practice for handling numerous conditions in Jinja templates. Instead, consider using a dictionary switch for improved readability and efficiency when dealing with extensive branching logic.
{% endhint %}

### **Logical operators: `and`, `or`, and `not` in Jinja**

Logical operators in Jinja allow you to combine multiple conditions or negate a condition.

* `and` requires all specified conditions to be true for the entire expression to be true.
* `or` requires at least one of the specified conditions to be true for the entire expression to be true.
* `not` negates a condition, making it true if the original condition is false and vice versa.

### **Example: Use logical operators in Jinja**

```django
{%- set dogs = 1 -%}
{%- set cats = 0 -%}
{%- set lizards = 1 -%}
{%- set chickens = 0 -%}

{%- if dogs and lizards -%}
    {{- "we have both dogs and lizards.\n" -}}
{%- endif -%}

{%- if not cats -%}
    {{- "we have no cats.\n" -}}
{%- endif -%}

{%- if dogs or chickens -%}
    {{- "we have either dogs or chickens, or both, but not necessarily both.\n" -}}
{%- endif -%}

{%- if dogs and not chickens -%}
    {{- "we have dogs but not chickens.\n" -}}
{%- endif -%}

{%- if (dogs or chickens) and lizards -%}
    {{- "we have lizards and either dogs or chickens but not necessarily both.\n" -}}
{%- endif -%}

{%- if chickens < dogs -%}
    {{- "we have more dogs than chickens.\n" -}}
{%- endif -%}

{%- if lizards == dogs -%}
    {{- "we have as many lizards as dogs.\n" -}}
{%- endif -%}

{%- if lizards > chickens -%}
    {{- "we have more lizards than chickens.\n" -}}
{%- endif -%}
```

