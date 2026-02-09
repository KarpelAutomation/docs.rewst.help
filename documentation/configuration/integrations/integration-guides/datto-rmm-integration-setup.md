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
**Instructions for if the CPT file is blocked or doesn't download**

If the above file doesn't download, you can download the ZIP file below. Use the following instructions to convert the file to a CPT format:

\
Mac Instructions

1. Right-click the ZIP file.
2. Click **Get Info**_._
3. Go to **Name & Extension**.
4. Change the name to `Rewst Script Run Powershell.cpt.`
5. Click **Use .cpt** when prompted.

Windows Instructions

1. Right-click the ZIP file.
2. Click **Rename**.
3. Change the name to `Rewst Script Run Powershell.cpt.`
4. Click **Use .cpt** if prompted.
{% endhint %}

{% file src="../../../../.gitbook/assets/Rewst Script Run Powershell.zip" %}

## Set up the Datto RMM integration

### Set up steps in Datto RMM

Please refer to Datto's documentation for enabling the API for your organization if you haven't enabled it already. You will need an API-enabled user for your integration setup in the next steps. We recommend creating a new user named Rewst for this.

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

### Send all the data back to RewstyRewst ###



$postData = $PS_Results | ConvertTo-Json

Invoke-RestMethod -Method 'Post' -Uri $post_url -Body $postData -ContentType 'application/json; charset=utf-8'

```

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

| Category           | Action                       | Description                                                                                                                                     |
| ------------------ | ---------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Account Controller | List Account's Open Alerts   | Fetches the open alerts of the authenticated user's account                                                                                     |
| Account Controller | List Account's Closed Alerts | Fetches the closed alerts of the authenticated user's account                                                                                   |
| Account Controller | List Components              | Fetches the components records of the authenticated user's account                                                                              |
| Account Controller | List Devices                 | Fetches the devices of the authenticated user's account                                                                                         |
| Account Controller | List Sites                   | Fetches all sites                                                                                                                               |
| Account Controller | List Users                   | Fetches the users of the authenticated user's account                                                                                           |
| Account Controller | Create Account Variable      | Creates an account variable                                                                                                                     |
| Account Controller | Update Account Variable      | Updates the account variable identified by the given variable ID                                                                                |
| Account Controller | Delete Account Variable      | Deletes the account variable identified by the given variable ID                                                                                |
| Account Controller | List Account Variables       | Fetches the account variables                                                                                                                   |
| Account            | Get Account Information v2   | Gets information about the account associated with the API key                                                                                  |
| Alerts Controller  | Get Alert                    | Fetches data of the alert identified by the given alert UID                                                                                     |
| Alerts Controller  | Resolve Alert                | Resolves the alert identified by the given alert UID                                                                                            |
| Audit Controller   | Get Device Audit             | Fetches audit data for a device                                                                                                                 |
| Audit Controller   | List Device Audit Software   | Lists software audit data for a device                                                                                                          |
| Audit Controller   | Get ESXi Host Audit          | The device class must be of type esxihost                                                                                                       |
| Audit Controller   | Get Printer Audit            | The device class must be of type printer                                                                                                        |
| Device Controller  | Get Device                   | Fetches data of the device identified by the given device UID                                                                                   |
| Device Controller  | List Device's Open Alerts    | Lists open alerts for a specific device                                                                                                         |
| Device Controller  | List Device Resolved Alerts  | Lists resolved alerts for a specific device                                                                                                     |
| Device Controller  | Create Quick Job             | Creates a quick job on the device identified by the given device UID                                                                            |
| Device Controller  | Move Device                  | Moves a device from one site to another site                                                                                                    |
| Device Controller  | Set User Defined Fields      | Any user defined field supplied with an empty value will be set to null. All user defined fields not supplied will retain their current values. |
| Device Controller  | Set Warranty Data            | Sets warranty data for a device                                                                                                                 |
| Filter Controller  | List Custom Filters          | Fetches the custom device filters for the user using administrator role                                                                         |
| Filter Controller  | List Defaults Filters        | Fetches the default device filters                                                                                                              |
| Generic Request    | Datto RMM API Request        | Generic action for making authenticated requests against the Datto RMM API                                                                      |
| Job Controller     | Get Job                      | Fetches data of the job identified by the given job UID                                                                                         |
| Job Controller     | List Job Components          | Fetches components of the job identified by the given job UID                                                                                   |
| Sites Controller   | Create Site                  | Creates a new site in the authenticated user's account                                                                                          |
| Sites Controller   | Get Site                     | Fetches data of the site, including total number of devices, identified by the given site UID                                                   |
| Sites Controller   | Update Site                  | Updates the site identified by the given site UID                                                                                               |
| Sites Controller   | List Site's Open Alerts      | Lists open alerts for a specific site                                                                                                           |
| Sites Controller   | List Site Resolved Alerts    | Lists resolved alerts for a specific site                                                                                                       |
| Sites Controller   | List Site Devices            | Fetches the devices records of the site identified by the given site UID                                                                        |
| Sites Controller   | List Site's Device Filters   | Fetches the site device filters that the user can see with administrator role of the site identified by the given site UID                      |
| Sites Controller   | Get Site's Settings          | Fetches settings of the site identified by the given site UID                                                                                   |
| Sites Controller   | Update Site's Proxy          | Creates/updates the proxy settings for the site identified by the given site UID                                                                |
| Sites Controller   | Delete Site's Proxy          | Deletes site proxy settings for the site identified by the given site UID                                                                       |
| Sites Controller   | Create Site Variable         | Creates a site variable in the site identified by the given site UID                                                                            |
| Sites Controller   | Update Site Variable         | Updates the site variable identified by the given site UID and variable ID                                                                      |
| Sites Controller   | Delete Site Variable         | Deletes the site variable identified by the given site UID and variable ID                                                                      |
| Sites Controller   | List Site Variables          | Fetches the variables of the site identified by the given site UID                                                                              |
| System Controller  | Get System Status            | An API access token is not necessary                                                                                                            |
