# Document Shared Mailbox Details V2 Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Document Shared Mailbox Details V2 Crate do?

The Document Shared Mailbox Details V2 Crate is designed to streamline the documentation of all group information in Microsoft 365 by fetching user details from the Microsoft 365 API, and documenting this information in your documentation tool consistently and dynamically. It records details such as whether the shared mailbox is enabled, the licenses assigned to it, users having full access/send as access, and other aliases associated with it. Automate the process of group management, auditing, reporting, and overall IT administration. Improve reporting accuracy, time-savings through automated documentation, and easy troubleshooting with readily available group information.

{% hint style="warning" %}
Note: This Crate does not remove or archive assets when they are no longer present in the parent tenant.
{% endhint %}

## Why use the Document Shared Mailbox Details V2 Crate?

The benefits include:

* Automated documentation saving you considerable time.
* Enhanced internal reporting and auditing with systematically documented user information.
* Easy troubleshooting due to readily available user data.

## Crate prerequisites

Before using this automation, ensure that you have an existing Microsoft 365 account. Use that account to set up the [Microsoft Cloud Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/).

Your [ITGlue](../../configuration/integrations/integration-guides/it-glue-integration-setup.md), [SyncMonkey](../../configuration/integrations/integration-guides/syncmonkey-integration.md), or [Hudu](../../configuration/integrations/integration-guides/hudu-integration-setup.md) integration must also be set up.

## Unpack the Document Shared Mailbox Details V2 Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for the `Document Shared Mailbox Details V2`.
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-10-17 at 2.45.36 PM.png>)
4. Click **Unpack Crate**.
5. Click **Continue**.
6.  Note that under the **Cron Job** accordion menu, you have the option to activate the trigger for all current and future managed organizations, or for specific organizations chosen from the **Activate for organizations** drop-down selector. You may also activate the trigger for organizations with specific [tags](../../settings/tags-in-rewst.md). \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-05-28 at 3.43.12 PM.png" alt=""><figcaption></figcaption></figure>
7. Click **Unpack**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
