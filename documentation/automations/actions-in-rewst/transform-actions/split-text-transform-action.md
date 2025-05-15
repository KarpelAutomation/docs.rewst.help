# Split text transform action

## Use case

You have a string that you would like to split each word/character by a delimiter to create a list.

## Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-18 at 3.10.03 PM.png" alt="A screenshot of the split text transform action, seen in the actions list menu of the workflow builder canvas."><figcaption></figcaption></figure>

Splits text on a delimiter into a list of strings.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Max Splits</td><td>The maximum number of splits. If not specified or -1, then there is no limit on the number of splits (all possible splits are made)</td><td>true</td></tr><tr><td>Seperator</td><td>Character or sequence of characters to split on (default is ), such as ' , ',':', etc.</td><td>false</td></tr><tr><td>Text to split</td><td>The string to be split.</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example: Splitting a string to get each word in a sentence or phrase</summary>

Inputs:

**Max Splits:** -1

**Seperator:** (no value was provided so default of space will be used)

**Text to split:** The quick brown fox jumps over the lazy dog

</details>

## Results output

Result of Example:

```json
[
  "The",
  "quick",
  "brown",
  "fox",
  "jumps",
  "over",
  "the",
  "lazy",
  "dog"
]
```
