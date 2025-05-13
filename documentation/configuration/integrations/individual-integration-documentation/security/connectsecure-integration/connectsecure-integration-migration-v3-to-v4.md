# ConnectSecure integration migration: V3 to V4

{% hint style="warning" %}
ConnectSecure integrations (formerly known as CyberCNS) will require attention to continue working in Rewst. Rewst has created a new V4 of our ConnectSecure integration to meet the sunsetting of our old V3 CyberCNS integration, which will expire by the end of 2024.

Rewst can’t automatically migrate V3 users to V4 due to ConnectSecure’s configuration requirements. If you’re a Rewst customer using our ConnectSecure integration, reach out to your ConnectSecure rep or access your ConnectSecure instance to retrieve your new V4 credentials and hostname. This document walks you through how to retrieve credentials on your own.

All related V3 endpoints in existing generic Rewst actions will also need to be manually updated to new URLs to reflect this change. See our existing guide for how to set up your integration for the first time here in this document: [.](./ "mention")
{% endhint %}

{% hint style="info" %}
ConnectSecure’s own documentation site can be found [here](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2054029532/Documentation+Home). Relevant, more detailed documentation from their team on how to complete the migration include:

[https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2128314664/V4+API+Information](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2128314664/V4+API+Information)

[https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2111111353/User+Management+and+Security](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2111111353/User+Management+and+Security)\


[https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2200961052/V3+Offboarding](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2200961052/V3+Offboarding)

[https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2075590780/V3+to+V4+Replication+Information](https://cybercns.atlassian.net/wiki/spaces/CVB/pages/2075590780/V3+to+V4+Replication+Information)
{% endhint %}

## Migration Steps For Customers on V3 of Rewst’s ConnectSecure Integration

1.  Navigate to your relevant mycyberCNS portal or ConnectSecure portal. Note that customers who are still using mycyberCNS portals may see the below message about the upcoming change when trying to log in.\


    <figure><img src="../../../../../../.gitbook/assets/Screenshot 2024-12-02 at 3.05.38 PM.png" alt=""><figcaption></figcaption></figure>
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
   ![](<../../../../../../.gitbook/assets/Screenshot 2024-12-02 at 2.59.44 PM.png>)
5. Install the new ConnectSecure V4 integration in Rewst, and enter the required credentials.\
   ![](<../../../../../../.gitbook/assets/image (3) (1) (1) (1) (1).png>)
6. Save the configuration. It should automatically attempt to authenticate for you.

## Migrate Rewst actions and workflows

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

<figure><img src="../../../../../../.gitbook/assets/image (2) (2).png" alt=""><figcaption></figcaption></figure>

