# Sherweb integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Sherweb integration do? <a href="#what-does-the-superops-integration-do" id="what-does-the-superops-integration-do"></a>

Our Sherweb integration enables seamless management of customer information, product catalogs, subscriptions, and licenses directly within the Rewst platform. This integration streamlines operations and automates ordering processes, enhancing efficiency for MSPs.

## Integration use cases <a href="#integration-use-cases" id="integration-use-cases"></a>

* Automate synchronization of customer data between Sherweb and Rewst.
* Streamline product catalog updates to ensure accurate offerings.
* Automate subscription and license management to reduce manual tasks.
* Enhance billing processes by integrating Sherweb's billing capabilities with Rewst.

## **Integration prerequisites**

* An active Sherweb partner account with API access.
* API credentials: Client ID, Client Secret, and Subscription Key from Sherweb.
* Access to the Rewst platform with administrative privileges.

## Set up the Sherweb integration <a href="#set-up-the-superops-integration" id="set-up-the-superops-integration"></a>

### Set up steps in Sherweb <a href="#set-up-steps-in-superops" id="set-up-steps-in-superops"></a>

1. Log in to your Sherweb partner account.
2.  Navigate to the **Security > APIs** to generate your API credentials.\
    \


    <figure><img src="../../../../.gitbook/assets/image (17) (1).png" alt=""><figcaption></figcaption></figure>
3.  Click **Create** to set up a new API client.\
    \


    <figure><img src="../../../../.gitbook/assets/image (18) (1).png" alt=""><figcaption></figcaption></figure>
4. Copy the **Client ID** and **Client Secret**.
5.  Copy and save your Subscription Key, available in the same section. You’ll need this information to continue set up in Rewst.\
    ![](<../../../../.gitbook/assets/image (19) (1).png>)

    \


### Set up steps in Rewst

1. Log in to the Rewst platform.
2. Navigate to **Configuration** > **Integrations** in the left side menu.
3. In the Integrations page, search for the **Sherweb** integration.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-03-04 at 9.29.59 AM (1).png>)
4. Click on the integration tile to launch the Configuration setup page.
5. Under **Configuration**:
   1. Optionally provide a short description of the intended use of the configuration.
   2. Check **Is Default** on.
6.  Under **Parameters**:

    1. Paste the client ID copied from Sherweb into the **Client ID** field of the configuration form.
    2. Paste your client secret copied from Sherweb into the **Client Secret** field.
    3. Paste your subdomain copied from Sherweb into the **Subdomain** field.



    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-04 at 9.32.45 AM.png" alt=""><figcaption></figcaption></figure>
7. Click **Save Configuration.**
8. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;



## Test the integration

1. Initiate a test action within Rewst that utilizes the Sherweb integration, such as fetching the customer catalog.
2. Verify that the data retrieved matches your Sherweb account information, confirming a successful integration.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Crates related to the Sherweb integration

Explore the following Crates in the Rewst Crate Marketplace to maximize the power of your Sherweb integration.

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>Microsoft User Onboarding</strong><br><br>This automation streamlines the offboarding process for users within an organization allowing for time savings and increased efficiency.</td><td><a href="../../../../.gitbook/assets/Screenshot 2025-03-04 at 10.16.21 AM.png">Screenshot 2025-03-04 at 10.16.21 AM.png</a></td></tr><tr><td><strong>Microsoft User Offboarding</strong><br><br>This automated workflow streamlines the New User Onboarding process by guiding users through a form to collect necessary information.</td><td><a href="../../../../.gitbook/assets/Screenshot 2025-03-04 at 10.14.00 AM.png">Screenshot 2025-03-04 at 10.14.00 AM.png</a></td></tr><tr><td><strong>Sync Sherweb Customer Subscriptions to Gradient Synthesize</strong><br>Daily at 9AM UTC, synchronize products and usage counts from all active subscriptions in Sherweb to Gradient Synthesize</td><td><a href="../../../../.gitbook/assets/Screenshot 2025-03-04 at 10.17.35 AM.png">Screenshot 2025-03-04 at 10.17.35 AM.png</a></td></tr></tbody></table>

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas[ here](https://rewst.canny.io/integrations).
{% endhint %}

## Sherweb actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our introductory actions documentation[ here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

Refer to Sherweb's[ API documentation](https://developers.sherweb.com/) for detailed information on available endpoints and their usage. Ensure that you have the necessary permissions and correct endpoint URLs as specified in Sherweb's API documentation when configuring these actions. To access some API endpoints, you may have to set your rebilling settings within the partner portal, or contact your account manager at Sherweb to have them enabled manually.\


| Action name                        | Description                                                                                                                                                        | Endpoint                                                                                                                                                                                                                                 |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Create Subscriptions Amendment     | Amend subscription quantities for one of your customers..                                                                                                          | POST https://api.sherweb.com/service-provider/v1/billing/subscriptions/amendments?customerId={customerId}                                                                                                                                |
| Get Customers                      | Get the list of all your customers.                                                                                                                                | GET [https://api.sherweb.com/service-provider/v1/customers](https://api.sherweb.com/service-provider/v1/customers)                                                                                                                       |
| Get Payable Charges                | Get your payable charges data for a specific billing period. There are three types of charges that are included in the data returned: recurring, usage, and setup. | GET [https://api.sherweb.com/distributor/v1/billing/payable-charges\[?date\]](https://api.sherweb.com/distributor/v1/billing/payable-charges\[?date%5D)                                                                                  |
| Get Receivable Charges             | Get a customer's amount owed for a specific billing period.                                                                                                        | GET [https://api.sherweb.com/service-provider/v1/billing/receivable-charges?customerId={customerId}\[\&date\]](https://api.sherweb.com/service-provider/v1/billing/receivable-charges?customerId=%7BcustomerId%7D%5B\&date%5D)           |
| Get Subscriptions                  | Get the list of subscriptions for one of your customers.                                                                                                           | GET [https://api.sherweb.com/service-provider/v1/billing/subscriptions?customerId={customerId}](https://api.sherweb.com/service-provider/v1/billing/subscriptions?customerId=%7BcustomerId%7D)                                           |
| Get Subscriptions Amendment Status | Get the status of a subscriptions amendment.                                                                                                                       | GET [https://api.sherweb.com/service-provider/v1/billing/subscriptions/amendments/{subscriptionsAmendmentId}/status](https://api.sherweb.com/service-provider/v1/billing/subscriptions/amendments/%7BsubscriptionsAmendmentId%7D/status) |

