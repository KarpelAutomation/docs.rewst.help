# Set variable transform action

## Use case

You would like to set a variable for use later in the workflow

## Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-18 at 3.07.35 PM.png" alt="A screenshot of the set variable transform action, seen in the actions list menu of the workflow builder canvas."><figcaption></figcaption></figure>

Set a variable as an action.

This transform will allow you to set a variable using an action vs. setting a data alias in a transition.

The name of the variable will be set via the `Publish Result As` field.

## Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Variable Contents</td><td>The value of the variable you are setting.</td><td>true</td></tr></tbody></table>

## Usage

<details>

<summary>Example 1: Set a Variable</summary>

Inputs:

**Variable Contents:** I am a test!

</details>

## Results output

Result from Example:

```
I am a test!
```
