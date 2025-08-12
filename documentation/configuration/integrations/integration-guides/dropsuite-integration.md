---
hidden: true
---

# Dropsuite integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).

Our Dropsuite integration is currently in beta.  If you experience issues using or setting up this integration, [reach out to Rewst support](../../../../support-and-community/roc-support/).&#x20;
{% endhint %}

## What does the Dropsuite integration do?

Enables automation of cloud backups and disaster recovery. Use the Dropsuite API within Rewst workflows to automate tasks such as monitoring for backup failures and creating accounts.

### Set up steps in Dropsuite

1. Sign in to your Dropsuite account dashboard.
2. Navigate to  <img src="../../../../.gitbook/assets/Screenshot 2025-07-21 at 3.29.50 PM.png" alt="" data-size="line"> **Settings > API Settings**.
3. Copy the following information under the **API Information** menu and store it somewhere secure. It will be needed for further set up steps in Rewst.
   1. **Reseller Token**
   2. **Authentication Token.**

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-07-21 at 3.31.55 PM.png" alt="The image shows the &#x22;API Settings&#x22; page of the Dropsuite platform, a NinjaOne company. The interface is split into two main sections: a left-hand navigation menu and a main content area. The left menu includes options such as Plans, Support, Billing, Support Tickets, Audit Logs, Resources, Integrations, and Settings (expanded to show User Management, Group Management, Organization Settings, Notification Settings, and API Settings). The main content area displays two panels: a &#x22;Usage Guide&#x22; with links like API Information, Overview, Get Started, Authentication, Documentation, and Browsable API; and an &#x22;API Information&#x22; section listing the API URL ([https://dropsuite.us/api/](https://dropsuite.us/api/)) along with obscured fields for Reseller Token, Authentication Token, and Secret Token, each with eye and copy icons for viewing or copying the values."><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Dropsuite` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-07-21 at 3.20.03 PM.png>)\

3. Click on the integration tile to launch the configuration setup page.
4. Under Parameters, enter the information copied from Dropsuite into its relevant fields:
   1. **Authentication Token**
   2. **Reseller Token**
5. Click **Save Configuration**.&#x20;
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category            | Action                    | Description                                                                                   |
| ------------------- | ------------------------- | --------------------------------------------------------------------------------------------- |
| **Generic Request** | Dropsuite API Request     | Generic action for making authenticated requests against the Dropsuite API                    |
| **Shareddrives**    | List Shared Drive Backups | List backups for a specific shared drive                                                      |
| **Shareddrives**    | List Shared Drives        | List all shared drives for a specific domain                                                  |
| **Shareddrives**    | List Shared Drive Domains | List all shared drive domains                                                                 |
| **Sharepoints**     | Get SharePoint Site       | Get summary of SharePoint Backup. This will show the list of all Sites in one specific domain |
| **Sharepoints**     | List SharePoint Domains   | Get summary of SharePoint Backup. This will show the list of all registered domains           |
| **Teams**           | List Teams by Domain      | List all teams for a specific domain                                                          |
| **Teams**           | List Team Domains         | List all team domains                                                                         |
| **Users**           | List Users                | List all users                                                                                |
| **Users**           | Get User                  | Get a specific user by ID                                                                     |
| **Users**           | Get SSO Link              | Generate a single sign-on link for a user                                                     |
| **Users**           | Update User Subscription  | Update a user's subscription                                                                  |
