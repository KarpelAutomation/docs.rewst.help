# Get business days between dates transform action

## Get Business Days Between Dates

### Use case

You would like to get the count of business days between dates.

### Overview

<figure><img src="../../../.gitbook/assets/Screenshot 2025-04-18 at 2.50.19 PM.png" alt="A photo of the text header in the transform menu of the workflow builder for get business days between dates "><figcaption></figcaption></figure>

Get the number of business days between two dates.

***

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Start Date</td><td>The start date; This day is inclusive in the returned count.</td><td>true</td></tr><tr><td>End Date</td><td>The end date; This day is exclusive in the returned count.</td><td>true</td></tr><tr><td>Holidays</td><td>A list of holidays</td><td>false</td></tr><tr><td>Country</td><td>Country Specific Holidays to remove from the set.</td><td>false</td></tr></tbody></table>

{% hint style="info" %}
It is important to note that the end date is exclusive in the returned count, only start date is inclusive in the count.
{% endhint %}

### Usage

<details>

<summary>Example 1: 07/01/2025 through 07/07/2025 excluding US Holidays</summary>

Inputs:

**Start Date:** 07/01/2025

**End Date:** 07/07/2025

**Holidays:**

**Country:** United States of America

</details>

<details>

<summary>Example 2: 07/01/2025 through 07/07/2025 not excluding US Holidays</summary>

Inputs:

**Start Date:** 07/01/2025

**End Date:** 07/07/2025

**Holidays:**

**Country:**

</details>

### Results output

Result of Example 1:

```
3
```

Result of Example 2:

```
4
```
