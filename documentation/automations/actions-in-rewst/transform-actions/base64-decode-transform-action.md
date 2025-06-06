# Base64 Decode transform action

## Use case

An API has returned a value that is base64 encoded and you would like to decode it.

## Overview

Decode a base64 encoded string.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>String</td><td>String to decode.</td><td>true</td></tr><tr><td>URL Safe</td><td>Whether the base64-encoded has been encoded in URL-safe format.</td><td>false</td></tr><tr><td>As Bytes</td><td>Whether to return the raw bytes, instead of decoding the bytes as a UTF-8 string.</td><td>false</td></tr></tbody></table>

## Usage

<details>

<summary>Example 1: Decoding a String</summary>

Inputs:\
\*\*String\*\*: VGhpcyBAaXMgbXkgdGVzdCBzdHJpbmcteWVlZWVoYXc=\
\*\*URL Safe\*\*: false\
\*\*As Bytes\*\*: false

</details>

## Results output

Result of Example 1:

```
This @is my test string-yeeeehaw
```
