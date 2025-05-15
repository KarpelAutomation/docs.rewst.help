# ConnectSecure integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

{% hint style="warning" %}
ConnectSecure integrations (formerly known as CyberCNS) will require attention to continue working in Rewst. Rewst has created a new V4 of our ConnectSecure integration to meet the sunsetting of our old V3 CyberCNS integration, which will expire by the end of 2024.

Rewst can’t automatically migrate V3 users to V4 due to configuration requirements. If you’re a Rewst customer using our ConnectSecure integration, reach out to your ConnectSecure rep or access your ConnectSecure instance to retrieve your new V4 credentials and hostname. All related endpoints in existing generic actions will also need to be manually updated to new URLs to reflect this change. See our full guide for how to complete this update for your integration here in our migration documentation: [connectsecure-integration-migration-v3-to-v4.md](connectsecure-integration-migration-v3-to-v4.md "mention")
{% endhint %}

## **What does the ConnectSecure integration do?**

The ConnectSecure API, offers a comprehensive approach for monitoring and managing cybersecurity aspects like agents, alerts, vulnerabilities, and more. This integration is tailored for MSPs and MSSPs to efficiently support SMB clients, ensuring robust vulnerability scanning and compliance management.

## Why use the ConnectSecure integration?

1. **Comprehensive Cybersecurity**: ConnectSecure provides a holistic approach to cybersecurity, covering vulnerability management, compliance, and active threat management.
2. **Efficiency and Automation**: MSPs can efficiently manage assets, perform network discovery, and automate various security tasks, saving time and resources.
3. **Proactive Protection**: The system offers proactive monitoring and response capabilities to safeguard against cyber threats in real-time.
4. **Simplified Management**: ConnectSecure streamlines the management of assets, events, user permissions, and more, making it easier for MSPs to ensure security and compliance for their clients.

## Set up the ConnectSecure integration

### Set up steps in ConnectSecure

1. Log in to your ConnectSecure portal.
2. Navigate to **Profile > API Documentation**.
3. Copy the hostname URL. The hostname should be in the format of `pod1.connectsecure.com`.
4. Obtain the tenant name. This is the name used to log into the ConnectSecure portal.
5. Navigate to **Settings > Users > Select User > ⋮  > API Key**.&#x20;
6. Copy the Client ID and Client Secret.
7. Store all of your copied informaton somewhere secure. You'll need it for further steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `ConnectSecure` in the integrations page.\
   \
   ![](<../../../../../../.gitbook/assets/Screenshot 2025-05-13 at 4.16.43 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from ConnectSecure into its relevant field:
   1. **Client ID**
   2. **Client Secret**
   3. **Host Name**
   4. **Tenant Name**
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

For further information, please refer to [ConnectSecure's own API Documentation](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2128314664/V4+API+Information).

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category               | Action                                              | Description                                                                                          |
| ---------------------- | --------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| **Agent**              | List Agents                                         | Retrieve a list of agents from the ConnectSecure API server.                                         |
| **Agent**              | Get Agent by ID                                     | Retrieve an agent from the ConnectSecure API server by its ID.                                       |
| **Agent**              | Migrate Agent                                       | Migrate an agent in the ConnectSecure API server.                                                    |
| **Asset**              | List Assets                                         | Retrieve a list of assets from the ConnectSecure API server.                                         |
| **Asset**              | Get Assets by ID                                    | Retrieve an asset from the ConnectSecure API server by its ID.                                       |
| **Asset**              | Delete Assets by ID                                 | Delete an asset from the ConnectSecure API server by its ID.                                         |
| **Asset**              | List Asset Users                                    | Retrieve a list of asset users from the ConnectSecure API server.                                    |
| **Company**            | List Companies                                      | Retrieve a list of companies from the ConnectSecure API server.                                      |
| **Company**            | Get Company by ID                                   | Retrieve a company from the ConnectSecure API server by its ID.                                      |
| **Company**            | Create Company                                      | Create a company in the ConnectSecure API server.                                                    |
| **Company**            | Update Company                                      | Update a company in the ConnectSecure API server.                                                    |
| **Company**            | Delete Company                                      | delete a company in the ConnectSecure API server.                                                    |
| **Credentials**        | List Agent Credentials                              | Retrieve a list of agent credentials from the ConnectSecure API server.                              |
| **Credentials**        | Get Agent Credentials by ID                         | Retrieve an event from the ConnectSecure API server by its ID.                                       |
| **Credentials**        | Create Agent Credentials Mapping                    | Create an agent in the ConnectSecure API server.                                                     |
| **Credentials**        | Update Agent Credentials Mapping                    | Update an agent in the ConnectSecure API server.                                                     |
| **Discovery Settings** | List Agent Discovery Settings                       | Retrieve a list of agent discovery settings from the ConnectSecure API server.                       |
| **Discovery Settings** | Get Agent Discovery Setting by ID                   | Retrieve an agent discovery setting from the ConnectSecure API server by its ID.                     |
| **Discovery Settings** | Create Agent Discovery Setting                      | Create an agent discovery setting in the ConnectSecure API server.                                   |
| **Discovery Settings** | Update Agent Discovery Setting                      | Update an agent discovery setting in the ConnectSecure API server.                                   |
| **Discovery Settings** | Delete Agent Discovery Setting                      | Delete an agent discovery setting in the ConnectSecure API server.                                   |
| **Event Set**          | List Events                                         | Retrieve a list of events from the ConnectSecure API server.                                         |
| **Event Set**          | Get Events by ID                                    | Retrieve an event from the ConnectSecure API server by its ID.                                       |
| **Event Set**          | Delete Events by ID                                 | Delete an event from the ConnectSecure API server by its ID.                                         |
| **Generic Request**    | ConnectSecure API Request                           | Generic action for making authenticated requests against the ConnectSecure API                       |
| **Vulnerabilties**     | List Remediated Assets                              | Retrieve a list of remediated assets from the ConnectSecure API server.                              |
| **Vulnerabilties**     | Get Remediated Asset by ID                          | Retrieve a remediated asset from the ConnectSecure API server by its ID.                             |
| **Vulnerabilties**     | List Suppress Vulnerabilities                       | Retrieve a list of suppress vulnerabilities from the ConnectSecure API server.                       |
| **Vulnerabilties**     | Get Suppress Vulnerability by ID                    | Retrieve a suppress vulnerability from the ConnectSecure API server by its ID.                       |
| **Vulnerabilties**     | List Application Vulnerabilities Records            | Retrieve a list of application vulnerabilities records from the ConnectSecure API server.            |
| **Vulnerabilties**     | List Application Vulnerabilities Records By Product | Retrieve a list of application vulnerabilities records from the ConnectSecure API server by product. |
