# 1Stream integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the 1Stream integration do?

This integration enables the automation of VoIP phone systems and communications. Use the 1Stream API within Rewst workflows to automate tasks such as internal and client communications and centralized call management.

## Set up the 1Stream integration

### Set up steps in 1Stream

1. Log in to your 1Stream portal.
2. Click **Administration > Manage Organization**.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-08-27 at 1.45.39 PM.png>)
3. Scroll down and locate the Client API Keys submenu.
4.  Click **+** to add a new key.<br>

    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-08-27 at 1.46.21 PM.png" alt=""><figcaption></figcaption></figure>
5. Enter R`ewst Integration` into the **Reference Name** field in the **Add New Client Access API Key** dialog that appears.&#x20;
6. Click **Save**.
7. Copy the value given for the new **API Key** and store it someplace secure. You'll need it for further set up steps in Rewst. Once you navigate away from the dialog that displays this information, you won't be able to view the key again.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the `1Stream` integration. \
   \
   ![](<../../../../.gitbook/assets/image (242).png>)
3. Click on the integration tile to launch the **Configuration** setup page.
4. Enter the API Key copied from 1Stream into the **API Key** field.
5. Choose your relevant environment from the **Environment** drop-down selector.
   1. **Production -** if you're unsure which environment you have, choose Production
   2. **Sandbox -** this is a rare environment that will only apply to a few users who will know that they use Sandbox
6. Click **Save Configuration.**

{% hint style="info" %}
The 1Stream integration does not require you to complete the organization mapping process.
{% endhint %}

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

### Actions and endpoints <a href="#actions-and-endpoints" id="actions-and-endpoints"></a>

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

| Category            | Action                          | Description                                                                    |
| ------------------- | ------------------------------- | ------------------------------------------------------------------------------ |
| **Calls**           | List Active Calls               | Retrieve a list of currently active calls from the 1stream system              |
| **Calls**           | List Call Logs                  | Retrieve call logs from the 1Stream system with optional filtering             |
| **Calls**           | List Calls by Extension         | Retrieve calls filtered by specific extension number                           |
| **Calls**           | Get Calls Leader Board          | Retrieve the calls leaderboard showing top performing agents                   |
| **Calls**           | List Calls by Hour              | Retrieve call statistics broken down by hour                                   |
| **Calls**           | List Call Segment Logs          | Retrieve detailed call segment logs for analysis - requires 1Stream Enterprise |
| **Calls**           | Get Call Recording              | Download a call recording using the recording hex code                         |
| **Events**          | Trigger Signal Event            | Trigger a signal event in the 1Stream system                                   |
| **Extensions**      | List User Extension Mappings    | Retrieve the mapping between users and their assigned extensions               |
| **Extensions**      | Initiate Call for Extension     | Initiate a click-to-dial call for a specific extension                         |
| **Extensions**      | Update Extension Caller ID      | Update the outbound caller ID for a specific extension                         |
| **Extensions**      | Update Extension Profile Status | Update the 3CX profile and queue status for an extension                       |
| **Generic Request** | 1stream API Request             | Generic action for making authenticated requests against the 1Stream API       |
| **Status**          | List Phone Statuses             | Retrieve current status of all phones in the system                            |
| **Status**          | List Agent Queue Statuses       | Retrieve current queue status for all agents                                   |
