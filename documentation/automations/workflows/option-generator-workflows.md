# Option generator workflows

When automating certain processes, it's important to use dynamic options that adjust based on the input. Using the same list of options every time can lead to errors by applying choices that don't fit the situation. When an automation gets information from a form, it's important that the data on the form be dynamic, and adjust based on previous inputs or selections on that same form.

An _option generator_ workflow will always be connected to a form, and allows you to provide tailored, dynamic options for specific fields in that form. For example, in an automation that updates a user's group memberships, the list of groups is tailored to the input. You wouldn't want to add an individual to a group that they're already a member of, nor would you want to remove them from a group that they're not a member of. To add a user to a group, you would generate a list of groups that are not already part of the user's group memberships. To remove a user from a group, you would generate the user's current list of group memberships.

{% hint style="info" %}
The order of operations for creating the pieces needed to pull off an option generator is flexible. You can create the option generator workflow first, or the form that connects to the option generator workflow. In the below example, the workflow is made first.

Ultimately, an option generator workflow needs three things:

1. A workflow designated as an option generator in the workflow configuration.
2. Workflow output configuration that sets the value of options to the relevant workflow context variable.
3. A Rewst form that contains a form field connected to the option generator workflow and its trigger.
{% endhint %}

{% embed url="https://www.youtube.com/watch?v=NGImOFnyeo8&t=1s" %}

### Create an option generator workflow

Before you begin, decide which options need to be displayed based on the user’s selection. For this example, the list of groups will change depending on whether the action is to add or remove a user.

1. [Create a new workflow](workflow-builder-how-to-set-up-a-workflow.md).&#x20;
2. Click  <img src="../../../.gitbook/assets/Screenshot 2025-03-05 at 2.39.11 PM (2).png" alt="" data-size="line">in the top menu bar of your workflow's workflow builder canvas.&#x20;
3. Click the **Workflow Type** drop-down selector.&#x20;
4.  Select **Option Generator**.\
    <br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-03-24 at 5.07.54 PM.png" alt=""><figcaption></figcaption></figure>
5. Click ![](<../../../.gitbook/assets/Screenshot 2025-03-24 at 11.22.42 AM.png>) next to **Output Configuration** to create an output variable. Name the variable `options`. Every option generator workflow must have an [output variable](data-input-and-output-input-variables-and-context-variables.md#workflow-output) called `options`, which will contain the context variable that holds the data that you want to display.
6. Click **Submit**. This will launch the workflow builder.
7. Set up a [trigger](../intro-to-triggers/) for the workflow.&#x20;

### Create a form to be used with the workflow

Remember, workflow generated options allow forms to be highly dynamic. When a form field is connected to an option workflow, it will return a list of options based on the input.

See the documentation for how to use our form builder to achieve this step [here](../forms/intro-to-forms.md#option-two-workflow-generated-options).

### How the form and workflow come together to generate options

1.  When the workflow runs, it should result in a context variable `{{ CTX.options }}` that contains a list of items with key-value pairs that will be referenced in the form editor.<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-04-01 at 2.39.11 PM.png" alt=""><figcaption><p>An example of an options generator workflow for one of our unpacked Crates</p></figcaption></figure>
2. The values here will be used in the **Label Field** an **Value Field** for a form fiel&#x64;_._
   1. The **Label** is what gets shown to the user who fills out the form as an available choice.
   2. The **Value** field will be set to the value of the **Field Name** when that form is submitted. Workflows will reference this as `{{ CTX.<field_name> }}`
   3. Using the **Default Selected Field** will evaluate an attribute of the `options` list for truthiness. Items which evaluate `true` will be selected by default when this field populates.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-04-01 at 2.42.54 PM.png" alt=""><figcaption></figcaption></figure>

