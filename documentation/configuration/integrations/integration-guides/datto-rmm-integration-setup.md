---
description: >-
  This document outlines the requirements and setup for the Datto RMM
  integration.
---

# Datto RMM integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Datto RMM integration do?

Our Datto RMM integration enables the automation of RMM tasks. Use the Datto RMM API within Rewst workflows to perform actions such as running scripts and commands, and get query and change managed devices.

## Prerequisites for the Datto RMM integration

You'll need to import the Datto RMM CPT file for on-prem scripts to run.

The CPT file can be found here:

{% file src="../../../../.gitbook/assets/Rewst Script Run Powershell.cpt" %}
Download and import the Datto RMM CPT file to enable on-prem scripts.
{% endfile %}

{% hint style="info" %}
For instructions on importing a CPT file into Datto RMM refer to Datto's documentation: [Importing a Component](https://rmm.datto.com/help/en/Content/3NEWUI/Automation/Components/COMPONENTLIBRARY.htm#Importing_a_component)
{% endhint %}

{% hint style="info" %}
During the import, you will need to update your Component's Rewst Base URL. This will vary depending on which Rewst instance you are on. You must update the $rewst\_base\_url property in the script below to match your Rewst Instance. You can identify which instance you are on by the URL you use to access Rewst. Please use the following table as a guide to identify your Rewst Base URL.\
Example of correct base URL: `https://engine.rewst.io/webhooks/custom/action`
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

{% file src="../../../../.gitbook/assets/Rewst Script Run Powershell.zip" %}

## Set up the Datto RMM integration

### Set up steps in Datto RMM

Please refer to Datto's documentation for enabling the API for your org if you have not enabled it already. You will need an API-enabled user for your integration setup in the next steps. We recommend creating a new user named Rewst for this.

{% hint style="info" %}
Here is the [Datto RMM Documentation](https://rmm.datto.com/help/en/Content/2SETUP/APIv2.htm?Highlight=API%20account). For the most up-to-date steps for creating an API user, follow their directions.
{% endhint %}

Copy the API Key, API Secret, and Datto RMM Server for your new API user. Store these somewhere secure, as you'll need the information for futher steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Datto RMM` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-05 at 3.35.22 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information you copied from Datto RMM into its relevant fields
   1. **API Key**
   2. **API Secret**
   3. **Datto RMM Server**: The API URL provided to your API user, provided on the same page as the API key and secret
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="danger" %}
Please note that Datto Quick Jobs can take 10 - 30 minutes to execute. To speed this up, you can either use BYOD to speed up form load time. You can find more information here: [byod-for-dattormm.md](byod-for-dattormm.md "mention")
{% endhint %}

## Use custom PowerShell scripts with your RMM integration

If you're writing custom PowerShell scripts to use and be run with your RMM integration, you'll need to manually add webhook calls. Any custom script will time out if used without first adding the webhook calls. The use of standard built-in Rewst scripts with your RMM does not require you to add the calls.

* The webhook calls everyone doing this custom scripting should use will always be as follows.

```
`

### Send all the data back to RewstyRewst ###



$postData = $PS_Results | ConvertTo-Json

Invoke-RestMethod -Method 'Post' -Uri $post_url -Body $postData -ContentType 'application/json; charset=utf-8'
`
```

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}
