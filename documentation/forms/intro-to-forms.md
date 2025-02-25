---
description: Learn how to build and customize your Rewst Forms
---

# Dynamic options & inputs

{% hint style="success" %}
Check out our [video on using Options Generators here](../../cluck-university/micro-courses/working-with-options-generator-workflows-in-rewst.md)!
{% endhint %}

## Introduction to the Form Builder

Within the forms section of Rewst, you will find the form builder. This page provides an overview of the tools and options available for creating dynamic forms.

The fields found on the left of the form builder are generally self-explanatory. An important field to note is the "dropdown" field, allowing linking directly to specific workflows and presenting real-time information to your users.

## Dynamic Options in Forms

Dynamic options enhance form functionality by enabling real-time information retrieval.

There are two types of Dynamic options, `Integration Reference` or `Workflow Generated`, let's go into the use cases and differences between each in the below sections:

### Option One: Integration Reference

A reference option is a dynamic field pulled directly from predefined actions. It works well for straightforward data retrieval but may require conversion to a workflow-generated option for data manipulation, as this doesn't give any filtering options and will pull directly from the API endpoint.

#### Integration Reference Example

Selecting the `Microsoft Graph` integration to list all `Users`.

<div align="left"><figure><img src="../../.gitbook/assets/reference-options.png" alt=""><figcaption></figcaption></figure></div>

### Option Two: Workflow Generated Options

If you want more flexibility around the output of the data your user is seeing, you may need to opt for a Workflow Generated option instead, which allows for data manipulation using [Jinja](../jinja/).

{% hint style="info" %}
This setup requires the workflow to be an options generator. See the [Workflow Generated Options](../workflows/workflow-generated-options.md) page for more details on this functionality.
{% endhint %}

#### Options Generator Example

In this image, we can see that what is shown to the user is what is set as the `label` for the list contents. Ultimately it can be whatever you want it to be, using Jinja to manipulate that output correctly. The `ID` is the value or unique ID of what you're referencing that the workflow is referencing for its future actions.

<div align="left"><figure><img src="../../.gitbook/assets/workflow-generated (1).png" alt="" width="444"><figcaption></figcaption></figure></div>

#### **Setting Default Options**

Default options can be selected for a form field linked to a workflow by following these steps:

1. Add a boolean property to each option result.
2. Define the boolean property for the `Default Selected Field` value.

Sample data returned by a workflow:

{% code lineNumbers="true" fullWidth="false" %}
```json
[
    {"label": "Adam", "id": "1", "current_default": false},
    {"label": "Matt", "id": "2", "current_default": false},
    {"label": "Jareth", "id": "3", "current_default": true}
]
```
{% endcode %}

Fields to be filled out in the form:

* Value Field: `id`
* Label Field: `label`
* Default Selected Field: `current_default`

### Workflow Inputs

> Workflow inputs in Rewst offer a flexible way to define specific inputs to a workflow via a form. This functionality allows you to handle various client cases and attributes dynamically. By understanding these concepts and utilizing the provided examples, you can create versatile and dynamic forms tailored to your specific needs.

Below are some key aspects of workflow inputs:

#### **Using Org Variables for Client-Specific Workflows**

If you have a form utilized across multiple clients, each with distinct environments like M365 or On-Prem, you can use an [Org Variable](../user-management/organization-variables.md) to dictate the source of the data.

**Example:** By employing `{{ ORG.VARIABLES.primary_identity_provider }}`, which is set per client as either `on_prem` or `azure_ad`, you can use the same form for both client cases. The form will be pulled from the relevant system.

<div align="left"><figure><img src="../../.gitbook/assets/dynamic-workflow-inputs.png" alt=""><figcaption></figcaption></figure></div>

#### **Hard-Coding Attributes for Efficiency**

Instead of creating separate workflows for various attributes (`department`, `userPrincipalName`, `id`, etc.), you can use a single workflow with a hard-coded element. This approach takes your input and returns the desired property.

**Example:** The attribute `department` can be hard-coded to allow a single workflow to handle different returned properties, as shown in the image above.

Here's a Jinja code snippet for achieving this:

{% code overflow="wrap" %}
```django
{% raw %}
{%- set attribute_collection = [] -%} 
{%- set my_attribute = CTX.attribute -%} 
{%- set my_data = CTX.data|selectattr(my_attribute) -%} 
{%- for user in my_data -%}
    {%- if user[my_attribute] or false -%}
        {%- set value=user[my_attribute] -%}         
        {%- set tmp = attribute_collection.append({my_attribute:value}) -%}     
    {%- endif -%} 
{%- endfor -%}
{% endraw %} 
{{- attribute_collection | unique(attribute=my_attribute) | sort(attribute=my_attribute)  -}}
```
{% endcode %}

#### Testing a Form: How to Get the Form URL

Understanding how to test a form can sometimes be confusing due to its intrinsic link to a workflow. To get the Form URL for testing:

1. Locate the [trigger](../triggers/intro-to-triggers.md) on the workflow.
2. Click the blue button to view the URLs.
3. Select the desired organization's form from the list.

<figure><img src="../../.gitbook/assets/trigger-view-form-urls (1).png" alt=""><figcaption></figcaption></figure>
