# CW PSA: Pod Technician Toolbox Crate V2

{% hint style="warning" %}
This is our newest version of this Crate. An older version still exists in our Crate Marketplace titled CWM: Technician Toolbox via Pod. That Crate is [deprecated ](../crate-deprecation-faq.md)and should no longer be unpacked. For customers who were using the old version of the Crate, see the section of this document titled[#migrate-from-cwm-technician-toolbox-via-pod-to-this-crate](cwm-technician-toolbox-via-pod-1.md#migrate-from-cwm-technician-toolbox-via-pod-to-this-crate "mention") for instructions.&#x20;
{% endhint %}

## What does the CW PSA: Pod Technician Toolbox Crate V2 do?

This Crate gives your technicians access to a wide range of tools, without the need to leave ConnectWise PSA's web-based service desk. The Crate workflow is triggered by webhooks when a new ticket is created, or when a technician clicks the Rewst pod link within the ticket.

* **Initialize pod link**: Check if a valid Rewst pod link exists in ConnectWise. If it doesn't, the crate automatically creates one, enabling manual re-launch of the pod from within a ticket.
* **Fetch company mappings**: Retrieve company-specific mappings assigned to the ticket.
* **Display toolbox UI**: Load the Rewst pod interface into the ticket view, prompting users to select a category of actions.
* **Execute automations**: Perform the selected tool action based on user input from within the pod.

## Crate prerequisites&#x20;

Before unpacking this crate, you must configure the pod to work with Rewst. Follow our guide for pod configuration [here](https://docs.rewst.help/documentation/configuration/integrations/integration-guides/connectwise-integration-setup#connectwise-psa-pod-configuration).

## Unpack the Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform
2. Search for `CW PSA: Pod Technician Toolbox V2`_._\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-06-09 at 11.15.05 AM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter your **Time Saved**.
7. Click **Unpack**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-06-09 at 11.11.18 AM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
The Crate will unpack with its triggers enabled. The trigger is set to work on any new tickets automatically. You will need to manually load the toolbox, as shown further in this document.
{% endhint %}

## Use the tool box

On tickets with the pod running, you'll see five main categories. Clicking the categories will open menu options for further tasks, as outlined below.&#x20;

<figure><img src="../../../.gitbook/assets/Default View.png" alt=""><figcaption></figcaption></figure>

<details>

<summary>General</summary>

* Run AD Sync

</details>

<details>

<summary>User</summary>

* Reset Contact Password
* Send 2FA Request
* View User Information

</details>

<details>

<summary>Device</summary>

* View Uptime
* View Device Information
* Reboot Device
* Restart Print Spooler

</details>

<details>

<summary>Customer portals</summary>

* M365
* Exchange
* Azure
* Azure AD
* Teams
* MEM (Intune)

</details>

<details>

<summary>Rewst workflows</summary>

* Onboarding Form
* Offboarding Form
* Manage Group Membership
* Add User to Mailbox
* Manage MFA

</details>

## Re-run a pod from a ticket <a href="#re-running-a-pod-from-a-ticket" id="re-running-a-pod-from-a-ticket"></a>

Imagine that you have a ticket that has had its associated pod workflow execution expire or fail. If you attempt to view the pod in the ticket, you'll see a message that reads `No pending tasks. Note if you just requested the action, the workflow will be running in the background, and the pod will then update automatically with the response.`&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2024-04-10 at 3.47.03 PM (1).png" alt=""><figcaption></figcaption></figure>

To execute a new instance of the pod, click the **Links** drop-down menu in the ticket. Choose **Rewst - Start Pod on this Ticket**.

<figure><img src="../../../.gitbook/assets/Screenshot 2024-04-10 at 3.47.15 PM.png" alt="" width="326"><figcaption></figcaption></figure>

After using this button, a web page will open and close. This will send a request to the live link trigger and start a new execution for that ticket. Allow some time to pass before the ticket updates. You should see the pod populate once the execution has gone through.



## Migrate from CWM: Technician Toolbox via Pod to this Crate

If you're using the deprecated v1 version of this crate, follow these steps to migrate:

1. Navigate to **System > Setup Tables** in your ConnectWise PSA environment.
2. Search for the **Links** table.
3. Locate and delete the existing Rewst pod link.

This Crate will automatically create a new link the next time it runs. No other steps are required.
