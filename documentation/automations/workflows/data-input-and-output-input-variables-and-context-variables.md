# Data input and output: Input variables and context variables

{% hint style="success" %}
To understand this topic, you'll first need to learn the difference between an input and an output.

An _input_ is information that will be put into Rewst automations. This could be the contents of a form, or information sent via integration, for example. Knowing what your input is will help you determine what to use when crafting your automations.

An _output_ is the expected result of the automation.
{% endhint %}

### Workflow input: Input variables

Workflow inputs are commonly known as _input variables_. The role of input variables is to provide data that can be used by tasks within the workflow, or into a subworkflow.

Input variables can be broken down into two parts:

1. A key
2. The specific data or values that vary

This is an example of a variable where \[first\_name] is the key and Ashley is the value:

\[first\_name] : "Ashley"

{% hint style="warning" %}
Input variables can only be modified or added on the source workflow, not clones of workflows unpacked from Crates.
{% endhint %}

You can add new variables, or modify existing ones, by navigating to your **Workflow >** <img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 4.45.41 PM.png" alt="" data-size="line">  **> Input**.

Click **+ Add Input** to see a number of new fillable fields and checkboxes.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-21 at 10.45.31 AM.png" alt=""><figcaption></figcaption></figure>

1. **Name:** This can be a unique entry relevant to what the aim of the input is going to be. This should not contain spaces.&#x20;
2. **Label:** This text field is used to set a friendly name. It's the field name visible at the time of input.&#x20;
3. **Type:** Short for data type, this field defines what format the data will be in. The most common types are Text (general string), Integer (whole number), and String (a combo of characters).&#x20;
4. **Default:** You can specify a value that will be used if no other input is specified manually.
5. **Description:** You can give a better description of what the field is used for.
6. **Required** checkbox: When checked, this marks the input parameter as mandatory. The workflow will expect a value to be provided for this input when it's executed. This is especially relevant when the workflow is called as a sub-workflow: the parent workflow must supply a value for any required input, or the execution will fail. It essentially enforces that the parameter cannot be left empty or omitted.
7. **Multiline** checkbox: When checked, this changes the input field from a single-line text box to a larger, multi-line text area. This setting affects how the input appears when configuring the workflow— for example, when setting up a subworkflow action that calls this workflow. It's useful for inputs that expect longer content like Jinja expressions, JSON blobs, descriptions, or any text that benefits from more editing space. It doesn't change the data type, and only gives you a bigger box to type in.

Input variables get their values in a Rewst workflow through the workflow's initial trigger event. Any data type that is valid in JSON can be used as an input variable.

### Workflow action inputs

When variables are created within the workflow, they become context variables, and can be used directly in action inputs.

{% hint style="info" %}
Recall from your Cluck University training that _the context_ is where all data generated, captured, or used in a workflow is stored.
{% endhint %}

In the example below, creating a user in Microsoft 365 using three variables:

1. First Name
2. Last Name
3. Domain

For now, these are all specified directly on the workflow rather than being submitted via a form.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-21 at 10.54.00 AM.png" alt=""><figcaption></figcaption></figure>

Create an action by dragging it from the integration list on the left menu.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-21 at 10.56.37 AM.png" alt="" width="375"><figcaption></figcaption></figure>

Click on this action to reveal a number of input parameter fields in the right side menu. Click ![](<../../../.gitbook/assets/Screenshot 2026-04-20 at 3.41.07 PM.png>) to the right of the field to open up a Monaco editor.

Click ![](<../../../.gitbook/assets/Screenshot 2025-03-13 at 5.55.52 PM.png>) to the right of the field to open up a Monaco editor, the same type that VSCode uses. Learn more about the [code that Rewst uses, called Jinja, here](/broken/pages/Xie1v7V1Vqm4kxsoGpiM).

Use the variables by using CTX, which stands for context, and then the name of the variable, as outlined in the code block below. This will autocomplete to make it easier to reference.

<img src="../../../.gitbook/assets/Screenshot 2026-04-21 at 11.00.27 AM.png" alt="" width="370">

```django
{{ CTX.first_name }}
{{ CTX.last_name }}
{{ CTX.domain}}
```

Despite the data being static at this point, the process is the same regardless of where the data is coming from.

### Workflow output

Similarly to the above, you can configure an output of a workflow. These are generally used in two situations:

1. In an [Options Generator](option-generator-workflows.md#create-an-option-generator-workflow) workflow, the output is what is passed through to the form. For example, if you have a workflow that lists users in a variable called `{{ CTX.users }}` - you would configure an output variable of options mapped to this variable, as per the below image. This then, in the form, would list the users in a dropdown field. This is how dynamic data works in form. Read more about that in [types of workflows](option-generator-workflows.md).

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-21 at 11.09.58 AM.png" alt="" width="546"><figcaption></figcaption></figure>

2. The other time this would be used is if you have a [subworkflow](../subworkflows/). A subworkflow is no different from a standard workflow, except for the fact it lives within another workflow. If you were passing data back from the subworkflow into the main workflow, this would be done via an output variable.

### Workflow action outputs

One of Rewst's ultimate purposes is to integrate various platforms into a workflow and use data from each to do something else. In this example, you'll get a list of users where the userPrincipalName matches X, then create a ticket using information from that request.

First, take the action of **List Users** from the Microsoft Graph integration in the action menu of the workflow builder. There are no inputs required here, and it will list every user on the tenant that it is integrated with, or that the [trigger](../intro-to-triggers/) is set for. If you ran this action as-is, you would get the list of users, but wouldn't be able to use that data anywhere.

This is where [task transitions](task-transitions.md) come into play. Click the **On Success** transition on the action. This gives you the option to create a [data alias](data-aliases.md).

A data alias allows you to create a variable, similar to an input variable, but with data direct from an action API request. In our example below, we are creating a variable with the key called `user_details` and populating it with the data of the user using Jinja.

{% code overflow="wrap" %}
```django
{{ [ user for user in TASKS.m365_list_users.result.result.data.value if user.userPrincipalName == "RewstDocs@rewst.io" ] }}
```
{% endcode %}

Take your **create\_ticket** action from your respective PSA from the actions menu of the Workflow Builder. Using your newly created data alias, add the inputs onto that `create_ticket` input.

```django
User Exists {{ CTX.user_details.displayName }}
```

This would create a ticket with the title `User Exists RewstDocs@rewst.io`.
