# Loops in Jinja

In a traditional for loop, you iterate through a sequence of values and execute specific instructions. Here’s an example of populating a list from 0 to 8 using a for loop:

```django
{% set mylist = [] %}
{%- for item in range(0,9) -%}
    {% do mylist.append(item) %}
{% endfor %}
{{ mylist }}
```

In this snippet, the loop iterates through numbers from 0 to 8, appending each value to the `mylist` variable, which is then displayed.

### **List comprehension: A concise alternative**

List comprehension provides a more concise way to loop through elements and construct lists. It condenses the for loop into a single line, making your code more readable. Here’s how the same task is accomplished using list comprehension:

```django
{{ 
    [
        item for item in range(0,9)
    ]
 }}
```

This one-liner creates a list containing numbers from 0 to 8, simplifying the process and enhancing code readability.

List comprehension can also be used for appending values directly to a list, eliminating the need for separate append statements. Here’s an example of appending a list using list comprehension:

```django
{%- set mylist = [] -%}
{%- do mylist.append(
    [
        item for item in range(0,9)
    ]
) -%}
{{- mylist -}}
```

In this code, list comprehension constructs the list directly within the `append()` statement, making the process more compact and efficient.
