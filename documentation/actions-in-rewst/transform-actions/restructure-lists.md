---
description: Redefine your list structure by reshaping attribute values.
---

# Transform list objects transform action

### Use case

You have a list where the current structure isn't effectively supporting your data analysis and transition decision making needs. You want to remap fields, flatten nested items, or count instances within your list to provide more meaningful insights.

### Overview

The `transform list objects` action offers versatile functionality to modify the structure of your list. Whether it's remapping fields for better clarity, flattening for easier data extraction, or counting to reveal data trends, this transform is a strong tool for data restructuring.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-24 at 10.56.59 AM.png" alt="A screenshot of transform list objects transform action, seen in the actions list menu of the workflow builder canvas. It indicates that the action is in beta."><figcaption></figcaption></figure>

***

## Parameters

<table><thead><tr><th width="177">Parameter</th><th width="451">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>List to Transform</td><td>The list that you would like to restructure.</td><td>true</td></tr><tr><td>Input Field</td><td>The item in the list you would like to transform.</td><td>true</td></tr><tr><td>Transformation Method</td><td>The transformation method to be applied on the input field. (options described below)</td><td>true</td></tr><tr><td>Output Field</td><td>The new field where the transformed value will be stored.</td><td>false</td></tr><tr><td>Append<br>Action Type</td><td>The type of appending action if the method is set to <code>append</code>.</td><td>false</td></tr><tr><td>Append Value</td><td>The value to be added if the <code>Append Action Type</code> is <code>Append Value</code>.</td><td>false</td></tr><tr><td>Append Field</td><td>The field to be joined if the <code>Append Action Type</code> is <code>Append Field</code>.</td><td>false</td></tr><tr><td>Delimiter for Append</td><td>The delimiter to be used in the <code>Append</code> method</td><td>false</td></tr><tr><td>Field for Concatenation</td><td>The field to be used in the concatenation operation if the method is <code>Concatenate</code>.</td><td>false</td></tr></tbody></table>

{% hint style="info" %}
The parameters listed under `Field Actions` are all required. Those listed under `Transformation Parameters` are optional and are needed only when `append` or `concatenate` are selected for the `Transformation Method`.
{% endhint %}

## Usage

Let's break this down into specific use-case examples, to show how each of these methods can be used within the `Restructure Lists` Transform.

### Input list

Assume that we have a list of objects called `my_list` that looks like this:

```django
my_list: [
  {
    name: "John",
    age: 30,
    hobbies: ["golf", "reading"],
    family: [
      { name: "Jane", relation: "sister" },
      { name: "Jim", relation: "brother" },
    ],
  },
  {
    name: "Mary",
    age: 35,
    hobbies: ["cooking", "music"],
    family: [
      { name: "Mike", relation: "husband" },
      { name: "Mia", relation: "daughter" },
    ],
  },
];
```

### Transformation methods

Here is the breakdown of the different transformation methods, and when you'd want to use them:

* **Retain Original Value**: The input field remains unchanged in the output. Ideal when you need to preserve the original data.
* **Append to Existing Value**: The output field shows the original input field value appended with specified values or fields. Perfect when you need to combine data from multiple sources.
* **Count the Number of Elements**: The output field displays the correct count of items in the input list. Use this when you need to know the size of your list.
* **Concatenate Nested Property in List**: The output field shows a string which is a concatenation of the specified field values in the input list.
* **Flatten List of Strings**: If your input list contains sub-lists, this method will return a flattened list with no sub-lists.

Let's use the list we declared to define a set of fields we want to restructure for this action, using the different transformation methods, and show how we can match these to their Jinja2 equivalent.

<details>

<summary>Method 1: Retain Original Value</summary>

This action retains the original value of `name`.

**Action Parameters:**

<pre class="language-yaml"><code class="lang-yaml">field_actions:
<strong> input: name
</strong> method: original
 output: name
</code></pre>

**Jinja2 Equivalent:**

```jinja2
{% raw %}
{% set _ = transformed_item.update({'name': item['name']}) %}
{% endraw %}


```

</details>

<details>

<summary>Method 2: Append to Existing Value</summary>

This action appends the literal string "age" before the actual age, separated by a colon.

**Action Parameters:**

```yaml
field_actions:
 input: age
 method: append
 output: status
 transformation_parameters:
  append_type: append_value
  append_value: 'age'
  delimiter: ':'
```

**Jinja2 Equivalent:**

```jinja2
{% raw %}
{% set _ = transformed_item.update({'status': 'age' ~ ':' ~ item['age']}) %}
{% endraw %}


```

</details>

<details>

<summary>Method 3: Count the Number of Elements</summary>

This action counts the number of items present in the `hobbies` list.

**Action Parameters:**

```yaml
field_actions:
 input: hobbies
 method: count
 output: hobbies_count
```

**Jinja2 Equivalent:**

```jinja2
{% raw %}
{% set _ = transformed_item.update({'hobbies_count': item['hobbies']|length}) %}
{% endraw %}


```

</details>

<details>

<summary>Method 4: Concatenate Nested Property in List</summary>

This action concatenates the `name` field from the `family` list of objects.

**Action Parameters:**

```yaml
field_actions:
 input: family
 method: concatenate
 output: family_names
 transformation_parameters:
  field: name
```

**Jinja2 Equivalent:**

```jinja2
{% raw %}
{% set _ = transformed_item.update({'family_names': ', '.join([dep['name'] for dep in item['family']])}) %}
{% endraw %}


```

</details>

<details>

<summary>Method 5: Flatten List of Strings</summary>

This action flattens the `hobbies` list of strings into a single comma separated string.

**Action Parameters:**

```yaml
field_actions:  
 input: hobbies
 method: flatten
 output: hobbies_flat
```

**Jinja2 Equivalent:**

```jinja2
{% raw %}
{% set _ = transformed_item.update({'hobbies_flat': ', '.join(item['hobbies'])}) %}
{% endraw %}
```

</details>

## Results output

After all these actions are performed, your newly transformed list would output looking like this:

```python
results = [
    {
        'name': 'John',
        'status': 'age:30',
        'hobbies_count': 2,
        'family_names': 'Jane, Jim',
        'hobbies_flat': 'golf, reading'
    },
    {
        'name': 'Mary',
        'status': 'age:35',
        'hobbies_count': 2,
        'family_names': 'Mike, Mia',
        'hobbies_flat': 'cooking, music'
    }
]
```
