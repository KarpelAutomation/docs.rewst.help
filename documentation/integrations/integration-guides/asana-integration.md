# Asana integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Asana integration do?

Our Asana integration connects Rewst’s automation capabilities with Asana’s powerful project and task management platform. It automates task assignments, project tracking, status updates, and reporting—helping MSPs and business teams reduce manual effort, improve collaboration, and ensure efficient execution of their workflows.

## Set up the Asana integration

### Set up steps in Rewst

1. Navigate to **Marketplace > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for `Asana`.\
   \
   ![A screenshot of the Asana integration tile in Rewst's integrations page. It shows the last updated date for the integration, and that it is categorized as a project management tool](<../../../.gitbook/assets/Screenshot 2025-04-07 at 3.46.55 PM.png>)<br>
3. Click on the integration tile to launch the configuration setup page.
4. Click **Authorize** under the **Parameters** submenu. If authorization is successful, you'll see a green confirmation message. The **Authorize** button will change to now say **Re-Authorize**.
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.

## Test the Integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.<br>

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Asana actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

Asana's complete documentation can be found here.

| Category            | Action                  | Description                                                                                                                       |
| ------------------- | ----------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| **Attachments**     | Create Attachment       | Create an attachment                                                                                                              |
| **Attachments**     | Delete Attachment       | Deletes a specific, existing attachment.                                                                                          |
| **Attachments**     | Get Attachment          | Get the full record for a single attachment.                                                                                      |
| **Attachments**     | List Object Attachments | Returns the compact records for all attachments on the object.                                                                    |
| **Generic Request** | Asana API Request       | Generic action for making authenticated requests against the Asana API                                                            |
| **Projects**        | Create Project          | Create a Project                                                                                                                  |
| **Projects**        | Delete Project          | A specific, existing project can be deleted by making a DELETE request on the URL for that project. Returns an empty data record. |
| **Projects**        | Get Project             | Returns the complete project record for a single project.                                                                         |
| **Projects**        | List Projects           | Get all projects in a workspace                                                                                                   |
| **Projects**        | Update Project          | Update a Project                                                                                                                  |
| **Tasks**           | Create Subtask          | Create a Subtask                                                                                                                  |
| **Tasks**           | Create Task             | Create a Task                                                                                                                     |
| **Tasks**           | Delete Task             | A specific, existing task can be deleted by making a DELETE request on the URL for that task.                                     |
| **Tasks**           | Get Task                | Returns the complete task record for a single task.                                                                               |
| **Tasks**           | List Project Tasks      | Returns the compact task records for all tasks within the given project, ordered by their priority.                               |
| **Tasks**           | Search Workspace Tasks  | Returns the complete task record for a single task.                                                                               |
| **Tasks**           | Update Task             | Update an existing task by making a PUT request. Only fields in the data block are changed; unspecified fields remain unchanged.  |
| **Workspace**       | Get Workspace           | Returns the full workspace record for a single workspace.                                                                         |
| **Workspace**       | List Workspaces         | Returns the compact records for all workspaces visible to the authorized user.                                                    |
