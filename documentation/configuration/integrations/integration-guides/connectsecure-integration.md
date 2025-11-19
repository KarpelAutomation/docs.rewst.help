# ConnectSecure integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

{% hint style="warning" %}
ConnectSecure integrations (formerly known as CyberCNS) will require attention to continue working in Rewst. Rewst has created a new V4 of our ConnectSecure integration to meet the sunsetting of our old V3 CyberCNS integration, which will expire by the end of 2024.

Rewst can’t automatically migrate V3 users to V4 due to configuration requirements. If you’re a Rewst customer using our ConnectSecure integration, reach out to your ConnectSecure rep or access your ConnectSecure instance to retrieve your new V4 credentials and hostname. All related endpoints in existing generic actions will also need to be manually updated to new URLs to reflect this change. See our full guide for how to complete this update for your integration  in our migration documentation section at the bottom of this document.
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
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-13 at 4.16.43 PM.png>)
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

## ConnectSecure integration migration: V3 to V4

{% hint style="info" %}
ConnectSecure’s own documentation site can be found [here](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2054029532/Documentation+Home). Relevant, more detailed documentation from their team on how to complete the migration include:

[https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2128314664/V4+API+Information](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2128314664/V4+API+Information)

[https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2111111353/User+Management+and+Security](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2111111353/User+Management+and+Security)\


[https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2200961052/V3+Offboarding](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2200961052/V3+Offboarding)

[https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2075590780/V3+to+V4+Replication+Information](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2075590780/V3+to+V4+Replication+Information)
{% endhint %}

### Migration Steps For Customers on V3 of Rewst’s ConnectSecure Integration

1.  Navigate to your relevant mycyberCNS portal or ConnectSecure portal. Note that customers who are still using mycyberCNS portals may see the below message about the upcoming change when trying to log in.\


    <figure><img src="../../../../.gitbook/assets/Screenshot 2024-12-02 at 3.05.38 PM.png" alt=""><figcaption></figcaption></figure>
2. Log in to your ConnectSecure portal.
   1. In your Navigation Bar, under **Settings**, choose the user you’ll be authorizing on behalf of.
   2. Click the vertical three dots under the **Action** column.
   3. Click **API Key.**
3. You’ll need to pull four credential parameters from your portal for use in Rewst.
   1. **Client\_id**&#x20;
   2. **client\_secret**&#x20;
   3. **Tenant\_name** of the organization (the one you used when you logged into the portal)
   4. **Hostname** (refer to step 4 to find this)
4. Your hostname will be unique for your instance. The image below, for example, shows the hostname for Rewst’s own account, [pod103.myconnectsecure.com](http://pod103.myconnectsecure.com/).\
   ![](<../../../../.gitbook/assets/Screenshot 2024-12-02 at 2.59.44 PM.png>)
5. Install the new ConnectSecure V4 integration in Rewst, and enter the required credentials.\
   ![](<../../../../.gitbook/assets/image (3) (2).png>)
6. Save the configuration. It should automatically attempt to authenticate for you.

### Migrate Rewst actions and workflows

Existing customers using ConnectSecure actions in your workflows will have corresponding V4 actions named the same as the actions previously used, except for:

1. Patch Remediation
2. Create a Program
3. List CyberCNS Alerts
4. List Asset Best Practices
5. Create a CyberCNS Alert
6. Generic API Requests
   1. All endpoints were renamed in this transfer to ConnectSecure V4 (not Rewst).
   2. Please refer to the API documentation on your ConnectSecure portal to find corresponding URL paths. If you’re unsure how to find these, reach out to your CSM.

If you’re using one of these actions, you’ll need to manually update your workflow. Most affected workflows will be simple, and only require a basic swap of actions. However, you can only swap actions after you’ve installed the integration and authorized your credentials.

<figure><img src="../../../../.gitbook/assets/image (2) (3).png" alt=""><figcaption></figcaption></figure>
