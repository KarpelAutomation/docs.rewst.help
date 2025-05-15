# Format date time transform action

## Use case

You have received a date time string representation from an API, you would like to utilize this value in another API, however the new API expects it to be in a certain date format.

## Overview

Given a date or date time string, format it to a different date time string. Custom input can be used, please refer to https://strftime.org/ for the format string options.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Date Time String</td><td>The original date time string that needs formatted differently.</td><td>true</td></tr><tr><td>Day First</td><td>Whether to interpret the first value in an ambiguous 3-integer date (e.g. 01/05/09) as the day (True) or month (False). If yearfirst is set to True, this distinguishes between YDM and YMD. If set to None, this value is retrieved from the current parserinfo object (which itself defaults to False).</td><td>false</td></tr><tr><td>Year First</td><td>Whether to interpret the first value in an ambiguous 3-integer date (e.g. 01/05/09) as the year. If True, the first number is taken to be the year, otherwise the last number is taken to be the year. If set to None, this value is retrieved from the current parserinfo object (which itself defaults to False).</td><td>false</td></tr><tr><td>Fuzzy Parsing</td><td>Whether to allow fuzzy parsing, allowing for string like "Today is January 1, 2047 at 8:21:00AM"</td><td>false</td></tr><tr><td>Ignore Timezone</td><td>If set True, time zones in parsed strings are ignored and a timezone naive datetime object is returned.</td><td>false</td></tr><tr><td>Desired String Format</td><td>Defaults to YYYY-MM-DDTHH:MM:SSZ if left empty.</td><td>false</td></tr></tbody></table>

{% hint style="info" %}
You can provide a custom format by manually entering your strftime string into the format field. For placeholder references please visit [https://strftime.org/](https://strftime.org/) .
{% endhint %}

## Usage

<details>

<summary>Example 1: Change date of 2025-05-25T07:00:00.000Z to YYYY-MM-DD</summary>

Inputs:\
**Date Time String:** 2025-03-13T04:00:00.000Z\
**Day First:** None\
**Fuzzy Parsing:** True\
**Ignore Timezone:** False**Y**\
**ear First:** None\
**Desired String Format:** YYYY-MM-DD

It's important to note that YYYY-MM-DD is a select-able value in the drop down for the field. If you were to do this via a custom input, then it would be: %Y-%m-%d

</details>

## Results output

Example output from Example 1:

```
2025-05-25
```
