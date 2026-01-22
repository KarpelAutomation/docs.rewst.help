# Mimick switch statements in Jinja

### What are dictionary switches?

Jinja doesn't offer traditional switch statements like some other programming languages. Instead, you can achieve similar functionality using _dictionary switches_.  A dictionary switch in Jinja is a clever way to mimic the functionality of a switch statement using dictionaries. Essentially, you create a dictionary where the keys represent different cases, and the values are the actions or values associated with those cases.&#x20;

### Basic dictionary switch

In its simplest form, a dictionary switch can be used to map a key to a specific value or action. Here's an example:

```django
{%- set mydict = {'cwm': "cwm_psa",
            'datto': "datto_psa",
            'halo': "halo_psa"} -%}
{%- set var1 = "datto" -%}
{{- mydict[var1] -}}
```

In this code, we define a dictionary `mydict` where each key corresponds to a case, and the associated value represents the desired outcome. When we set `var1` to "datto" and access `mydict[var1]`, it returns the value associated with "datto," which is "datto\_psa."

### Use dictionary switch with macros

You can also leverage dictionary switches when working with macros. Macros are reusable code snippets in Jinja, and you can dynamically select which macro to execute based on a key. Here's an example:

```django
{% macro split_str(item) %}
    {{ item.split("_") | first |d  }}
{% endmacro %}
{%- set mydict = {'cwm': split_str("cwm_psa"),
            'datto': split_str("datto_psa"),
            'halo': split_str("halo_psa")} -%}
{%- set var1 = "datto" -%}
{{- mydict[var1] -}}
```

In this code, we create a macro `split_str` that splits a string at underscores and returns the first part. The dictionary switch `mydict` assigns different macros to each case. When we set `var1` to "datto" and access `mydict[var1]`, it executes the `split_str` macro with the parameter "datto\_psa" and returns "datto."

### Dynamic parameter passing

What if you want to pass dynamic parameters to the selected macro? You can achieve this by storing the macros as values in the dictionary. Here's an example:

```django
{% macro split_str(item) %}
    {{ item.split(",") | first |d  }}
{% endmacro %}
{% macro rep_str(item) %}
    {{ item.replace(",", "") }}
{% endmacro %}
{%- set mydict = {'split': split_str,
            'rep': rep_str
            } -%}
{{- mydict["rep"]("datto, cwm") -}}
{{- mydict["split"]("datto, cwm") -}}
```

In this code, we create two macros, `split_str` and `rep_str`, each of which takes additional parameters for flexibility. We then store these macros in the `mydict` dictionary, allowing us to select and execute the desired macro dynamically. This approach enables you to perform operations on strings with different parameters.
