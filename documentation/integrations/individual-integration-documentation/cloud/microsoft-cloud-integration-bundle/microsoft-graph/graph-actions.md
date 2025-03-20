# Graph actions

## Overview

Microsoft Graph API offers a collection of actions for managing Microsoft services like Teams, Users, and OneDrive. These actions enable tasks such as creating events, managing licenses, and sending emails.

## Actions

The following sections detail the specific actions, parameters, and their purposes, providing essential tools for seamless integration and control over various Microsoft services.

### Create Event

**Purpose:** Create an event on a specific user's calendar.

<table><thead><tr><th width="202.33333333333331">Parameter</th><th width="375">Description</th><th>Type</th></tr></thead><tbody><tr><td>User*</td><td>The user ID</td><td>String</td></tr><tr><td>Subject*</td><td>The subject of the event</td><td>String</td></tr><tr><td>HTML Body*</td><td>The HTML body of the event</td><td>String</td></tr><tr><td>Start Datetime*</td><td>Start datetime in ISO format</td><td>String</td></tr><tr><td>Start Timezone*</td><td>Timezone to create the event in</td><td>String</td></tr><tr><td>End Datetime*</td><td>End datetime in ISO format</td><td>String</td></tr><tr><td>End Timezone*</td><td>Timezone to create the event in</td><td>String</td></tr><tr><td>Microsoft Teams</td><td>Create a Teams meeting for this event</td><td>Boolean</td></tr><tr><td>Skype for Business</td><td>Create a Skype For Business meeting for this event</td><td>Boolean</td></tr><tr><td>Skype for Consumer</td><td>Create a Skype for Consumer meeting for this event</td><td>Boolean</td></tr><tr><td>All Day?</td><td>Determine if the event is all day</td><td>Boolean</td></tr><tr><td>Attendees</td><td>The attendees to send the event to</td><td>Attendees</td></tr><tr><td>Locations</td><td>Locations of the event</td><td>Array Locations</td></tr></tbody></table>

#### Attendees

**Purpose:** Specify the attendees for an event.

<table><thead><tr><th width="201.33333333333331">Parameter</th><th width="380">Description</th><th>Type</th></tr></thead><tbody><tr><td>Name*</td><td>The name of the attendee</td><td>String</td></tr><tr><td>Email</td><td>The email of the attendee</td><td>String</td></tr><tr><td>Type</td><td>The type of attendee ('optional' (default), 'required', 'resource')</td><td>String</td></tr></tbody></table>

#### Locations

**Purpose:** Specify the location details for an event.

<table><thead><tr><th width="203.33333333333331">Parameter</th><th width="382">Description</th><th>Type</th></tr></thead><tbody><tr><td>Name*</td><td>Name of the location</td><td>String</td></tr><tr><td>Address</td><td>The address of the location</td><td>Address</td></tr></tbody></table>

### Drive

**Purpose:** Interact with a specific user's drive.

<table><thead><tr><th width="202.33333333333331">Parameter</th><th width="380">Description</th><th>Type</th></tr></thead><tbody><tr><td>user_id*</td><td>The userPrincipalName or ID of the user</td><td>String</td></tr><tr><td>Params</td><td>Query params for the HTTP request</td><td>Params</td></tr></tbody></table>

#### Delete OneDrive Item

**Purpose:** Delete a specific item in OneDrive.

<table><thead><tr><th width="198.33333333333331">Parameter</th><th width="385">Description</th><th>Type</th></tr></thead><tbody><tr><td>user_id*</td><td>The userPrincipalName or ID of the user</td><td>String</td></tr><tr><td>item_id</td><td>Unique item ID for reference</td><td>String</td></tr></tbody></table>

#### Get User's Root OneDrive Items

**Purpose:** Retrieve the file and folder IDs at the root of a user's OneDrive.

<table><thead><tr><th width="199.33333333333331">Parameter</th><th width="386">Description</th><th>Type</th></tr></thead><tbody><tr><td>user_id*</td><td>The userPrincipalName or ID of the user</td><td>String</td></tr><tr><td>params</td><td>Additional parameters</td><td>Params</td></tr></tbody></table>

#### Get OneDrive Item Metadata

**Purpose:** Retrieve metadata for a specific Microsoft OneDrive item.

<table><thead><tr><th width="202.33333333333331">Parameter</th><th width="392">Description</th><th>Type</th></tr></thead><tbody><tr><td>user_id*</td><td>The userPrincipalName or ID of the user</td><td>String</td></tr><tr><td>path</td><td>Path to the file from the user's root directory</td><td>String</td></tr><tr><td>item_id</td><td>Unique item ID for reference</td><td>String</td></tr></tbody></table>

#### Create OneDrive Folder

**Purpose:** Create a new folder in OneDrive.

<table><thead><tr><th width="201.33333333333331">Parameter</th><th width="396">Description</th><th>Type</th></tr></thead><tbody><tr><td>Name*</td><td>Name of the new folder</td><td>String</td></tr><tr><td>User ID*</td><td>userPrincipalId of the user's drive to add to</td><td>String</td></tr><tr><td>Parent Item ID*</td><td>ItemID of the drive or folder to add the item</td><td>String</td></tr><tr><td>Conflict Behavior</td><td>Behavior to handle naming conflicts</td><td>String</td></tr></tbody></table>

#### Copy OneDrive Item

**Purpose:** Copy a OneDrive item to a new folder by folder ID.

<table><thead><tr><th width="193.33333333333331">Parameter</th><th width="400">Description</th><th>Type</th></tr></thead><tbody><tr><td>drive_id*</td><td>The drive or ID where the file is located</td><td>String</td></tr><tr><td>item_id*</td><td>The ID of the item to copy</td><td>String</td></tr><tr><td>new_filename</td><td>A new name for the item, if desired</td><td>String</td></tr><tr><td>new_folder_id</td><td>The ID of a new folder to put the item</td><td>String</td></tr><tr><td>new_folder_path</td><td>Path (from root on the same provided drive_id)</td><td>String</td></tr><tr><td>new_drive_id</td><td>The new drive ID for the item</td><td>String</td></tr></tbody></table>

#### Move OneDrive Item

**Purpose:** Move a OneDrive item to a new folder by folder ID.

<table><thead><tr><th width="186.33333333333331">Parameter</th><th width="409">Description</th><th>Type</th></tr></thead><tbody><tr><td>User ID*</td><td>The userPrincipalName or ID of the user</td><td>String</td></tr><tr><td>Item ID*</td><td>The ID of the item to move</td><td>String</td></tr><tr><td>json</td><td>Additional parameters in JSON format</td><td>Json</td></tr></tbody></table>

#### Params

**Purpose:** Define common parameters for various actions.

<table><thead><tr><th width="183.33333333333331">Parameter</th><th width="411">Description</th><th>Type</th></tr></thead><tbody><tr><td>Filter</td><td>Filter criteria for the request</td><td>String</td></tr><tr><td>Order By</td><td>Order the results</td><td>String</td></tr><tr><td>Select</td><td>Comma-separated fields to return (e.g. "displayName,id")</td><td>String</td></tr><tr><td>Top</td><td>Request the first x results</td><td>Integer</td></tr></tbody></table>

#### Json

**Purpose:** Define common JSON objects.

<table><thead><tr><th width="184.33333333333331">Parameter</th><th width="409">Description</th><th>Type</th></tr></thead><tbody><tr><td>parentReference</td><td>Reference to the parent object</td><td>ParentReference</td></tr><tr><td>Name</td><td>A new name for the item, if desired</td><td>String</td></tr></tbody></table>

### Groups

List groups based on filters

<table><thead><tr><th width="190.33333333333331">Parameter</th><th width="402">Description</th><th>Type</th></tr></thead><tbody><tr><td>Page Size</td><td>Number of results per page</td><td>Integer</td></tr><tr><td>Select</td><td>List of fields to return (e.g. "displayName, id")</td><td>String</td></tr><tr><td>Filter Query</td><td>Custom query to override default filters</td><td>String</td></tr><tr><td>Filters</td><td>Not all operators are available for all fields. View the availability of the filters <a href="https://docs.microsoft.com/en-us/graph/aad-advanced-queries?tabs=http#group-properties">here</a></td><td>Array Filter</td></tr></tbody></table>

#### List Group Members

**Purpose:** Retrieve the members of a specific group.

<table><thead><tr><th width="184.33333333333331">Parameter</th><th width="417">Description</th><th>Type</th></tr></thead><tbody><tr><td>url_args*</td><td>Arguments for URL targeting</td><td>UrlArgs</td></tr><tr><td>Select</td><td>Fields to return (e.g. "displayName, id, etc.")</td><td>String</td></tr></tbody></table>

#### Get Group

**Purpose:** Retrieve detailed information about a specific group.

<table><thead><tr><th width="187.33333333333331">Parameter</th><th width="417">Description</th><th>Type</th></tr></thead><tbody><tr><td>Group ID*</td><td>Unique identifier for the group</td><td>String</td></tr><tr><td>params</td><td>Additional parameters</td><td>Params</td></tr></tbody></table>

#### Add Group Member

**Purpose:** Add a user to a specific group.

<table><thead><tr><th width="183.33333333333331">Parameter</th><th width="419">Description</th><th>Type</th></tr></thead><tbody><tr><td>Group*</td><td>Target group identifier</td><td>String</td></tr><tr><td>User ID*</td><td>User to be added</td><td>String</td></tr></tbody></table>

#### Remove Group Member

**Purpose:** Remove a user from a specific group.

<table><thead><tr><th width="185.33333333333331">Parameter</th><th width="412">Description</th><th>Type</th></tr></thead><tbody><tr><td>Group*</td><td>Target group identifier</td><td>String</td></tr><tr><td>User ID*</td><td>User to be removed</td><td>String</td></tr></tbody></table>

#### Create Security Group

**Purpose:** Create a new security group.

<table><thead><tr><th width="177.33333333333331">Parameter</th><th width="420">Description</th><th>Type</th></tr></thead><tbody><tr><td>json</td><td>Group details in JSON format</td><td>Json</td></tr></tbody></table>

#### Update Security Group

**Purpose:** Update the details of an existing security group.

<table><thead><tr><th width="175.33333333333331">Parameter</th><th width="421">Description</th><th>Type</th></tr></thead><tbody><tr><td>Group ID*</td><td>Unique identifier for the group</td><td>String</td></tr><tr><td>json</td><td>Group details in JSON format</td><td>Json</td></tr></tbody></table>

#### Filter

**Purpose:** Define filter criteria for various actions.

<table><thead><tr><th width="172.33333333333331">Parameter</th><th width="425">Description</th><th>Type</th></tr></thead><tbody><tr><td>Field Name</td><td>Name of the field to filter on</td><td>String</td></tr><tr><td>Filter Type</td><td>Type of filter to apply</td><td>String</td></tr><tr><td>Field Value</td><td>Value to filter on</td><td>String</td></tr></tbody></table>

#### Url Args

**Purpose:** Define URL arguments for various actions.

<table><thead><tr><th width="167.33333333333331">Parameter</th><th width="427">Description</th><th>Type</th></tr></thead><tbody><tr><td>Group ID*</td><td>Target group identifier</td><td>String</td></tr></tbody></table>

#### Groups Params

**Purpose:** Define group-related parameters.

<table><thead><tr><th width="165.33333333333331">Parameter</th><th width="424">Description</th><th>Type</th></tr></thead><tbody><tr><td>Select</td><td>Comma-separated fields to return (e.g. "displayName,id")</td><td>String</td></tr></tbody></table>

#### Groups Json

**Purpose:** Define group-related JSON objects.

<table><thead><tr><th width="223.33333333333331">Parameter</th><th width="414">Description</th><th>Type</th></tr></thead><tbody><tr><td>Display Name*</td><td>Name of the group</td><td>String</td></tr><tr><td>Group Description</td><td>Description of the group</td><td>String</td></tr><tr><td>Mail Group Nickname</td><td>Nickname for the group's mail</td><td>String</td></tr><tr><td>Visibility</td><td>Visibility settings for the group</td><td>String</td></tr></tbody></table>

### License

**Purpose:** Manage user and group licenses.

<table><thead><tr><th width="162.33333333333331">Parameter</th><th width="468">Description</th><th>Type</th></tr></thead><tbody><tr><td>User ID*</td><td>User's UUID or Active Directory username</td><td>String</td></tr><tr><td>json</td><td>License details in JSON format</td><td>Json</td></tr><tr><td>Group ID*</td><td>Group identifier for group license operations</td><td>String</td></tr></tbody></table>

#### Assign License to User

**Purpose:** Assign a specific license to a user.

<table><thead><tr><th width="141.33333333333331">Parameter</th><th width="483">Description</th><th>Type</th></tr></thead><tbody><tr><td>User ID*</td><td>Can be either the user's UUID or Active Directory username</td><td>String</td></tr><tr><td>json</td><td>License details in JSON format</td><td>Json</td></tr></tbody></table>

#### Remove License from User

**Purpose:** Remove a specific license from a user.

<table><thead><tr><th width="126.33333333333331">Parameter</th><th width="496">Description</th><th>Type</th></tr></thead><tbody><tr><td>User ID*</td><td>Can be either the user's UUID or Active Directory username</td><td>String</td></tr><tr><td>json</td><td>License details in JSON format</td><td>Json</td></tr></tbody></table>

#### Assign License(s) to Group

**Purpose:** Assign licenses to a specific group.

<table><thead><tr><th width="132.33333333333331">Parameter</th><th width="481">Description</th><th>Type</th></tr></thead><tbody><tr><td>Group ID*</td><td>Unique identifier for the group</td><td>String</td></tr><tr><td>json</td><td>License details in JSON format</td><td>Json</td></tr></tbody></table>

#### Remove License(s) From Group

**Purpose:** Remove licenses from a specific group.

<table><thead><tr><th width="131.33333333333331">Parameter</th><th width="479">Description</th><th>Type</th></tr></thead><tbody><tr><td>Group ID*</td><td>Unique identifier for the group</td><td>String</td></tr><tr><td>json</td><td>License details in JSON format</td><td>Json</td></tr></tbody></table>

#### License Json

**Purpose:** Define license-related JSON objects.

<table><thead><tr><th width="204.33333333333331">Parameter</th><th width="318">Description</th><th>Type</th></tr></thead><tbody><tr><td>Licenses to Remove</td><td>Array of licenses to remove</td><td>Array Remove Licenses</td></tr></tbody></table>

#### Send Inquiry Message

**Purpose:** Sends a Microsoft Teams message with interactive options and pauses the workflow until a response is received

<table><thead><tr><th width="153.33333333333331">Parameter</th><th width="383">Description</th><th>Type</th></tr></thead><tbody><tr><td>Webhook*</td><td>Incoming webhook URL, see <a href="https://docs.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook">Microsoft Teams docs</a></td><td>String</td></tr><tr><td>message*</td><td>Message content</td><td>String</td></tr><tr><td>Buttons</td><td>List of buttons for user interaction</td><td>Array Buttons</td></tr></tbody></table>

#### Sharepoint Delete Anon Links

**Purpose:** Find and remove all anonymous sharing links from an object.

<table><thead><tr><th width="143.33333333333331">Parameter</th><th width="434">Description</th><th>Type</th></tr></thead><tbody><tr><td>site_id*</td><td>Website ID for the site</td><td>String</td></tr><tr><td>file_id*</td><td>File's ID</td><td>String</td></tr></tbody></table>

#### Filtered Groups

**Purpose:** Select and filter groups.

<table><thead><tr><th width="140.33333333333331">Parameter</th><th width="423">Description</th><th>Type</th></tr></thead><tbody><tr><td>Select</td><td>List of fields to return (e.g. "displayName, id, etc.")</td><td>Array Select</td></tr><tr><td>Count</td><td>Include Number of items in result</td><td>Boolean</td></tr><tr><td>skip</td><td>Number of results to skip</td><td>Integer</td></tr><tr><td>Filters</td><td>Filters to apply</td><td>Array Filter</td></tr></tbody></table>

#### Get Security Enabled Groups

**Purpose:** Retrieve security-enabled groups.

<table><thead><tr><th width="137.33333333333331">Parameter</th><th width="438">Description</th><th>Type</th></tr></thead><tbody><tr><td>Select</td><td>List of fields to return (e.g. "displayName, id, etc.")</td><td>Array Select</td></tr><tr><td>Count</td><td>Include Number of items in result</td><td>Boolean</td></tr><tr><td>skip</td><td>Number of results to skip</td><td>Integer</td></tr><tr><td>Filters</td><td>Filters to apply</td><td>Array Filter</td></tr></tbody></table>

### Teams

**Purpose:** Send a message in a Teams group via a webhook.

<table><thead><tr><th width="129.33333333333331">Parameter</th><th width="432">Description</th><th>Type</th></tr></thead><tbody><tr><td>Webhook*</td><td>Incoming webhook URL, see <a href="https://chat.openai.com">Microsoft Teams docs</a></td><td>String</td></tr><tr><td>json</td><td>JSON content for the message</td><td>Json</td></tr></tbody></table>

#### Send Inquiry Message Filter

**Purpose:** Filters for sending inquiry messages.

<table><thead><tr><th width="142.33333333333331">Parameter</th><th width="426">Description</th><th>Type</th></tr></thead><tbody><tr><td>Field Name</td><td>Name of the filter field</td><td>String</td></tr><tr><td>Filter Type</td><td>Type of filter</td><td>String</td></tr><tr><td>Field Value</td><td>Value for filtering</td><td>String</td></tr></tbody></table>

### Users

**Invalidate Sign In Sessions**

Purpose: Invalidate all sign-in sessions for the selected user.

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| User ID\* | User's ID   | String |

**List Users**

Purpose: Retrieve a list of users based on specific criteria.

| Parameter    | Description                               | Type         |
| ------------ | ----------------------------------------- | ------------ |
| url          | URL for listing users                     | URL          |
| Select       | Fields to return (e.g. "displayName, id") | Array Select |
| Page Size    | Number of results to retrieve             | Integer      |
| Filter Query | Custom query to override default filters  | String       |
| Filters      | Additional filters for refining results   | Array Filter |

**Create User**

Purpose: Create a new user within the system.

| Parameter | Description  | Type |
| --------- | ------------ | ---- |
| json      | User details | Json |

**Update User**

Purpose: Update the details of an existing user.

| Parameter | Description  | Type   |
| --------- | ------------ | ------ |
| User ID\* | User's ID    | String |
| json      | User details | Json   |

**Set User Manager**

Purpose: Assign a manager to a specific user.

| Parameter    | Description  | Type   |
| ------------ | ------------ | ------ |
| User ID\*    | User's ID    | String |
| Manager ID\* | Manager's ID | String |

**List User Licenses**

Purpose: Retrieve a list of license details for a user.

| Parameter | Description           | Type   |
| --------- | --------------------- | ------ |
| User ID\* | User's ID             | String |
| params    | Additional parameters | Params |

**List User Calendars**

Purpose: Get all the user's calendars.

| Parameter | Description           | Type   |
| --------- | --------------------- | ------ |
| User ID\* | User's ID             | String |
| params    | Additional parameters | Params |

**Create Calendar Permission**

Purpose: Creates a calendarPermissions object for a user's primary calendar.

| Parameter | Description        | Type   |
| --------- | ------------------ | ------ |
| User ID\* | User's ID          | String |
| json      | Permission details | Json   |

**Delete Calendar Permission**

Purpose: Delete specified permissions from a user's primary calendar.

| Parameter                | Description   | Type   |
| ------------------------ | ------------- | ------ |
| User ID\*                | User's ID     | String |
| Calendar Permission ID\* | Permission ID | String |

**List User Calendar Permissions**

Purpose: Get a collection of calendarPermission resources that describe the identity and roles of users with whom the specified calendar has been shared or delegated.

| Parameter | Description           | Type   |
| --------- | --------------------- | ------ |
| User ID\* | User's ID             | String |
| params    | Additional parameters | Params |

**Send Mail as Impersonated User**

Send an e-mail impersonating a user within your M365 tenant

<table><thead><tr><th width="224.33333333333331">Parameter</th><th width="379">Description</th><th>Type</th></tr></thead><tbody><tr><td>url</td><td>URL for sending email</td><td>URL</td></tr><tr><td>User ID*</td><td>The userPrincipalName or ID of the user that the message will be sent from</td><td>String</td></tr><tr><td>Subject*</td><td>Email subject</td><td>String</td></tr><tr><td>message_body</td><td>Message body details</td><td>MessageBody</td></tr><tr><td>To Recipients</td><td>List of email addresses to send to</td><td>Array</td></tr><tr><td>CC Recipients</td><td>List of email addresses to CC</td><td>Array</td></tr><tr><td>BCC Recipients</td><td>List of email addresses to BCC</td><td>Array</td></tr><tr><td>Reply To</td><td>Email addresses for replies</td><td>Array</td></tr><tr><td>File Attachments</td><td>File attachments</td><td>Array File Attachments</td></tr><tr><td>Internet Message Headers</td><td>Custom message headers</td><td>Array Internet Message Headers</td></tr><tr><td>Request Delivery Receipt</td><td>Request a delivery receipt</td><td>Boolean</td></tr><tr><td>Request Read Receipt</td><td>Request a read receipt</td><td>Boolean</td></tr><tr><td>Follow Up Start At</td><td>Flag for follow-up start date/time</td><td>String</td></tr><tr><td>Follow Up Due Date</td><td>The date and time that a follow up flag is to be finished. If this is set, <code>Follow Up Start At</code> must also be defined.</td><td>String</td></tr><tr><td>Importance</td><td>Importance of the message</td><td>String</td></tr><tr><td>Save to Sent Items</td><td>Save the message in Sent Items</td><td>Boolean</td></tr></tbody></table>

**Users Json**

Purpose: Define user-specific attributes.

<table><thead><tr><th width="220.33333333333331">Parameter</th><th width="382">Description</th><th>Type</th></tr></thead><tbody><tr><td>emailAddress</td><td>User's email address</td><td>EmailAddress</td></tr><tr><td>isInsideOrganization</td><td>True if the user in context (sharee or delegate) is inside the same organization as the calendar owner.</td><td>Boolean</td></tr><tr><td>isRemovable</td><td>True if the user can be removed from the list of sharees or delegates for the specified calendar, false otherwise.</td><td>Boolean</td></tr><tr><td>Role</td><td>Role assigned to the user</td><td>String</td></tr></tbody></table>

**Message Body**

**Purpose:** Define the content of the email message.

<table><thead><tr><th width="226.33333333333331">Parameter</th><th width="348">Description</th><th>Type</th></tr></thead><tbody><tr><td>Message Content*</td><td>Content of the message</td><td>String</td></tr><tr><td>Message Content Type</td><td>Content type of the message (e.g., HTML)</td><td>String</td></tr></tbody></table>

#### File Attachments

**Purpose:** Define file attachments for a message.

<table><thead><tr><th width="175">Parameter</th><th width="422.3333333333333">Description</th><th>Type</th></tr></thead><tbody><tr><td>Content Bytes</td><td>The base64-encoded contents of the file</td><td>String</td></tr><tr><td>Content Type</td><td>The content type of the attachment</td><td>String</td></tr><tr><td>Is Inline</td><td>Set to true if this is an inline attachment</td><td>Boolean</td></tr><tr><td>Name</td><td>The name representing the text that is displayed below the icon representing the embedded attachment</td><td>String</td></tr></tbody></table>

#### Internet Message Headers

**Purpose:** Define custom message headers that hold app data for the message.

<table><thead><tr><th width="170.33333333333331">Parameter</th><th width="429">Description</th><th>Type</th></tr></thead><tbody><tr><td>Name</td><td>Header name</td><td>String</td></tr><tr><td>Value</td><td>Header value</td><td>String</td></tr></tbody></table>

### Graph API Request

Send a request to any [Microsoft Graph endpoint](https://learn.microsoft.com/en-us/graph/use-the-api)

**Want more practice?**

{% hint style="success" %}
[Check out our Rewst Foundations Courses](../../../../../../cluck-university/rewst-foundations/).
{% endhint %}
