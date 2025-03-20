# Actions & Endpoints

## Introduction

The Liongard Integration with Rewst delivers a robust set of actions and endpoints for interacting with Liongard. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Liongard Integration:

* [**Access Key**](actions-and-endpoints.md#access-key)
* [**Agents**](actions-and-endpoints.md#agents)
* [**Alerts**](actions-and-endpoints.md#alerts)
* [**Detections**](actions-and-endpoints.md#detections)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Groups**](actions-and-endpoints.md#groups)
* [**Inspector**](actions-and-endpoints.md#inspector)
* [**Launchpoints**](actions-and-endpoints.md#launchpoints)
* [**System**](actions-and-endpoints.md#system)
* [**Timeline**](actions-and-endpoints.md#timeline)
* [**Users**](actions-and-endpoints.md#users)
* [**V2 Environments**](actions-and-endpoints.md#v2-environments)
* [**V2 Metrics**](actions-and-endpoints.md#v2-metrics)

## Actions

### Access Key

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/access-keys" method="get" summary="List Access Keys" %}
{% swagger-description %}
Returns a List of Access Tokens created by user
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/access-keys" method="post" summary="Create Access Key" %}
{% swagger-description %}
Create an Access Token with the permission of user or with only 'Add Agent' permission
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/access-keys/{AccessKeyID}" method="delete" summary="Delete Access Key" %}
{% swagger-description %}
Delete Access Token created by user
{% endswagger-description %}
{% endswagger %}

### Agents

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/agents" method="get" summary="List Agents" %}
{% swagger-description %}
List all agents.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/agents/{AgentID}" method="delete" summary="Delete Agent" %}
{% swagger-description %}
Remove an agent
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/agents/{AgentID}" method="get" summary="Get Agent by ID" %}
{% swagger-description %}
Get a specific Agent.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/agents/{AgentID}" method="put" summary="Update Agent" %}
{% swagger-description %}
Edits a deployed liongard agent, cannot update On-Demand agents.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/agents/{AgentID}/flush" method="post" summary="Flush Job Queue" %}
{% swagger-description %}
Empty an agent's job queue.
{% endswagger-description %}
{% endswagger %}

### Alerts

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/tasks" method="get" summary="List Alerts" %}
{% swagger-description %}
Returns a list of alerts that have been raised.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/tasks/{TaskID}" method="get" summary="Get Alert by ID" %}
{% swagger-description %}
Returns a single alert that has been raised.
{% endswagger-description %}
{% endswagger %}

### Detections

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/detections" method="get" summary="List Detection Events" %}
{% swagger-description %}
Returns a list of all detection events.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/detections/{DetectionID}" method="get" summary="Get Detections by ID" %}
{% swagger-description %}
Gets a specific detection.
{% endswagger-description %}
{% endswagger %}

### Generic Request

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/<url_path>" method="get" summary="Liongard API Request" %}
{% swagger-description %}
Generic action for making authenticated requests against the Liongard API
{% endswagger-description %}
{% endswagger %}

### Groups

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/groups" method="get" summary="List Groups" %}
{% swagger-description %}
Returns a List of available Assignable groups for a user
{% endswagger-description %}
{% endswagger %}

### Inspector

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/inspector/{InspectorId}/templates" method="get" summary="Get Inspector Templates" %}
{% swagger-description %}
Retrieve Inspector Config and SecureConfig Fields, using the Name key for launchpoint configuration, and distinguishing between SecureConfig and Config fields with Secure and Required keys.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/inspector/{InspectorId}/versions" method="get" summary="Get Inspector Versions" %}
{% swagger-description %}
Get a list of Inspector Versions and their IDs, sorted by "desc" for easy access to the latest version based on the highest ID or "CreatedOn" field.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/inspectors" method="get" summary="List Inspector Types" %}
{% swagger-description %}
Lists all avaialble Inspectors in Liongard
{% endswagger-description %}
{% endswagger %}

### Launchpoints

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints" method="delete" summary="Delete Launchpoints in Bulk" %}
{% swagger-description %}
Remove all launchpoints.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints" method="get" summary="List Launchpoints" %}
{% swagger-description %}
Lists all launchpoints.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints" method="post" summary="Create Launchpoint" %}
{% swagger-description %}
Create a launchpoint. You will need to reference the inspector templates for ilding out the config and secure config objects for this launchpoint. Each Inspector has a different template that contains the necessary configuration fields.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints" method="put" summary="Edit Launchpoints in Bulk" %}
{% swagger-description %}
Update many launchpoints to run on the same schedule.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints/run" method="post" summary="Run Inspections in Bulk" %}
{% swagger-description %}
Kick off many inspections.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints/{LaunchpointID}" method="delete" summary="Delete Launchpoint" %}
{% swagger-description %}
Remove a single launchpoint.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints/{LaunchpointID}" method="get" summary="Get Launchpoints by ID" %}
{% swagger-description %}
Return a specific launchpoint by ID.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints/{LaunchpointID}" method="put" summary="Update Launchpoint" %}
{% swagger-description %}
Edit a single inspector launchpoint, referencing inspector templates for configuring the launchpoint with specific configuration fields.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/launchpoints/{LaunchpointID}/run" method="get" summary="Run Inspection" %}
{% swagger-description %}
Set a Launchpoint to run an inspection
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/logs" method="get" summary="Get Launchpoint Log" %}
{% swagger-description %}
Return the logs for a specific inspection.
{% endswagger-description %}
{% endswagger %}

### System

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/systems" method="get" summary="List Systems" %}
{% swagger-description %}
List all systems.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/systems/{SystemID}/view" method="post" summary="Get System Detail View by ID" %}
{% swagger-description %}
Returns the Raw data from the latest inspection for a system.
{% endswagger-description %}
{% endswagger %}

### Timeline

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/timeline" method="get" summary="List Timeline Entries" %}
{% swagger-description %}
Fetch all timeline entries.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/timeline/{TimelineID}" method="get" summary="Get Timeline by ID" %}
{% swagger-description %}
Fetch a specific timeline.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/timeline/{TimelineID}/detail" method="get" summary="Get Timeline Detail" %}
{% swagger-description %}
Fetch the Raw timeline entry (including the entire dataprint).
{% endswagger-description %}
{% endswagger %}

### Users

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/users" method="get" summary="List Users" %}
{% swagger-description %}
Returns a list of users in your Liongard Instance
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/users" method="post" summary="Create User" %}
{% swagger-description %}
Creates a single User
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/users/{UserID}" method="delete" summary="Delete User" %}
{% swagger-description %}
Remove a single User.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/users/{UserID}" method="get" summary="Get User by ID" %}
{% swagger-description %}
Returns a Single User
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v1/users/{UserID}" method="put" summary="Update User" %}
{% swagger-description %}
Updates a single User
{% endswagger-description %}
{% endswagger %}

### V2 Environments

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/environments/" method="get" summary="List Environments (V2)" %}
{% swagger-description %}
Retrieve a list of environments. You can specify the page size, columns to include, and the order of the response
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/environments/" method="post" summary="Add Environment (V2)" %}
{% swagger-description %}
API endpoint to add a new environment. The endpoint requires a JSON body containing the label for the environment
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/environments/" method="put" summary="Update Environments in Bulk (V2)" %}
{% swagger-description %}
Update multiple environments using the Liongard API
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/environments/bulk" method="post" summary="Add Environments in Bulk (V2)" %}
{% swagger-description %}
Add multiple environments by making a POST request to the /environments/bulk endpoint with a JSON body containing the necessary information
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/environments/{environmentId}" method="delete" summary="Delete Environment (V2)" %}
{% swagger-description %}
Delete an environment by its ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/environments/{environmentId}" method="get" summary="Get Environment (V2)" %}
{% swagger-description %}
Get a single environment by providing the environmentId as a path parameter
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/environments/{environmentId}" method="put" summary="Update Environment (V2)" %}
{% swagger-description %}
Update a single environment by providing the environment ID and the updated JSON body
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/environments/{environmentId}/relatedEntities" method="get" summary="Get Related Entities Per Environment (V2)" %}
{% swagger-description %}
Returns all the Related Entities that are tied to a single Environment such as Agents, Launchpoints, and Integration mappings
{% endswagger-description %}
{% endswagger %}

### V2 Metrics

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/metrics" method="get" summary="List Metrics (V2)" %}
{% swagger-description %}
Returns a list of metrics that have been created.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://companyABC.app.liongard.com" path="/api/v2/metrics/{MetricID}/relatedEnvironments" method="get" summary="Get Related Environments for Metric (V2)" %}
{% swagger-description %}
Returns Environment IDs for all related Environments for a given Metric ID
{% endswagger-description %}
{% endswagger %}
