# Jira integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Jira integration do?

Our Jira integration enables the automation of issue tracking and project management by managing and updating Jira tickets seamlessly.

## Integration prerequisites

Before you begin, make sure you have the following:

* A Jira account
* The necessary permissions to install and configure integrations in your Jira instance

## Set up the Jira integration

### Set up steps in Jira

Log in to your Jira account.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the integrations page, search for the `Jira` integration.
3. Click the integration tile to launch setup.\
   \
   ![Screenshot of the Jira integration card in Rewst. It shows the Jira logo and a description: "Enables automation of issue tracking and project management. Utilize the Jira or Jira Service Desk APIs within Rewst workflows to efficiently manage and update tickets, streamline task assignments, track progress, and more." The card notes it was last updated on April 3rd, 2024, and includes a teal "PSA" badge at the bottom.](<../../../../.gitbook/assets/Screenshot 2025-04-28 at 2.55.00 PM.png>)
4. Name your integration and provide a short description.
5. Choose **True** or **False** from the drop-down selector to indicate if you'd like to include access to your Jira Service Management Instance. Including access is optional.
6. Click **Authorize** and follow the OAuth setup steps provided by Jira.
7. Save your OAuth configuration settings.
8. Click **Save Configuration**.

{% hint style="info" %}
The Jira integration does not require you to complete the organization mapping process.
{% endhint %}

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more information on which endpoints you have access to, check out the [Jira Developer Documentation](https://developer.atlassian.com/cloud/jira/platform/rest/v3/intro/#about) and the [Jira Service Desk API documentation](jira-integration-setup.md#https-docs.atlassian.com-jira-servicedesk-rest-3.6.2).

For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

### **Jira API generic request:**

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

### **Jira Service Desk generic request:**

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

## OAuth 2.0 Authentication

The Jira integration uses OAuth 2.0 for authentication and authorization. This allows secure access to your Jira instance.

### **Scopes**

The integration requests the following OAuth scopes:

* `read:me`
* `read:jira-user`
* `read:jira-work`
* `write:jira-work`
* `manage:jira-project`
* `manage:jira-configuration`
* `manage:jira-webhook`

### **Refresh Tokens**

The integration uses refresh tokens to maintain access. If the access token expires, it uses the refresh token to obtain a new one.

### Cron Job for GDPR Compliance

To comply with GDPR data management regulations, the Jira integration requires periodic calls to specific endpoints. This is achieved through a Cron Job that runs every 7 days. Here's an overview of this process:

* The Cron Job calls an endpoint with up to 90 client Cloud IDs per call.
* If no action is required for an account, it returns a 204 response.
* If deletion requests are necessary, the Cron Job initiates the deletion of pack configurations, action options, and other Atlassian user-specific data.

