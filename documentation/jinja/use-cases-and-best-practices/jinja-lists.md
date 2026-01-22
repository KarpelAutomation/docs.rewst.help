# Work with Jinja lists

## Introduction

Lists or Arrays are very common when working with sets of data in Rewst.

Any time you see information encapsulated in `[` `]` brackets, you are looking at a list, and working with the items in that list requires certain considerations. Working with these lists is referred to as "List Comprehension."

### Standard list

```json
[ "apples", "oranges", "potatoes" ]
```

### More complicated example

```json
"users": [
  {
    "username": "lskywalker",
    "first_name": "Luke",
    "last_name": "Skywalker",
    "occupation": "Jedi"
  },
  {
    "username": "hsolo",
    "first_name": "Han",
    "last_name": "Solo",
    "occupation": "Smuggler"
  }
]
```

### Work with lists

#### Count of users

```django
{{ CTX.users | length }}
```

**Splitting strings into lists**

```django
{{ "A long time ago in a galaxy far, far away".split() }}
```

**Indexing lists**

Lists are indexed starting at zero:

`{{ CTX.users[0] }}` (First element of list)

`{{ CTX.users[-1] }}` (Last element of list)

Get the first (or last) elements:

```django
{{ "A long time ago in a galaxy far, far away".split()[:4] }}
```

```json
{
  "result": [
    "A",
    "long",
    "time",
    "ago"
  ]
}
```

```django
{{ "A long time ago in a galaxy far, far away".split()[-3:] }}
```

```json
{
  "result": [
    "far,",
    "far",
    "away"
  ]
}
```

Joining list results for output:

```django
{{ "A long time ago in a galaxy far, far away".split()[-3:] | join(" ") }}
```

`far, far away`

### **Get the first name of each user**

Using the above example data, there are multiple ways to work with the members of this list. The method you choose will likely depend on more complex situations where one style more sense to use over another.

Method 1:

```django
{{ CTX.users | map(attribute="first_name") }}
```

Method 2:

```django
{{ [ user.first_name for user in CTX.users ] }}
```

Method 3:

```django
 {{- user.first_name -}}
```

### **Select items of a list based on their attributes**

Method 1:

```django
{{ CTX.users | selectattr("first_name","eq","Luke") }}
```

Method 2:

```django
{{ [ user for user in CTX.users if user.first_name == "Luke" ] }}
```

### **Create new objects with list notation**

Jinja expressions can span multiple lines to improve readability

```django
{{
  [
    {
      "first_name": user.first_name,
      "last_name": user.last_name,
      "force_sensitive": true
    }
    for user in CTX.users 
    if user.occupation == "Jedi"
  ] | sort(attribute="last_name")
}}
```

### **Append to a list**

```django
{%- do my_list.append(
    {
      "first_name": "Chewbacca",
      "last_name": None,
      "occupation": "Copilot"
    }
  )
{{- my_list -}}
```

### Other useful tactics

#### Compare lists

Sometimes you may wish to do something if a single item exists in two different lists:

```django
{{ true if [x for x in [1,2,3] if x in [3,4,5] ] }}
```

#### Stacked lists

If you need a single list, you can do the following:

```django
{% set list1 = [1,2,3,4,5,6] %}
{% set list2 = [7,8,9,10,11,12] %}
{{ list1 + list2 }}
```
