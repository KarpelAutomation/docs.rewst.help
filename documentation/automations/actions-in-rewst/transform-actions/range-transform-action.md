# Range transform action

## Use case

You want to generate an array of integers from 1 to 100 to use in the **With Items** field of an action. This will cause the action, such as an API call, to run once for each number in the array. During each run, you can reference the current number using `item()` and use it to dynamically construct values like usernames. For example, the first run would use `"User1"`, the second `"User2"`, and so on up to `"User100"`.

## Overview

This transform will return a list of integers from start to end.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-08-21 at 2.21.45 PM.png" alt=""><figcaption></figcaption></figure>

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Start</td><td>The starting value of the range, inclusive. Default is 0 if not provided.</td><td>true</td></tr><tr><td>End</td><td>The ending value of the range, exclusive. Default is 0 if not provided.</td><td>true</td></tr><tr><td>Step</td><td>The step size for the range. Defaults to 1 if not provided.</td><td>false</td></tr></tbody></table>

{% hint style="info" %}
The end field value is exclusive, so if you would like to have the end value of the array be 100 (as an example) then you would need to provide an end value of 101.
{% endhint %}

## Usage

<details>

<summary>Example: Create an array with 1 to 25</summary>

Inputs:

**Start**: 1 **End**: 26 **Step**: 1

</details>

### Results output

Result of Example:

```json
[
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
  21,
  22,
  23,
  24,
  25
]
```
