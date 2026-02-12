---
icon: traffic-light
---

# Webhook trigger rate limits

{% hint style="info" %}
_Rate limiting_ is a technique to control the number of requests a user or application can make to a service within a specific time frame. It's used to prevent system overload, ensure fair usage, and protect against attacks like DDoS or scraping by temporarily slowing or rejecting requests that exceed predefined limits.

Rewst will enable rate limits for our webhook triggers on February 17, 2026. Existing customers should see the section [Existing customer rate limit transition](webhook-trigger-rate-limits.md#existing-customer-rate-limit-transition) for instructions on how to prepare.&#x20;
{% endhint %}

To ensure platform reliability and consistent performance for the entire platform, Rewst applies rate limits to inbound webhook triggers.

{% hint style="info" %}
Current limits per trigger

* 25 requests per second
* 1000 requests per minute

These limits apply individually to each webhook trigger, not to your organization as a whole. Our integrations operate well within these thresholds under normal conditions.
{% endhint %}

## Common causes of rate limit errors

* Misconfigured integrations sending duplicate events
* Bulk operations triggering large volumes of webhooks simultaneously
* Retry storms from upstream services

## Response when limit is exceeded

If your webhook traffic exceeds our limits, Rewst will respond with an HTTP `429 Too Many Requests` status code. This is a [standard response](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status) that signals the sending service to [slow down and retry](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Retry-After), and is displayed in the header of the webhook response.&#x20;

As webhook requests originate from external platforms, Rewst can't retry the request on your behalf. The event is lost once it's rejected, unless the external platform is configured to retry on 429 responses. However, most well-designed webhook senders will automatically back-off and retry when they receive a 429 response. Note that Rewst has built integrations with MSP-requested tools, and not all tools have 429 responses built in yet.&#x20;

## How to resolve and prevent rate limit issues

{% hint style="warning" %}
Naive immediate retries will cause loops and continued rate limiting.
{% endhint %}

* Review your integration configuration to ensure that events aren't being sent multiple times.
* Verify that upstream services are correctly handling 429 responses and implementing back-off.
* If you're performing bulk operations, consider spacing them out over time.
* Add delays or exponential back-off before retrying.&#x20;
* Filter events before sending requests. Configure the source system to only emit webhook events that are actually needed: limit event types, scopes, objects, environments, etc.
* If supported, batch or consolidate events. Prefer sending fewer webhook requests that contain multiple changes or events, or use built-in batching aggregation options on the source platform to reduce request volume.
* Contact [Rewst support](../support-and-community/roc-support/) if you need further guidance on how to prevent rate limiting.

## Webhook integration triggers reference table

| integration\_name  | trigger\_type\_name           | description                                                                       |
| ------------------ | ----------------------------- | --------------------------------------------------------------------------------- |
| Core               | Form Submission               |                                                                                   |
| Core               | Webhook                       |                                                                                   |
| ConnectWise PSA    | Activity Record Saved         | Receive notifications when an Activity record has been created or updated.        |
| ConnectWise PSA    | Agreement Record Saved        | Receive notifications when an Agreement record has been created or updated.       |
| ConnectWise PSA    | Company Record Saved          | Receive notifications when a Company record has been created or updated.          |
| ConnectWise PSA    | Configuration Record Saved    | Receive notifications when a Configuration record has been created or updated.    |
| ConnectWise PSA    | Contact Record Saved          | Receive notifications when a Contact record has been created or updated.          |
| ConnectWise PSA    | Document Record Saved         | Receive notifications when a Document record has been created or updated.         |
| ConnectWise PSA    | Opportunity Record Saved      | Receive notifications when an Opportunity record has been created or updated.     |
| ConnectWise PSA    | Product Catalog Record Saved  | Receive notifications when a Product Catalog record has been created or updated.  |
| ConnectWise PSA    | Project Record Saved          | Receive notifications when a Project record has been created or updated.          |
| ConnectWise PSA    | Service Board Record Saved    | Receive notifications when a Service Board record has been created or updated.    |
| ConnectWise PSA    | Service Location Record Saved | Receive notifications when a Service Location record has been created or updated. |
| ConnectWise PSA    | Service Ticket Record Saved   | Receive notifications when a Service Ticket record has been created or updated.   |
| ConnectWise PSA    | Survey Record Saved           | Receive notifications when a Survey record has been created or updated.           |
| ConnectWise PSA    | Ticket Note Record Saved      | Receive notifications when a Ticket Note record has been created or updated.      |
| ConnectWise PSA    | Workflow Rule Record Saved    | Receive notifications when a Workflow Rule record has been created or updated.    |
| ConnectWise PSA    | Workflow Rule Triggered       | Receive notifications when a Workflow Rule gets triggered.                        |
| Datto PSA          | Company Created               | Triggers when a new company is created.                                           |
| Datto PSA          | Company Updated               | Triggers when a company is updated.                                               |
| Datto PSA          | Contract Created              | Triggers when a new contract is created.                                          |
| Datto PSA          | Contract Updated              | Triggers when a contract is updated.                                              |
| Datto PSA          | Invoice Created               | Triggers when a new invoice is created.                                           |
| Datto PSA          | Invoice Updated               | Triggers when an invoice is updated.                                              |
| Datto PSA          | Opportunity Created           | Triggers when a new opportunity is created.                                       |
| Datto PSA          | Opportunity Updated           | Triggers when an opportunity is updated.                                          |
| Datto PSA          | Ticket Created                | Triggers when a new ticket is created.                                            |
| Datto PSA          | Ticket Updated                | Triggers when a ticket is updated.                                                |
| QuickBooks Online  | Customer created or updated   | Triggers when a customer is created or updated in QuickBooks Online.              |
| QuickBooks Online  | Invoice created or updated    | Triggers when an invoice is created or updated in QuickBooks Online.              |
| QuickBooks Online  | Payment created or updated    | Triggers when a payment is created or updated in QuickBooks Online.               |
| Slack              | Message posted                | Triggers when a message is posted in a Slack channel.                             |
| Slack              | Reaction added                | Triggers when a reaction is added to a message in Slack.                          |
| Stripe             | Charge succeeded              | Triggers when a charge succeeds in Stripe.                                        |
| Stripe             | Customer created              | Triggers when a customer is created in Stripe.                                    |
| Stripe             | Invoice paid                  | Triggers when an invoice is paid in Stripe.                                       |

## Existing customer rate limit transition

Rewst recommends evaluating your applications that send automated HTTP requests to Rewst before the transition date to ensure your webhook triggers are not exceeding the fair use limits put in place.
