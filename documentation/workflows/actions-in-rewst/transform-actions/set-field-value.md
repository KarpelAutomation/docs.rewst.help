---
description: Modify a specific field's value within your list objects.
---

# Set field value transform action

## Use case

You have a list of objects where certain field values need adjusting. You need a solution that not only allows straightforward field value modifications, but also supports conditional changes and nested element modifications.

## Overview

The `Set Field Value` action enables the customization of a field's value within a list of objects. Whether it's for conditional value adjustment based on specific criteria or working with nested elements, this action offers the flexibility you need.

***

## Parameters

<table><thead><tr><th width="178">Parameter</th><th width="472.3333333333333">Description</th><th data-type="checkbox">Required</th><th data-hidden>Required</th></tr></thead><tbody><tr><td>List to Transform</td><td>The list of objects you want to modify the contents of.</td><td>true</td><td>Yes</td></tr><tr><td>Field to Update</td><td>Specify the field to be added or modified in each object.</td><td>true</td><td>Yes</td></tr><tr><td>New Value</td><td>Specify the value for the new or modified field.</td><td>true</td><td>Yes</td></tr><tr><td>New Value Mode</td><td>How you want to provide the field's new value. <code>copy_from_field</code> or <code>set_value</code> (described below)</td><td>true</td><td>Yes</td></tr><tr><td>Parent Fields</td><td>If the field should be nested within another list, specify the parent list's name here.</td><td>false</td><td>No</td></tr><tr><td>Condition Field</td><td>If you want to update the field conditionally, specify the field to base the condition on.</td><td>false</td><td>No</td></tr><tr><td>Condition Value</td><td>If a <code>Condition Field</code> is specified, provide the value that should be matched to trigger the update.</td><td>false</td><td>No</td></tr></tbody></table>

## Usage

Let's break this down into specific use-case examples, to show how each of these methods can be used within the `Set Field Value` Transform.

### Input List

Assume that we have a list of objects called `my_list` that looks like this:

```json
my_list: [
  {
    name: "John",
    age: 30,
    hobbies: ["golf", "reading"],
  },
  {
    name: "Mary",
    age: 35,
    hobbies: ["cooking", "music"],
  },
]
```

### Update Methods

Using the `New Value Mode` you can define how you want to provide the data for the outputting field. You can do one of two things:

* **Copy From Field:** allows you to copy the value from an existing field
* **Set Value:** provide the literal value you'd like the field to be set to.

Here are some examples of how we can use this action to update or add to our list:

<details>

<summary>Example 1: Create and set new field values</summary>

Add a new field `adult` with value `true` to each object in the list.

**Action Parameters:**

```yaml
field_actions:
 field: adult
 new_value: true
 new_value_mode: set_value
```

**Jinja2 Equivalent:**

```django
{% raw %}
{% set _ = item.update({'adult': true}) %}
{% endraw %}


```

</details>

<details>

<summary>Example 2: Copy value from existing field to new field</summary>

Copy the `age` field to a new field `years` in each object.

**Action Parameters:**

```yaml
field_actions:
 field: years
 new_value: age
 new_value_mode: copy_from_field
```

**Jinja2 Equivalent:**

```django
{% raw %}
{% set _ = item.update({'years': item['age']}) %}
{% endraw %}


```

</details>

<details>

<summary>Example 3: Update fields conditionally based on other fields</summary>

Update the `name` field to `Senior` for any object where `age` is 35.

**Action Parameters:**

```yaml
field_actions:
 field: name
 new_value: "Senior"
 new_value_mode: set_value
 condition_field: age
 condition_value: 35
```

**Jinja2 Equivalent:**

```django
{% raw %}
{% if item['age'] == 35 %}
  {% set _ = item.update({'name': 'Senior'}) %}
{% endif %}
{% endraw %}
```

</details>

## Results Output

After all these examples are performed in the transformation, your newly updated list would reflect these changes in their outputted results as such:

```json
results: [
  {
    name: "John",
    age: 30,
    hobbies: ["golf", "reading"],
    adult: true,
    years: 30
  },
  {
    name: "Senior",
    age: 35,
    hobbies: ["cooking", "music"],
    adult: true,
    years: 35
  },
]
```

***

With the knowledge of the `Set Field Value` action, you're now equipped to make modifications to the field values in your lists of objects. Remember, the aim is not just to change values but to improve the readability and utility of your data.
