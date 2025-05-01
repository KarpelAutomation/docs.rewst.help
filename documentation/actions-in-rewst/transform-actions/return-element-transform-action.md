# Return element transform action

## Use case

You have a list of users and you would like to grab the first user in the list.

## Overview

Returns the Nth element of a string or list

<figure><img src="../../../.gitbook/assets/Screenshot 2025-05-01 at 2.53.38 PM.png" alt="A screenshot of the set return element transform action, seen in the actions list menu of the workflow builder canvas."><figcaption></figcaption></figure>

***

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Element</td><td>Element number to Return, starting at 0 for the first element. -1 will return the last element</td><td>true</td></tr><tr><td>Input String or List</td><td>String or list that you would like to return the element of.</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example 1: Return the first user in a list of users</summary>

Input:

**Element:** 0

**Input String or List:**

```json
[
    {
        "id": 1,
        "user": "Bob"
    },
    {
        "id": 2,
        "user": "Kim"
    },
    {
        "id": 3,
        "user": "Magnus"
    },
    {
        "id": 4,
        "user": "Karin"
    },
]
```

</details>

## Results output

Result of example 1:

```json
{
	"id": 1,
	"user": "Bob"
}
```
