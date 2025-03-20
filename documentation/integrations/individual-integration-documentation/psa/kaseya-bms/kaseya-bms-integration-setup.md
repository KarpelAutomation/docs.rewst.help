---
description: >-
  This document outlines the requirements and setup for the Kaseya BMS
  integration.
---

# Kaseya BMS integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

### Setting up the Kaseya account

Before configuring the Rewst integration, you must create a new user account in Kaseya BMS.

{% hint style="warning" %}
Rewst requires an OTP token to access the Kaseya BMS API. You will need to create a regular user account as Kaseya doesn't allow OTP Tokens to be generated on API Users
{% endhint %}

1. **Go to** _Admin_ -> _HR_ ->_Employees_ -> _New_
2. **Create** the user, ensuring the _user type_ is _employee_
3. **Log into** BMS as your newly created user
4. **Go to** _My Profile_
5. **Click** Configure MFA
6. **Select** _Show Secret Key for Manual Configuration_
7. **Note** this key, as we will need to enter it into Rewst
8. **Configure** MFA with your preferred authentication app
9. **Save**

### Configuring the Integration

Once you have created a user account, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Click** on the _"Configuration"_ -> _"Integrations"_ menu on the left sidebar.
3. **Click** on or search for _"Kaseya BMS"_.
4. **Complete** the form with the details of the user you created:
   1. **Tenant**: the name of the company tenant
   2. **Hostname**: Kaseya BMS Server hostname
   3. **Password**: the integrator password
   4. **TOTP Secret**: The key you noted in step 7 above when setting up the user's MFA
   5. **Username**: This is the unique dedicated service account used to access BMS
5. **Save** the configuration once these have been populated. Rewst will do a quick validation of your input.

Beneath that integration authentication section you will see the following options:

1. **Suggest Values**: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.
2. **Refresh Options:** This will re-read the potential mapping options - for both organizations and companies in Kaseya BMS.
3. **Save Mappings**: This will apply mapping configuration changes.
