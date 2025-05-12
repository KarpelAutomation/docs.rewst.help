# Trim variable transform action

### Use case

You have a string that has been grabbed from an API return, however due to bad formatting the string starts or ends with extra spaces that need removed.

### Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-18 at 3.11.55 PM.png" alt="A screenshot of trim variable objects transform action, seen in the actions list menu of the workflow builder canvas. "><figcaption></figcaption></figure>

Trim whitespace characters from a variable.

***

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Variable Contents</td><td>Variable to trim</td><td>true</td></tr></tbody></table>

### Usage

<details>

<summary>Example: Trimming a string</summary>

**Variable Contents:** This is a test starting and ending with 3 spaces each

</details>

### Results output

Result of Example:

```
"This is a test starting and ending with 3 spaces each"
```

In the above return the `"` characters were kept to show the spaces being removed. These would not be present in the actual return. Only the original string without whitespaces would be returned.
