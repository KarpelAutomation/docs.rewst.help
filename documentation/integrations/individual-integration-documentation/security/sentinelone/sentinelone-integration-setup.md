---
description: >-
  This document outlines the requirements and setup for the SentinelOne
  integration.
---

# SentinelOne integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## Setting up the API account

Before configuring the Rewst integration you must generate an API user.

1. **Go to** Settings In the SentinelOne management console.
2. **Click** Users.
3. **Click** on 'Service Users' in the left panel.
4. **Select** 'Actions → Create New Service User'
5. **Set** a name and an expiration date for the account.
6. **Click** 'Next'.
7. **Select** "Account" as the access level and then select the parent site.
8. **Set** the role to "Admin".
9. **Click** Create User.
10. **Save** the API key information.

Keep in mind that SentinelOne API tokens do have an expiration day (typically 6 months out).

## Configuring the Integration

Once you have created an API account, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Click** on the _"Integrations"_ menu on the left sidebar.
3. **Click** on or search for _"SentinelOne"_.
4. **Complete** the form with the details you created:
   1. **Domain**: This is the full URL to the SentinelOne tenant
   2. **API Key**: The API key that was generated for integration.
5. **Save** the configuration.

Rewst will do a quick validation of your input.

Beneath that integration authentication section you will see the following options:

1. **Suggest Values**: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.
2. **Refresh Options**: This will re-read the potential mapping options - for both organizations and companies in SentinelOne.
3. **Save Mappings**: This will apply mapping configuration changes.
