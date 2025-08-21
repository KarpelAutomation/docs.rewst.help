# YAML parse transform action



## Use case

An API has returned a YAML formatted string and you would like to convert it to a JSON object.

## Overview

Parses a YAML string and returns the resulting data structure in JSON.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-07-03 at 8.38.28 AM.png" alt=""><figcaption></figcaption></figure>

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>YAML Input</td><td>The YAML string to parse.</td><td>true</td></tr></tbody></table>

{% hint style="info" %}
This transform is utilizing the yaml\_parse filter, which will only work with one document.

If your YAML string contains multiple documents you should process them individually.
{% endhint %}

## Usage

<details>

<summary>Example: Parse a YAML string</summary>

**YAML input**:

```yaml
version: 2.1

# Define the jobs we want to run for this project
jobs:
  build:
    docker:
      - image: cimg/base:2023.03
    steps:
      - checkout
      - run: echo "this is the build job"
  test:
    docker:
      - image: cimg/base:2023.03
    steps:
      - checkout
      - run: echo "this is the test job"

# Orchestrate our job run sequence
workflows:
  build_and_test:
    jobs:
      - build
      - test
```

</details>

## Results output

```json
{
  "jobs": {
    "test": {
      "steps": [
        "checkout",
        {
          "run": "echo \"this is the test job\""
        }
      ],
      "docker": [
        {
          "image": "cimg/base:2023.03"
        }
      ]
    },
    "build": {
      "steps": [
        "checkout",
        {
          "run": "echo \"this is the build job\""
        }
      ],
      "docker": [
        {
          "image": "cimg/base:2023.03"
        }
      ]
    }
  },
  "version": 2.1,
  "workflows": {
    "build_and_test": {
      "jobs": [
        "build",
        "test"
      ]
    }
  }
}
```
