---
description: >-
  The Network Security Manager pack allows you to interface with your SonicWall
  firewalls and more!
---

# SonicWall NSM integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the SonicWall NSM integration do?

Our SonicWall NSM integration enables the automation of network security management. Use the SonicWall NSM API within Rewst workflows to interface with SonicWall firewalls, configure settings, and monitor traffic.

## Set up the SonicWall NSM integration

{% hint style="info" %}
By default, validity of the SonicWall NSM's API keys are set for 1 year. We recommend setting a reminder to update your key in Rewst to coincide with your key's expiration date.

**Note:** MSW API keys will have access and permissions as deemed by account’s user group in MySonicWall.&#x20;
{% endhint %}

### Set up steps in SonicWall NSM

1. Log in to [MySonicWall](https://www.mysonicwall.com/).
2. Navigate to **My Workspace | User Groups > User list**.&#x20;
3. Click **Generate My API Key**.
4. Enter  a description and optionally a Source IP Address for the MSW API Key.&#x20;
5. Click **Confirm**.&#x20;
6. Copy the API key to your clipboard and store it somewhere secure. You'll need this information for further steps in Rewst. You won't be able to view or copy the API key once you close the GENERATE API KEY dialog.&#x20;

<figure><img src="../../../../../.gitbook/assets/image (16).png" alt=""><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `SonicWall NSM` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-06 at 3.18.49 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. **Under Parameters**:
   1. Enter the value copied from SonicWall NSM into the **Default API Key** field.
   2. Choose your domain from the **NSM Region** drop-down selector.
      1. Example of NSM regions:&#x20;
         1. [https://nsm-uswest.sonicwall.com](https://nsm-uswest.sonicwall.com/)&#x20;
         2. [https://nsm-eucentral.sonicwall.com](https://nsm-eucentral.sonicwall.com/)&#x20;
5. Click **Save Configuration**.&#x20;
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

### Optional: Enable MySonicWall API permission

By default, MSW API permission should be enabled for SonicWall MSSP Monthly partners. If MSW API permission not enabled for your MSW Account, please contact the SonicWall integration support team at thirdpartyintegrations@sonicwall.com to enable the MySonicWall API token permission.



To: thirdpartyintegrations@sonicwall.com&#x20;

\---------&#x20;

Hello!&#x20;

I would like to enable the Rewst Integration for SonicWall NSM. To do so, I would like to request enabling MySonicWall API permission for the following MSW User.&#x20;

MySonicWall Username:&#x20;

&#x20;

Please let me know if any additional information is required.&#x20;

&#x20;

Thank you,&#x20;

\[YOUR NAME]&#x20;

\------------------------&#x20;

### Actions and endpoints

| Action                     | Description                                                                |
| -------------------------- | -------------------------------------------------------------------------- |
| Get Pod Connections        | Gets connections that a pod is using                                       |
| List Device Groups         | Lists the device groups associated with your tenant                        |
| List Firewalls             | Lists all the firewalls associated with your NSM account                   |
| Get Firewall Info          | Gets a firewall associated with your NSM account                           |
| Get License for Device     | Gets a firewall's license                                                  |
| Get Firewall's Connections | Gets connections that a device is using                                    |
| SonicWall NSM API Request  | Generic action for making authenticated requests against the SonicWall API |
