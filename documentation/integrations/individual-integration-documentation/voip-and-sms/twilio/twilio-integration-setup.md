# Twilio integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## Overview

When you first sign up with Twilio, you have one account, your main account; however, you can also create subaccounts. Your main account will have an Account SID and Auth Token that Rewst will use to authenticate. When using Twilio actions within workflows, you can specify the Account SID to be used for a particular action.

### Setting up the API account

1. **Log in** to the [Twilio Console](https://console.twilio.com/).
2. **Copy** your main **Account SID** and **Auth Token.**

### Configuring the Integration

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Click** **on** the _"Integrations"_ menu on the left sidebar.
3. **Click** or search for "Twilio".
4. **Enter** your main **Account SID** and **Auth Token** from step 2 in "Setting up the API account".

### Setting up the Messaging Service

1. **Log in** to the [Twilio Console](https://console.twilio.com/).
2. **Go to** _Messaging_ -> _Services_
3. **Click** _Create Messaging Service_
4. **Type** Rewst in the messaging service-friendly name
5. **Click** _Create Messaging Service_&#x20;
6. **Click** _add sender_
7. **Select** _Phone Number_
8. **Click** _Continue_
9. **Select** the phone number you would like to SMS from Rewst
10. **Click** _Add phone numbers_
11. **Click** _Step 3 Set up integration_
12. **Click** _Complete Messaging Service Set up_
13. **Click** _View My New Messaging Service_
14. **Copy** the Messaging Service SID

### Configure the Rewst Organizational Variables

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Go to** _Configuration_ -> _Organization Variables_

#### Configure Messaging Service SID

1. **Click** the add button (+ icon)&#x20;
2. **Set** the following for your organization variable
   * **Name**: `messaging_service_sid`&#x20;
   * **Value**: Your Messaging Service SID
   * **Category**: general
   * **Organization**: Select your organization
3. **Click** save (checkmark icon)

#### **Configure Send SMS to User**

1. **Click** the add button (+ icon)&#x20;
2. **Set** the following for your organization variable
   * **Name**: `send_sms_to_user`&#x20;
   * **Value**: `1`
   * **Category**: general
   * **Organization**: Select your organization
3. **Click** save (checkmark icon)

<figure><img src="../../../../../.gitbook/assets/Screenshot 2024-03-12 at 1.17.09 PM.png" alt=""><figcaption></figcaption></figure>
