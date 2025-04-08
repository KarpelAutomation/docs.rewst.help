---
description: Seamlessly integrate "With Items" task results into your original list.
---

# Append with items results

### Use case

You're dealing with nested data structures and need to extract results from tasks ran With Items into your original list. You want a unified, easy-to-manipulate list that includes all necessary data.

### Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-28 at 11.26.27 AM.png" alt=""><figcaption></figcaption></figure>

The `Append With Items Results` transform enables effective incorporation of "With Items" task results into your original list. It bridges the gap between the collected results and the original list, making your data manipulation tasks simpler and more efficient.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-24 at 10.58.44 AM.png" alt=""><figcaption></figcaption></figure>

***

## Parameters

<table><thead><tr><th width="164">Parameter</th><th width="473.33333333333326">Description</th><th data-type="checkbox">Required</th><th data-hidden data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Base List</td><td>This is the main list to which you want your collected results to be appended.</td><td>true</td><td>true</td></tr><tr><td>Collected List</td><td>This is the list of results from your completed <code>With Items</code> task, from which the nested <code>result.result</code> attribute will be extracted.</td><td>true</td><td>true</td></tr><tr><td>Attribute Name</td><td>This is the name you'd like to set for the new attribute to be appended to the <code>Base List</code>.</td><td>true</td><td>true</td></tr></tbody></table>

## Usage

The below scenario will attempt to illustrate how the `Process With Items Results` transform can be utilized to simplify `With Items` results collection.

### **Input lists**

Assume we have a base list called `base_list`:

```json
base_list: [
  {
    name: "John",
    age: 30,
  },
  {
    name: "Mary",
    age: 35,
  },
]
```

And we ran a `With Items` task against this list to collect additional data from these items that's stored in a new list called `collected_list` that includes `result.result` attributes like this

```json
collected_list: [
  {
    result: {
      result: ["golf", "reading"]
    }
  },
  {
    result: {
      result: ["cooking", "music"]
    }
  },
]
```

### Action parameters:

We want to extract the `result.result` list from each item in the `collected_list` and append it to each corresponding item in the `base_list` as a new attribute named `hobbies`.

```yaml
base_list: base_list
collected_list: collected_list
attribute_name: hobbies
```

### **Jinja2 equivalent:**

```jinja2
{% raw %}
{% set normalized_list = [item.result.result for item in my_collected_list] %}
{% for list_item in normalized_list %}
  {% do my_base_list[loop.index0].update({'hobbies': list_item}) %}
{% endfor %}
{% endraw %}
```

## Results output

After processing, your results will look like this:

```json
results: [
  {
    name: "John",
    age: 30,
    hobbies: ["golf", "reading"]
  },
  {
    name: "Mary",
    age: 35,
    hobbies: ["cooking", "music"]
  },
]
```

{% hint style="success" %}
Remember to carefully specify your `Collected List`, `Base List`, and `Attribute Name` to ensure a successful transformation.
{% endhint %}
