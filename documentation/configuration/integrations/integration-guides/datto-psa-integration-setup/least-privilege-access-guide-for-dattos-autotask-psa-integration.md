---
hidden: true
---

# Least privilege access guide for Datto's Autotask PSA integration

## **Introduction**

This guide provides an overview of the permissions and security configurations needed to integrate Datto Autotask PSA with Rewst. By following these instructions, you can ensure a secure and efficient integration, adhering to best practices for least privilege.

### **Configure API User Permissions**

To utilize Rewst with least privilege, you'll need to configure a new user class named 'Rewst Automation' within your Datto Autotask PSA. Below are the general steps:

1. **Create a New Security Level**: Follow the steps outlined in [Defining an API User](https://ww1.autotask.net/help/DeveloperHelp/Content/APIs/General/Define_API_User.htm) to create a new security level with the necessary permissions.
2. **Assign Security Level**: Apply the new security level to the API user responsible for Rewst integration.
3. **Webhook Permissions**: If you plan to use webhooks, additional setup is required. Please refer to the [Webhook Configuration](broken-reference) page for detailed instructions.

{% hint style="warning" %}
Each API user has a tracking identifier that must be used when setting up the Autotask PSA integration. Ensure you have this identifier available when configuring Rewst.
{% endhint %}

### **Step 2: Configure API User Permissions**

The following table outlines the categorized permissions required for each category of endpoints in Autotask that Rewst will access. For further details on each endpoint we interact with, review the [Actions & Endpoints ](broken-reference)page for an exhaustive list.

<table><thead><tr><th width="215">Category</th><th width="116">Endpoints</th><th width="272">Autotask Permissions</th><th>Required Permissions</th></tr></thead><tbody><tr><td>Companies &#x26; Contacts</td><td>10</td><td>CRM permissions</td><td>View, Add, Edit</td></tr><tr><td>Contracts</td><td>7</td><td>Contract permissions</td><td>Manage Contracts, Manage Adjustments</td></tr><tr><td>Documents &#x26; Attachments</td><td>10</td><td>Documents &#x26; Knowledgebase</td><td>View, Add Documents</td></tr><tr><td>Projects</td><td>9</td><td>Projects permissions</td><td>Add, View Projects</td></tr><tr><td>Resources</td><td>3</td><td>Admin permissions</td><td>Manage Resources</td></tr><tr><td>Surveys</td><td>3</td><td>Other</td><td>Manage Surveys</td></tr><tr><td>Ticket &#x26;<br>Ticket Notes</td><td>16</td><td>Service Desk permissions</td><td>View, Add, Edit Tickets</td></tr><tr><td>Time Entries</td><td>6</td><td>Timesheet permissions</td><td>Create, Edit, Delete</td></tr></tbody></table>

Follow the steps on our [Autotask Integration Setup](./) page to input the API credentials and tracking identifier to complete the integration setup.

**Conclusion**

By following this guide, Datto Autotask PSA users can configure the necessary permissions to securely integrate with Rewst. The permissions are tailored to provide only the required access for Rewst's actions, adhering to best practices in security.
