# Custom integrations

## Introduction&#x20;

_Custom Integrations_ allow Rewst users to build their own integrations tailored specifically to their organization's needs. Integrate workflows with any service that exposes an API, enhancing automation and efficiency within your operations.&#x20;

{% hint style="warning" %}
Currently, there is documentation for both V1 and V2 of Rewst's custom integrations on this site. All new custom integrations should be set up using the method for V2. V1 documentation remains to assist existing customers with their migration from V1 to V2.
{% endhint %}

## Why use custom integrations?&#x20;

* **Flexibility:** Build integrations that are perfectly tailored to your unique automations requirements.&#x20;
* **Compatibility:** Supports both modern and legacy APIs by accepting Swagger, [OpenAPI specifications](https://www.openapis.org/), or building your own integration from scratch.&#x20;
* **Ease of use:** Automatically generate actions from API definitions, which can be used in workflows without manual coding.&#x20;
* **Visibility control:** Manage who in your organization or in sub-organizations can see and use the integrations.&#x20;
* **Lifecycle management:** Easily manage the lifecycle of your integrations with statuses like draft, published, deprecated, and hidden.&#x20;

## How to use custom integrations&#x20;

To understand how to create a custom integration in Rewst, check out the walkthrough on the page for more information.

{% tabs %}
{% tab title="Supported authorization schemas" %}
* None&#x20;
* API key&#x20;
* Basic authorization&#x20;
* OAuth 2.0 with the following grant types&#x20;
* Client Credentials&#x20;
* Authorization code&#x20;
* No grant type&#x20;
{% endtab %}

{% tab title="Supported pagination schemas" %}
* None&#x20;
* Index&#x20;
* Page&#x20;
* Link&#x20;
* Pointer &#x20;
{% endtab %}
{% endtabs %}

## Edit and manage integrations&#x20;

Once an integration is created, you can edit it by navigating to the integration's detail page. Here, you can:&#x20;

* Change the visibility status of the integration (Hidden or Published).&#x20;
* Modify existing actions or add new actions or mark them as deprecated.&#x20;
* Delete the integration (Note: The integration must be uninstalled from all sub-organizations first).&#x20;

## Use custom integrations in workflows&#x20;

After creating and configuring your integration, you can use it in workflows by adding actions from your custom integration to the workflow. &#x20;
