# Sort transform action

## Use case

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-05-01 at 2.53.28 PM.png" alt="A screenshot of the sort transform action, seen in the actions list menu of the workflow builder canvas."><figcaption></figcaption></figure>

You are listing users from Microsoft Graph and you would like to sort the result alphabetically based on their displayName attribute.

### Overview

Given an iterable, return a new sorted list from the items in the iterable.\


***

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Attribute</td><td>When sorting a list of dictionaries, an attribute or key to sort by. Can use dot notation like "address.city".</td><td>false</td></tr><tr><td>Case Sensitive</td><td>When sorting strings, sort upper and lower case separately.</td><td>false</td></tr><tr><td>Input List or String</td><td>List or string to sort</td><td>true</td></tr><tr><td>Reverse Sort</td><td>If true, will sort in descending order instead of the ascending order.</td><td>false</td></tr></tbody></table>

{% hint style="info" %}
For nested field names, separate them by dots (e.g., `details.age`).
{% endhint %}

## Usage

<details>

<summary>Example 1: Sort Users By ID</summary>

Inputs:

_Attribute:_ age

_Case Sensitive:_ false

Input List or String:

```json
[
	{
		"id": 6,
		"name": "Dan6",
		"favorite_letter": "a"
	},
	{
		"id": 2,
		"name": "Dan2",
		"favorite_letter": "c"
	},
	{
		"id": 4,
		"name": "Dan4",
		"favorite_letter": "g"
	},
	{
		"id": 1,
		"name": "Dan1",
		"favorite_letter": "B"
	},
	{
		"id": 3,
		"name": "Dan3",
		"favorite_letter": "z"
	},
	{
		"id": 5,
		"name": "Dan5",
		"favorite_letter": "A"
	}
]
```

_Reverse Sort:_ false

</details>

<details>

<summary>Example 2: Sort A List of Numbers</summary>

Inputs:

_Attribute:_ age

_Case Sensitive:_ false

Input List or String:

```json
[83, 42, 36, 30, 15, 54, 68, 30, 29]
```

_Reverse Sort:_ false

</details>

## Results output

Results of example 1:

```json
[
  {
    "id": 1,
    "name": "Dan1",
    "favorite_letter": "B"
  },
  {
    "id": 2,
    "name": "Dan2",
    "favorite_letter": "c"
  },
  {
    "id": 3,
    "name": "Dan3",
    "favorite_letter": "z"
  },
  {
    "id": 4,
    "name": "Dan4",
    "favorite_letter": "g"
  },
  {
    "id": 5,
    "name": "Dan5",
    "favorite_letter": "A"
  },
  {
    "id": 6,
    "name": "Dan6",
    "favorite_letter": "a"
  }
]
```

Results of example 2:

```json
[
  15,
  29,
  30,
  30,
  36,
  42,
  54,
  68,
  83
]
```
