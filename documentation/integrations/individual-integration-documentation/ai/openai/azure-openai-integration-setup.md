# Azure OpenAI integration setup

### Azure OpenAI Integration Setup

1. **Navigate** to your [Microsoft Azure Portal](https://portal.azure.com).
2. **Click** the ➕ button to Create a Resource.

<figure><img src="../../../../../.gitbook/assets/azure-ai-01 (1).png" alt=""><figcaption></figcaption></figure>

3. **Search** for _Azure OpenAI_.
4. **Choose** _Azure OpenAI_.

<figure><img src="../../../../../.gitbook/assets/azure-ai-02.png" alt=""><figcaption></figcaption></figure>

5. **Request** access to the Azure OpenAI service.

{% hint style="info" %}
You must fill out a form to request access to the Azure OpenAI service
{% endhint %}

<figure><img src="../../../../../.gitbook/assets/azure-ai-03.png" alt=""><figcaption></figcaption></figure>

6. **Wait** for the Welcome Email.

{% hint style="warning" %}
Note that activation of the service can take up to 48 hours, based on Microsoft's timelines (so who knows, somewhere between 3 minutes and 7 days maybe?)
{% endhint %}

<figure><img src="../../../../../.gitbook/assets/azure-ai-04.png" alt=""><figcaption></figcaption></figure>

7. **Return** to the Azure Portal upon receiving the approval email.
8. **Create** the OpenAI Service in your Azure subscription.

<figure><img src="../../../../../.gitbook/assets/azure-ai-05.png" alt=""><figcaption></figcaption></figure>

9. **Navigate** to _Model deployments_.

<figure><img src="../../../../../.gitbook/assets/azure-ai-06.png" alt=""><figcaption></figcaption></figure>

10. **Create** a new Deployment.

<figure><img src="../../../../../.gitbook/assets/azure-ai-07.png" alt=""><figcaption></figcaption></figure>

11. **Choose** _gpt-35-turbo model_.
12. **Name** the deployment the same. This will keep things easier to remember.

<figure><img src="../../../../../.gitbook/assets/azure-ai-08.png" alt=""><figcaption></figcaption></figure>

13. **Return** to the OpenAI Resource in the Azure Portal.
14. **Navigate** to _Keys and Endpoint_.
15. **Copy** a Key to your clipboard
16. **Collect** the region & endpoint. You'll need it to craft for your Base URL in Rewst.

<figure><img src="../../../../../.gitbook/assets/azure-ai-09.png" alt=""><figcaption></figcaption></figure>

16. **Return** to Rewst.
17. **Navigate** to _Integrations_.
18. **Choose** OpenAI.

### Configuring Azure OpenAI with Existing OpenAI Integrations

If you already have an OpenAI integration configured, you can add an instance for Azure.

1. **Click** the drop-down → _Add Configuration_.

<figure><img src="../../../../../.gitbook/assets/azure-ai-10.png" alt=""><figcaption></figcaption></figure>

2. **Name** the configuration (example: "Azure" ).
3. **Confirm** your Base URL reflects the accurate resource and region collected from Azure. Incorrect URLs will prevent Rewst from accessing the OpenAI service.
4. **Add** the _Azure API Version_.

{% hint style="warning" %}
### Crafting the Base URL

The Base URL is what directs Rewst to communicate with the correct Azure OpenAI instance. Here’s how to construct it:

**Anatomy of the Base URL**: The standard structure of the Base URL provided by Azure typically looks like this: `https://<resource-name>.openai.azure.com/openai/deployments/<deployment-name>`

* If you are using GPT 3.5 Turbo, for example, you will append it to the URL like so: `https://<resource-name>.openai.azure.com/openai/deployments/gpt-35-turbo`

**Customize Your Base URL**: Depending on your service instance or specific requirements, you may need to alter the base URL. For example:

* If you have a custom deployment named `custom-model`, you might append it to the URL like so: `https://<resource-name>.openai.azure.com/openai/deployments/<custom-model>`
* Ensure you replace `<resource-name>, <deployment-name>, and/or` `<custom-model>` with the actual information from your Azure OpenAI service.
{% endhint %}

<figure><img src="../../../../../.gitbook/assets/azure-ai-11.png" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
You must complete the Azure API Version field, otherwise, the integration will fail.
{% endhint %}

### Configuring Workflow Triggers to Use Azure OpenAI

If this is your second instance of OpenAI (you configured the direct OpenAI integration before) then you may adjust your workflow triggers to choose which version of the integration you want to use in your workflows.

1. **Navigate** to _Integration Overrides_.
2. **Click** Add (the ➕ button).
3. **Choose** OpenAI for _Integration_.
4. **Choose** between your OpenAI integration instances to use in _Integration Configuration_.

<figure><img src="../../../../../.gitbook/assets/azure-ai-12.png" alt=""><figcaption></figcaption></figure>
