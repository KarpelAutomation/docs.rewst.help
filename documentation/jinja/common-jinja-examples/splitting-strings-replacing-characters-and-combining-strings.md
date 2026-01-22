# Split strings, replace characters, and combine strings

Mastering string manipulation techniques in Jinja templating is essential for creating dynamic and well-formatted templates.  Incorporate these techniques into your Jinja templates to optimize your data processing capabilities and improve their readability. There are three essential string operations:&#x20;

1. Splitting strings
2. Replacing characters
3. Combining strings

### **Split strings: Use .split()**

The `.split()` method in Jinja is employed to divide a string into multiple substrings based on a specified character or a set of characters. By providing a delimiter, you can split the string at occurrences of that character.

```django
{%- set mystring = "this_is_a_string" -%}
{{- 
    [
        item for item in mystring.split("_")
    ] 
-}}
```

In this example, the string `"this_is_a_string"` is split at each underscore (`_`), resulting in the output: `["this", "is", "a", "string"]`.

### **Replace characters: Use .replace() and | regex\_replace()**

The `.replace()` method or the `| regex_replace()` filter is utilized to replace specific characters in a string with another set of characters.

```django
{%- set mystring = "this_is_a_string" -%}
{{-mystring.replace("_", " ")-}}
{#- another way is like this -#}
{{- mystring | regex_replace("_", " ") -}}
```

In both cases, the underscore (`_`) in the string `"this_is_a_string"` is replaced with a space, resulting in the output: `"this is a string"`.

### **Combine strings: Use concatenation**

Combining strings in Jinja is achieved similarly to Python. Strings can be concatenated using either the `~` or `+` operators.

```django
{%- set string1 = "hello" -%}
{%- set string2 = "world" -%}
{{ string1~string2 }}
```

```django
{%- set string1 = "hello" -%}
{%- set string2 = "world" -%}
{{ string1 + string2 }}
```

In this example, the strings `"hello"` and `"world"` are concatenated to form the output: `"helloworld"`.

Note that in Jinja, the `~` operator is the preferred operator for this function.

