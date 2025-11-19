# Configure a webhook trigger for CORS requests

{% hint style="info" %}
Though this is related to triggers, it's most often used in conjunction with App Builder. Learn more about Rewst's App Builder in our documentation [here](../../../app-builder/).&#x20;
{% endhint %}

## What is a CORS request?

When referencing a Rewst web hook in JavaScript in an App Builder page— or outside of Rewst— you may see the error `TypeError: Failed to fetch.` This happens when the browser blocks your request because it does not allow _cross-origin_ requests by default.

To make your webhook accessible from a web page, you must configure _CORS (Cross-Origin Resource Sharing)_ headers and enable OPTIONS requests on your webhook.

{% hint style="info" %}
Note that **wait for webhook** cannot be set to `true` for this to work
{% endhint %}

## Add CORS headers to your web hook response

1. Open your webhook trigger inside the workflow.
2.  Open the response headers.\


    <figure><img src="../../../../.gitbook/assets/image (254).png" alt=""><figcaption></figcaption></figure>
3. Add the following headers:

```django
{
"Content-Type": "application/json",
"Access-Control-Allow-Origin": "https://YOURDOMAINHERE",
"Access-Control-Allow-Methods": "POST, GET, OPTIONS",
"Access-Control-Allow-Headers": "Content-Type"
}
```

<figure><img src="../../../../.gitbook/assets/image (255).png" alt=""><figcaption></figcaption></figure>



{% hint style="warning" %}
**Important -** Match the _exact_ origin of your site.

> ✅ [https://bclimer-cors-test.rew.st](https://bclimer-cors-test.rew.st)

> ❌ [https://bclimer-cors-test.rew.st/](https://bclimer-cors-test.rew.st/)

Avoid using \* unless the webhook is fully public and returns no sensitive data.
{% endhint %}

## Reference table

| Header                       | Description                              | Example                                                              |
| ---------------------------- | ---------------------------------------- | -------------------------------------------------------------------- |
| Access-Control-Allow-Origin  | Defines which site may call your webhook | [https://your-frontend-domain.com](https://your-frontend-domain.com) |
| Access-Control-Allow-Methods | Lists allowed HTTP verbs                 | GET, POST, OPTIONS                                                   |
| Access-Control-Allow-Headers | Lists allowed custom headers             | Content-Type                                                         |
| OPTIONS                      | Preflight permission check               | Must return 200 with headers                                         |

## Handle OPTIONS preflight requests

Browsers send an _OPTIONS_ request before certain POST or PUT requests to confirm that CORS is allowed. Your webhook must allow OPTIONS requests for this to succeed.

Add OPTIONS under the **Allowed Methods** field of your **Trigger Parameters** menu in workflow setting&#x73;**.**

<figure><img src="../../../../.gitbook/assets/image (256).png" alt=""><figcaption></figcaption></figure>

## Troubleshoot the CORS webhook trigger

#### Trailing slash in origin

Try removing the slash from the end of your domain.

#### Missing OPTIONS handler

Add the OPTIONS method to the webhook.
