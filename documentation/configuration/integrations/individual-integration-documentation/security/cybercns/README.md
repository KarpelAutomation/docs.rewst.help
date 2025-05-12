# ConnectSecure (CyberCNS)

## **Overview**

The ConnectSecure API, offers a comprehensive approach for monitoring and managing cybersecurity aspects like agents, alerts, vulnerabilities, and more. This integration is tailored for MSPs and MSSPs to efficiently support SMB clients, ensuring robust vulnerability scanning and compliance management.

## Key Features

1. **Comprehensive Cybersecurity**: ConnectSecure provides a holistic approach to cybersecurity, covering vulnerability management, compliance, and active threat management.
2. **Efficiency and Automation**: MSPs can efficiently manage assets, perform network discovery, and automate various security tasks, saving time and resources.
3. **Proactive Protection**: The system offers proactive monitoring and response capabilities to safeguard against cyber threats in real-time.
4. **Simplified Management**: ConnectSecure streamlines the management of assets, events, user permissions, and more, making it easier for MSPs to ensure security and compliance for their clients.

## **Configuration Requirements**

* **Tenant Name**: Required for integration setup.
* **Hostname**: Essential for connecting to the ConnectSecure API.
* **Client ID and Secret**: Necessary for authentication.

## ConnectSecure v4 Integration Setup

1. Obtain the hostname, tenant name, client ID, and client secret from your ConnectSecure portal.
2. The hostname should be in the format of 'pod1.connectsecure.com'. To obtain the hostname, navigate to the ConnectSecure portal click the profile icon in the upper right corner and select 'API Documentation' and copy the URL.
3. The tenant name is the name used to log into the connectsecure portal.
4. Client ID and Client Secret are obtained from the ConnectSecure portal. Navigate to the side bar Settings > Users > Select User > click on Action 3 vertical dots > API Key in order to find it.
5. **Input these values in the configuration form below.**
6. Save the configuration and authentication against the ConnectSecure API will automatically be tested.
7. For Further information, please refer to the [ConnectSecure API Documentation](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2128314664/V4+API+Information)



## Actions and endpoints

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
