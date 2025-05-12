---
description: >-
  This document outlines the requirements and setup for the ConnectSecure
  (previously CyberCNS) integration.
---

# ConnectSecure integration setup

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

{% hint style="warning" %}
ConnectSecure integrations (formerly known as CyberCNS) will require attention to continue working in Rewst. Rewst has created a new V4 of our ConnectSecure integration to meet the sunsetting of our old V3 CyberCNS integration, which will expire by the end of 2024.

Rewst can’t automatically migrate V3 users to V4 due to configuration requirements. If you’re a Rewst customer using our ConnectSecure integration, reach out to your ConnectSecure rep or access your ConnectSecure instance to retrieve your new V4 credentials and hostname. All related endpoints in existing generic actions will also need to be manually updated to new URLs to reflect this change. See our full guide for how to complete this update for your integration here in our migration documentation: [connectsecure-integration-migration-v3-to-v4.md](connectsecure-integration-migration-v3-to-v4.md "mention")
{% endhint %}

## **What does the ConnectSecure integration do?**

**Our ConnectSecure integration enables the automation of vulnerability management within Rewst workflows. Use the ConnectSecure API to perform actions such as managing agents, alerts, and vulnerabilities.**

## **ConnectSecure API information**

* **Tenant Name**: `msp_domain`
* **Base URL**: `portaluseast2.mycybercns.com`
* **API Login Endpoint**: `/api/{{ tenant name }}/login`
* **API Documentation**: Accessible in the [CyberCNS Fast API Docs](https://portaluseast2.mycybercns.com/docs).

## Set up the ConnectSecure integration

### Set up steps in ConnectSecure

1. Log in to the [CyberCNS Portal](https://portal.mycybercns.com/login).
2. Switch to **Global View** on the top right.
3. Navigate to **Users** on the left sidebar.
4. Create a new user for API access with the Admin role.
5. Click **Actions**. Choose the API key.
6. Copy the value for the Client ID and Client Secret. Store these somewhere secure. You'll need both for further steps in Rewst. Once you navigate away from this page, you won't be able to view the information.

## Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `ConnectSecure` in the integrations page.\
   \
   ![](<../../../../../../.gitbook/assets/Screenshot 2025-05-06 at 2.31.05 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from ConnectSecure into the relevant fields:
   1. **Client ID**
   2. **Client Secret**
   3. **Host Name**
   4. **Tenant Name**
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

