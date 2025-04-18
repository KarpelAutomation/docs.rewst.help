# Compare dates transform action

### Use case

You are building a workflow that checks if the tickets closed date is greater than the expected close date and would like to know if action is needed based on a true/false value.

### Overview

<figure><img src="../../../.gitbook/assets/Screenshot 2025-04-04 at 3.12.19 PM (1).png" alt=""><figcaption></figcaption></figure>

This transform will take two dates and an operator, it will then perform a comparison based on the operator and return a boolean value.

***

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>First Date</td><td>This should be a valid datetime string representation.</td><td>true</td></tr><tr><td>Second Date</td><td>This should be a valid datetime string representation.</td><td>true</td></tr><tr><td>Comparison Operator</td><td>The operator to use in the comparison.</td><td>true</td></tr><tr><td>Day First</td><td>Whether to interpret the first value in an ambiguous 3-integer date (e.g. 01/05/09) as the day (True) or month (False). If yearfirst is set to True, this distinguishes between YDM and YMD. If set to None, this value is retrieved from the current parserinfo object (which itself defaults to False).</td><td>false</td></tr><tr><td>Fuzzy Parsing</td><td>Whether to allow fuzzy parsing, allowing for string like "Today is January 1, 2047 at 8:21:00AM"</td><td>false</td></tr><tr><td>Ignore Timezone</td><td>If set True, time zones in parsed strings are ignored and a timezone naive datetime object is returned.</td><td>false</td></tr><tr><td>Year First</td><td>Whether to interpret the first value in an ambiguous 3-integer date (e.g. 01/05/09) as the year. If True, the first number is taken to be the year, otherwise the last number is taken to be the year. If set to None, this value is retrieved from the current parserinfo object (which itself defaults to False).</td><td>false</td></tr></tbody></table>

## Usage

<details>

<summary>Example 1: Greater Than</summary>

Inputs:**First Date:** 2025-03-13T04:00:00.000Z**Second Date:** 2025-03-14T04:00:00.000Z**Comparison Operator:** >**Day First:** None**Fuzzy Parsing:** True**Ignore Timezone:** False**Year First:** None

</details>

## Results output

The expected output for this transform is a boolean value based on the comparison of the two dates.

Result Output for Example 1:

```json
False
```
