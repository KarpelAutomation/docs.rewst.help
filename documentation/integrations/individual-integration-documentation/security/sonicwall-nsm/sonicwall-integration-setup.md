---
description: >-
  The Network Security Manager pack allows you to interface with your SonicWall
  firewalls and more!
---

# SonicWall integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

To setup SonicWall NSM (Network Security Manager- SaaS) Integration with Rewst, you'll need to perform the following steps:&#x20;

### Generate a MySonicWall API Key&#x20;

1. **Log in** to [MySonicWall](https://www.mysonicwall.com/)&#x20;
2. **Navigate** to My Workspace | User Groups > User list tab.&#x20;
3. **Click** Generate My API Key on top of the table.
4. **Enter** Description, Source IP Address (optional) for the MSW API Key.
   * By the default, Validity of the key is set for 1 year. However, you can set the validity for 1 and 6 months if required.&#x20;
5. **Click** Confirm.&#x20;
6. **Click** the Copy to clipboard icon to copy the API Key.&#x20;

<figure><img src="../../../../../.gitbook/assets/image (16).png" alt=""><figcaption></figcaption></figure>

**Note:** MSW API key will have access and permissions as deemed by account’s user group in MySonicWall.&#x20;

**CAUTION:** You cannot view or copy the API key once you close the GENERATE API KEY pop-up window. Make sure that the API key is copied and saved.&#x20;

### Configuring the NSM Integration:

1. **Log in** to the [Rewst Platform](https://app.rewst.io/)&#x20;
2. **Click** on the "Integrations" under “Configuration” menu on the left sidebar&#x20;
3. **Click** on or search for " SonicWall NSM".&#x20;
4. **Navigate** to “Parameters” section.&#x20;
5. **Enter** the “MSW API key”
6. **Select** your “NSM Region” (the domain for the SonicWall NSM portal you log into).
   * Example of NSM regions:&#x20;
     * [https://nsm-uswest.sonicwall.com](https://nsm-uswest.sonicwall.com/)&#x20;
     * [https://nsm-eucentral.sonicwall.com](https://nsm-eucentral.sonicwall.com/)&#x20;
7. **Save** the configuration.&#x20;

Beneath that integration Parameters section, you will see the following options under Organization Mapping:&#x20;

1. Suggest Values: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.&#x20;
2. Refresh Options: This will re-read the potential mapping options – SonicWall Tenants. &#x20;
3. Save Mappings: This will apply mapping configuration changes.

#### (Optional) Enabling MySonicWall API Permission:&#x20;

By default, MSW API permission should be enabled for SonicWall MSSP Monthly partners. In case MSW API permission not enabled for your MSW Account, please contact the SonicWall Integration Support Team to enable MySonicWall API token permission: [Pre-written Request Template](mailto:thirdpartyintegrations@sonicwall.com?subject=API%20Permission%20for%20Rewst%20NSM%20integration%20-%20%5D\&body=Hello!%0D%0A%0D%0AI%20would%20like%20to%20enable%20the%20Rewst%20Integration%20for%20SonicWall%20NSM.%20To%20do%20so%2C%20I%20would%20like%20to%20request%20enabling%20MySonicWall%20API%20permission%20for%20the%20following%20MSW%20User%20Account.%0D%0A%0D%0AMySonicWall%20Username%3A%0D%0APlease%20let%20me%20know%20if%20any%20additional%20information%20is%20required.%0D%0A%0D%0AThank%20you%2C%0D%0A%0D%0A%5BYOUR%20NAME%5D)&#x20;

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

### Actions

| Action                     | Description                                                                |
| -------------------------- | -------------------------------------------------------------------------- |
| Get Pod Connections        | Gets connections that a pod is using                                       |
| List Device Groups         | Lists the device groups associated with your tenant                        |
| List Firewalls             | Lists all the firewalls associated with your NSM account                   |
| Get Firewall Info          | Gets a firewall associated with your NSM account                           |
| Get License for Device     | Gets a firewall's license                                                  |
| Get Firewall's Connections | Gets connections that a device is using                                    |
| SonicWall NSM API Request  | Generic action for making authenticated requests against the SonicWall API |
