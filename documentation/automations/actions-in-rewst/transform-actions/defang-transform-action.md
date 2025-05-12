# Defang transform action

### Use Case

You have a email with a URL in it similar to something like:\
https://rewst.io/aprilfools/surprise.html\
You would like to defang it and make it not directly usable.

### Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-14 at 12.17.28 PM.png" alt=""><figcaption></figcaption></figure>

Given a URL, this action will 'defang' the url by adding characters to prevent it from being directly usable.

***

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>URL</td><td>URL to defang</td><td>true</td></tr><tr><td>Colon</td><td>If true defang colons.</td><td>false</td></tr><tr><td>Dots</td><td>If true defang all dots.</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example 1: Defang the url https://rewst.io/aprilfools/surprise.html</summary>

Inputs:

Colon: True

Dots: True

URL: https://rewst.io/aprilfools/surprise.html

</details>

## Results Output

The expected result of this transform is a defanged url.

Result from Example 1:

```
hXXps[:]//rewst[.]io/aprilfools/surprise.html
```
