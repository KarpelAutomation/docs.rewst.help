# AI Ticket Categorization Crate

{% hint style="info" %}
For users of Azure OpenAI instance

Note that this Crate works for both OpenAI and OpenAI with an Azure instance.\
In order to use the Azure instance, you will need to follow the [Azure OpenAI Integration Setup](../../configuration/integrations/integration-guides/openai/azure-openai-integration-setup.md) steps and follow the below steps.\
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the AI Ticket Categorization Crate do?

This Crate uses AI to automatically determine the best categorization for newly created PSA tickets. Once a category is identified, the Crate updates the ticket with the suggested categorization, simplifying ticket management and improving organizational efficiency.

* Choose the AI model to use for ticket analysis, as this Crate works with both OpenAI and Anthropic.
* Customize AI's maximum tokens used using [organization variables](openai-ticket-categorisation-setup.md#organization-variables-associated-with-this-crate).
* Enable or disable error reporting directly on the ticket.

This Crate does not resolve tickets or make changes outside of categorization. It strictly assigns ticket types based on ticket details and records notes for reference. Any further ticket modifications or actions must be handled manually.

### How the Crate works

The Crate workflow is triggered by a **webhook** whenever a new ticket is created in the PSA system.

* It collects ticket details, such as ID, title, and description, to prepare for categorization.
* AI recommends the most suitable ticket type and subtype based on the content and context of the ticket.
* The workflow updates the ticket type and leaves an internal note summarizing the analysis results and documenting any errors or issues.

## Crate prerequisites

*   Before unpacking the Crate, you'll need to have the integration for one of the following PSAs set up:

    * [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
    * [Datto PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
    * [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
    * [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)

    If you're using a PSA that isn't on this list, please let us know. Our support team will look at whether it has the ability to trigger an automation based on a ticket being created.
* You'll also need to have the one of the following AI integrations set up in Rewst before unpacking this Crate:
  * [OpenAI](../../configuration/integrations/integration-guides/openai/openai-integration-setup.md)&#x20;
  * [Anthropic](../../configuration/integrations/integration-guides/anthropic-integration.md)
* Remember, you can also set up an Azure instance of OpenAI, and use that with this Crate. If you want to use an Azure instance of OpenAI with this Crate, you'll need to follow the Azure OpenAI Integration Setup steps to have this completed before unpacking.

## Unpack the OpenAI Ticket Categorization Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `AI Ticket Categorization`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-12-02 at 12.08.26 PM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4.  Click **Unpack Crate.**<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-12-02 at 1.24.17 PM.png" alt=""><figcaption></figcaption></figure>
5. Choose your desired PSA from the drop-down selector. This is especially important for customers using multiple PSAs.&#x20;
6. Choose the AI provider that you wish to use from the drop-down selector.&#x20;
7. Choose the AI provider again in the **AI Provider** drop-down selector. Choose the **AI Model** of that provider that you would like to use with the Crate.&#x20;
8. Choose if you would like to **Report errors in ticket when unable to utilize AI**.
9. Click **Continue**.
10. Triggers for all possible PSAs are included in this Crate. By default, they're disabled, and only the PSA indicated by your choice in the drop-down selector used in the previous step will be enabled.

<figure><img src="../../../.gitbook/assets/DisabledTriggers.png" alt=""><figcaption><p>Disable the unused triggers</p></figcaption></figure>

<figure><img src="../../../.gitbook/assets/Enabledtriggers.png" alt=""><figcaption><p>Enabled Trigger</p></figcaption></figure>

### Test the Crate

Create a ticket in your PSA with a typical description and summary.

<figure><img src="../../../.gitbook/assets/HaloPSANote.png" alt=""><figcaption></figcaption></figure>

## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

These organization variables give you more control over the functionality of this workflow.

* `ORG.VARIABLES.ticket_cat_max_tokens` - Allows you to manually set the max tokens
* `ORG.VARIABLES.ai_model_ticket_cat` - Allows you to manually set the model

## Increase the success rate of categorization

* Creating more types, subtypes, and items in your PSA will give OpenAI more choices to choose from to better fit the response.
* Choosing a different model may improve your response. Note that different models have different price points. See more on OpenAI's model pricing [here](https://openai.com/api/pricing/).&#x20;

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
