---
description: Learn how to build and customize your Rewst Forms
---

# Build a form with Rewst's Form Builder

## Create a new form

The part of Rewst you use to create and edit forms is called the _Form Builder_. To access it, navigate to **Automations > Forms**, and click  ![](<../../.gitbook/assets/Screenshot 2025-03-07 at 2.00.23 PM (1) (1).png>).&#x20;

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-17 at 5.21.20 PM.png" alt="" width="375"><figcaption></figcaption></figure>

In the **Create New Form** dialog, give your form a descriptive name. Remember, as you build more in Rewst, your list of forms will grow significantly. Following proper naming conventions will save you time in finding your right form later on.

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-17 at 5.39.32 PM.png" alt=""><figcaption></figcaption></figure>

The Form Builder is similar to Rewst's Workflow Builder in that it has a list of options on the left, called _form fields_, which can be dragged and dropped onto the canvas in the center of your screen.&#x20;

Each of these options will relate to your _inputs_**,** or the information that goes into the form. With the exception of the **Text/Markdown** field which is only used for presenting data to the end user, all other fields are used as data input and contain a field name, field label and field description. The field name is the variable name used within the workflow once the form has been submitted. The field label and field description are used to format the appearance of the form.

Using the correct fields ensures your workflows receive clean, organized data.

### Form field options

{% hint style="info" %}
Click on any of the below form field options to expand and see its information.
{% endhint %}

<details>

<summary>Text/Markdown</summary>

The _Text/Markdown_ field lets you present text, optionally formatted with Markdown. You can also render Jinja in these fields, which can be useful for presenting organization variables, or rendering a Markdown table with data from elsewhere in the form.\
\
<img src="../../.gitbook/assets/Screenshot 2025-03-18 at 11.07.00 AM.png" alt="" data-size="original">

</details>

<details>

<summary>Dropdown</summary>

_Dropdown_ fields let you select from multiple options, which can either be hard coded into the form or dynamically generated. Each option on the form has a _label_ and a _value_, and default options can be preselected if specified. There are also options for: &#x20;

* _Auto-Populate_: if enabled, will always pre-populate the field if only a single option has been returned.
* _Allow Custom Input_: lets the enduser write in the field and have that be the value passed into the workflow.
* _Always Skip Cache_: causes the option generator to always run instead of pulling from a cache. Note that the cache for a form field invalidates every 8 hours. Typically the first run of the day will be slower than the rest.
* _Always Override Option_: used when the auto-populate setting is enabled, this will cause the field to repopulate itself. This is needed in cases where the field is populated via an option generator and another field is being used as input for the option generator. In that case, you would need the option generator to run again, as the output would likely be different.

These are used most commonly when the list of options is being generated via an options generator _._\
Dropdown selection is limited to a single option. For multiple options for selection, see the multi-select form field option.\
\
<img src="../../.gitbook/assets/Screenshot 2025-03-18 at 11.09.12 AM.png" alt="" data-size="original">



</details>

<details>

<summary>Multi-Select</summary>

_Multi-select_ is similar to the dropdown field, but lets you select as many options as you like, up to a maximum number of options which can be specified on the field.\
\
![](<../../.gitbook/assets/Screenshot 2025-03-18 at 11.12.29 AM.png>)



Here are two examples, one for returning a specific item within the list, and one for checking if values are provided:

```
{{ CTX.<field_name>[0].value|d }}
```

```
{{ CTX.<field_name>|length > 0 }}
```

</details>

<details>

<summary>Checkbox</summary>

The _Checkbox_ field provides a toggle with a true/false value for the form. You can also change the label positioning.\
\
![](<../../.gitbook/assets/Screenshot 2025-03-18 at 11.14.09 AM.png>)



</details>

<details>

<summary>Radio Buttons</summary>

The _Radio Buttons_ field offers a selectable single option. It can also be dynamically populated in the same way as a dropdown or multi-select field, but doesn't allow for the additional options of auto-populate, allow custom input, always skip cache and always override option. For this reason, radio buttons are rarely used with dynamic options.\
\
![](<../../.gitbook/assets/Screenshot 2025-03-18 at 11.18.32 AM.png>)

</details>

<details>

<summary>Text Input</summary>

The _Text Input_ field accepts a single line text string. You can also perform regex validation and error reporting, or populate the field with a default value.\
\
![](<../../.gitbook/assets/Screenshot 2025-03-18 at 11.19.31 AM.png>)

</details>

<details>

<summary>Number Input</summary>

The _Number Input_ field accepts numbers, as long as they meet the Python definition of numbers: whole numbers or floats. Set a default value, as well as minimum and maximum values.\
\
![](<../../.gitbook/assets/Screenshot 2025-03-18 at 11.19.31 AM (1).png>)

</details>

<details>

<summary>Multi-Line Input</summary>

The _Multi-Line Input_ field accepts large amounts of text. No validation is available for this field.\
\
![](<../../.gitbook/assets/Screenshot 2025-03-18 at 11.21.01 AM.png>)

</details>

<details>

<summary>Date</summary>

The _Date_ field can be set up to accept dates, or times and date times together.

Note that the time zone or this field is based on your browser locale. Rewst converts the time into UTC when passed into the workflow without the time zone data. As an example, if you're in EST and you select 6pm, the workflow will receive this as 1pm UTC, due to the 5 hour offset. Adjust your submission for this time difference when you are submitting a form for a customer in a different time zone from yourself, and need to specify a time.\
\
\
![](<../../.gitbook/assets/Screenshot 2025-03-18 at 11.22.05 AM.png>)

</details>

<details>

<summary>File Upload</summary>

The _File Upload_ field allows for the uploading of specific file types:

.csv\
.xls\
.xlsx\
.json. \
\
![](<../../.gitbook/assets/Screenshot 2025-03-18 at 11.24.20 AM.png>)

</details>

## Dynamic options in forms

_Dynamic options_ automatically fetch data from integrations, thereby eliminating the need for manual data entry and keeping form options up-to-date with the latest data. For example, if you're managing hiring information within your PSA, dynamic options can automatically pull this data into the form, ensuring that users always have the most current information.

There are two types of dynamic options: integration reference and workflow generated.

### Option one: Integration reference

A _reference option_ is a dynamic field pulled directly from predefined actions. It works well for straightforward data retrieval, but may require conversion to a workflow-generated option for data manipulation, as this doesn't give any filtering options and will pull directly from the API endpoint.

#### Integration reference example

Selecting the Microsoft Graph integration to list all users.

<div align="left"><figure><img src="../../.gitbook/assets/reference-options.png" alt=""><figcaption></figcaption></figure></div>

### Option two: Workflow generated options

If you want more flexibility around the output of the data your user is seeing, you may need to opt for a workflow generated option instead, which allows for data manipulation using [Jinja](../jinja/).

{% hint style="info" %}
This setup requires the workflow type be an option generator. See our [option generator workflow page](../workflows/option-generator-workflows.md) for more details on this functionality. The below documentation is high-level only.
{% endhint %}

#### Options generator example

In this image, what is shown to the user is what is set as the label for the list contents. Ultimately, it can be whatever you want it to be, using Jinja to manipulate that output correctly. The ID is the value or unique ID of what the workflow is referencing for its future actions.

<div align="left"><figure><img src="../../.gitbook/assets/workflow-generated (1).png" alt="" width="444"><figcaption></figcaption></figure></div>

#### **Set default options**

Default options can be selected for a form field linked to a workflow by following these steps.

1. Add a boolean property to each option result.
2. Define the boolean property for the **Default Selected Field** value.

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

* **Value Field**: `id`
* **Label Field**: `label`
* **Default Selected Field**: `current_default`

### Workflow inputs

_Workflow inputs_ in Rewst offer a flexible way to define specific inputs to a workflow via a form. This functionality allows you to handle various client cases and attributes dynamically. By understanding these concepts and utilizing the provided examples, you can create versatile and dynamic forms tailored to your specific needs.

Below are some key aspects of workflow inputs:

#### **Use org variables for client-specific workflows**

If you have a form used across multiple clients, each with distinct environments like Microsoft 365 or On-Prem, you can use an o[rg variable](../user-management/organization-variables.md) to dictate the source of the data.

For example, by employing `{{ ORG.VARIABLES.primary_identity_provider }}`, which is set per client as either `on_prem` or `azure_ad`, you can use the same form for both client cases. The form will be pulled from the relevant system.

<div align="left"><figure><img src="../../.gitbook/assets/dynamic-workflow-inputs.png" alt=""><figcaption></figcaption></figure></div>

#### **Hard-code attributes for efficiency**

Instead of creating separate workflows for various attributes such as department, userPrincipalName, or ID, you can use a single workflow with a hard-coded element. This approach takes your input and returns the desired property.

For example, **t**he attribute `department` can be hard-coded to allow a single workflow to handle different returned properties.

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

## Test a form: How to get a form's URL

Recall that you can access all forms in your form list in Rewst. Understanding how to test a form can sometimes be confusing due to its intrinsic link to a workflow. To get the Form URL for testing directly from a workflow:

1. Locate the [trigger](../triggers/intro-to-triggers.md) on the workflow.
2. Click **View Form URLs**.
3. Select the desired organization's form from the list.

<figure><img src="../../.gitbook/assets/trigger-view-form-urls (1).png" alt=""><figcaption></figcaption></figure>

## Restrict form drop-downs

The onboarding form includes a number of fields to be filled out when onboarding new users. The default behavior of all the dropdown fields is to pull the list of options from the API. This is because the dropdown fields have **Dynamic Options** toggled on.

<figure><img src="../../.gitbook/assets/dynamic-options (1).png" alt=""><figcaption></figcaption></figure>

While this may work in many cases, there are scenarios where it makes sense to limit the number of options based on the customer segment you're working with. An example of this might be that you need to limit which email domains each customer sees. You may also want to limit which locations customers can choose from. In any case, you can set specific values for the `default_form` organization variables to use in your forms.

{% hint style="info" %}
The example below is specifically for the User Onboarding Form and workflow, as it is currently the most likely use case.
{% endhint %}

### Add an organization variable to a form

You can add default values for any of the form organization variables below:

{% hint style="info" %}
To view the form org variables table, [click here](form-organizational-variables.md).
{% endhint %}

### Limit the email domains in the onboarding form

#### Add the org variable to an organization

1. Navigate to **Configuration > Organization Variables**.
2. Click **Add** at the top right.
3. Enter in the following for the new organization variable:
   * **Name**: `form_default_email_domain`
   * **Value**: `["email domain"]`
   * **Category**: General
   * **Organization**: Choose Your Organization

<figure><img src="../../.gitbook/assets/org-variable-settings.png" alt=""><figcaption></figcaption></figure>

{% hint style="danger" %}
Any value you add to a variable must exist in the list that the form value is pulling from. An example of this would be that any email domain added as a default must exist in the list that is pulled from the Microsoft API.
{% endhint %}

Next, the variable can be added to the form field.

#### Add the org variable to the form field

1. Navigate to **Automations > Forms**.
2. Open the User Onboarding Form.
3. Click to open the settings for the **Email Domain Name** field.
4. Enter `true` in the **schema.enumSourceWorkflow.input.force\_default** setting.
5. Enter `email_domain` in the **schema.enumSourceWorkflow.input.choose\_variable** setting.

{% hint style="info" %}
You only need to add the latter half of the `form_default` variable when adding it to the **schema.enumSourceWorkflow.input.choose\_variable** setting.
{% endhint %}

6. Click **Save**.

{% hint style="danger" %}
Make sure to set the org variable values for any company organization using the form. For example, say there are three company organizations that need to use the same form with a list of three domains to choose from. Each organization needs to have the variable added with the domain values set. If you only set the variable and values in Company 1, the other two Companies won't see any options to choose from.
{% endhint %}
