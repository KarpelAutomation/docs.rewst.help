# Cloudmore integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## **What does the Cloudmore integration do?**

Our Cloudmore integration enables the automation of Cloudmore tasks such as managing services,  subscriptions, and retrieving billing information.

## Set up the **Cloudmore** integration

### Set up steps in **Cloudmore**

1. Log in to [https://cloudmore.com/](https://cloudmore.com/).
2. Select **API Credentials** under the **Settings** submenu.
3. Click **Add** under the **Application Users** section, then fill out the following fields:
   * **User name**
   * **Email**
   * **Password**
   * **Confirm password**
4. Copy the following information and store it someplace secure. You'll need it for further setup steps in Rewst.
   * **Client ID** - Also known as the client key, this is the OAuth2 Client ID for Cloudmore API access
   * **Client Secret -** This is the OAuth2 Client Secret for Cloudmore API access
   * **Environment -** Use the correct region by selecting either EU or US
   * **Username** - Use the created API user credentials
   * **Password** - Use the created API user credentials
   * **Reseller ID** - This is part of the partner identification system used for authentication
   * **Seller ID** - This is part of the partner identification system used for authentication

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Cloudmore` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/image (294).png>)
3. Click on the integration tile to launch the configuration setup page.
4. Enter the following details under the **Parameters** section:
   * **Client ID**
   * **Client Secret**
   * **Environment**
   * **Username**
   * **Password**
   * **Reseller ID**
   * **Seller ID**
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

| **Action**                           | **Method** | **Endpoint path**                                                    | **Description**                                                                     |
| ------------------------------------ | ---------- | -------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| **Billingreportsasync**              | `POST`     | `/billing/reports/MonthlyBillingPerOrganizationAsync`                | Starts asynchronous generation of reseller monthly billing report per organization  |
| **Billingreportsasync**              | `GET`      | `/billing/reports/MonthlyBillingPerOrganizationAsync/{taskId}`       | Returns asynchronously generated reseller monthly billing report per task           |
| **Generic Request**                  | `GET`      | `/<url_path>`                                                        | Generic action for making authenticated requests against the Cloudmore API          |
| **Healthcheck**                      | `GET`      | `/healthcheck`                                                       | Retrieve the health status of the Cloudmore API                                     |
| **Organizationpricelist**            | `GET`      | `/organizations/{organizationId}/services/{serviceId}/pricelist`     | Returns all reseller organization product services                                  |
| **Organizationservicesubscriptions** | `GET`      | `/organizations/{organizationId}/services/{serviceId}/subscriptions` | Returns all reseller organization custom service subscriptions, including cancelled |
| **Organizationservices**             | `GET`      | `/organizations/{organizationId}/services`                           | Returns all reseller organization services                                          |
| **Organizationservices**             | `POST`     | `/organizations/{organizationId}/services`                           | Create reseller organization service                                                |
| **Organizationservices**             | `DELETE`   | `/organizations/{organizationId}/services/{serviceId}`               | Delete reseller organization service                                                |
| **Organizations**                    | `GET`      | `/organizations`                                                     | Returns all organizations                                                           |
| **Organizations**                    | `POST`     | `/organizations`                                                     | Create new organization                                                             |
| **Organizations**                    | `GET`      | `/organizations/{organizationId}`                                    | Get organization details                                                            |
| **Organizations**                    | `DELETE`   | `/organizations/{organizationId}`                                    | Delete organization                                                                 |
| **Organizations**                    | `PUT`      | `/organizations/{organizationId}`                                    | Update organization details                                                         |
| **Organizations**                    | `GET`      | `/organizations/{organizationId}/Estore`                             | List available organization custom services                                         |
| **Resellerservices**                 | `GET`      | `/services`                                                          | Returns all reseller services                                                       |

