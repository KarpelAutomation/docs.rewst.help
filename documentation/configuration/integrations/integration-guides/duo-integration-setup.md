# Duo integration setup

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Duo integration do?

Our Duo integration enables the automation of multi-factor authentication tasks. Use the Duo API within Rewst workflows to perform actions such as managing users, phones, and bypass codes.

## Set up the Duo integration

### Set up steps in Duo

There are three different APIs provided by Duo, as well as a key to initiate an individual user directory sync.

{% stepper %}
{% step %}
**Duo Admin API**

This API allows administrators to manage their Duo accounts programmatically. With the Duo Admin API, administrators can create, update, and delete user accounts, manage two-factor authentication settings, and generate reports on user activity, among other tasks.
{% endstep %}

{% step %}
**Duo Accounts API**

The Accounts API lets customers programmatically create, delete, and manage individual Duo customer accounts. New Duo accounts created using the Accounts API are subaccounts of the account where the Accounts API application exists, creating a "parent" and "child" account relationship. A Duo account can have multiple child accounts, but a child account may only have one parent and no child accounts of its own.
{% endstep %}

{% step %}
**Duo Auth API**

This API allows developers to add two-factor authentication to their applications using Duo's authentication service. With the Duo Auth API, developers can authenticate users using Duo's two-factor authentication, retrieve information about users and their devices, and perform administrative tasks related to authentication, among other tasks.
{% endstep %}
{% endstepper %}

#### Obtain the Admin API directory key

After setting up the required API accounts (Admin, Accounts, and Auth APIs) and gathering their integration keys, secret keys, and hostnames, the next critical step is to retrieve the Admin API Directory Key for directory synchronization. This key is vital for mapping users accurately within Duo's directory sync configurations.

1. Log in to the Duo Admin Panel.
2. Navigate to **Users > Directory Sync**.
3. Select your configured directory to locate the **Admin API Directory Key**.

{% hint style="info" %}
**Important notes about the directory key:**

* This key must be manually retrieved from the Duo Admin Panel, as it cannot be fetched programmatically via the API.
* The `duo_admin_api_directory_key` is necessary only for configurations that employ directory sync. Its usage is specific to ensuring precise user-directory mapping for each organization.

<img src="../../../../.gitbook/assets/image (41).png" alt="" data-size="original">
{% endhint %}

#### Set up the API accounts

{% hint style="warning" %}
For all of the following, make sure to copy the designated information into a secure location. Once you migrate away from the page where it is displayed, you won't be able to view that information again.
{% endhint %}

1. Create an Admin API by following the instructions [here](https://duo.com/docs/adminapi#first-steps).
   * We will need the integration key, secret key, and API hostname.
2. Create an Accounts API by following the instructions [here](https://duo.com/docs/accountsapi#first-steps).
   * We will need the integration key, secret key, and API hostname.
3. Create an Auth API by following the instructions [here](https://duo.com/docs/authapi).
   * We will need the integration key, secret key, and API hostname.

### Set up steps in Rewst

1. Navigate to Configuration > Integrations in the left side menu of your Rewst platform.
2. Search for `Duo` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-05 at 10.42.04 AM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information you copied from Duo into its relevant field:
   1. **Auth Host:** The Duo API server hostname
   2. **Auth Integration Key**: The Duo API integration key
   3. **Auth Secret Key**: The Duo secret key
   4. **Account Host**: The Duo accounts server hostname
   5. **Accounts API Integration Key**: The Duo accounts API integration key
   6. **Accounts API Secret Key:** The Duo accounts secret key
   7. **Admin Host:** The Duo API server hostname
   8. **Admin Integration Key:** The Duo admin API integration key
   9.  **Admin Secret Key**: The Duo admin secret key\


       <figure><img src="../../../../.gitbook/assets/Screenshot 2025-05-05 at 10.47.51 AM.png" alt=""><figcaption></figcaption></figure>
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;
7. Apply the Admin API Directory Key under `Setting up the API accounts` for each organization in the `duo_admin_api_directory_key` field.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}
