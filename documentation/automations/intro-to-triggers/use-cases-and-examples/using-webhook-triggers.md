# Use webhook triggers

## What is a webhook trigger?

_Webhook triggers_ are an effective way to kick off a workflow with context from external systems. By sending an API request to a webhook trigger, Rewst will fire the workflow and include any data and or queries included in the request. For example, when a customer submits a support ticket, a webhook instantly sends that information to Rewst and starts a workflow.<br>

{% hint style="warning" %}
When using webhook triggers, design your workflow with our [rate limiting policy](../../../../security/webhook-trigger-rate-limits.md) in mind.&#x20;
{% endhint %}

### **Webhook trigger process**

Webhooks follow a simple process:

1. An event happens, such as a new ticket is submitted.
2. The webhook sends a message, called a payload, to a URL.
3. A workflow is triggered based on that message.

### **Webhook URLs**

A _webhook URL_ is a unique address where data is received for that particular webhook. It continuously listens for data, and kicks off the related workflow the moment data is received. Once that data is captured, we call it a _payload_, and it becomes usable inside the workflow. This allows you to do things like:

* Assign tasks based on field values
* Push updates to other systems
* Send messages or alerts
* Store or log information for reporting

Webhook URLs are formatted consistently using the trigger ID and organization ID. The format is as follows: `https://engine.rewst.io/webhooks/custom/trigger/{{ Trigger ID }}/{{ Organization ID }}`

## Create the workflow

In the Rewst platform:

1. Navigate to **Workflows > Create**.
2. Enter a workflow name, like `My First Webhook Trigger`.
3. Click **Submit** to proceed to a blank workflow creation screen.
4. Add a single [no-op](../../actions-in-rewst/core-actions.md#no-operation-noop) action to the canvas. Name it `BEGIN`
5. Click **Publish** to save your workflow. No other actions are needed, as you'll just be working with triggers.
6. Click **Add Trigger** at the top of your workflow builder.

<figure><img src="../../../../.gitbook/assets/image (31).png" alt=""><figcaption></figcaption></figure>

## **Create the webhook trigger**

1. Name your trigger.
2. Toggle **Enable** on.
3. Choose the trigger type **Core - Webhook**.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-02-21 at 12.50.29 PM.png>)

## **Set trigger parameters**

_Parameters_ are like fill-in-the-blank options that make workflows adaptable. Webhooks deliver data to workflows, and parameters use that data to customize actions. For example, instead of hardcoding a date, you could use a parameter called `ReminderDate` to customize it each time the workflow runs.

The following parameters are available for editing in workflow trigger configuration:

* **Allowed methods**
  * Used to define which HTTP request method is accepted by the trigger. Attempting to send a request with a method not in this list will result in an error.
* **Include raw body**
  * Whether to include the raw string sent in the request body in the results as `raw_body` .
* **Response body**
  * Content to return in response body. `{{ REQUEST }}` may be used to access request data.
* **Response headers**
  * HTTP headers to include in response. `{{ REQUEST }}` may be used to access request data.
  * **TIP:** Set your content type here if returning a specific format of data, such as `text\html` .
* **Response status**
  * HTTP status to return in response. `{{ REQUEST }}` may be used to access request data.
* **Secret key**
  * Required to Wait For Results. This value must be included in the header as x-rewst-secret when making calls to this webhook. You will receive a 401 if this field is filled out and the secret key is not provided when making the request. Secrets can be defined in the Organization Variables section of the UI.
* **Wait for results**
  * If true, this calls to the trigger endpoint will redirect to a results endpoint that will return the output of the workflow.

<figure><img src="../../../../.gitbook/assets/Screenshot 2026-02-24 at 10.17.00 AM.png" alt=""><figcaption></figcaption></figure>

## **Access data in a webhook trigger request**

When a webhook receives a request, it will include data received in the following schema:

```json
{
    body:{},
    headers:{},
    method:"",
    params:{},
    timestamp:""
}
```

Data can then be pulled from this as context variables. For example, to access the value for `test` sent to the webhook as:

```json
{
    "test": "Hello, World!"
}
```

The value can be accessed at `{{ CTX.body.test }}`.

Similarly, if a URL parameter is sent as `?test=Hello`, this can be accessed at `{{ CTX.params.test }}`

#### Webhook payload example

Below is a real webhook payload that was received in a Rewst workflow. You can view payloads in the [workflow results](../../workflows/troubleshoot-workflow-executions-and-task-results.md#workflow-executions-for-troubleshooting) for that particular workflow.

```
{
  "ticket_id": 67890,
  "customer": "Jamie Smith",
  "priority": "high",
  "issue": "Password reset not working"
}
```

* The customer is named Jamie Smith.
* The priority level of high indicates the urgency of the ticket.
* The next logical step in a workflow might be to assign the ticket for resolution, since the issue is a password reset problem that must be solved by human intervention.

## Trigger criteria and webhook triggers

Once you connect an external tool to Rewst with a webhook, you may run into a problem: too many workflows firing at once. Every webhook that hits your Rewst URL will start the workflow, even if the event isn’t important. That can quickly eat up task cost and make it harder to focus on what matters. [Trigger criteria](../trigger-criteria.md) solve this by acting as filters. They check the webhook data against conditions you set, and only start the workflow if those conditions are met. You can add as many conditions as you need, across any attributes available in the webhook data.&#x20;

<br>

\
<br>
