# Traceless integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Traceless integration do?

Our Traceless integration empowers MSPs and businesses with enhanced data security and phishing-resistant help desk workflows through seamless automation in Rewst. It enables secure transmission of sensitive information, enforces multi-factor authentication for identity verification, and prevents data exfiltration. By leveraging Traceless’ secure Traces, encrypted file storage, and audit logging, teams can automate credential sharing, large file transfers, and compliance reporting across IT workflows with confidence.

### Why use the Traceless integration?

**Secure data transmission and prevention of exfiltration**

* Encrypt and securely transmit sensitive information (passwords, credentials, or confidential files) using Traceless’ Trace feature.
* Automate temporary access provisioning by wrapping secrets in Traces and setting expiration policies for automatic deletion.
* Prevent data leaks and insider threats by ensuring MSPs never send sensitive data in plaintext over email or chat.

**Secure password resetting and credential sharing automation**

* Eliminate plaintext password sharing by automating password resets through secure Traces instead of sending credentials via email or tickets.
* Automate secure credential handoff between help desk teams and customers, ensuring passwords or API keys are only accessible to the intended recipient.

**Audit logging and compliance automation**

* Automatically log all sensitive data transfers to maintain an immutable audit trail for compliance requirements related to GDPR, CCPA, HIPAA, etc.

**Large file transfer for compliance and security**

* Securely transfer sensitive documents up to 200GB in size while maintaining an audit trail for compliance purposes.
* Integrate with ticketing systems to automatically store and retrieve secure files related to customer support requests

## Set up the Traceless integration

### Set up steps in Traceless

1. Log in to your Traceless account.
2. Navigate to **Traceless > Your Settings > Edit Settings**.
3. Scroll down to the **API Credentials** section.&#x20;
4. Copy the API endpoint UUID— For example, arejg-3j4g-1223-3j4g
5. Copy the **API Signing Secret**.&#x20;

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the `Traceless` integration.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-03-26 at 5.40.21 PM.png>)\

3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**:
   1. Paste your UUID into the **Organization UUID** field.
   2. Paste your signing secret into the **Signing Secret** field.
5. Click **Save Configuration**.

## Test the integration

{% hint style="warning" %}
There is no org mapping available for this integration. To test its functionality, manually verify that the workflow successfully interacts with your Traceless account.
{% endhint %}

1. Create a test workflow in Rewst that utilizes a Traceless action. Note that after testing, this workflow won't be needed, and could be deleted.
2. Run the workflow.
3. Click <img src="../../../../.gitbook/assets/Screenshot 2025-03-05 at 2.41.52 PM.png" alt="" data-size="line"> in your workflow builder's top toolbar to view the execution log. If set up correctly, the log should not contain failures.&#x20;

{% hint style="info" %}
Got an idea for a new integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Traceless integration actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

Traceless' complete documentation can be found [here](https://assets.traceless.io/Traceless%20API%20v1.3.pdf).

| Category            | Action                         | Description                                                                             |
| ------------------- | ------------------------------ | --------------------------------------------------------------------------------------- |
| **Generic Request** | Traceless API Request          | Generic action for making authenticated requests against the Traceless API              |
| **MFA**             | Poll API MFA                   | Poll an active MFA challenge via transaction ID                                         |
| **MFA**             | Send MFA via API               | Send an email, SMS, ticket, or hardware-based push MFA challenge                        |
| **MFA**             | Update API MFA                 | Complete an active MFA challenge via transaction ID                                     |
| **Traces**          | Start API Trace                | Wrap a text-based payload (secret) in a Trace via API                                   |
| **Traces**          | Start API Trace File           | Initiates uploading a file in a trace. Generates a PUT URL in S3 to store the file data |
| **Traces**          | Complete Upload API Trace File | Completes the process of uploading a file to S3 to be stored in a trace                 |
