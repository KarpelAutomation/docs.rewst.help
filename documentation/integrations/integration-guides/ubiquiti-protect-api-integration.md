# Ubiquiti Protect API integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Ubiquiti Protect API integration do?

Integrate Rewst with the UniFi Protect API for NVR and camera management. Gain cameras, lights, sensors, viewers, liveviews, chimes, and snapshot access for MSPs.

## Set up the Ubiquiti Protect API integration

### Set up steps in Ubiquiti

1. Open [UniFi Site Manager](https://unifi.ui.com/) and log in to your account.
2. Navigate to **Settings > API Keys**.
3. Click **Create a New API Key**.
4. Enter `RewstProtectAPI` into the **Name** field.
5. Choose **Never Expires** from the **Expiration** drop-down selector.
6. Click **Create.**
7. Note that the key value will only be shown once. Copy the generated key and store it somewhere secure. You'll need this information for further steps in Rewst.
8. Click on your related controller from the Site Manager dashboard.
9. Navigate to **Integrations > Documentation > API Request Format**.
10. Note the hostname in the dialog that appears. For example, in the image below the hostname would be `33455a3a-ff93-88b2-68d5e6508a0f.unifi-hosting.ui.com`. You'll need this information for further steps in Rewst.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-06-29 at 11.01.09 AM.png" alt="" width="363"><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Marketplace > Integrations** in the left side menu of your Rewst platform.
2. Search for `Ubiquiti Protect` in the integrations page.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2026-06-26 at 12.14.30 PM.png>)<br>
3. Click on the integration tile to launch the configuration setup page.
4. Enter the copied API key value into the **API Key** field.
5. Enter the copied hostname from Ubiquiti into the **Host** field.
6. If your NVR uses a self-signed SSL certificate, set **Verify SSL** to `false` in the configuration.
7. Click **Save Configuration**.
8. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

| Category        | Action                       | Description                                                                                                                                                    |
| --------------- | ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Alarm Manager   | Send Alarm Webhook           | Send a webhook to the Protect alarm manager to trigger configured alarms. The webhook ID must match the ID set on the alarm configuration.                     |
| Cameras         | List Cameras                 | Get detailed information about all cameras adopted by the NVR                                                                                                  |
| Cameras         | Get Camera Snapshot          | Get a snapshot image from a specific camera. Returns a data URI (data:image/jpeg;base64,...) that can be used directly in an img tag or pasted into a browser. |
| Cameras         | Get Camera                   | Get detailed information about a specific camera                                                                                                               |
| Cameras         | Update Camera                | Update the settings for a specific camera. All body fields are optional — only include what you want to change.                                                |
| Chimes          | Update Chime                 | Update the settings for a specific UniFi Protect chime. All body fields are optional — only include what you want to change.                                   |
| Chimes          | Get Chime                    | Get detailed information about a specific UniFi Protect chime                                                                                                  |
| Chimes          | List Chimes                  | Get detailed information about all UniFi Protect chimes adopted by the NVR                                                                                     |
| Generic Request | Ubiquiti Protect API Request | Generic action for making authenticated requests against the UniFi Protect Integration API                                                                     |
| Info            | Get Protect Application Info | Get generic information about the UniFi Protect application, including the application version                                                                 |
| Lights          | List Lights                  | Get detailed information about all UniFi Protect lights adopted by the NVR                                                                                     |
| Lights          | Get Light                    | Get detailed information about a specific UniFi Protect light                                                                                                  |
| Lights          | Update Light                 | Update the settings for a specific UniFi Protect light. All body fields are optional — only include what you want to change.                                   |
| Nvr             | Get NVR Details              | Get detailed information about the NVR, including firmware version, storage capacity, and health status                                                        |
| Sensors         | List Sensors                 | Get detailed information about all UniFi Protect sensors adopted by the NVR                                                                                    |
| Sensors         | Update Sensor                | Update the settings for a specific UniFi Protect sensor. All body fields are optional — only include what you want to change.                                  |
| Sensors         | Get Sensor                   | Get detailed information about a specific UniFi Protect sensor                                                                                                 |
