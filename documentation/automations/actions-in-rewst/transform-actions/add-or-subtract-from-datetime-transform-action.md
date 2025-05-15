# Add or subtract from DateTime transform action

## Use case

You would like to programmatically determine what the date was thirty days ago.

## Overview



<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-18 at 2.33.30 PM.png" alt=""><figcaption></figcaption></figure>

Add or Subtract from a DateTime

***

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>DateTime to add or subtract from</td><td>Use https://strftime.org/ for various options</td><td>true</td></tr><tr><td>Days to add or subtract</td><td>Integer value for how many days to add or subtract.</td><td>false</td></tr><tr><td>Hours to add or subtract</td><td>Integer value for how many hours to add or subtract.</td><td>false</td></tr><tr><td>Microseconds to add or subtract</td><td>Integer value for how many microseconds to add or subtract.</td><td>false</td></tr><tr><td>Minutes to add or subtract</td><td>Integer value for how many minutes to add or subtract.</td><td>false</td></tr><tr><td>Months to add or subtract</td><td>Integer value for how many months to add or subtract.</td><td>false</td></tr><tr><td>Seconds to add or subtract</td><td>Integer value for how many seconds to add or subtract.</td><td>false</td></tr><tr><td>Years to add or subtract</td><td>Integer value for how many years to add or subtract.</td><td>false</td></tr></tbody></table>

## Usage

<details>

<summary>Example: Get 30 days from today's date</summary>

Inputs:

**DateTime to add or subtract from:** `{{ now("UTC","%m-%d-%Y") }}`**Days to add or subtract:** 30

The rest of the inputs in this example are blank.

</details>

## Results output

Result from Example 1 (if run on 04/16/2025):

```
"2025-05-16T00:00:00+00:00"
```
