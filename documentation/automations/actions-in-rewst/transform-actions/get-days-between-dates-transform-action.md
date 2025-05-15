# Get days between dates transform action

## Use case

You would like to get the count of days between dates.

## Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-18 at 2.57.44 PM.png" alt="A screenshot of the get days between dates transform action, seen in the actions list menu of the workflow builder canvas."><figcaption></figcaption></figure>

Get the number of days between two dates.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Start Date</td><td>The start date; This day is inclusive in the returned count.</td><td>true</td></tr><tr><td>End Date</td><td>The end date; This day is exclusive in the returned count.</td><td>true</td></tr></tbody></table>

{% hint style="info" %}
It is important to note that the end date is exclusive in the returned count. Only start date is inclusive in the count.
{% endhint %}

## Usage

<details>

<summary>Example: 07/01/2025 through 07/07/2025</summary>

Inputs:

**Start Date:** 07/01/2025

**End Date:** 07/07/2025

**Holidays:**

**Country:** United States of America

</details>

## Results output

Result of Example:

```
6
```
