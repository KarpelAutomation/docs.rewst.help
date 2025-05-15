# Huntress integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Huntress integration do?

Our Huntress integration enables the automation of threat detection and response. Use the Huntress API within Rewst to manage incident reports and billing, and access detailed data for organizations and agents.&#x20;

## Set up the Huntress integration

### Set up steps in Huntress

To Enable REST API Within your Huntress Account you may need to contact Huntress support.

1. Log in to your Huntress account
2. Click the menu in the top left corner of your dashboard.
3. Go to **API Credentials**.
4. Generate a new API token.
5. Copy both the private and public API keys and store them somewhere secure. You'll need this information for further steps in Rewst.

{% hint style="info" %}
You can find more about this process [here](https://support.huntress.io/hc/en-us/articles/4780697192851-Huntress-REST-API).
{% endhint %}

### Set up steps in Rewst

Follow the below steps to configure a new integration:

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Huntress` in the integrations page.
3. Click on the integration tile to launch the configuration setup page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-05 at 4.31.49 PM.png>)
4. Under Parameters, enter the information copied from Huntress into its relevant fields:
   1. **Private API Key**
   2. **Public API Key**
5. Click **Save Configuration**.&#x20;
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category     | Action                | Description                                  |
| ------------ | --------------------- | -------------------------------------------- |
| **Huntress** | List Organizations    | Get a list of organizations.                 |
| **Huntress** | List Agents           | Get a list of agents                         |
| **Huntress** | List Billing Reports  | Get a list of billing Reports                |
| **Huntress** | List Reports          | Get a list of reports                        |
| **Huntress** | List Incident Reports | Get a list of Incident Reports               |
| **Huntress** | Get Organization      | Returns data for a specific organization.    |
| **Huntress** | Get Agent             | Returns data for a specific agent.           |
| **Huntress** | Get Incident Report   | Returns data for a specific incident report. |
| **Huntress** | Get Report            | Returns data for a specific report.          |
| **Huntress** | Get Billing Report    | Returns data for a specific billing report.  |
| **Huntress** | Get Current Account   | Description coming soon...                   |
