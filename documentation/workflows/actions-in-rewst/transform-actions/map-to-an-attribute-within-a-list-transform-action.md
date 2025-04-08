# Map to an attribute within a list transform action

### Use case

You are trying to create a list of users from a Microsoft Graph return and want to create a flat list of all the display names for the users.

### Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-28 at 11.29.02 AM.png" alt=""><figcaption></figcaption></figure>

Map to an attribute for each dictionary object in a list.

***

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Attribute</td><td>The attribute to map to, dot notation can be used. For example, result.result</td><td>true</td></tr><tr><td>List</td><td>The list you would like to perform the map on.</td><td>true</td></tr></tbody></table>

{% hint style="info" %}
This is useful for working with results returned from actions running with items so you don't have to worry about the nested result keys.
{% endhint %}

## Usage

<details>

<summary>Example 1: Mapping to usernames in a response</summary>

Inputs:

**Attribute:** result.result.data.username

**List:**

```json
[
  {
    "result": {
      "result": {
        "data": {
          "username": "amorton"
        }
      }
    }
  },
  {
    "result": {
      "result": {
        "data": {
          "username": "bmorton"
        }
      }
    }
  },
  {
    "result": {
      "result": {
        "data": {
          "username": "cmorton"
        }
      }
    }
  },
  {
    "result": {
      "result": {
        "data": {
          "username": "dmorton"
        }
      }
    }
  },
  {
    "result": {
      "result": {
        "data": {
          "username": "emorton"
        }
      }
    }
  }
]
```

</details>

## Results Output

This transform is expected to return a new list that is mapped to the selected attribute.

Example of result for Example 1:

```json
[
  "amorton",
  "bmorton",
  "cmorton",
  "dmorton",
  "emorton"
]
```
