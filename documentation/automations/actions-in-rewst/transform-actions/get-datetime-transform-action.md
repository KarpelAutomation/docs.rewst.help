# Get DateTime transform action

## Use case

You would like to get the current date/datetime.

## Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-18 at 2.55.53 PM.png" alt="An image of the get datetime transform action in the actions menu in the workflow builder canvas."><figcaption></figcaption></figure>

Returns the current date/time in the requested timezone.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>DateTime format to return</td><td>Use https://strftime.org/ for various options</td><td>true</td></tr><tr><td>Timezone to return</td><td>The timezone you would like to have the date returned in.</td><td>true</td></tr></tbody></table>

{% hint style="info" %}
Some timezone values are timezone naive, such as EST. Say you would like to use a timezone aware value. Following that example, you should use America/New\_York or US/Eastern.

A good point of reference is: https://en.wikipedia.org/wiki/List\_of\_tz\_database\_time\_zones
{% endhint %}

## Usage

<details>

<summary>Example: Get Current DateTime for US Eastern</summary>

Inputs:

**DateTime format to return:** %Y-%m-%dT%H:%M:%SZ

**Timezone to return:** US/Eastern

</details>

## Results output

Results of Example:

```
2025-04-16T08:07:04Z
```
