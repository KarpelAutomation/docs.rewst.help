# OpenText Secure Cloud integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the OpenText Secure Cloud integration do?

Our OpenText Secure Cloud integration automates secure content management workflows. Use the OpenText SecureCloud API within Rewst workflows to enable secure document management, content collaboration, and automated content-related processes.

## Set up the OpenText Secure Cloud integration

{% hint style="info" %}
To have access to the OpenText Secure Cloud menus needed to set up this integration, you'll need to have Admin permissions for the application.
{% endhint %}

### Set up steps in OpenText Secure Cloud

1. Log in to the OpenText Secure Cloud developer portal.
2. Navigate to **Partner Services > Partner Integrations > API Credentials Management**.\
   \
   ![Screenshot of a vertical navigation menu on a dark blue background with white icons and text. The top section has a house icon labeled “Home,” followed by a collapsible “My Solutions” section. Below is an expanded “Partner Services” section with submenu options: Partner Dashboard, Customer Management, Partner Management, Partner Integrations, Branding, and Tools. Further down are collapsed sections labeled “Service Administration” with a gear and document icon, and “Billing” with a bar chart icon.](<../../../../.gitbook/assets/image (87).png>)
3. Generate new credentials on this page.
4. Copy the client ID and client secret to your clipboard. You will need these values for further set up steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the `OpenText Secure Cloud` integration.
3. Click on the integration tile to launch the configuration setup page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-06-02 at 2.54.00 PM.png>)\

4. Under **Parameters**:
   1. Enter the copied key value into the **Client ID** field.
   2.  Enter the copied secret value into the **Client Secret** field.\
       \


       <figure><img src="../../../../.gitbook/assets/Screenshot 2025-06-02 at 2.54.45 PM.png" alt=""><figcaption></figcaption></figure>
5. Click **Save Configuration**.
6. Click **Authorize**. You'll be redirected to OpenText SecureCloud to authorize the connection. You may be prompted to log in.
7. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category            | Action                           | Description                                                                           |
| ------------------- | -------------------------------- | ------------------------------------------------------------------------------------- |
| **Customers**       | List Customers                   | Lists all customers                                                                   |
| **Customers**       | Get Customer                     | Returns details for a specified customer                                              |
| **Customers**       | Create Customer User             | Creates a user for a specified customer                                               |
| **Customers**       | Get Customer User                | Returns details for a specified customer user                                         |
| **Customers**       | Update Customer User             | Updates a user for a specified customer                                               |
| **Customers**       | List Customer Users              | List Users for a specified customer                                                   |
| **Customers**       | List User Services               | List User Services for a specified customer                                           |
| **Generic Request** | OpenText SecureCloud API Request | Generic action for making authenticated requests against the OpenText SecureCloud API |
