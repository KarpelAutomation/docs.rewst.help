# HubSpot integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the HubSpot integration do?

With our HubSpot integration, Rewst can synchronize data between any other integration and HubSpot, ensuring a unified view of customer interactions, leads, and sales processes.&#x20;

## Why use the HubSpot integration?

* Seamlessly import and export contacts, track customer interactions, and automate marketing campaigns.&#x20;
* Enhance your customer engagement, nurture leads, and drive conversions, all within a single integrated platform.&#x20;
* Efficiently manage their sales and marketing efforts, ultimately improving productivity and maximizing the potential of their customer relationships.

## Set up the HubSpot integration

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `HubSpot` in the integrations page.\
   \
   ![A visual card for "HubSpot" integration with Rewst, featuring the HubSpot logo. The description reads: “Enables automation of CRM tasks. Utilize the HubSpot API within Rewst workflows to perform actions such as retrieving CRM data or syncing contacts, opportunities and products with a PSA.” The card indicates it was last updated on April 3rd, 2024, and includes a category tag labeled "CRM" at the bottom. This is the view of the integration in the integrations collection.](<../../../../.gitbook/assets/Screenshot 2025-05-01 at 3.58.43 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Click ![](<../../../../.gitbook/assets/Screenshot 2025-03-13 at 6.14.27 PM (2).png>) next to **Filters** to add filter criteria, if desired.
5. Click **Authorize**.
6. Sign in to HubSpot in the dialog that appears. Follow the prompts to complete the authorization.
7. Click **Save Configuration**.
8. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

{% hint style="warning" %}
HubSpot has optional scopes which aren't included in Rewst's standard integration. If you're using the generic HubSpot API Request action, certain endpoints may return an error where missing scopes and permissions are listed.

![](<../../../../.gitbook/assets/image (325).png>)

To remedy this if using the action, create a custom app in HubSpot. Then, take the API credentials from that custom app and input them into the Rewst integration.

HubSpot's Create APP documentation can be found [here](https://developers.hubspot.com/docs/apps/developer-platform/build-apps/create-an-app).

HubSpot's documentation on their scopes can be found [here](https://developers.hubspot.com/docs/apps/developer-platform/build-apps/authentication/scopes). <br>
{% endhint %}

HubSpot's own API documentation can be found [here](https://developers.hubspot.com/docs/reference/api/overview).

| Category            | Action                    | Description                                                              |
| ------------------- | ------------------------- | ------------------------------------------------------------------------ |
| **Companies**       | Search Companies          | search companies in hubspot                                              |
| **Companies**       | Get Company               | get a hubspot company by id                                              |
| **Companies**       | Delete Company            | delete a company in hubspot                                              |
| **Companies**       | Create Company            | create a company in hubspot                                              |
| **Companies**       | Update Company            | update a company in hubspot                                              |
| **Contact Lists**   | List Contact Lists        | Description coming soon...                                               |
| **Contacts**        | Search Contacts           | search contacts in hubspot                                               |
| **Contacts**        | Get Contact               | get a hubspot contact by id                                              |
| **Contacts**        | Delete Contact            | delete a contact in hubspot                                              |
| **Contacts**        | Create Contact            | create a contact in hubspot                                              |
| **Contacts**        | Update Contact            | update a contact in hubspot                                              |
| **Deals**           | Search Deals              | Search deals in hubspot                                                  |
| **Deals**           | List Deal Associations    | List a HubSpot Deal's associations                                       |
| **Deals**           | List Company Associations | List a HubSpot Companies associations                                    |
| **Deals**           | Delete Deal               | delete a hubspot deal by id                                              |
| **Deals**           | Create Deal               | create a hubspot deal                                                    |
| **Deals**           | Update Deal               | update a hubspot deal                                                    |
| **Generic Request** | HubSpot API Request       | Generic action for making authenticated requests against the HubSpot API |

#### &#x20;<a href="#update-deal" id="update-deal"></a>
