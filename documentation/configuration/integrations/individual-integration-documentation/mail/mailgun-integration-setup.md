---
description: This document outlines the requirements and setup for the Mailgun integration.
---

# Mailgun integration setup

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Mailgun integration do?

Our Mailgun integration enables the automation of email communications. Use the Mailgun API within Rewst workflows to send emails, trigger workflows when receiving emails, and more.

## Set up the Mailgun integration

### Set up steps in Mailgun

1. Log in to Mailgun.
2. Navigate to **Sending > Domain Settings > Sending Keys**.
3. Choose your appropriate domain from the drop-down selector, if you use multiple domains.
4. Click **Add sending key**.
5. Enter a name for the key.
6. Copy the **Sending API key** value displayed in the dialog.  You won't be able to view the key again after you close it. Store this key somewhere secure. You'll need it for further steps in Rewst.

### Set up steps in Rewst

1. Navigate to Configuration > Integrations in the left side menu of your Rewst platform.
2. Search for `Mailgun` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-02 at 4.20.17 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from Mailgun into the relevant fields:
   1. **Sending Domain**
   2. **API Key**
   3. **API URL**
5. Click **Save Configuration**.

Rewst will do a quick validation of your input.

Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

## Actions and endpoints

| Category            | Action              | Description                                                              |
| ------------------- | ------------------- | ------------------------------------------------------------------------ |
| **Generic Request** | Mailgun API Request | Generic action for making authenticated requests against the Mailgun API |
| **Send Email**      | Send Email          | Send email via Mailgun HTTP API.                                         |
| **Test Action**     | Send Email          | Send email via Mailgun HTTP API.                                         |
