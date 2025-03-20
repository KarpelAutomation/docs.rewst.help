---
description: This document outlines the requirements and setup for the Datto integration.
---

# Datto Autotask integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

### Webhook setup for triggers

By default, the Datto Autotask API User (system) security level does not have permission to create company webhooks. This means that when you configure a trigger in the Rewst platform, you'll receive an error message stating that the webhook could not be created. To resolve this, you'll need to create a new security level by doing the following:

1. Log in to Datto Autotask.
2. Go to Admin → Account Settings & Users.
3. Click **Security Levels** on the **Resources / Users (HR)** tab.
4. Find the **API User (system) (API-only)** security level on the context menu.
5. Select **Copy**.
6. Scroll down to the **Other** tab and check the checkbox for **Create Company Webhooks**.
7. Enter a number (each trigger will require at least one webhook).
8. **Save**.  &#x20;
9. Edit the user you are using to authorize Rewst and set it to this new security level.

{% hint style="success" %}
With this, you should now be able to create webhooks in Rewst. This will happen automatically when you create a trigger such as "Datto - Ticket Record Saved."
{% endhint %}

### Setting up the API account

Before configuring the Rewst integration you must generate an API user.&#x20;

1. Log in to Datto Autotask.
2. Open the top left menu.
3. Open the **Admin** submenu.
4. Select **Resources** (Users).
5. Hover over the **+ New** down arrow.
6. Select **New API User**.
7. Fill out the form fields, selecting the **Rewst - Automation integration vendor** under **API Tracking Identifier**.
8. **Save**.

{% hint style="success" %}
For more information, please refer to [Datto's documentation](https://ww1.autotask.net/help/Content/4_Admin/1CompanySettings_Users/ResourcesUsersHR/Resources/API_User_Add_Edit.htm?Highlight=Generating%20API%20Credentials) for generating API credentials for your organization.
{% endhint %}

### Configuring the integration

Once you have created an API account, you'll need to configure the integration within the Rewst platform. Follow the below steps to configure a new integration.

1. Log in to the [Rewst platform](https://app.rewst.io/).
2. Navigate to **Configuration** > **Integrations** in the left sidebar.
3. Click on or search for **Datto Autotask**.
4. Complete the form with the details you created:
   1. **Platform**: The zone associated with your Datto account
   2. **API User Password**: This is the API password created during the API user creation process
   3. **API Username**: This is the API username created during the API user creation process
   4. **API Tracking Identifier**: The generated tracking number for this application
5. **Save** the configuration. Rewst will do a quick validation of your input.

{% hint style="info" %}
If you aren't sure what zone is associated with your account, you can compare your URL with [this table](https://www.autotask.net/help/DeveloperHelp/Content/APIs/REST/General_Topics/REST_Swagger_UI.htm).&#x20;
{% endhint %}

#### Company filter

1. **Filter**: Select what you would like filtered from the dropdown.
2. **Operation**: Choose which Operation you would like to use.
3. **Value**: This must be an integer "Example for Company Below".

{% hint style="info" %}
**Accepted company type values**

Ensure you enter the number for the company type you would like to filter on.

```
1 = Customer
2 = Lead
3 = Prospect
4 = Dead
6 = Cancelation
7 = Vendor
8 = Partner
```
{% endhint %}

Beneath that integration authentication section, you'll see the following options:

1. **Suggest Values**: This option will attempt to generate mappings between Rewst organizations and child organizations in this integration.
2. **Refresh Options**: This will re-read the potential mapping options - for both organizations and companies in Datto.
3. **Save Mappings**: This will apply mapping configuration changes.

{% hint style="danger" %}
If there are too many customers in the query, you may experience long loading times when refreshing options. If this is the case, you can make use of the page filters to make the list of customers smaller.&#x20;
{% endhint %}
