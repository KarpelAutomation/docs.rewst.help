---
description: >-
  This document outlines the requirements and setup for the Datto RMM
  integration.
---

# Datto RMM integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

### Requirements (pre-Rewst)

There are a few requirements for the Datto RMM integration to work that need configuring by you as the MSP. To start, you will need to import the Datto RMM CPT file for on-prem scripts to run.

**The CPT file can be found here:**

{% file src="../../../../../.gitbook/assets/Rewst Script Run Powershell.cpt" %}
Download and import the Datto RMM CPT file to enable on-prem scripts.
{% endfile %}

{% hint style="info" %}
For instructions on importing a CPT file into Datto RMM refer to Datto's documentation: [Importing a Component](https://rmm.datto.com/help/en/Content/3NEWUI/Automation/Components/COMPONENTLIBRARY.htm#Importing_a_component)
{% endhint %}

{% hint style="info" %}
During the import, you will need to update your Component's Rewst Base URL. This will vary depending on which Rewst instance you are on. You must update the $rewst\_base\_url property in the script below to match your Rewst Instance. You can identify which instance you are on by the URL you use to access Rewst. Please use the following table as a guide to identify your Rewst Base URL
{% endhint %}

| Rewst URL        | Base URL            |
| ---------------- | ------------------- |
| app.rewst.io     | engine.rewst.io     |
| app.pdx.rewst.io | engine.pdx.rewst.io |
| app.eu.rewst.io  | engine.eu.rewst.io  |
| app.rewst.eu     | engine.rewst.eu     |
| app.rewst.asia   | engine.rewst.asia   |

{% hint style="danger" %}
**Instructions if the CPT file is blocked or doesn't download**

If the above file doesn't download, you can download the zip file below. Use the following instructions to convert the file to a CPT:

\
**Mac Instructions**

1. **Right-click** the zip file.
2. **Click** _Get Info._
3. **Go to** Name & Extension.
4. **Change** the name to `Rewst Script Run Powershell.cpt.`
5. **Click** Use .cpt when prompted.

**Windows Instructions**

1. **Right-click** the zip file.
2. **Click** Rename.
3. **Change** the name to `Rewst Script Run Powershell.cpt.`
4. **Click** Use .cpt if prompted.
{% endhint %}

{% file src="../../../../../.gitbook/assets/Rewst Script Run Powershell.zip" %}

### Setting up the API account

Please refer to Datto's documentation for enabling the API for your org if you have not enabled it already.

You will need an API-enabled user for your integration setup in the next steps. We recommend creating a new user named Rewst for this.

{% hint style="info" %}
Here is the [Datto RMM Documentation](https://rmm.datto.com/help/en/Content/2SETUP/APIv2.htm?Highlight=API%20account).
{% endhint %}

### Integration

Once you have created an API account, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Click** **on** the _"Integrations"_ menu on the left sidebar.
3. **Click** or search for "Datto RMM".
4. **Complete** the form with the details you created.
5. **Click** Save.

{% hint style="danger" %}
Please note that Datto Quick Jobs can take 10 - 30 minutes to execute. To speed this up, you can either use BYOD to speed up form load time. You can find more information here: [byod-for-dattormm.md](../../database/byod-for-dattormm.md "mention")
{% endhint %}
