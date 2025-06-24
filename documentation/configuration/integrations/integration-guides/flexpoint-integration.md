# FlexPoint integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the FlexPoint integration do?

Our FlexPoint integration enables automation of payments and billing. Utilize the FlexPoint API within Rewst workflows to automate tasks such as invoicing, billing reconciliation and reporting.

## Set up the FlexPoint integration

{% hint style="info" %}
Before beginning setup for this integration, you'll need to download a security certificate from Rewst. Click on the relevant link for your geographic region in the list below. The link is also available in the Rewst platform, on the setup page for this integration, and will be the correct version for your region.\


[US](https://engine.rewst.io/configuration/flexpoint/get_certificate)

[APAC](https://engine.rewst.asia/configuration/flexpoint/get_certificate)

[UK](https://engine.eu.rewst.io/configuration/flexpoint/get_certificate)

[EU](https://engine.rewst.eu/configuration/flexpoint/get_certificate)
{% endhint %}

### Set up steps in FlexPoint

1. Log in to the [FlexPoint UI](https://apps.getflexpoint.com).
2.  Navigate to **Settings > WebAPI**.\
    \


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-06-17 at 12.06.07 PM.png" alt=""><figcaption></figcaption></figure>
3. Click **+ New API Credentials**.
4. Click **Choose File** and upload the Rewst integration certificate.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-06-17 at 12.06.16 PM.png>)
5. &#x20;Click **Create Token**.
6. Copy the API key and store it somewhere secure. You'll need it for further setup steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `FlexPoint` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-06-16 at 4.44.14 PM.png>)\

3. Click on the integration tile to launch the configuration setup page.
4. Enter the API key copied from FlexPoint into the **API Key** field.
5.  Click **Save Configuration**.\


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-06-16 at 4.51.44 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category            | Action                  | Description                                                                                                       |
| ------------------- | ----------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **Customers**       | List Customers          | Get a list of customers in FlexPoint. Optionally filtered by search term, parent customer ID, and other metadata. |
| **Customers**       | Get Customer            | Get a customer in FlexPoint by ID.                                                                                |
| **Customers**       | Create Customer         | Create a new customer record in FlexPoint.                                                                        |
| **Customers**       | Update Customer         | Update an existing customer record in FlexPoint by ID.                                                            |
| **Customers**       | List Customer Contacts  | Get a list of contacts for a customer in FlexPoint.                                                               |
| **Customers**       | Create Customer Contact | Create a new contact for a customer in FlexPoint.                                                                 |
| **Customers**       | Update Customer Contact | Update an existing contact for a customer in FlexPoint by ID.                                                     |
| **Customers**       | Delete Customer Contact | Delete a contact for a customer in FlexPoint by ID.                                                               |
| **Deposits**        | List Deposits           | Get a list of deposits in FlexPoint.                                                                              |
| **Deposits**        | Get Deposit             | Get deposit details in FlexPoint by ID.                                                                           |
| **Generic Request** | Generic API Request     | Generic action for making authenticated requests against the FlexPoint API                                        |
| **Invoices**        | List Invoices           | Get a list of invoices in FlexPoint. Optionally filtered by search term and external URI.                         |
| **Invoices**        | Get Invoice             | Get an invoice in FlexPoint by ID.                                                                                |
| **Invoices**        | Create Invoice          | Create a new invoice record in FlexPoint.                                                                         |
| **Invoices**        | Update Invoice          | Update an existing invoice record in FlexPoint by ID (Allowed Statuses: New, Posted, Void)                        |
| **Invoices**        | List Invoice Items      | Get a list of invoice items for an invoice in FlexPoint.                                                          |
| **Invoices**        | Create Invoice Item     | Create a new invoice item for an invoice in FlexPoint.                                                            |
| **Invoices**        | Update Invoice Item     | Update an existing invoice item in FlexPoint by ID.                                                               |
| **Invoices**        | Delete Invoice Item     | Delete an invoice item from an invoice in FlexPoint by ID.                                                        |
