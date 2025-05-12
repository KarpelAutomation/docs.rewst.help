# Parse text to JSON transform action

### Use case

You have received an API response of a JSON string instead of a JSON object and would like to convert it to a JSON object.

### Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-18 at 3.05.44 PM.png" alt="A screenshot of the parse test to JSON transform action, seen in the actions list menu of the workflow builder canvas."><figcaption></figcaption></figure>

Parse Text Data into JSON.

***

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>String Contents</td><td>String to convert.</td><td>true</td></tr></tbody></table>

{% hint style="info" %}
You can utilize the Is JSON transform to test whether the string is valid JSON prior to parsing it with this transform.
{% endhint %}

### Usage

<details>

<summary>Example: Parsing a JSON String</summary>

Inputs:

**String Contents:**

```json
{"id":"676e061a-8004-4f60-ad37-cb0b2be25635","user":"Sean","age":32,"bio":"Hi, my name is Sean.\nI love hiking."}
```

</details>

### Results output

Result of Example:

```json
{
  "id": "676e061a-8004-4f60-ad37-cb0b2be25635",
  "user": "Sean",
  "age": 32,
  "bio": "Hi, my name is Sean.\nI love hiking."
}
```
