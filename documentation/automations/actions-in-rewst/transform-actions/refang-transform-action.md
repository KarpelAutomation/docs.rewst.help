# Refang transform action

## Use case

You have an email with a defanged URL inside of it similar to something like: hXXps\[:]//rewst\[.]io/aprilfools/surprise.html

You would like to refang it and make the URL directly usable.

## Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-14 at 12.17.49 PM.png" alt=""><figcaption></figcaption></figure>

Given a defanged URL, this action will refang the url by removing the added characters that prevent it from being directly usable.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>URL</td><td>URL to refang</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example 1: Refang hXXps[:]//rewst[.]io/aprilfools/surprise.html</summary>

Inputs:

Colon: True

Dots: True

URL: [**https://rewst.io/aprilfools/surprise.html**](https://rewst.io/aprilfools/surprise.html)

</details>

## Results output

The expected result of this transform is a standard url.

Result from Example 1:

```
https://rewst.io/aprilfools/surprise.html
```
