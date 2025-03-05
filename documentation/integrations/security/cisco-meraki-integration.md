# Cisco Meraki integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Cisco Meraki integration do?

This integration enables seamless automation of network management and IT operations using Cisco Meraki's API, helping you manage alerts, licenses, and hardware.

### Integration use cases

* Automated onboarding and offboarding of clients (PSA integration)
* Organization management
* Network management

## Set up the Cisco Meraki integration

### Set up steps in Cisco Meraki

1. Log in to Cisco Meraki.&#x20;
2. Navigate to the **My Profile** page, accessed via the avatar icon in the top right-hand corner of dashboard.
3. Click **Generate new API key**.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-02-26 at 2.01.48 PM.png>)
4. Copy the API key. You'll need this for your setup steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the Cisco Meraki integration.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-02-26 at 9.58.00 AM.png>)
3. Click on the integration tile to launch the configuration setup page.
4.  Under **Parameters**:\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-26 at 10.37.16 AM.png" alt=""><figcaption></figcaption></figure>

    1. Copy and Paste the API key into the **API key** field.
    2. Leave the text of the **Platform** field at **Default**.
5. Click **Save Configuration**.

## Test the Integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.

{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Cisco Meraki integration actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

Cisco's complete documentation can be found [here](../../../updates/roc-open-mics/2022-roc-open-mics/may-27th-2022-graph-api.md).&#x20;

| Category            | Action                                                                   | Description                                                                                                                                                                    |
| ------------------- | ------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Devices**         | Delete Device                                                            | Remove a single device                                                                                                                                                         |
| **Devices**         | Get Device                                                               | Return a single device                                                                                                                                                         |
| **Generic Request** | Meraki API Request                                                       | Generic action for making authenticated requests against the Meraki API                                                                                                        |
| **Networks**        | Add Devices to a Network                                                 | Claim devices into a network (recently claimed devices may take a few minutes to be accessible). This operation can be used up to ten times within a single five-minute window |
| **Networks**        | Create Organization Network                                              | Create a network                                                                                                                                                               |
| **Networks**        | Delete Network                                                           | Delete a network                                                                                                                                                               |
| **Networks**        | Get Firmware Upgrade Information For A Network                           | Get firmware upgrade information for a network                                                                                                                                 |
| **Networks**        | Get Network                                                              | Return a network                                                                                                                                                               |
| **Networks**        | Update Network                                                           | Update a network                                                                                                                                                               |
| **Organizations**   | Create Organization                                                      | Create a new organization                                                                                                                                                      |
| **Organizations**   | Delete Organization                                                      | Delete an organization                                                                                                                                                         |
| **Organizations**   | Get Organization                                                         | Return an organization                                                                                                                                                         |
| **Organizations**   | Get Overview Of The License State For An Organization                    | Return an overview of the license state for an organization                                                                                                                    |
| **Organizations**   | List Organizations                                                       | List the organizations that the user has privileges on                                                                                                                         |
| **Organizations**   | List Organization Networks                                               | List the networks that the user has privileges on in an organization                                                                                                           |
| **Organizations**   | List The Devices In An Organization That Have Been Assigned To A Network | List the devices in an organization that have been assigned to a network                                                                                                       |
| **Organizations**   | Update Organization                                                      | Update an organization                                                                                                                                                         |
