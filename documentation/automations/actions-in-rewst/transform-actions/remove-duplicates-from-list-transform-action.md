# Remove duplicates from list transform action

## Use case

You are working with a list of users however, the dataset contains multiple objects with the same GUID, you would like to remove the duplicates from the list.

## Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-04 at 3.12.19 PM.png" alt=""><figcaption></figcaption></figure>

Returns a list of unique items from the given list/iterable.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Attribute</td><td>Filter objects with unique values for this attribute; Only required for lists of objects.</td><td>false</td></tr><tr><td>Case Sensitive</td><td>Treat upper and lowercase strings as distinct.</td><td>false</td></tr><tr><td>List</td><td>List to remove duplicates from.</td><td>true</td></tr></tbody></table>

{% hint style="info" %}
For nested field names, separate them by dots (e.g., `details.age`).
{% endhint %}

## Usage

<details>

<summary>Example 1: Filter List For Unique Objects Based On Username</summary>

Inputs:**Attribute:** username**Case Sensitive:** False**List:**

````json
[
  {
    "member": true,
    "username": "Dan"
  },
  {
    "member": true,
    "username": "DAn"
  },
  {
    "member": true,
    "username": "dan"
  },
  {
    "member": true,
    "username": "DaN"
  },
  {
    "member": false,
    "username": "Bob"
  }
]


</details>

<details>

<summary>Example 2: Filter List of Integers For Unique Integers</summary>

Inputs:

**Attribute:** None
**Case Sensitive:** False
**List:** 
```json
[ 1, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 5 ]
````

</details>

## Results output

The expected output for this transform is a new list of the unique items from the previous list.

Result of Example 1:

```json
[
  {
    "member": true,
    "username": "Dan"
  },
  {
    "member": false,
    "username": "Bob"
  }
]
```

Result of Example 2:

```json
[
  1,
  2,
  3,
  4,
  5
]
```
