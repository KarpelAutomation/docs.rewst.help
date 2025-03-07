# User offboarding v2

## Overview

Streamline your offboarding process with this versatile crate. It offers a comprehensive set of features to offboard users while documenting the actions and their results in your PSA for a complete audit trail.

## Objectives

1. Streamline the user offboarding process.
2. Increase time savings and decrease the potential for user error.
3. Maintain compliance and security standards.
4. Generate an audit trail by logging actions and their result within your PSA.

{% hint style="success" %}
**Prerequisites**&#x20;

It is recommended that users complete the org variable setup form for the customer prior to utilizing this workflow. All of the required org variables should be covered if this is completed.
{% endhint %}

## How to install/configure the crate

* **Go to** _Crates_ → _Crate Marketplace_ in the app.
* **Click** on the _User Offboarding v2_ Crate.
* (Optional) **Change** the name of the Workflow to suit your needs.
* **Click** _Unpack_ at the bottom.

<figure><img src="../../.gitbook/assets/2024-07-26_13-18-55 (1).gif" alt=""><figcaption></figcaption></figure>

## What it does

* Detailed Ticketing
* Offboarding Approval Process
* Offboarding Delay
* Supervisor Notifications
* Session Invalidation
* Password Reset
* Exchange Actions
* Convert to shared mailbox
* Assignment of shared mailbox permissions
* Hide from GAL
* Forward mail
* Set out of office
* Remove mobile devices
* Disable Accounts
* Move OU
* Group Membership Removal
* Employee ID Removal
* Disable PSA Contact
* Removal of Supervisor Assignment
* License Removal

## How to utilize the crate

Choose the user to offboard via the form input.

Within the form select various options such as session invalidation, license removal, shared mailbox conversion, etc. The workflow will begin execution documenting the selected options within your PSA. Actions taken and their respective results will be documented for review within the PSA ticket.

## Considerations When Migrating

If you're considering migrating, follow the steps found on the page below:

{% content-ref url="../crates/migrating-between-crate-versions.md" %}
[migrating-between-crate-versions.md](../crates/migrating-between-crate-versions.md)
{% endcontent-ref %}

{% hint style="success" %}
Note: Rewst-managed workflows that contain the above functionality will automatically be updated when v1 is officially deprecated.
{% endhint %}

## How is this different from v1?

While there are numerous bug fixes and enhancements to V2, below is a list of the most requested changes.

* Improved ticketing functionality and control
* Support for the following Active Directory configurations:
  * Azure AD
  * On-premises (NEW)
  * Hybrid Synced (ENHANCED)
  * Hybrid Not Synced (ENHANCED)
* Ability to offboard email-only users when the primary identity provider is on-premises AD.
* New modular design that allows for rapid enhancements, fixes, and customizations.
* Expanded error handling allowing for task-specific logging
* Improved parallel action execution addressing bugs that prevented the use of workflow listeners.
