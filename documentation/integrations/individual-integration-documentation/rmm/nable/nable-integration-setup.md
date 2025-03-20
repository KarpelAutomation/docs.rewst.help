# N-able N-central Integration Setup

This guide provides an overview of the N-able N-central RMM Integration. &#x20;

There are a couple of special caveats to note, listed below.

{% hint style="warning" %}
**N-central Required Version**

The new REST API endpoints are only available on N-central with a version of 2023.9 or above.  Contact your N-able Representative to be upgraded where applicable.
{% endhint %}

{% hint style="danger" %}
**SOAP vs REST Integration**

**We currently have the "N-able (SOAP)" integration and "N-central (REST)" integration listed in our integration list.  The SOAP integration is now deprecated and where possible, you should utilize only the REST Integration.**
{% endhint %}

### Integration Setup

1. **Navigate** to the User Management page in N-able N-central (Administration > User Management > Users)
2. **Create** a new user specifically for API Access
3. On the **Access Groups and Roles tabs**, ensure that you give relevant access to the API user as required by your automations.
4. In the User Details tab, ensure the box **"MFA Not Required" is checked**
5. In the API Access tab, ensure the box **"API Only User" is checked**, which stops the user from logging into the N-able N-central UI
6. **Click** the "Generate JSON Web Token" button and copy the API Key field in the integration

### Running Powershell via RMM - Script Setup

In order to run Powershell on devices via the RMM, you must create the Script in your N-able repository and enable it's access for use over the API, as per N-able Security Policies.

1. &#x20;**Navigate** to Configuration > Scheduled Tasks > Script/Software Repository
2. **Click** Add > Scripting on the top menu button
   1.  Name the Script **Rewst (Powershell)** so you know what it's used for

       Enter a description on the script task
   2. Download the PS1 file below and select it for the File Name field
   3. It should automatically add the filename to the Command Line Params box below
3. On the list of scripts, search for the one you just created.  Scroll to the right columns and change to toggle for "API Access" to **On.**&#x20;
4. Make a note of the Repository ID in the next column over
5. **Navigate to your** Organization Variables in Rewst and create a new one called <mark style="color:orange;">nable\_rewst\_powershell\_script\_id</mark> with a value of that ID

{% hint style="info" %}
The ORG Var is only currently required as there is no way to search for a script with the existing API Endpoints
{% endhint %}

{% hint style="info" %}
Once imported, you must update your script's $rewst_base_url variable. Your Rewst Base URL will vary depending on which Rewst instance you are on. You must update the $rewst_base_url property in the script below to match your Rewst Instance. You can identify which instance you are on by the URL you use to access Rewst. Please use the following table as a guide to identify your Rewst Base URL
|Rewst URL|Base URL|
|---|---|
|app.rewst.io|engine.rewst.io|
|app.pdx.rewst.io|engine.pdx.rewst.io|
|app.eu.rewst.io|engine.eu.rewst.io|
|app.rewst.eu|engine.rewst.eu|
|app.rewst.asia|engine.rewst.asia|

{% endhint %}

{% file src="../../../../.gitbook/assets/run-nable-powershell.ps1" %}

### Current Limitations

<mark style="color:red;">**Required:**</mark>**&#x20;Preferred DC Organization Variable**

There is currently no way to identify a Domain Controller via the N-able REST API, which means you must manually set the hostname of the preferred DC.  You can do this using the Organization Variable form that was discussed during your onboarding.  The end result will be an Org Var called <mark style="color:orange;">preferred\_domain\_controller</mark> and a value of the hostname of that client's DC.



