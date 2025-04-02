# Data input and output: Input variables and context variables

{% hint style="success" %}
To understand this topic, you'll first need to learn the difference between an input and an output.&#x20;

An _input_ is information that will be put into Rewst automations. This could be the contents of a form, or information sent via integration, for example. Knowing what your input is will help you determine what to use when crafting your automations.

An _output_ is the expected result of the automation.&#x20;
{% endhint %}

### Workflow input: Input variables

Workflow inputs are commonly known as _input variables_. The role of input variables is to provide data that can be used by tasks within the workflow, or into a subworkflow.

Input variables can be broken down into two parts:&#x20;

1. A key&#x20;
2. The specific data or values that vary

This is an example of a variable where \[first\_name] is the key and Ashley is the value:

&#x20;               \[first\_name] : "Ashley"

{% hint style="warning" %}
Input variables can only be modified or added on the source workflow, not clones of workflows unpacked from Crates.
{% endhint %}

You can add new variables, or modify existing ones, by navigating to your **Workflow > Configure Workflow Settings  > Input Configuration**.

Click **+** next to **Input Configuration** to see a number of new fields.

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-07 at 3.50.21 PM.png" alt=""><figcaption></figcaption></figure>

1. **Name:** This can be a unique entry relevant to what the aim of the input is going to be. This should not contain spaces.&#x20;
2. **Label:** This text field is used to set a friendly name. It's the field name visible at the time of input.&#x20;
3. **Type:** Short for data type, this field defines what format the data will be in. The most common types are Text (general string), Integer (whole number), and String (a combo of characters).&#x20;
4. **Default Value:** You can specify a value that will be used if no other input is specified manually.
5. **Description:** You can give a better description of what the field is used for.

Input variables get their values in a Rewst workflow through the workflow's initial trigger event. Any data type that is valid in JSON can be used as an input variable.

<div align="center"><figure><img src="../../.gitbook/assets/input-configuration-example (1).png" alt=""><figcaption><p>An example of an input variable, using static data</p></figcaption></figure></div>

### Workflow action inputs

When variables are created within the workflow, they become [Context Variables](../../cluck-university/getting-started/rewst-terminology.md#context-variables), and can be used directly in action inputs.

{% hint style="info" %}
Recall from your Cluck University training that _the context_ is where all data generated, captured, or used in a workflow is stored.
{% endhint %}

In the example below, creating a user in Microsoft 365 using three variables:

1. First Name
2. Last Name
3. Domain

For now, these are all specified directly on the workflow rather than being submitted via a form.

<figure><img src="../../.gitbook/assets/input-configuration-example (2).png" alt=""><figcaption></figcaption></figure>

Create an action by dragging it from the integration list on the left menu.

<figure><img src="../../.gitbook/assets/m365-create-user-example-action.png" alt=""><figcaption></figcaption></figure>

Click on this action to reveal a number of input fields on the right-hand side.

<figure><img src="../../.gitbook/assets/m365-create-user-example-inputs.png" alt=""><figcaption></figcaption></figure>

Click ![](<../../.gitbook/assets/Screenshot 2025-03-13 at 5.55.52 PM.png>) to the right of the field to open up a Monaco editor, the same type that VSCode uses. Learn more about the [code that Rewst uses, called Jinja, here](../jinja/intro-to-jinja.md).

In the image below,  see how to use the variables by using CTX, which stands for context, and then the name of the variable. This will autocomplete to make it easier to reference.

![](../../.gitbook/assets/workflow-action-outputs1.png)

```django
{{ CTX.first_name }}
{{ CTX.last_name }}
{{ CTX.domain}}
```

Despite the data being static at this point, the process is the same regardless of where the data is coming from.

### Workflow output

Similarly to the above, you can configure an output of a workflow. These are generally used in two situations:

1. In an [Options Generator](broken-reference) workflow, the output is what is passed through to the form. For example, if you have a workflow that lists users in a variable called `{{ CTX.users }}` - you would configure an output variable of options mapped to this variable, as per the below image. This then, in the form, would list the users in a dropdown field. This is how dynamic data works in form - more about that in [types of workflows](option-generator-workflows.md).

<figure><img src="../../.gitbook/assets/output-configuration-example.png" alt=""><figcaption></figcaption></figure>

2. The other time this would be used is if you have a sub-workflow. A sub-workflow is no different from a standard workflow, except for the fact it lives within another workflow. If you were passing data back from the sub-workflow into the main workflow, this would be done via an output variable.

### Workflow action outputs

One of Rewst's ultimate purposes is to integrate various platforms into a workflow and use data from each to do something else.

In this example, you'll get a list of users where the userPrincipalName matches X, then create a ticket using information from that request.

First, take the action of **List Users** from the Microsoft Graph integration in the action menu of the workflow builder. There are no inputs required here, and it will list every user on the tenant that it is integrated with, or that the [trigger](../triggers/intro-to-triggers.md) is set for.

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-24 at 11.45.15 AM.png" alt=""><figcaption></figcaption></figure>

If you ran this action as-is, you would get the list of users, but wouldn't be able to use that data anywhere.

This is where [Transitions](../../cluck-university/getting-started/rewst-terminology.md#transitions) come into play.

Click the **On Success** transition on the action. This gives you the option to create a [data alias](data-aliases.md).

A data alias allows you to create a variable, similar to an input variable, but with data direct from an action API request. In our example below, we are creating a variable with the key called `user_details` and populating it with the data of the user using Jinja.

<figure><img src="../../.gitbook/assets/data-aliases-example.png" alt=""><figcaption></figcaption></figure>

{% code overflow="wrap" %}
```django
{{ [ user for user in TASKS.m365_list_users.result.result.data.value if user.userPrincipalName == "RewstDocs@rewst.io" ] }}
```
{% endcode %}

Take your **create\_ticket** action from your respective PSA from the actions menu of the workflow builder. In this example, we'll use Datto PSA.

<figure><img src="../../.gitbook/assets/transitions-example.png" alt=""><figcaption></figcaption></figure>

Using your newly created data alias, add the inputs onto that `create_ticket` input.

<figure><img src="../../.gitbook/assets/data-alias-ticket-title-example.png" alt=""><figcaption></figcaption></figure>

```django
User Exists {{ CTX.user_details.displayName }}
```

This would create a ticket with the title `User Exists RewstDocs@rewst.io`.
