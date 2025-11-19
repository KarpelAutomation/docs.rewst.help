---
hidden: true
noIndex: true
---

# CWM: Technician Toolbox via Pod Crate

{% hint style="warning" %}
This Crate is [deprecated](https://docs.rewst.help/documentation/crates/crate-deprecation-faq). Documentation remains for legacy users. For new users, search for and set up the ConnectWise PSA: Pod Technician Toolbox Crate in our Crate Marketplace instead.
{% endhint %}

## What does the CWM: Technician Toolbox via Pod Crate do?

The Technical Toolbox Crate gives your technicians access to a wide range of tools, without the need to leave ConnectWise PSA's web-based service desk.

## Crate prerequisites&#x20;

Before unpacking this Crate:

* Your [ConnectWise PSA integration](../../configuration/integrations/integration-guides/connectwise-integration-setup.md) must be successfully set up.
* You must configure the pod to work with Rewst. Follow our guide for pod configuration [here](https://docs.rewst.help/documentation/configuration/integrations/integration-guides/connectwise-integration-setup#connectwise-psa-pod-configuration).

## Unpack the Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform
2. Search for `CWM: Technician Toolbox Via Pod`_._\
   \
   ![](<../../../.gitbook/assets/image (149).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter your **Time Saved**.
7. Click **Unpack**.

{% hint style="info" %}
The Crate will unpack with its triggers enabled. The trigger is set to work on any new tickets automatically. You will need to manually load the toolbox, as shown further in this document.
{% endhint %}

## Use the tool box

On tickets with the pod running, you will see five main categories. Clicking the categories will open menu options for further tasks, as outlined below.&#x20;

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

Let's imagine that you have a ticket that has had its associated pod workflow execution expire or fail. If you attempt to view the pod in the ticket, you'll see something along the lines of:

<figure><img src="../../../.gitbook/assets/Screenshot 2024-04-10 at 3.47.03 PM (1).png" alt=""><figcaption></figcaption></figure>

To execute a new instance of the pod, click the **Links** drop-down menu in the ticket. Choose **Rewst - Start Pod on this Ticket**.

<figure><img src="../../../.gitbook/assets/Screenshot 2024-04-10 at 3.47.15 PM.png" alt="" width="326"><figcaption></figcaption></figure>

After using this button, a web page will open and close. This will send a request to the live link trigger and start a new execution for that ticket. Allow some time to pass before the ticket updates. You should see the pod populate once the execution has gone through.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
