# ArrowSphere integration

## **What does the Arrowsphere integration do?**

The ArrowSphere integration enables the automation of ArrowSphere, which is a digital platform that streamlines the procurement, deployment, and management of IT solutions—including cloud services, hardware, software, and professional services—through a unified interface.

## Set up the **ArrowSphere integration**

### Set up steps in **Arrow**

1. To get started, you'll need to have an Arrowsphere account.
2. Navigate to the [API keys page](https://identity.arrowsphere.com/enduser/credentials).
3. Click **Create a new API token**, and then copy the key value to be used in Rewst.
4.  Save the configuration.

    A test action will be run to ensure everything is working as expected.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `ArrowSphere` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/image (309).png>)
3. Click on the integration tile to launch the configuration setup page.
4. Enter the **API Key** under the **Parameters** section:
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category            | Action                                                    | Description                                                                                                                   |
| ------------------- | --------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| **Catalog**         | Get Offer Details                                         | Show product details                                                                                                          |
| **Catalog**         | Search for Products                                       | Search for products.                                                                                                          |
| **Customers**       | List All Customers                                        | List all customers                                                                                                            |
| **Customers**       | Create Customer                                           | Create customer                                                                                                               |
| **Generic Request** | Generic Arrowsphere API Request                           | Generic action for making authenticated requests against the Arrowsphere API                                                  |
| **Licenses**        | List All licenses v2                                      | List all licenses                                                                                                             |
| **Licenses**        | Get license                                               | Get license                                                                                                                   |
| **Licenses**        | Update license                                            | Update license                                                                                                                |
| **Licenses**        | Get License credentials                                   | Get license credentials                                                                                                       |
| **Licenses**        | Get License History                                       | Get license history                                                                                                           |
| **Licenses**        | Get License coupon code history                           | Get license coupon code history                                                                                               |
| **Licenses**        | List Available License addons                             | List Available License addons                                                                                                 |
| **Licenses**        | Search License                                            | Search License                                                                                                                |
| **Licenses**        | List all the available AWS payer accounts                 | List all the AWS payer accounts for a given end customer reference, his reseller and Arrow account                            |
| **Licenses**        | Attach reserved instance to license                       | Attach a reserved instance to an Azure account license                                                                        |
| **Licenses**        | List all the reserved instance                            | List all the reserved instance for an Azure account                                                                           |
| **Licenses**        | Setup vendor configuration                                | Set a vendor configuration                                                                                                    |
| **Licenses**        | Get vendor configuration                                  | Get vendor configuration                                                                                                      |
| **Licenses**        | License Bulk Action                                       | Apply bulk actions 'Set rate' or 'Auto renew'                                                                                 |
| **Licenses**        | Re-activate a license                                     | Re-activate a license that was previously suspended                                                                           |
| **Licenses**        | Suspend a license                                         | Suspend a license                                                                                                             |
| **Licenses**        | Cancel a license                                          | Cancel a license                                                                                                              |
| **Licenses**        | Update the friendly name of a license                     | Update the friendly name of a license. You can also update the friendly name of a license using the Update a License endpoint |
| **Licenses**        | Update the number of seats                                | Update the number of seats of a license                                                                                       |
| **Licenses**        | Increase the number of seats                              | Increase the number of seats of a license — the value in the body becomes the new final seat count                            |
| **Licenses**        | Decrease the number of seats                              | Decrease the number of seats of a license — the value in the body becomes the new final seat count                            |
| **Licenses**        | Cancel License auto renew                                 | Cancel auto renew on an IBM or Microsoft NCE subscription                                                                     |
| **Licenses**        | Re-activate License auto renew                            | Re-activate auto renew on an IBM or Microsoft NCE subscription that was previously cancelled                                  |
| **Licenses**        | List recent requests on the license                       | List recent requests on the license                                                                                           |
| **Licenses**        | Convert trial to final product                            | Convert trial to final product                                                                                                |
| **Licenses**        | Update a scheduled license task                           | Update a scheduled task for a license                                                                                         |
| **Licenses**        | Get a scheduled license task                              | Get a scheduled task for a license                                                                                            |
| **Licenses**        | Delete a scheduled license task                           | Delete a scheduled task for a license                                                                                         |
| **Licenses**        | List all scheduled tasks                                  | List all the scheduled tasks for a license                                                                                    |
| **Licenses**        | List available SKU for conversion (existing subscription) | List all the offers SKU available for a conversion for an existing subscription                                               |
| **Licenses**        | List available SKU for conversion                         | List all the offers SKU available for a conversion                                                                            |
| **Licenses**        | List daily predictions on license                         | Get the license reference predictions                                                                                         |
| **Licenses**        | Save License Billing Comments                             | Save Billing comments for the given license                                                                                   |
| **Orders**          | List All Orders                                           | List all orders                                                                                                               |
| **Orders**          | Get Order                                                 | Get Order                                                                                                                     |
| **Orders**          | Create Order                                              | Create Order                                                                                                                  |
| **Orders**          | Update Order                                              | Update Order                                                                                                                  |
| **Orders**          | Resubmit Order                                            | Resubmit Order                                                                                                                |
| **Orders**          | Delete attachment for an order                            | Delete order attachment                                                                                                       |
| **Orders**          | Get Order history                                         | Get history for an order                                                                                                      |
| **Subscriptions**   | List All Subscriptions                                    | List all subscriptions                                                                                                        |
