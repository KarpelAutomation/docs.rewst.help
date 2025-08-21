# Convert from epoch transform action

## Use case

You have received a time value in epoch time from an API and would like to convert it to a date time string representation.

## Overview

Given an integer for epoch time, convert it to a date time string.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-08-21 at 2.23.16 PM.png" alt=""><figcaption></figcaption></figure>

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Epoch Time Value</td><td>Epoch time value to convert to a date time string.</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example: Convert epoch time value</summary>

Input: **Epoch Time Value**: `{{ now() }}`

</details>

### Results output

For this example the now( ) method is feeding in a value of `1747395397`.

```
2025-05-16T11:36:37+00:00
```
