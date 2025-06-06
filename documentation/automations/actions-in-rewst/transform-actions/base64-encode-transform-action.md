# Base64 Encode transform action

## Use Case

You have a string value of a CSV file and you are looking to send it as an attachment using the `Send Mail As Impersonated User` action via the `Microsoft Graph` integration which requires the CSV string to be base64 encoded.

## Overview

Encode a string in base64.

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>String</td><td>String to encode</td><td>true</td></tr><tr><td>URL Safe</td><td>Whether to return a URL-safe base64 format. '-' is used instead of '+', and '_' instead of '/'.</td><td>false</td></tr></tbody></table>

## Usage

<details>

<summary>Example 1: Encoding a String</summary>

Inputs:\
\*\*String\*\*: This @is my test string-yeeeehaw\
\*\*URL Safe\*\*: false

</details>

## Results output

Result of Example 1:

```
VGhpcyBAaXMgbXkgdGVzdCBzdHJpbmcteWVlZWVoYXc=
```
