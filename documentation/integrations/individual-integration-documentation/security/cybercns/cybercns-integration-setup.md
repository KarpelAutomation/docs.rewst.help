---
description: >-
  This document outlines the requirements and setup for the ConnectSecure
  (previously CyberCNS) integration.
---

# ConnectSecure integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

{% hint style="warning" %}
ConnectSecure integrations (formerly known as CyberCNS) will require attention to continue working in Rewst. Rewst has created a new V4 of our ConnectSecure integration to meet the sunsetting of our old V3 CyberCNS integration, which will expire by the end of 2024.

Rewst can’t automatically migrate V3 users to V4 due to configuration requirements. If you’re a Rewst customer using our ConnectSecure integration, reach out to your ConnectSecure rep or access your ConnectSecure instance to retrieve your new V4 credentials and hostname. All related endpoints in existing generic actions will also need to be manually updated to new URLs to reflect this change. See our full guide for how to complete this update for your integration here in our migration documentation: [connectsecure-integration-migration-v3-to-v4.md](connectsecure-integration-migration-v3-to-v4.md "mention")
{% endhint %}

## **Getting Started with ConnectSecure**

* **Tenant Name**: `msp_domain`
* **Base URL**: `portaluseast2.mycybercns.com`
* **API Login Endpoint**: `/api/{{ tenant name }}/login`
* **API Documentation**: Accessible in the [CyberCNS Fast API Docs](https://portaluseast2.mycybercns.com/docs).

## Setting up the API account

1. **Log in** to the [CyberCNS Portal](https://portal.mycybercns.com/login).
2. **Switch** to `Global View` on the top right.
3. **Navigate** to `Users` on the left sidebar.
4. **Create** a new user for API access with the `Admin` role.
5. **Click** the `Actions` button and choose the API key.
6. **Copy** `Client ID` and `Client Secret`**.**

## Configuring the Integration

1. **Log in** to your [Rewst account](https://app.rewst.io/).
2. **Click** on the `Integrations` menu on the left sidebar.
3. **Click** on or search for `ConnectSecure`.
4. **Enter** the `Base URL` or hostname that is used to access the portal.
5. **Enter** your collected `Client ID`**,** `Tenant Name`**,** and `Client Secret`**.**

## **Additional Configuration Options**

* **Suggest Values**: Generates mappings between Rewst organizations and corresponding entities in ConnectSecure.
* **Suggest Values**: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.
* **Refresh Options:** This will re-read the potential mapping options - for both organizations and companies in ConnectSecure.
