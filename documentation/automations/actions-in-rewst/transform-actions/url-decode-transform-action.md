# URL decode transform action

### Use case

You have a string that is URL encoded and you would like to get the original decoded value.

### Overview

When given a URL encoded string, this will decode it.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-08-21 at 2.00.01 PM.png" alt=""><figcaption></figcaption></figure>

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>String</td><td>String to URL decode.</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example: Decode a string</summary>

Inputs: **String**: This-is-%40-test%21

</details>

## Results output

Results of Example 1:

```
This-is-@-test!
```
