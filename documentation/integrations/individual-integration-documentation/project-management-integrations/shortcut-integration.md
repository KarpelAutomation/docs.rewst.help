# Shortcut integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Shortcut integration do?

Our Shortcut integration leverages Rewst’s workflow automation capabilities to streamline project management for software development teams. It automates story creation, task tracking, status updates, reporting, and workflow synchronization—reducing manual effort, improving team coordination, and ensuring smooth, consistent execution across your development lifecycle.

## Set up the Shortcut integration

### Set up steps in Shortcut

1. Log in to your Shortcut account.
2. Navigate to **Settings > API Tokens**.
3. Click into the **Token Name** field. Name your token `Rewst integration`.
4. Click **Generate Token**.&#x20;
5. Copy this token. You'll need it for later setup steps in Rewst. Note that if you do not copy this token, you won't be able to retrieve it again later.&#x20;

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-26 at 5.26.00 PM.png" alt=""><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the Shortcut integration.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-03-26 at 5.43.16 PM.png>)\

3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**:
   1. Paste the API token copied from Shortcut into the **API Token** field.
   2. Click **Save Configuration**.\


## Test the Integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.\


{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Shortcut actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

Shortcut's complete documentation can be found [here](https://developer.shortcut.com/api/rest/v3).

| Category            | Action                       | Description                                                                                     |
| ------------------- | ---------------------------- | ----------------------------------------------------------------------------------------------- |
| **Generic Request** | Generic Shortcut API Request | Generic action for making authenticated requests against the Shortcut API                       |
| **Iterations**      | Create Iteration             | Create an iteration in Shortcut                                                                 |
| **Iterations**      | Delete Iteration             | Delete an iteration in Shortcut                                                                 |
| **Iterations**      | Get Iteration                | Get an iteration in Shortcut                                                                    |
| **Iterations**      | List All Iterations          | List iterations in Shortcut                                                                     |
| **Iterations**      | Update Iteration             | Update an iteration in Shortcut                                                                 |
| **Members**         | Get Member                   | Get member in Shortcut                                                                          |
| **Members**         | List All Members             | List members in Shortcut                                                                        |
| **Projects**        | List All Projects            | List projects in Shortcut                                                                       |
| **Projects**        | List All Stories             | List stories of a project in Shortcut                                                           |
| **Stories**         | Create Story                 | Create a story in Shortcut. Requires either `workflow_state_id` or `project_id` (but not both). |
| **Stories**         | Delete Story                 | Delete any story in Shortcut                                                                    |
| **Stories**         | Get Story                    | Get information about a chosen Story                                                            |
| **Stories**         | Get Story History            | Returns the history of a chosen Story                                                           |
| **Stories**         | Update Story                 | Update properties of an existing story                                                          |
