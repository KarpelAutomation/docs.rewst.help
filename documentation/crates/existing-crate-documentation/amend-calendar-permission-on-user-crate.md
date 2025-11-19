# Amend Calendar Permission on User Crate

## What does the Amend Calendar Permission on User Crate do?

This Crate simplifies managing calendar access in Microsoft 365 by allowing IT staff to quickly assign or remove calendar permissions for users. It ensures accurate access control by validating user identities, displaying current permissions, and applying role-based access such as Reviewer or Editor— ideal for onboarding, offboarding, and day-to-day support tasks.

### How the Crate works

* Identifies the organization within Rewst.
* Optionally uses a existing ticket, or otherwise creates a new one
* Specifies whose calendar permissions will be updated.
* Displays the user's current calendar permission entries.
* Adds or removes permissions:
  * Add: Grants access
  * Remove: Revokes access
* Chooses the users who will gain or lose access, and allows you to select the desired access level
* Defines the calendar permission level&#x20;
* Includes additional delegation settings if needed

{% hint style="warning" %}
This Crate requires valid users and permissions to be loaded before applying changes. It only applies to calendar permissions, not mailbox delegation.
{% endhint %}

## Crate prerequisites

The Microsoft Exchange integration must first be successfully installed. This is a part of the Rewst [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/).

## Unpack the Amend Calendar Permission on User Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Amend Calendar Permission on User`.\
   \
   ![](<../../../.gitbook/assets/image (135).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
7. Click **Unpack**.

### Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[Rewst] Calendar Permissions`.
3. Click **⋮ > View Direct URLs**.
4. Click on the URL to launch the form in a new tab. If you've chosen to unpack this Crate for multiple organizations, be sure to choose the URL for the correct organization.

![](<../../../.gitbook/assets/Screenshot 2025-08-14 at 4.10.23 PM.png>)\




{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
