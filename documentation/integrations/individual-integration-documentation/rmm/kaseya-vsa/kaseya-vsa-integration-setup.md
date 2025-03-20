# Kaseya VSA integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## OAuth account setup

### In the Rewst Platform:

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the Kaseya VSA integration.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-02-06 at 10.13.34 AM.png>)
3. Copy the Call back URL to the clipboard.

### In Kaseya:

1. Log in to Kaseya.
2. Navigate to **System > Server Management > OAuth Clients**.
3. Select **Register Client** and supply the following:
   * **Client Name**: RewstAPI
   * **Redirect URL** (From Rewst Kaseya integration page)
   * **Email**: `email@address.com`
4. Click **Save**.
5. Copy the information from the dialogue to your clipboard.

### In the Rewst Platform:

1. Return to the Kaseya integration page and enter the values:
   * **Hostname**: i.e. rmm.company.com
   * **Client ID**: From Kaseya OAuth page
   * **Client Secret**: From Kaseya OAuth page
2. Click **Save**.

If your setup was successful, you should see a confirmation message.

{% hint style="success" %}
If your VSA is behind a firewall, WAF has IIS Re-write rules, or has the Kaseya edge firewall configuration in place you will need to add `3.139.170.31` to the allowed list (tcp/443).
{% endhint %}

## Rewst agent procedure import

To perform actions on agent end points in Rewst, you'll need to import the file Procedure RewstPoshCommand.xml into the VSA.

{% hint style="warning" %}
It is important that you do not change or modify this file in any way. Please do not rename the procedure once imported.
{% endhint %}



1. Download the file Procedure Rewst (Powershell).xml.

{% file src="../../../../../.gitbook/assets/Procedure Rewst (Powershell).xml" %}

2. Log in to your VSA.
3. Navigate to **System > Server Management > Import Center**.
4. Select **New Import**.
5. Name it _Rewst (Powershell)_, and point it to the _Procedure Rewst (Powershell).xml_ file.
6. Click **Process**.
7. Click **Save**.
