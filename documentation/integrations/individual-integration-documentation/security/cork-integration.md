# Cork integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Cork integration do?

Our Cork integration connects Rewst’s automation engine with Cork’s cyber risk management platform, enabling MSPs to streamline compliance event tracking, billing reconciliation, security remediation, and endpoint hygiene monitoring. By automatically logging, analyzing, and responding to compliance incidents and security gaps, this integration strengthens security posture, enhances operational efficiency, and supports proactive risk management.

## Set up the Cork integration

### Set up steps in Cork

{% hint style="warning" %}
Cork's requirements for their API keys set them to expire every 180 days. We recommend setting up a reminder to create a new key and update it on your Cork integration's configuration page.
{% endhint %}

1. Log in to your Cork Portal.
2. Navigate to **Admin > API Keys**.
3. Click **Add API Key**.
4. Enter Rewst or a similar name that will describe what the API key is for into the **Display Name** field.&#x20;
5.  Leave the value in the **Expiry Days** drop-down selector at 180 days.\
    \


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-10 at 9.13.59 AM.png" alt=""><figcaption></figcaption></figure>
6. Click **Generate API Key**.
7. Copy the key. Note that you won't be able to return to this key to copy or view it again.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the `Cork` integration.
3. Click on the integration tile to launch the configuration setup page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-04-10 at 9.18.15 AM.png>)
4. Scroll down the page to **Parameters**.
5. Enter the API key you copied from Cork into the **API Key** field.
6. Click **Save Configuration**.

## Test the integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}



## Cork integration actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

Cork's own documentation can be found [here](https://api.corkinc.com/api/docs).&#x20;

| Category            | Action                                     | Description                                                                                |
| ------------------- | ------------------------------------------ | ------------------------------------------------------------------------------------------ |
| **Clients**         | Get Client Devices                         | Get all devices for a client in Cork                                                       |
| **Clients**         | Get Client Domains                         | Get all domains for a client in Cork                                                       |
| **Clients**         | Get Client Inboxes                         | Get all inboxes for a client in Cork                                                       |
| **Clients**         | Get Clients                                | Get all clients in Cork                                                                    |
| **Compliance**      | Get Compliance Event Notification Settings | Get information about compliance event notification settings configured for assets in Cork |
| **Compliance**      | Get Compliance Event Types                 | Get information about compliance event types in Cork                                       |
| **Compliance**      | Get Compliance Events                      | Get information about compliance events in Cork                                            |
| **Distributor**     | Create Partner Account                     | Provision a new partner account in Cork                                                    |
| **Distributor**     | Get Partners                               | Get information on associated partner accounts in Cork                                     |
| **Generic Request** | Cork API Request                           | Generic action for making authenticated requests against the Cork API                      |
| **Integrations**    | Get Available Integrations                 | Get information on available integrations to connect in Cork                               |
| **Integrations**    | Get Connected Integrations                 | Get information on connected integrations in Cork                                          |
| **Warranty**        | Get Warranties                             | Get information on warranties in Cork                                                      |
| **Who**             | Get Who Am I                               | Get information on the authenticated user in Cork                                          |
