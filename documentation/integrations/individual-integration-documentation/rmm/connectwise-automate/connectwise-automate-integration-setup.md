---
description: >-
  This document outlines the requirements and setup for the ConnectWise Automate
  integration.
---

# ConnectWise automate integration Setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## Requirements (pre-Rewst)

There are a few requirements for the ConnectWise Automate integration to work that need configuring by you as the MSP.

## API Account

In order to create a new ConnectWise Automate integration, you will need to create a system integrator account.

### Creating The User Class

1. **Create** a User Class in Automate for our Rewst User.&#x20;
   * [Use this as a guide](least-privilege-access-guide-for-connectwise-automate-integration.md)

### Creating the User In CW Automate

1. **Click** Settings in the bottom left corner.
2. **Go to** User Management.
3. **Click** Add in the top left.
4.  **Set** the First Name, Last Name, Email, User Name, and Password.&#x20;

    * We recommend setting it up as follows:

    <figure><img src="../../../../../.gitbook/assets/2023-09-13_14-04-24.png" alt=""><figcaption></figcaption></figure>
5. **Click** on the User Classes Tab.
6. **Click** Edit User Classes.&#x20;
7. **Select** the Rewst User Class you configured earlier.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_14-06-21.png" alt=""><figcaption></figcaption></figure>

8. **Check** Integrator at the bottom.&#x20;
9. **Click** Save.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_14-07-16.png" alt=""><figcaption></figcaption></figure>

{% hint style="danger" %}
If you have completed these steps and customers are not showing up when refreshing options, this is a permission issue. validate that you performed the steps above, and check to ensure the user class has access to customers.&#x20;
{% endhint %}

## Integration

Once you have created an integrator account, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. **Log in** to the [Rewst platform](https://app.rewst.io/)
2. **Go to** Configuration → Integrations → CW Automate.
3. **Scroll down** to the _Parameters_ section.
4. **Enter** your CW Automate hostname.
5. **Enter** the password you created for your user.
6. **Enter** the username for your user.
7. **Click** Save Configuration.

{% hint style="info" %}
Note that if you have IP address restrictions in place you will need to add the Rewst IP to your allowed list. The IP for Rewst is 3.139.170.31.
{% endhint %}
