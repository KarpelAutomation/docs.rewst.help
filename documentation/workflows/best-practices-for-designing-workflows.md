# Best practices for designing workflows

{% hint style="info" %}
These recommendations align with the standards and guidelines that our internal ROC team and service partners follow when building workflows with Rewst. By adhering to these practices, you can leverage the same principles that guide our experts, enhancing the efficiency, reliability, and maintainability of your automation.
{% endhint %}

## Design principles

When designing workflows, keep these three guiding principles in mind.

1. **Simplicity**: Create workflows that are user-friendly and easy to understand.
2. **Modularity**: Break down workflows into smaller, reusable components.
3. **Maintainability**: Build workflows that are straightforward to update and maintain.

## Automation build standards

A good workflow should meet all of these requirements.

* **Consistency**: Standardized practices lead to a consistent experience across different workflows.
* **Quality assurance**: Adhering to standards makes quality checks more efficient.
* **Reusability**: Modular design enables the reuse of components, speeding up development.
* **Scalability**: Design your workflows to handle increased complexity as your needs grow.
* **Efficiency**: Avoid redundancy by following a standardized approach.
* **Knowledge Transfer**: Standards foster collaboration and knowledge sharing within your team.
* **Flexibility**: Rewst's standards allow easy integration of new features without major rework.

## Design, test, and document workflows

{% hint style="info" %}
For more on templating in Rewst, see our documentation [here](../templates-messages/intro-to-templates.md).&#x20;
{% endhint %}

* Use pre-defined templates to speed up development and ensure adherence to best practices.
* Develop and test your workflows in a sandbox or development environment. Make necessary changes, test, and sync to your live environment. Always test a workflow before publishing.
* Document workflows manually or with RoboRewsty to keep track of the intent of each action and subworkflow.
* When publishing a workflow, document the changes made in that update to help with version control of your workflow.&#x20;

## Workflow naming and categorization

Properly naming and categorizing your workflows is essential for clarity and navigation, especially as the number of workflows you use in Rewst grows over time.

Adhering to a consistent naming convention helps in understanding the purpose and function of each automation.

{% hint style="success" %}
**Proper example**: `List Disabled User Accounts`

**Improper example:** `Steve's Workflow`
{% endhint %}

You can also use [tags](../tags-in-rewst.md) within Rewst to organize your automations effectively.

## Manage variables and tasks

Stay consistent with your styling when naming variables. Choose a naming convention, for example snake\_case or camelCase, and apply it uniformly.

### Organization variables

* Employ descriptive and straightforward wording using `snake_case` for clarity.
* Prefix integration-specific variables appropriately, like `psa_` for PSA-related variables.

### Work with data aliases

* Separate complex [data alias](data-aliases.md) creation or modification into `Set Variable` tasks rather than creating them on the actual task doing the API call. This helps with easier troubleshooting should you encounter errors, such as determining if the API is experiencing issues versus if there is a Jinja error in your variable assignment.
* Separating the data aliases makes debugging easier, allowing you to test your code with real data.

### Work with task transitions

{% hint style="info" %}
For more on transitions, see our documentation [here](task-transitions.md).&#x20;
{% endhint %}

* Use conditions like `{{ SUCCEEDED and CTX.list_of_things|d }}` to control the flow based on task success or failure.
* Transitions are evaluated from left to right, so order them carefully.
* Follow All/Follow First:
  * **Follow All**: The task will follow every path that meets the criteria.
  * **Follow First**: The task will follow the first criteria that it matches and then stop. Use this when you expect only one condition to be met or when, as soon as a condition is met, you do not want the process to use other workflow branches.

## Limit API field results

Limiting the API field response to only the data you need helps in building clean workflows that are easy to understand, without overloading your tools.

* If unsure about the fields you need, consider running the query without any filtering initially. This approach lets you explore the available fields and understand what information is at your disposal.
* Once you've identified the necessary fields, be sure to limit the response to include only those. For instance, if you're listing users in Microsoft Graph and only require the UPN (User Principal Name) and User's ID, you should select the `userPrincipalName` and `id` fields.
