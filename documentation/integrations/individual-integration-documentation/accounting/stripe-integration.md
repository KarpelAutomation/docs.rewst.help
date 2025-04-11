# Stripe integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Stripe integration do?

Our Stripe integration enables automation of payment processes. Use the Stripe API within Rewst workflows to manage payments, billing, reporting, and payment portals in App Builder apps.

### Why use the Stripe integration?

* Generate new quotes programmatically and send them to customers for review
* Create draft invoices for newly added line items or subscription changes and finalize them automatically&#x20;
* Create payment links for quick, shareable checkout experiences
* Create or remove Stripe customers in response to sign-up or account-closure events

## Set up the Stripe integration

### Set up steps in Stripe

1. Log in to your Stripe dashboard.
2. If there is a **Get started with Stripe** section, copy the secret key value in the **API key** field. Note that you'll only see this section if you haven't completed your onboarding in Stripe.&#x20;
3. If that section doesn't exist, navigate to **Developers > API keys**.\
   \
   <img src="../../../../.gitbook/assets/Screenshot 2025-02-26 at 12.51.30 PM.png" alt="" data-size="original">
4. Copy the **Secret key** value under the **Standard keys** menu. You'll need this for your setup steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the Stripe integration.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-02-26 at 12.45.43 PM.png>)
3. Click on the integration tile to launch the setup page.
4. Paste the API key copied from Stripe into the **API Key** field.
5. Click **Save Configuration**.

## Test the Integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Stripe integration actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

Stripe’s up-to-date API documentation can be found [here](https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/json-api/home.htm).

| Category            | Action                             | Description                                                                                  |
| ------------------- | ---------------------------------- | -------------------------------------------------------------------------------------------- |
| **Billing**         | Accept Quote                       | Accepts the specified quote.                                                                 |
| **Billing**         | Cancel Quote                       | Cancels the quote.                                                                           |
| **Billing**         | Cancel Subscription                | Cancels a customer's subscription immediately.                                               |
| **Billing**         | Create An Invoice                  | Creates a draft invoice for a given customer.                                                |
| **Billing**         | Create An Invoice Item             | Creates an item to be added to a draft invoice (up to 250 items).                            |
| **Billing**         | Create Credit Grant                | Creates a credit grant.                                                                      |
| **Billing**         | Create Plan                        | Creates a plan (backwards compatibility with older Plans API).                               |
| **Billing**         | Create Preview Invoice             | Previews the upcoming invoice for a customer with subscription renewals, items, etc.         |
| **Billing**         | Create Price                       | Creates a new price for an existing product.                                                 |
| **Billing**         | Create Quote                       | Creates a new quote to model prices/services for a customer.                                 |
| **Billing**         | Create Subscription                | Creates a new subscription on an existing customer.                                          |
| **Billing**         | Delete An Invoice Item             | Deletes an invoice item, removing it from an invoice (if draft).                             |
| **Billing**         | Delete Plan                        | Deletes a plan, preventing new subscriptions but not affecting existing ones.                |
| **Billing**         | Expire Credit Grant                | Expires a credit grant.                                                                      |
| **Billing**         | Finalize Quote                     | Finalizes the quote.                                                                         |
| **Billing**         | Get An Invoice                     | Retrieves the invoice with the given ID.                                                     |
| **Billing**         | Get An Invoice Item                | Retrieves the invoice item with the given ID.                                                |
| **Billing**         | Get Plan                           | Retrieves the plan with the given ID.                                                        |
| **Billing**         | Get Price                          | Retrieves the price with the given ID.                                                       |
| **Billing**         | Get Quote                          | Retrieves the quote with the given ID.                                                       |
| **Billing**         | Get Subscription                   | Retrieves the subscription with the given ID.                                                |
| **Billing**         | Get An Upcoming Invoice            | Preview the upcoming invoice (including subscription renewal charges).                       |
| **Billing**         | List All Invoice Items             | Returns a list of invoice items.                                                             |
| **Billing**         | List All Invoices                  | Returns a list of invoices.                                                                  |
| **Billing**         | List All Plans                     | Returns a list of plans.                                                                     |
| **Billing**         | List All Quotes                    | Returns a list of quotes.                                                                    |
| **Billing**         | List Credit Grants                 | Retrieve a list of credit grants.                                                            |
| **Billing**         | List Subscriptions                 | Returns a list of subscriptions, optionally including canceled ones.                         |
| **Billing**         | Mark An Invoice As Uncollectible   | Mark a finalized invoice as uncollectible for accounting/bad debt.                           |
| **Billing**         | Pay An Invoice                     | Attempt payment on an invoice ahead of the normal schedule.                                  |
| **Billing**         | Resume Subscription                | Resumes a paused subscription (becomes active only after the invoice is paid).               |
| **Billing**         | Search Invoices                    | Search for invoices using Stripe’s Search Query Language.                                    |
| **Billing**         | Search Subscriptions               | Search for subscriptions using Stripe’s Search Query Language.                               |
| **Billing**         | Send An Invoice For Manual Payment | Manually sends an invoice to a customer outside the normal schedule.                         |
| **Billing**         | Update An Invoice                  | Updates an existing invoice (e.g., draft invoices can be edited fully).                      |
| **Billing**         | Update An Invoice Item             | Updates an invoice item's amount or description before it's attached to a finalized invoice. |
| **Billing**         | Update Credit Grant                | Updates a credit grant.                                                                      |
| **Billing**         | Update Plan                        | Updates the specified plan (some parameters, e.g. amount, can't be changed).                 |
| **Billing**         | Update Price                       | Updates the specified price by setting the values of the parameters passed.                  |
| **Billing**         | Update Quote                       | Updates the quote.                                                                           |
| **Billing**         | Update Subscription                | Updates an existing subscription (price, quantity, etc.).                                    |
| **Billing**         | Void An Invoice                    | Mark a finalized invoice as void (irreversible).                                             |
| **Billing**         | Void Credit Grant                  | Voids a credit grant.                                                                        |
| **Core**            | Cancel Payout                      | Cancels a payout with status pending, refunding the funds to your balance.                   |
| **Core**            | Cancel Refund                      | Cancels a refund in requires\_action state.                                                  |
| **Core**            | Capture Payment                    | Captures the payment of an uncaptured charge.                                                |
| **Core**            | Close Dispute                      | Closes a dispute, indicating no further evidence is submitted, marking it lost.              |
| **Core**            | Create Customer                    | Creates a new customer object.                                                               |
| **Core**            | Create Payment Intent              | Creates a PaymentIntent object (confirm to create the charge).                               |
| **Core**            | Create Payout                      | Sends funds to your own bank account. Stripe balance must cover the payout amount.           |
| **Core**            | Create Refund                      | Refunds an existing charge or PaymentIntent.                                                 |
| **Core**            | Delete Customer                    | Permanently deletes a customer, cancelling any active subscriptions.                         |
| **Core**            | Get Balance                        | Retrieves the current account balance.                                                       |
| **Core**            | Get Balance Transaction            | Retrieves a specific balance transaction.                                                    |
| **Core**            | Get Charge                         | Retrieves a previously created charge.                                                       |
| **Core**            | Get Customer                       | Retrieves a Customer object.                                                                 |
| **Core**            | Get Dispute                        | Retrieves the dispute with the given ID.                                                     |
| **Core**            | Get Payout                         | Retrieves the details of an existing payout.                                                 |
| **Core**            | Get Refund                         | Retrieves the details of an existing refund.                                                 |
| **Core**            | List All Balance Transactions      | Returns a list of account balance transactions.                                              |
| **Core**            | List All Charges                   | Returns a list of charges you’ve created.                                                    |
| **Core**            | List All Customers                 | Returns a list of your customers.                                                            |
| **Core**            | List All Disputes                  | Returns a list of your disputes.                                                             |
| **Core**            | List All Payouts                   | Returns a list of existing payouts.                                                          |
| **Core**            | List All Refunds                   | Returns a list of all refunds you created.                                                   |
| **Core**            | Reverse Payout                     | Reverses a payout by debiting the destination bank account (only certain conditions).        |
| **Core**            | Search Charges                     | Searches charges using Search Query Language.                                                |
| **Core**            | Search Customers                   | Searches customers using Search Query Language.                                              |
| **Core**            | Update Charge                      | Updates an existing charge’s metadata or description.                                        |
| **Core**            | Update Customer                    | Updates a customer (e.g. source card, address, etc.).                                        |
| **Core**            | Update Dispute                     | Submits evidence to dispute a charge or indicates you have no evidence.                      |
| **Core**            | Update Payout                      | Updates a payout’s metadata.                                                                 |
| **Core**            | Update Refund                      | Updates a refund’s metadata.                                                                 |
| **Generic Request** | Generic Stripe API Request         | Generic action for making authenticated requests against the Stripe API                      |
| **Payment Links**   | Create Payment Link                | Creates a payment link.                                                                      |
| **Payment Links**   | Get Payment Link                   | Retrieves a payment link by ID.                                                              |
| **Payment Links**   | Get Payment Link's Line Items      | Retrieves the full (paginated) list of line items from a payment link.                       |
| **Payment Links**   | List All Payment Links             | Returns a list of your payment links.                                                        |
| **Payment Links**   | Update Payment Link                | Updates a payment link.                                                                      |
| **Products**        | Create Price                       | Creates a new price for an existing product.                                                 |
| **Products**        | Create Product                     | Creates a new product.                                                                       |
| **Products**        | Delete Product                     | Deletes a product if it has no associated prices (and if type=good, no SKUs).                |
| **Products**        | Get Price                          | Retrieves the price with the given ID.                                                       |
| **Products**        | Get Product                        | Retrieves an existing product by ID.                                                         |
| **Products**        | List All Prices                    | Returns a list of your active prices.                                                        |
| **Products**        | List All Products                  | Returns a list of products, sorted by creation date.                                         |
| **Products**        | Search Prices                      | Search for prices you created using Search Query Language.                                   |
| **Products**        | Search Products                    | Search for products you created using Search Query Language.                                 |
| **Products**        | Update Price                       | Updates the specified price.                                                                 |
| **Products**        | Update Product                     | Updates the specified product.                                                               |
| **Reporting**       | Create Report Run                  | Creates a new object and begin running the report. Some types require live mode.             |
| **Reporting**       | Get Report Run                     | Retrieves details of an existing Report Run.                                                 |
| **Reporting**       | List All Report Runs               | Returns a list of Report Runs, with the most recent first.                                   |
| **Reporting**       | List All Report Types              | Returns a full list of Report Types.                                                         |
| **Reporting**       | Retrieve Report Type               | Retrieves details of a specific Report Type.                                                 |
