# URL encode transform action

## Use case

You are writing query parameters and the API you are sending them to requires them to be URL encoded.

## Overview

When given a string this transform will URL encode it.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-08-21 at 1.57.34 PM.png" alt=""><figcaption></figcaption></figure>

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>String</td><td>String to URL encode.</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example: Encode a string</summary>

Inputs: **String**: This-is-@-test!

</details>

## Results output

```
This-is-%40-test%21
```
