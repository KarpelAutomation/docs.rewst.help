# Extract part of a date transform action

## Use Case

You have received a date in a response from an API, you are going to use this to dynamically specify the year in another request based on what was received in the response.

## Overview

Given a date or date time string, extract a part of the date.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-09-09 at 9.39.20 AM.png" alt=""><figcaption></figcaption></figure>

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Date Time String</td><td>The original date time string to extract a part from.</td><td>true</td></tr><tr><td>Part to Extract</td><td>The part of the date to extract. Defaults to year.</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example 1: Extract the year from a date</summary>

Inputs: **Date Time String**: 2025-06-27T00:05:24.000 **Part**: Year (4 digits)

</details>

<details>

<summary>Example 2: Extract the day from a date</summary>

Inputs: **Date Time String**: 2025-06-27T00:05:24.000 **Part**: Day

</details>

## Results output

Result from Example 1:

```
2025
```

Result from Example 2:

```
27
```
