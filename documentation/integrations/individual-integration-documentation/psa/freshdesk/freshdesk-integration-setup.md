---
description: >-
  This document outlines the requirements and setup for the Freshdesk
  integration.
---

# Freshdesk integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

### Setting up the API account

Before configuring the Rewst integration you must get the API from your FreshDesk account.

Please refer to [Freskdesk's Documentation](https://developer.freshdesk.com/api/#authentication) for instructions on retrieving your API key information.

### Configuring the Integration

Once you have your API information, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Click on** the _"Integrations"_ menu on the left sidebar.
3. **Click on** or search for _"Freshdesk"_.
4. **Complete** the form with the details you created:
   1. **Domain:** Freshdesk domain, i.e. the domain in _"domain"_.freshdesk.com
   2. **API Key**: Freshdesk API Key, found in "My Profile Settings"
5. **Save** the configuration once these have been populated. Rewst will do a quick validation of your input.

Beneath that integration authentication section you will see the following options:

1. **Suggest Values**: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.
2. **Refresh Options**: This will re-read the potential mapping options - for both organizations and companies in Freshdesk.
3. **Save Mappings**: This will apply mapping configuration changes.
