---
description: >-
  This document outlines the requirements and setup for the Proofpoint
  integration.
---

# Proofpoint integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## Setting up the API account

Before configuring the Rewst integration you must generate an API user.

Please refer to the Proofpoint documentation

## Configuring the Integration

Once you have created an API account, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Click** on the _"Integrations"_ menu on the left sidebar.
3. **Click** on or search for _"Proofpoint"_.
4. **Complete** the form with the details you created
   1. **Domain**: Your domain primary domain in ProofPoint.
   2. **Username**: ProofPoint API Username. This must be a channel admin user in ProofPoint.
   3. **Proofpoint API Password**: The generated API password
   4. **Tennant Hostname**: the regional tenant hostname
5. **Save** the configuration.

Rewst will do a quick validation of your input.

Beneath that integration authentication section you will see the following options:

1. **Suggest Values**: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.
2. **Refresh Options:** This will re-read the potential mapping options - both organizations and companies in Proofpoint.
3. **Save Mappings**: This will apply mapping configuration changes.
