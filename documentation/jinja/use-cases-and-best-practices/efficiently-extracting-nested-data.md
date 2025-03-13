---
description: Streamlining Data Retrieval with Jinja Filters vs. List Comprehension
---

# Efficiently extracting nested data

## Introduction

Explore how to use `jsonpath_query`, list comprehension, and the `map` filter in Rewst for extracting data from JSON structures. This guide highlights when and why to use each method, with a focus on scenarios best suited for `jsonpath_query` and `map`.

***

## Example Scenario

Extract event names from a JSON list containing detailed event information.

#### JSON Structure:

```json
{
  "events": [
    {"details": {"name": "Event One", "location": "City A"}},
    {"details": {"name": "Event Two", "location": "City B"}}
  ]
}
```

***

### Method 1: Using List Comprehension

List comprehension is a straightforward Pythonic way to create lists by iterating over sequences.

**Example:**

```django
{{ [item.details.name for item in CTX.events] }}
```

**Explanation:**

This method loops through each event in `CTX.events`, extracting the `name` from the `details`.

1. **List Comprehension Syntax**: `[expression for item in list]` is standard list comprehension syntax.
2. **Iterating Over the `CTX.events`**: The `for item in CTX.events` part loops through each event in the `CTX.events` array.
3. **Extracting the `name`**: The `item.details.name` extracts the `name` property from the `details` object of each event.

***

### Method 2: Using `jsonpath_query`

`jsonpath_query` provides a more direct approach to targeting and extracting nested data.

**Example:**

```django
{{ CTX.events | jsonpath_query('$[*].details.name') }}
```

**Explanation:**

This expression directly navigates to and extracts the `name` field from each event's `details`.

1. **Using the `jsonpath_query` Filter**: `jsonpath_query` is a filter applied to the `CTX.events` variable.
2. **Navigating the JSON Path**: `'$[*].details.name'` is the path expression. `$` denotes the root of the JSON structure, `[*]` accesses all elements in the `events` array, and `.details.name` navigates to the `name` within each `details` object.

***

### Method 3: Using `map` with an Attribute

**Example:**

```django
{{ CTX.events | map(attribute='details.name') }}
```

**Explanation**:

This example demonstrates using the `map` filter in Jinja to extract a specific attribute from each element in a sequence.

* **Applying the `map` Filter**: The `map` filter is applied to the `CTX.events` variable. This Jinja2 filter iterates over each element in the given sequence.
* **Specifying the Attribute to Extract**: The part `attribute='details.name'` tells the `map` filter to extract the `name` attribute from the `details` object within each element of `CTX.events`.

***

### Comparison and Effectiveness

* **List Comprehension**: Offers control and flexibility, best for simpler structures or specific manipulations.
* **Filters (`jsonpath_query`, `map`)**: Streamline the process with specialized functionality. Choose `jsonpath_query` for deep JSON navigation and `map` for straightforward, uniform transformations.

***

### Expected Output

All methods output a list of event names:

```json
["Event One", "Event Two"]
```

***

### Conclusion

Select the method that best suits your task's complexity and your familiarity with programming concepts. Filters like `jsonpath_query` and `map` simplify the extraction process, making them efficient choices for various scenarios in Rewst. For more insights and community discussions, visit the [Rewst Discord](https://discord.gg/rewst) `#jinja` channel.
