# CrowdStrike integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the CrowdStrike integration do?

Our CrowdStrike integration enables advanced thread detection and endpoint security management. Use the CrowdStrike Falcon API within Rewst workflows to perform actions such as retrieving detections and managing devices.

## Set up the CrowdStrike integration

### Set up steps in CrowdStrike

1. Log in to your CrowdStrike Falcon Account.
2. Click on the Hamburger Icon in the left-hand corner to expand the sidebar.
3. Click **Support and Resources**.
4. Click **API clients and Keys**.
5. Click **Add new API Client** on the center-right of the screen.
6. Enter a **Client Name** and **Description.**
7. Choose the permissions you'd like to give Rewst.
8. Click **Add** to save the new API Client.
9. Save the values listed for the **API URL**, **Client Key**, and **Client Secret** in a secure location. Once you migrate away from this page, you'll no longer be able to view them. This information will be needed for further steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `CrowdStrike` in the integrations page.
3. Click on the integration tile to launch the configuration setup page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-05 at 4.25.28 PM.png>)
4. Under **Parameters**, enter the information copied from CrowdStrike into the relevant fields:
   1. API URL
   2. Client Key
   3. Client Secret
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;



## Actions and endpoints

| Category            | Action                  | Description                                                                         |
| ------------------- | ----------------------- | ----------------------------------------------------------------------------------- |
| **Alerts**          | List Alerts             | Lists any alerts that have been raised                                              |
| **Detects**         | List Detections         | Lists any detections that have been raised                                          |
| **Detects**         | Get Detection(s)        | Description coming soon...                                                          |
| **Devices**         | List Devices            | Description coming soon...                                                          |
| **Devices**         | Get Device(s)           | Description coming soon...                                                          |
| **Devices**         | List Device Host Groups | Description coming soon...                                                          |
| **Discover**        | List Accounts           | List subaccounts associated with your account                                       |
| **Discover**        | List Hosts              | List hosts associated with your account                                             |
| **Discover**        | List Logins             | List the logins for users on your account                                           |
| **Generic Request** | API Request             | Generic action for making authenticated requests against the CrowdStrike Falcon API |
| **Incidents**       | List Incidents          | Lists any incidents that have been raised                                           |
| **Reports**         | List Reports            | Lists FalconX Reports for your account                                              |
| **Users**           | List Users              | Lists created users and their properties for your account                           |
| **Users**           | Get User(s)             | Gets specified users and their properties from your account                         |
| **Users**           | List User Roles         | Lists user roles and their properties for your accounts                             |
| **Users**           | Delete User             | Deletes specified users permanently from your account                               |
| **Users**           | Create User             | Creates a new user in your account                                                  |
