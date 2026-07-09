# Ubiquiti Network API integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Ubiquiti Network API integration do?

Our Ubiquiti Network API integration links with the UniFi Network Application API for per-controller network management — devices, WiFi, firewall, ACL, DNS, hotspot vouchers, and VLAN/subnet configuration for MSPs.

## Set up the Ubiquiti Network API integration

### Set up steps in Ubiquiti

1. Open [UniFi Site Manager](https://unifi.ui.com/) and log in to your account.
2. Navigate to **Settings > API Keys**.&#x20;
3. Click **Create a New API Key**.&#x20;
4. Enter `Rewst` into the **Name** field.
5. Choose **Never Expires** from the **Expiration** drop-down selector.
6. Click **Create.**
7. Note that the key value will only be shown once. Copy the generated key and store it somewhere secure. You'll need this information for further steps in Rewst.
8. Click on your related controller from the Site Manager dashboard.
9. Navigate to **Integrations > Documentation > API Request Format**.
10. Note the hostname in the dialog that appears. For example, in the image below the hostname would be `33455a3a-ff93-88b2-68d5e6508a0f.unifi-hosting.ui.com`. You'll need this information for further steps in Rewst. You'll need this information for further steps in Rewst.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-06-29 at 11.01.09 AM.png" alt="" width="363"><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Marketplace > Integrations** in the left side menu of your Rewst platform.
2. Search for `Ubiquiti Network` in the integrations page.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2026-06-26 at 12.14.26 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Enter the copied API key value into the **API Key** field.
5. Enter the copied hostname from Ubiquiti into the **Host** field.
6. If your controller uses a self-signed SSL certificate, set **Verify SSL** to `false` in the configuration.
7. Click **Save Configuration**.
8. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

| Category               | Action                          | Description                                                                                       |
| ---------------------- | ------------------------------- | ------------------------------------------------------------------------------------------------- |
| Acl Rules              | List ACL Rules                  | Retrieves a paginated list of all ACL rules configured for the specified site                     |
| Acl Rules              | Delete ACL Rule                 | Deletes an ACL rule from the specified site                                                       |
| Acl Rules              | Create ACL Rule                 | Creates a new ACL rule in the specified site                                                      |
| Acl Rules              | Update ACL Rule                 | Updates an existing ACL rule in the specified site                                                |
| Acl Rules              | Update ACL Rule Ordering        | Updates the ordering of user-defined ACL rules for the specified site                             |
| Acl Rules              | Get ACL Rule Ordering           | Retrieves the current ordering of user-defined ACL rules for the specified site                   |
| Acl Rules              | Get ACL Rule                    | Retrieves detailed information about a specific ACL rule                                          |
| Clients                | List Connected Clients          | Retrieves a paginated list of clients currently connected to the specified site                   |
| Devices                | List Adopted Devices            | Retrieves a paginated list of all adopted UniFi devices in the specified site                     |
| Devices                | List Devices Pending Adoption   | Retrieves a paginated list of UniFi devices that are discovered but not yet adopted               |
| Dns Policies           | List DNS Policies               | Retrieves a paginated list of all DNS policies configured for the specified site                  |
| Dns Policies           | Get DNS Policy                  | Retrieves detailed information about a specific DNS policy                                        |
| Dns Policies           | Create DNS Policy               | Creates a new DNS policy in the specified site                                                    |
| Dns Policies           | Delete DNS Policy               | Deletes a DNS policy from the specified site                                                      |
| Dns Policies           | Update DNS Policy               | Updates an existing DNS policy in the specified site                                              |
| Generic Request        | Ubiquiti Network API Request    | Generic action for making authenticated requests against the UniFi Network Application API        |
| Info                   | Get Application Info            | Retrieves information about the UniFi Network Application, including version and capabilities     |
| Networks               | Create Network                  | Creates a new network in the specified site. Required fields depend on management type.           |
| Networks               | Update Network                  | Updates an existing network in the specified site. Required fields depend on management type.     |
| Networks               | Get Network References          | Retrieves all references to the specified network from other configurations                       |
| Networks               | List Networks                   | Retrieves a paginated list of all networks configured for the specified site                      |
| Networks               | Delete Network                  | Deletes a network from the specified site                                                         |
| Networks               | Get Network                     | Retrieves detailed information about a specific network                                           |
| Reference              | List RADIUS Profiles            | Retrieves a paginated list of RADIUS profiles configured for the specified site                   |
| Reference              | List Device Tags                | Retrieves a paginated list of device tags configured for the specified site                       |
| Reference              | List Countries                  | Retrieves a list of all countries available for use in firewall policies and other configurations |
| Reference              | List WAN Interfaces             | Retrieves a list of WAN interfaces configured for the specified site                              |
| Reference              | List DPI Applications           | Retrieves a list of all DPI (Deep Packet Inspection) applications available for traffic matching  |
| Reference              | List DPI Application Categories | Retrieves a list of all DPI application categories available for traffic matching                 |
| Reference              | List Site-to-Site VPN Tunnels   | Retrieves a paginated list of site-to-site VPN tunnels configured for the specified site          |
| Reference              | List VPN Servers                | Retrieves a paginated list of VPN servers configured for the specified site                       |
| Sites                  | List Network Sites              | Retrieves a paginated list of all UniFi Network sites managed by the controller                   |
| Traffic Matching Lists | List Traffic Matching Lists     | Retrieves a paginated list of all traffic matching lists configured for the specified site        |
| Traffic Matching Lists | Create Traffic Matching List    | Creates a new traffic matching list in the specified site                                         |
| Traffic Matching Lists | Get Traffic Matching List       | Retrieves detailed information about a specific traffic matching list                             |
| Traffic Matching Lists | Update Traffic Matching List    | Updates an existing traffic matching list in the specified site                                   |
| Traffic Matching Lists | Delete Traffic Matching List    | Deletes a traffic matching list from the specified site                                           |
| Vouchers               | Get Voucher                     | Retrieves detailed information about a specific hotspot voucher                                   |
| Vouchers               | Delete Voucher                  | Deletes a specific hotspot voucher from the specified site                                        |
| Vouchers               | Delete Vouchers                 | Bulk-deletes hotspot vouchers matching a filter expression for the specified site                 |
| Vouchers               | List Vouchers                   | Retrieves a paginated list of hotspot vouchers for the specified site                             |
| Vouchers               | Generate Vouchers               | Generates one or more hotspot vouchers for the specified site                                     |
| Wifi                   | Create WiFi Broadcast           | Creates a new WiFi broadcast (SSID) in the specified site                                         |
| Wifi                   | Get WiFi Broadcast              | Retrieves detailed information about a specific WiFi broadcast                                    |
| Wifi                   | Delete WiFi Broadcast           | Deletes a WiFi broadcast from the specified site                                                  |
| Wifi                   | List WiFi Broadcasts            | Retrieves a paginated list of all WiFi broadcasts (SSIDs) configured for the specified site       |
| Wifi                   | Update WiFi Broadcast           | Updates an existing WiFi broadcast in the specified site                                          |
