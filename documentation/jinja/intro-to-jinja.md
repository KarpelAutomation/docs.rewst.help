# Intro to Jinja

### Overview

Rewst uses the [Jinja2](https://jinja.palletsprojects.com/) templating language, also known as Jinja, in text fields to enable more powerful processing of the data that exists in a workflow. Jinja is a Python-based templating engine that allows you to generate dynamic HTML, XML, or other markup formats. It provides a syntax for embedding Python code within markup, allowing you to create templates that can be customized based on input data.

Jinja language is meant to be extensible. Within Rewst there are many [filters](https://jinja.palletsprojects.com/en/3.1.x/templates/#filters) that extend functionality, including an ever-growing list that Rewst adds to the platform. This means that if you search the web for help with Jinja, the answers you find may or may not be 100% applicable to the Rewst environment. When in doubt, you can always [ask the Rewst support for assistance](../../support-and-community/roc-support/).

### Types of Jinja

#### Variable expressions

Variable expressions are encapsulated by double curly braces (`{{` and `}}`) and will output the value of the variable or expression as they are evaluated.

`{{ CTX.my_var }}`

#### Control flow statements

These are used for decision-making functions such as `set`s, `if` statements and `for each`es. They are encapsulated by curly+percent signs (`{%` `%}`)

```django
{% set x = 100 %}
```

These statements typically do not output anything.

#### Comments

Comments do nothing. In the Rewst Monaco editor, you can use the hotkey `CTRL-/` to comment blocks of code.

`{# COMMENT #}`

#### Whitespace

By default, when Jinja begins a statement block, it preserves any whitespace characters (spaces, carriage returns, etc) before or after the block. In many cases, you will want to remove any spaces you did not explicitly intend to have, so the addition of the `-` character in the open and closing braces will remove the whitespace before or after the statement, respectively.

```django
{%- for part in parts_list -%}
  {{- part.name -}}
{%- endfor -%}
```

### Jinja resources

Below are some resources, external to Rewst, that can be used to assist during the use of Jinja.

* [Jinja Docs](https://documentation.bloomreach.com/engagement/docs/jinja) and [Jinja syntax examples](https://documentation.bloomreach.com/engagement/docs/jinja-syntax)
* [Jinja's official documentation examples](ttps://jinja.palletsprojects.com/en/stable/)
* [What is Jinja - Pushmetrics](https://pushmetrics.io/learn/jinja/what-is-jinja/)

{% hint style="info" %}
Note that whilst right now Jinja is required, the plan is to create actions to make this easier for everyday users to manipulate their data and not have to worry about using Jinja at all.
{% endhint %}

**Want more practice?**

{% hint style="success" %}
Want to learn more? Search for **Jinja** in [Cluck University](https://learn.rewst.io) to find related courses.
{% endhint %}
