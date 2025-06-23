---
description: Blend two input lists into one using a shared identifier.
---

# Merge lists transform action

## Use case

You're faced with two separate lists of data that need to be combined based on a common attribute. You require a merging method that mimics SQL JOINs.

## Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-28 at 11.23.33 AM.png" alt=""><figcaption></figcaption></figure>



The `Merge Lists` transform equips you with the functionality to effectively merge two lists into one. By aligning items based on a shared key attribute and allowing for three types of merging strategies (`inner`, `left`, and `outer`), it enhances your data analysis and manipulation capabilities.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-24 at 10.59.22 AM.png" alt=""><figcaption></figcaption></figure>

## Parameters

Here are the parameters you have available to you within the action, and their descriptions:

<table><thead><tr><th width="189">Parameter</th><th width="438.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Merge Method</td><td>Choose the strategy to merge the lists. Options are <code>inner</code>, <code>left</code>, or <code>outer</code> join.</td><td>true</td></tr><tr><td>First List</td><td>Enter the first list for the merging process.</td><td>true</td></tr><tr><td>First List's Key</td><td>Identify the key attribute for matching items in the first list.</td><td>true</td></tr><tr><td>Second List</td><td>Enter the second list to be merged with the first one.</td><td>true</td></tr><tr><td>Second List's Key</td><td>Identify the key attribute for matching items in the second list.</td><td>true</td></tr></tbody></table>

## Usage

### Input lists

For this transform, we will want to provide the action two lists and their corresponding key's to be used for mapping the comparisons. Let's use the below for our examples:

**List 1:**

```json
list_1: [
  {"id": 1, "name": "John"},
  {"id": 2, "name": "Mary"}
]
```

**List 2:**

```json
list_2: [
  {"id": 1, "age": 30},
  {"id": 3, "age": 35}
]
```

### Merge methods

This transform offers three different methods for merging your lists: `Inner`, `Left`, and `Outer` joins. These three methods mimic the functionality of SQL JOINs and each has its own use cases:

1. **Inner join:** useful when you're dealing with two datasets and only want to focus on data that is common between them.
2. **Left join:** useful when the first list is your primary dataset and you wish to append any additional, relevant data from the second list to it.
3. **Outer join:** useful when you aim for a comprehensive view, combining all data from both lists, and filling in gaps where possible.

Here are some examples of these methods in action to help you better understand their operation:

<details>

<summary>Inner join</summary>

The `Inner` merge method is used when you only want to retain the entries that are present in both lists. The intersection is based on the values of the specified keys.

**Action Parameters:**

```yaml
join_method: inner
list_1: list_1
list1_key: id
list_2: list_2
list2_key: id
```

**Jinja2 Equivalent:**

```django
jinjaCopy code
{% set result = [] %}
{% for item1 in list_1 %}
  {% for item2 in list_2 %}
    {% if item1[list1_key] == item2[list2_key] %}
      {% do result.append(item1 | combine(item2)) %}
    {% endif %}
  {% endfor %}
{% endfor %}


```

</details>

<details>

<summary>Left join</summary>

The `Left` merge method is employed when you want to keep all the entries from the first list and incorporate matching entries from the second list.

**Parameters:**

```yaml
join_method: left
list_1: List 1
list1_key: id
list_2: List 2
list2_key: id
```

**Jinja2 Equivalent:**

```django
{% for item1 in list_1 %}
  {% for item2 in list_2 %}
    {% if item1[list1_key] == item2[list2_key] %}
      {% do item1.update(item2) %}
    {% endif %}
  {% endfor %}
{% endfor %}


{{ list_1 }}
```

</details>

<details>

<summary>Outer join</summary>

The `Outer` merge method is used when you want to keep all entries from both lists, regardless of whether they have a match.

**Parameters:**

```yaml
join_method: outer
list_1: List 1
list1_key: id
list_2: List 2
list2_key: id
```

**Jinja2 Equivalent:**

```django
{% for item1 in list_1 %}
  {% for item2 in list_2 %}
    {% if item1[list1_key] == item2[list2_key] %}
      {% do item1.update(item2) %}
    {% endif %}
  {% endfor %}
{% endfor %}
{{ list_1 + [item2 for item2 in list_2 if all(item2[list2_key] != item1[list1_key] for item1 in list_1)] }}
```

</details>

## Results output

The outputs of the three different merge method examples above can be seen as follows:

**Inner join:** only John's object is returned in the output, as his `id` is present in both lists.

```json
results: [
  {"id": 1, "name": "John", "age": 30}
]
```

**Left join:** all objects from `list_1` are returned, with matching objects from `list_2` added on. This is why John's object includes the age from `list_2`, but Mary's object remains the same, as there was no matching `id` in `list_2`.

```json
results: [
  {"id": 1, "name": "John", "age": 30},
  {"id": 2, "name": "Mary"}
]
```

**Outer join:** all objects from both lists are returned, with matching objects merged together. Therefore, we get John's object with the `age` from `list_2`, Mary's object from `list_1`, and the object with `id` 3 from `list_2` which didn't have a matching `id` in `list_1`.

```css
results: [
  {"id": 1, "name": "John", "age": 30},
  {"id": 2, "name": "Mary"},
  {"id": 3, "age": 35}
]
```

***

Now that you're equipped with the knowledge of `Merge Lists` transform, you're prepared to blend data from two different lists into a coherent whole. Keep in mind your merging strategy (`inner`, `left`, or `outer`) as it directly impacts your resulting list.
