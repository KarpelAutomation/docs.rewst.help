---
description: Interact and Innovate with Rewst Actions
---

# Rewst actions

## Available Rewst actions

Rewst actions provide you the tools to effectively manage and customize your environment. From setting up organizations and users to associating with multi-tenanted objects, these actions form the foundation of your interaction with the platform. This guide explores each of the available actions in detail, providing you a clear path to maximize the potential of your Rewst functionality.

{% hint style="info" %}
Expand each of the action types below to see their individual actions and action information.
{% endhint %}

<details>

<summary>Organization actions</summary>

The actions in this section include the ability to list all organizations, fetch information about a specific organization, update an existing organizations details, and create an organization or bulk or organizations. These actions provide necessary capabilities to ensure seamless functioning and interoperability of your organizations within Rewst.

### **Get Organization**

**Description:** Retrieve data for a single organization in Rewst.

**Parameters:**

* **Organization ID:** Identifier of the organization to fetch data for. This ID is unique for each organization within Rewst.

**Output:** Outputs the details of the organization, which includes the Organization ID, Domain, Name, Managing Organization ID, and Enabled Status.

***

### **Bulk Create Organizations**

**Description:** Create multiple organizations at once within Rewst.

**Parameters:**

* Managing **Organization ID:** The ID of the managing organization. If not provided, the organization that initiated the operation will be set as the managing organization.
* Organizations (Required): List of organization details to be created. Each entry in the list should contain the following parameters:
  * Is Enabled: Boolean indicating if the organization should be enabled.
  * Name: The name of the organization in Rewst. The name must be unique.
  * Domain: The domain name of the organization's website, excluding protocol.

**Output:** Outputs a list of newly created organizations, each with its corresponding Organization ID, Domain, Name, Managing Organization ID, and Enabled Status.

***

### **Create Organization**

**Description:** Create a single organization within Rewst.

**Parameters:**

* Name (Required): The name of the organization to be created. This name must be unique within Rewst.
* Domain (Optional): The domain of the new organization, excluding protocol.
* Managing **Organization ID:** Identifier of the managing organization. If not provided, the organization that initiated the operation will be set as the managing organization.
* Is Enabled (Optional, default is true): A boolean indicating whether the new organization is enabled or not.

**Output:** Outputs the details of the newly created organization, which includes the Organization ID, Domain, Name, Managing Organization ID, and Enabled Status.

***

### **List Organizations**

**Description:** Fetch a list of all organizations in Rewst.

**Parameters:**

* Managing **Organization ID:** Identifier of the managing organization to fetch organizations for. This ID is unique for each organization within Rewst.
* Name (Optional): Name of the organization to search for. The name must be unique within Rewst.

**Output:** Outputs a list of organizations, each with its corresponding Organization ID, Domain, Name, Managing Organization ID, and Enabled Status.

***

### **Update Organization**

**Description:** Update details of an existing organization within Rewst.

**Parameters:**

* **Organization ID:** Identifier of the organization to be updated. This ID is unique for each organization within Rewst.
* Name (Optional): New name for the organization. This name must be unique within Rewst.
* Domain (Optional): New domain for the organization, excluding protocol.
* Is Enabled (Optional): Updated enabled status for the organization. It is a boolean value.

**Output:** Outputs the updated details of the organization, which includes the Organization ID, Domain, Name, Managing Organization ID, and Enabled Status.

***

### **List Integrations For Organization**

**Description:** This action retrieves a comprehensive list of integrations installed for a specific organization in Rewst, providing a detailed overview of each integration's attributes.

**Parameters:**

* **Organization ID:** The unique identifier for an organization in Rewst. This parameter is required to fetch the specific integration details pertinent to the organization.

**Output:**

The action generates a detailed list of integrations, including:

* **Integration ID, Name, and Reference:** Basic identifiers providing clarity on each integration.
* **Pack Configurations:** In-depth details of configurations applied to each integration, offering insights into their setup and customization.
* **Applied Triggers:** Information on workflow triggers linked to each integration, useful for understanding operational dynamics.
* **Foreign Object References:** Crucial data points that link integrations to external references, enhancing cross-platform data synchronization and management.

</details>

<details>

<summary>Organization variable actions</summary>

This section encompasses actions related to the manipulation of organization variables. These variables are key-value pairs stored at an organization level, typically used to hold configuration data that could be used across different operations within the organization. Actions here include the ability to create, update, delete, and list organization variables.

### List Organization Variables

**Description:** Lists all organization variables visible to the selected organization.

**Parameters:**

* **Organization ID:** (Optional) A dropdown list of the labels that correlate with the ID (visible in the code editor window) of an organization you'd like to retrieve.

**Output:** Returns a list of objects. Each object represents an organization variable and includes the ID, name, value, organization ID, category, timestamps, associated organization, and more.

***

### Get Organization Variable

**Description:** Retrieves a specific organization variable for a selected organization using the variable's name or value.

**Parameters:**

* **Name:** (Optional) The name of the organization variable.
* **Organization ID:** (Optional) A dropdown list of the labels that correlate with the ID of an organization you'd like to retrieve.
* **Value:** (Optional) The value of the organization variable.

**Output:** Returns an object (or list of objects) representing the organization variable, including the ID, name, value, organization ID, category, timestamps, associated organization, and more.

***

### Create Organization Variable

**Description:** Creates a new organization variable that's available for use within an organization's workflow context.

**Parameters:**

* **Name:** The name of the organization variable.
* **Value:** The value of the organization variable.
* **Category:** The category used to define the organization variable. Options include: `general`, `contact`, `system`, `secret`.
* **Use as default:** If true, this variable's value will be used as the default value for any managed organizations without a defined value.
* **Organization ID:** (Optional) The ID of the organization.

**Output:** Returns an object containing the new variable details including the ID, name, value, organization ID, category, timestamps, associated organization, and more.

***

### Bulk Upsert Organization Variables

**Description:** Performs a bulk operation to create or update organization variables.

**Parameters:**

* **Organization Variables:** A list of objects where each object represents an organization variable to be created or updated. Each object must include:
  * **Name:** The name of the organization variable.
  * **Value:** The value of the organization variable.
  * **Category:** The category used to define the organization variable. Options include: `general`, `contact`, `system`, `secret`.
  * **Use as default:** If true, this variable's value will be used as the default value for any managed organizations without a defined value.
  * **Organization ID:** (Optional) The ID of the organization.

**Output:** Returns a list of objects. Each object represents an upserted organization variable and includes properties such as ID, name, value, organization ID, category, timestamps, associated organization, and more.

***

### Delete Organization Variable

**Description:** Deletes a specific organization variable for a selected organization using the variable's name.

**Parameters:**

* **Organization ID:** The ID of an organization.
* **Name:** The name of the organization variable to be deleted.

**Output:** Returns an object indicating the success of the operation, including the name of the deleted variable and the ID of the organization from which it was deleted.

</details>

<details>

<summary>Users and invitation actions</summary>

The actions grouped under this section are designed to manage users and their invitations. This includes inviting users to join an organization, listing users, retrieving user information, and updating user details. These actions provide comprehensive user management capabilities, enabling secure and efficient operations within an organization.

### **List Users by Organization**

**Description**: Get user list and optionally invited users by your organization in Rewst.

**Parameters**:

* **Include User Invites?:** Whether or not to include user invites in the results.
* **Which Invites:** Which invitees to include. Can be `all`, `accepted`, or `pending`.

**Output**: A list of users with details like ID, role, organization ID, assigned role IDs, username, and a boolean indicating superuser status.

***

### **Get User**

**Description:** Get user by email or ID in Rewst.

**Parameters:**

* **ID:** The ID of a user in Rewst.
* **Organization ID:** The ID of an organization in Rewst.
* **Email address:** The email of a user in Rewst.

**Output:** The returned object includes the user's details like ID, role, organization ID, assigned role IDs, username, and a boolean indicating superuser status.

***

### **List User Invites to Rewst**

**Description:** Get user invite list by your organization in Rewst.

**Parameters:** _No parameters needed for this action._

**Output:** The returned list includes a list of user invite objects. Each object contains the invite's ID, email, organization ID, assigned role IDs, a boolean indicating acceptance status, and the ID of the inviter.

***

### **Invite User to Rewst**

**Description:** Invite a user to your organization in Rewst.

**Parameters:**

* **Email:** Email address of the user to invite.
* **Roles:** Role IDs to assign to user.

**Output:** The returned object includes the invite details such as ID, email, organization ID, assigned role IDs, a boolean indicating acceptance status, and the ID of the inviter.

***

### **Delete User Invite**

**Description:** Delete a user invite from your organization in Rewst.

**Parameters:**

* **Email:** Email address of the user invite to delete.

**Output:** The returned object shows the number of invites deleted.

</details>

<details>

<summary>Foreign object references</summary>

The actions under this category help manage associations with external objects or resources in other systems. For workflows that need to interact with or refer to objects in external systems, these actions provide functionality for fetching and managing these references, enabling interoperability and extended functionality in workflows. Link an external reference to a workflow execution with an identifier and reference ID. Retrieve details later by specifying parameters. Choose user and set failure conditions for pre-existing links.

***

### Associate External Object

Linking external resources, like tickets from a PSA system, to your workflow executions can streamline management and enhance traceability. This section walks through the steps to associate an external object within your workflow executions.

#### **Key Points:**

* **Association:** Connects an external system's resource to your workflow.
* **Conflict Handling:** Optionally fails if a pre-existing link is detected.
* **User Execution:** Runs under specified user or default user.

#### **Parameters:**

* **identifier:** Unique identifier of the external resource you'd like to associate.
* **reference\_id:** Reference for the external resource that you will be able to call back on.
* **run\_as\_user (optional):** Defined user's ID or default user's ID (if blank) for running the task.
* **fail\_on\_conflict (optional):** Set this option to true if you don't want to overwrite any existing `reference_id`/`identifier` pair already exists.

#### **Output**

The resulting task's output returns the verified information about the associated external object.

***

### Get External Reference

Facilitates the retrieval of details about the any external integration or manually set references. You can use it to fetch all external integration references associated with a specific organization in Rewst or to find the organization and workflow execution associated with a specific external reference ID.

#### **Key Points:**

* **Retrieval:** Fetches external resource information.
* **User Execution:** Runs under specified user credentials or default user.
* **Organization Specific:** Requires organization ID for context.

#### **Parameters**

* **org\_id:** ID of the organization in Rewst.
* **identifier:** Unique identifier of the external resource.
* **reference\_id:** Reference ID of the external resource.
* **run\_as\_user (optional):** Specify user credentials.

#### **Output**

Returns detailed information about the external reference(s), such as the `org_id` in Rewst linked to it, the type of `identifier`, and the external `reference_id`. This information is helpful for cross-system data synchronization and management.

***

</details>

<details>

<summary>Template actions</summary>

Templates are vital components of workflows, allowing dynamic content to be incorporated into tasks. The actions here provide an interface for creating, updating, fetching, and deleting these templates, effectively aiding in workflow customization and dynamic content management.&#x20;

Use our template actions to manage templates that exist at the organization level of the workflow in which you are building. These actions won't work for child orgs of that workflow's organization.

### **Create Template**

**Description:** Lets you create a new template.

**Parameters:**

* **Name:** The name of the template.
* **Description:** A brief description of the template.
* **Body:** The actual template content.
* **Content Type:** The type of content used in the template.
* **Language:** The language used in the template. Options include: `html`, `markdown`, `powershell`, `python`, `yaml`.

**Output:** The action returns the newly created template's information, including its `id`.

***

### **Get Template**

**Description:** Lets you retrieve the details of an existing template.

**Parameters:**

* **Template ID**: The ID of the template you wish to retrieve.

**Output:** The action returns the requested template's information, including its `name`, `description`, `body`, `content_type`, and `language`.

***

### **List Templates**

**Description:** Lets you retrieve a list of all existing templates.

**Parameters:** _No parameters are required for this action._

**Output:** The action returns a list of all templates, with each entry including information about a template, such as its `id`, `name`, `description`, `body`, `content_type`, and `language`.

***

### **Update Template**

**Description:** Lets you update the details of an existing template.

**Parameters:**

* **Template ID:** The ID of the template you wish to update, it is a required field.
* **Body:** The new content of the template.
* **Content Type:** The new type of content used in the template. The options are `message` and `script`.
* **Description:** A brief description of the template.
* **Language:** The new language used in the template. The options include: `html`, `markdown`, `powershell`, `python`, `yaml`.

**Output:** The action returns the updated template's information, including its `id`.

***

### **Delete Template**

**Description:** Lets you delete an existing template.

**Parameters:**

* **Template ID**: The ID of the template you wish to delete.

**Output:** The action does not return any specific output, but its execution status indicates whether the deletion was successful.

</details>

<details>

<summary>Form and trigger actions</summary>

Forms are typically used for collecting user inputs, while triggers are events that initiate a workflow. The actions here include listing, fetching, and managing forms and triggers, which can streamline the management of these essential components, leading to more efficient workflows and user interactions.

### **List Forms**

**Description:** Retrieves a list of all forms in the system.

**Parameters:** No parameters are required for this action.

**Output:** The action returns a list of all forms, each item including information about a form.

***

### **Get Form**

**Description:** Retrieves details about a specific form in the system.

**Parameters:**

* **Name:** The name of the form.
* **ID:** The ID of the form.

**Output:** The action returns information about the specified form.

***

### **List Triggers**

**Description:** Retrieves a list of all triggers in the system.

**Parameters:** No parameters are required for this action.

**Output:** The action returns a list of all triggers, each item including information about a trigger.

***

### **Get Trigger**

**Description:** Retrieves details about a specific trigger in the system.

**Parameters:**

* **Name:** The name of the trigger.
* **ID:** The ID of the trigger.
* **Enabled:** A boolean value that indicates whether the trigger is enabled or not.

**Output:** The action returns information about the specified trigger.

</details>

