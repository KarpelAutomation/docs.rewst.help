# Any transform action

### Use case

You are reviewing a list of users and you need to determine if any of the users are enabled. The previous list has been mapped using the map transform action to the attribute `enabled` , providing a list of boolean True/False values to check against.

### Overview

This transform action will look at a list of boolean values and return true if any of the elements are true.

***

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>List</td><td>List of boolean values to check against.</td><td>true</td></tr></tbody></table>

### Usage

<details>

<summary>Example 1: Confirm Any Items In List Are True</summary>

**List to Check** (input):

```
{{ [true, false, true, true] }}
```

</details>

### Results Output

This transform will output a boolean value.

Example output from Example 1:

```json
True
```
