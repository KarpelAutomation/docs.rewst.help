---
description: >-
  Practice writing list comprehension, using Jinja, to create a new list from
  existing list data.
---

# Jinja list comprehension examples ("Them Apples")

## Module Overview

:bulb: Let's explore list comprehension with two examples, focusing on how the output (first part) and condition (last part, optional) can be used.

### Video (_4:56 Minutes)_

{% embed url="https://youtu.be/VZ9SZ5Q6nOY?si=gelo03VRTQvO6WJD" %}

Picture this: a basket of apples labeled "them\_apples." Each apple has attributes like color, shape, and brand name (e.g., Granny Smith, Red Delicious). We’ll use these details to build two different lists.

<details>

<summary>Example 1: Apple Names</summary>

We want a list of the apple brand names. Here's how the list comprehension breaks down:

* **Output:** The specific attribute we want is the apple's name. So, we use `apple.name`.
* **For Loop:** Loop through each apple with `for apple in CTX.them_apples`.
* **Condition:** No condition needed here.

The result is a list of brand names like Pink Lady, Honeycrisp, and Jazz, stored in `CTX.apple_names`. You’ll learn more about storing lists in the lesson on Creating an Option Generator Workflow.

</details>

<details>

<summary>Example 2: Down With Red Delicious</summary>

This time, let's filter a list by the attribute "color" to create a new list that excludes red apples.

* **Output:** We want the whole apple this time, so we use `apple`.
* **For Loop:** Same as before, `for apple in CTX.them_apples`.
* **Condition:** Only include apples with the colors pink or green, by writing `if "green" in apple.color or if "pink" in apple.color`.&#x20;

Alternative methods for the condition could be:

* `if "red" not in apple.color` &#x20;
* `if "Red Delicious" not in apple.name`

This gives us a new list of only pink and green apples, stored in `CTX.best_apples`.

</details>

### Action Items

* Practice the Lunch Menu exercises that use list comprehension.
* Post further questions about list comprehension in the #cluck-u Rewst Discord channel to get help from professors and peers!

## Navigation
