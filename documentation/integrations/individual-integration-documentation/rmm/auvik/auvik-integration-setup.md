---
description: The Auvik pack allows you to interface with the Auvik API.
---

# Auvik integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## API Account

1. **Click** "Manage Users" from the side navigation bar.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_14-17-58.png" alt=""><figcaption></figcaption></figure>

2. **Click** the 'Invite Users' Button on the right.&#x20;
3. **Fill in** the email address for the user.
4. **Click** Send.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_15-17-10.png" alt=""><figcaption></figcaption></figure>

5. **Find** the user that you want to give Rewst Access to in the table and click the checkbox on the left.
6. **Click** "Authorize" at the top of the table.
7. **Click** "All" when the modal opens.
8. **Click** the "Roles" dropdown.
9. **Select** the role "API Access Only".

<figure><img src="../../../../../.gitbook/assets/2023-09-13_15-19-10.png" alt=""><figcaption></figcaption></figure>

10. **Click** "Save."
11. **Log out** of your Admin Auvik Account and continue below.

{% hint style="info" %}
You can find the the Auvik documentation instructions [here](https://support.auvik.com/hc/en-us/articles/204696564-How-do-I-manage-invitations-for-new-users-) to invite + activate a new user for Rewst to use.
{% endhint %}

## Generating an API Key

1. **Sign in** as your new user.
2. **Click** the profile button at the very bottom of the sidebar from the side navigation bar.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_15-20-58.png" alt=""><figcaption></figcaption></figure>

3. **Find** the "API Key" Box in the bottom left.
4. **Copy** the domain prefix and enter it below.
5. **Click** the Generate button and copy the generated key.

<figure><img src="../../../../../.gitbook/assets/2023-09-13_15-21-34.png" alt=""><figcaption></figcaption></figure>

6. **Click** "Save."
7. **Log-out.**

## Integration

Once you have created an API account, you will need to configure the integration within the Rewst platform.

Follow the below steps to configure a new integration:

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Click** on the _"Integrations"_ menu on the left sidebar.
3. **Click** or search for "Auvik".
4. **Complete** the form with the details you created.
5. **Click** Save.

### Integration Form

<table><thead><tr><th width="235.66590389016017">Field Name</th><th>Description</th></tr></thead><tbody><tr><td>Region</td><td>To locate the region, log into your Auvik dashboard and look at the URL in your browser’s address bar.<br>E.g. us1, us2, us3, us4, eu1, eu2, au1, ca1</td></tr><tr><td>API Username</td><td>API Username for the integrations account on Auvik</td></tr><tr><td>API Secret</td><td>API Key for the integrations account for Auvik</td></tr><tr><td>Default Tenant Prefix</td><td>Allows us to query your subtenants automatically by using this tenant as the root-level</td></tr></tbody></table>
