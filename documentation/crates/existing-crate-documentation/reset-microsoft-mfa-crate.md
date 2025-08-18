# Reset Microsoft MFA Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Reset Microsoft MFA Crate do?

This Crate simplifies the process of authentication by allowing you to reset the authentication method for a specified user and update the relevant ticket, all in one smooth operation.

### Why use the Reset Microsoft MFA Crate ?

* Streamline the process of resetting user authentication methods
* Maintain accurate documentation by automatically updating the ticket
* Reduce manual errors and save time

### How the Crate works

1. You select the user for whom the authentication method needs to be reset via the form unpacked from the Crate.
2. The workflow automatically resets the authentication method specified in the form.
3. The corresponding ticket is updated with the necessary information.

### Crate prerequisites

* The Microsoft Graph integration must be set up before unpacking this Crate.
* For ticketing functionality, set up one of the following PSA integrations:
  * Kaseya BMS
  * Halo PSA
  * ConnectWise PSA
  * Freshdesk
  * Datto PSA

## Unpack the Reset Microsoft MFA Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Reset Microsoft MFA`**.**\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-08-14 at 4.31.22 PM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Choose your relevant PSA from the drop-down selector.
5. Click **Continue**.
6. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
7. Ensure that **Enabled** is toggled on.
8. Click **Unpack**.

## Use the Crate

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `M365: Reset MS MFA`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5. Select the user you want to reset authentication for via the **User** drop-down selector.
6. Choose your **Authentication Type** from the list in the drop-down selector:
   1. **App**
   2. **Mobile**
   3. **Office**
   4. **Alternate Mobile**
   5. **Email**

![](<../../../.gitbook/assets/Screenshot 2025-08-18 at 3.28.44 PM.png>)&#x20;

7. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
