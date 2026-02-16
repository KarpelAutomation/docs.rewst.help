# Custom integrations

_Custom integrations_ allow Rewst users to build their own integrations tailored specifically to their organization's needs. Integrate workflows with any service that exposes an API, even if Rewst doesn't currently have a native integration with that vendor.

{% hint style="warning" %}
Currently, there is documentation for both V1 and V2 of Rewst's custom integrations on this site. All new custom integrations should be set up using the method for V2. V1 documentation remains to assist existing customers with their migration from V1 to V2.
{% endhint %}

## Why use custom integrations?&#x20;

* Build integrations that are perfectly tailored to your unique automations requirements.&#x20;
* Custom integration supports both modern and legacy APIs by accepting Swagger, [OpenAPI specifications](https://www.openapis.org/), or allowing you to build your own integration from scratch.&#x20;
* Automatically generate actions from API definitions, which can be used in workflows without manual coding.&#x20;
* Manage who in your organization or in sub-organizations can see and use the integrations.&#x20;
* Easily manage the lifecycle of your integrations with statuses like draft, published, deprecated, and hidden.&#x20;

## How to use custom integrations&#x20;

### Enable custom integrations in your Rewst instance

{% hint style="info" %}
Custom integrations can only be enabled by users with the Rewst Admin role.&#x20;
{% endhint %}

1. Navigate to **Settings > Feature Preview** in the right side menu of your Rewst platform.
2. Click **Custom Integrations V2.**
3. Click **Enable**. A green confirmation message will appear at the top of your screen.
4. Whenever you wish, you may click **Disable** to turn off the custom integrations functionality for your instance, from this same menu.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-10-23 at 4.57.06 PM.png" alt=""><figcaption><p>The custom integrations screen</p></figcaption></figure>

### Supported schemas

{% tabs %}
{% tab title="Supported authorization schemas" %}
{% hint style="info" %}
An _authorization schema_ defines the rules, methods, and structures for controlling user access to resources, determining who can do what, after authentication confirms their identity. It's a system that dictates access rights, ensuring users only see or interact with what they're allowed, such as a department report page intended only for admins.&#x20;
{% endhint %}

* None&#x20;
* API key&#x20;
* Basic authorization&#x20;
* OAuth 2.0 with the following grant types&#x20;
* Client Credentials&#x20;
* Authorization code&#x20;
* No grant type&#x20;
{% endtab %}

{% tab title="Supported pagination schemas" %}
{% hint style="info" %}
A _pagination schema_ defines how large datasets are broken into smaller, manageable chunks- usually pages- for display, managing the data structure and communication between front-end and back-end, ensuring efficient loading, better user experience, and improved performance by limiting server strain and response times. It's a convention for requesting, processing, and delivering subsets of data, rather than the whole set at once.&#x20;
{% endhint %}

* None&#x20;
* Index&#x20;
* Page&#x20;
* Link&#x20;
* Pointer &#x20;
{% endtab %}
{% endtabs %}

## Edit and manage integrations&#x20;

Once an integration is created, you can edit it by navigating to the integration's detail page. Here, you can:&#x20;

* Change the visibility status of the integration - **Hidden** or **Published**.&#x20;
* Modify existing actions or add new actions or mark them as deprecated.&#x20;
* Delete the integration - note that the integration must be uninstalled from all sub-organizations first.&#x20;

## Use custom integrations in workflows&#x20;

Once your custom integration is set up, you can use it in your workflows and tasks using the `Custom API Request` action. You select which custom integration configuration to use for a workflow using `Integration Overrides`, which is covered in more detail in our documentation on [multi-instance](../multi-instance-integration/) integration.

{% columns %}
{% column %}
<figure><img src="../../../../.gitbook/assets/custom-integrations-action.png" alt=""><figcaption></figcaption></figure>


{% endcolumn %}

{% column %}
<figure><img src="../../../../.gitbook/assets/image (4) (4).png" alt=""><figcaption></figcaption></figure>


{% endcolumn %}
{% endcolumns %}
