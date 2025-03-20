---
description: Take advantage of Jira API Endpoints within your Rewst Workflows.
---

# Actions & Endpoints

{% hint style="info" %}
For more information on which endpoints you have access to, check out the [Jira Developer Documentation](https://developer.atlassian.com/cloud/jira/platform/rest/v3/intro/#about) and the [Jira Service Desk API documentation](actions-and-endpoints.md#https-docs.atlassian.com-jira-servicedesk-rest-3.6.2).
{% endhint %}

## **Jira API Generic Request:**

* **Action Name:** Jira API Request
* **Description:** Perform various generic requests against the Jira API.
* **Endpoint/Method:** GET, POST, etc.
* **Parameters (Required/Optional):**
  * url\_path (Required): The URL path for the API endpoint eg: `/issue/DEMO-1`
  * Body (Optional)
  * JSON Object (Optional)
  * Request Method (Required)
  * Query Params (Optional)
  * Cookies (Optional)
  * Headers (Optional)
  * Paginate Request (Optional)
  * Raw JSON (Optional)

## **Jira Service Desk Generic Request:**

* **Action Name:** Jira Service Desk API Request
* **Description:** Generic action for making authenticated requests against the Jira Service Desk API.
* **Endpoint/Method:** GET, POST, etc.
* **Parameters (Required/Optional):**
  * url\_path (Required): The URL path for the API endpoint eg: `/request/{{ issue_id }}/status`.
  * Body (Optional)
  * JSON Object (Optional)
  * Request Method (Required)
  * Query Params (Optional)
  * Cookies (Optional)
  * Headers (Optional)
  * Paginate Request (Optional)
  * Raw JSON (Optional)
