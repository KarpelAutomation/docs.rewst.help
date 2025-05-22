---
description: >-
  This document outlines the requirements and setup for the SentinelOne
  integration.
---

# SentinelOne integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the SentinelOne integration do?

Our SentinelOne integration enables the automation of endpoint protection. Use the SentinelOne API within Rewst workflows to manage accounts, agents, forensics, and threats.

## Set up the SentinelOne integration

### Set up steps in SentinelOne

1. Log in to the SentinelOne management console.
2. Navigate to **Settings > Users**.
3. Click **Service Users**.
4. Click **Actions > Create New Service User.**
5. Set a name and an expiration date for the account.
6. Click **Next**.
7. Select **Account** as the access level, then select the parent site.
8. Set the role to **Admin**.
9. **Click** Create User.
10. Copy the API key information. Save it in a secure location. You'll need this information for further set up steps in Rewst.

{% hint style="info" %}
SentinelOne API tokens have an expiration date, typically 6 months out. We suggest setting a reminder for checking and updating the keys to correspond with the expiration timeline.
{% endhint %}

### Set up steps in Rewst

Once you have created an API account, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `SentinelOne` in the integrations page.
3.  Click on the integration tile to launch the configuration setup page.

    \
    ![](<../../../../../.gitbook/assets/Screenshot 2025-05-06 at 2.53.36 PM.png>)
4. Under Parameters, enter the information copied from SentinelOne into the relevant fields:
   1. **API Key**: The API key that was generated for integration.
   2. **Domain**: This is the full URL to the SentinelOne tenant
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}
