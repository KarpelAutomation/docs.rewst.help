# Is JSON transform action

## Use case

You are working with an API and the return comes back as a JSON string instead of being a JSON object. You would like to verify that the string is valid JSON before attempting to convert it to JSON.

## Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-28 at 11.22.11 AM.png" alt=""><figcaption></figcaption></figure>

This transform will check whether or not a string provided via the 'String to Check' input is a valid JSON string.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>String to Check</td><td>The string to validate.</td><td>true</td></tr></tbody></table>

{% hint style="info" %}
This transform is useful for confirming a string is a valid JSON string prior to converting it to json using a filter such as `|json`
{% endhint %}

## Usage

<details>

<summary>Example 1: Providing a valid JSON string</summary>

Input:

```
{"test":"test"}
```

</details>

<details>

<summary>Example 2: Providing a invalid JSON string</summary>

Input:

```
I am not a JSON string!
```

</details>

## Results output

\
This transform will output a boolean value (True/False) based on whether or not the string is a valid JSON string.

Return from Example 1:

```json
True
```

Return from Example 2:

```json
False
```
