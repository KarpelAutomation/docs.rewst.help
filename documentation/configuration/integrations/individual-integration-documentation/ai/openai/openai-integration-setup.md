# OpenAI integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the OpenAI integration do?&#x20;

Our OpenAI integration enables the automation of AI-powered tasks. By leveraging the OpenAI API, Rewst.io can tap into advanced natural language processing (NLP) models and AI capabilities provided by OpenAI. This integration allows Rewst.io to offer intelligent text analysis, generation, and understanding, enabling users to interact with the application in more intuitive and efficient ways.

## Set up the OpenAI integration

### Set up steps in OpenAI

1. Log in to OpenAI.
2. Navigate to the API Keys page.
3. Create a new secret key for Rewst to use.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `OpenAI` in the integrations page.\
   \
   ![A dark-themed information card titled "OpenAI" featuring the OpenAI logo at the top. The card describes how the OpenAI integration enables automation of AI-powered tasks within Rewst. It highlights the use of the OpenAI API in workflows for text completion, code completion, image generation, and more. The last update date is listed as August 13th, 2024. At the bottom, there are three labeled tags: "Artificial Intelligence," "Images," and "Messaging."](<../../../../../../.gitbook/assets/Screenshot 2025-05-01 at 2.02.18 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Enter the API key copied from OpenAI into the relevant field.
5. If you are using the integration in conjunction with Azure, see our separate documentation for those steps to find the **Azure API Version** field value [here](azure-openai-integration-setup.md). If you aren't using Azure with OpenAI, leave the **Use Azure OpenAI** set to **False**.
6. Optionally, if you belong to multiple organizations, you can specify the **OpenAI Organization ID** to use.
7. Click **Save Configuration**.

## Actions and endpoints

OpenAI's own API documentation can be found [here](https://platform.openai.com/docs/api-reference/introduction).&#x20;

| Category             | Action                 | Description                                                                                                             |
| -------------------- | ---------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| **Chat Completions** | Create Chat Completion | Given a chat conversation, the model will return a chat completion response.                                            |
| **Completions**      | Create Completion      | Creates a completion for the provided prompt and parameters                                                             |
| **Edits**            | Create Edit            | Creates a new edit for the provided input, instruction, and parameters.                                                 |
| **Generic Request**  | OpenAI API Request     | Generic action for making authenticated requests against the OpenAI API                                                 |
| **Images**           | Create Image           | Creates an image given a prompt (Beta).                                                                                 |
| **Models**           | List Models            | Lists the currently available models, and provides basic information about each one such as the owner and availability. |
| **Models**           | Get Model              | Retrieves a model instance, providing basic information about the model such as the owner and permissioning.            |
| **Moderations**      | Create Moderation      | Given a input text, outputs if the model classifies it as violating OpenAI's content policy.                            |
