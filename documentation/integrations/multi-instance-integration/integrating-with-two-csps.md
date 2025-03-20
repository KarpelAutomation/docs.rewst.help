# Integrating with Two CSPs

### **Overview**

At Rewst, we are constantly expanding our horizons, and this means partnering with MSPs who may encounter a situation where they need to set up multiple instances of the same integration. This guide is designed to help you navigate the process of setting up multiple CSP accounts, a workaround that also applies to integrations not supporting multiple instances.

{% hint style="danger" %}
Before proceeding with these steps, we strongly recommend discussing this with your CSM. If you have any questions or require assistance, please reach out.
{% endhint %}

***

### Steps to Solution

**Step 1: Determine Integration Requirements**&#x20;

1. Begin by engaging in a discussion with your CSM to identify how many integrations do not support multiple instances. Identify the number of tenants you have for each integration. This step is crucial for planning your setup.

**Step 2: Create the MSP Parent Account**

1. **Identify** the initial MSP parent account in the platform.
2. **Make sure** you have login credentials for this parent account.

**Step 3: Set Up MSP Child Organizations**&#x20;

1. The number of MSP child organizations you create should correspond to the number of tenants you have for unsupported integrations. For instance, if you have two CSP accounts, create two child organizations.

**Step 4: Integration Setup**

1. **Log in** to each of the child organizations.
2. **Set up** the integrations separately for each child organization created.

**Step 5: Create Customer Organizations**&#x20;

1. Once the integrations are successfully set up, you can proceed to create customer organizations within each of the MSP child organizations.

***

{% hint style="info" %}
**Additional Notes**

* **Handling Crates:** When adding crates or components, remember to add them to both MSP Child organizations separately to ensure consistency.
* **Workflow Management:** Any workflows created should be established at the top-level (Parent) organization. This allows for easy cloning and management within the Child MSP accounts.
* **Integration Configuration:** Keep in mind that integrations need to be set up individually for each MSP Child organization. Be sure to configure them according to their respective requirements.
{% endhint %}

We hope this guide helps streamline your integration process and makes it more efficient. Should you have any further questions or require assistance, please don't hesitate to contact our support team. We're here to ensure your integration experience is smooth and successful.
