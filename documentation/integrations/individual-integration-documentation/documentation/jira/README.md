---
description: >-
  Harness the power of Jira to enhance your application's capabilities within
  Rewst
---

# Jira

## Overview

The Jira integration allows you to manage and update Jira tickets seamlessly within your application. This documentation provides a comprehensive guide on how to set up and use the Jira integration effectively.

## OAuth 2.0 Authentication

The Jira integration uses OAuth 2.0 for authentication and authorization. This allows secure access to your Jira instance.

## **Scopes**

The integration requests the following OAuth scopes:

* `read:me`
* `read:jira-user`
* `read:jira-work`
* `write:jira-work`
* `manage:jira-project`
* `manage:jira-configuration`
* `manage:jira-webhook`

## **Refresh Tokens**

The integration uses refresh tokens to maintain access. If the access token expires, it uses the refresh token to obtain a new one.

## Cron Job for GDPR Compliance

To comply with GDPR data management regulations, the Jira integration requires periodic calls to specific endpoints. This is achieved through a Cron Job that runs every 7 days. Here's an overview of this process:

* The Cron Job calls an endpoint with up to 90 client Cloud IDs per call.
* If no action is required for an account, it returns a 204 response.
* If deletion requests are necessary, the Cron Job initiates the deletion of pack configurations, action options, and other Atlassian user-specific data.
