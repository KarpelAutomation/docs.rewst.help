# CWM: Technician toolbox via pod

## Introduction

The Technical Toolbox crate gives your technicians access to Rewst automation within a Connect Wise Manage ticket. This document will walk you through the crate's various functions.&#x20;

## Prerequisites&#x20;

Before unpacking this crate, you must configure the pod to work with Rewst. Follow our guide: [Pod Configuration](../../documentation/integrations/individual-integration-documentation/psa/connectwise-manage/pod-configuration.md)

## Unpack the Crate

**Log in** to app.rewst.io

**Navigate** to _Crates_ -> _Crate Marketplace_

**Search** for "_CWM: Technician Toolbox Via Pod"_

**Follow** the unpacking steps

{% hint style="info" %}
the crate will unpack with its triggers enabled. The trigger is set to work on any new tickets automatically. You will need to manually load the toolbox, as shown further in this document
{% endhint %}

## Use the tool box

On tickets with the pod running, you will see Five Main Categories; clicking the categories will open menu options for further tasks, as outlined below.&#x20;

<figure><img src="../../.gitbook/assets/Default View.png" alt=""><figcaption></figcaption></figure>

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

Let's imagine you have a ticket that has had its associated pod workflow execution expire (or fail for one reason or another). If you attempt to view the pod in the ticket, you will see something along the lines of:

<figure><img src="../../.gitbook/assets/Screenshot 2024-04-10 at 3.47.03 PM (1).png" alt=""><figcaption></figcaption></figure>

To execute a new instance of the pod click on the 'Links' dropdown in the ticket and choose 'Rewst - Start Pod on this Ticket'

<figure><img src="../../.gitbook/assets/Screenshot 2024-04-10 at 3.47.15 PM.png" alt="" width="326"><figcaption></figcaption></figure>

After using this button, a web page will open and close. This will send a request to the Live Link trigger and start a new execution for that ticket. Allow some time to pass before the ticket updates. You should see the pod populate once the execution has gone through.
