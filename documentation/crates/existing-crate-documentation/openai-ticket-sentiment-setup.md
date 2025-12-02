# AI Ticket Sentiment Analysis Crate

{% hint style="info" %}
For users of Azure OpenAI instance

Note that this Crate works for both OpenAI and OpenAI with an Azure instance.\
In order to use the Azure instance, you will need to follow the [Azure OpenAI Integration Setup](../../configuration/integrations/integration-guides/openai/azure-openai-integration-setup.md) steps and follow the below steps. \
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the AI Ticket Sentiment Analysis Crate do?

Our AI Ticket Sentiment Analysis Crate uses AI to analyze a customer ticket's details to determine its impact, urgency, priority, and sentiment. It automates the process by updating these fields in your PSA system, handling ticket escalations, and adding a note with the analysis results.&#x20;

Customize and configure the following for this Crate:

* Choose the AI model to use for ticket analysis, as this Crate works with both OpenAI and Anthropic.
* Customize AI's maximum tokens used using [organization variables](openai-ticket-sentiment-setup.md#organization-variables-associated-with-this-crate).
* Choose which fields to update in the PSA system: impact, urgency, and sentiment.
* Define impact, urgency, and sentiment thresholds for automatic priority updates and escalations.
* Assign tickets to specific PSA members when thresholds are exceeded.&#x20;

This Crate doesn't manually resolve tickets or perform actions outside of analyzing and updating specific fields. Further ticket management actions will need to be handled separately.

### How the Crate works

The Crate workflow is triggered by a **webhook** whenever a new ticket is created in the PSA system.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action to initiate the process.
2. The **set\_model** task uses the **noop** action to configure AI model settings and determines which AI model to use based on organization variables.
3. The **is\_model\_set** task uses the **noop** action to check if an AI model is properly configured and routes to the failure path if no model is detected.
4. The **get\_max\_tokens** task uses the **noop** action to retrieve the maximum token limit for the AI model from organization variables or model defaults.
5. The **is\_max\_tokens\_set** task uses the **noop** action to validate token configuration and routes to a warning task if tokens are not properly set.
6. The **max\_tokens\_not\_set** task uses the **noop** action to log a warning message about missing token configuration before continuing.
7. The **get\_ticket\_variables** task uses the **AI:Format PSA Ticket Variables** action to extract and format ticket information from the PSA system.
8. The **get\_note\_information** task uses the **PSA:Get Note Information** action to retrieve additional ticket notes and user messages from the PSA.
9. The **check\_psa** task uses the **noop** action to determine which PSA system is being used and branches the workflow accordingly.
10. If Halo PSA is detected, the **get\_halo\_psa\_impacts** task uses the **HaloPSA API Request** action to retrieve available impact options from the system.
11. If ConnectWise Manage is detected, the **get\_cwm\_impacts** task uses the **CW PSA API Request** action to retrieve impact data from ConnectWise.
12. If no specific PSA is detected, the **static\_impacts** task uses the **noop** action to provide default Low, Medium, and High impact options.
13. For Halo PSA systems, the **get\_halo\_psa\_urgencies** task uses the **HaloPSA API Request** action to retrieve urgency level options.
14. For ConnectWise systems or when using static data, the **static\_urgencies** task uses the **noop** action to provide default Low, Medium, and High urgency options.
15. The **get\_ticket\_priorities** task uses the **PSA: Get Ticket Priorities** action to retrieve available priority levels from the PSA system.
16. The **get\_openai\_information** task uses the **Select AI Prompt Provider** action to send ticket content to the AI service for analysis of impact, urgency, and sentiment.
17. If the AI analysis succeeds, the **set\_inital\_note** task uses the **noop** action to format the AI analysis results into a readable ticket note with priority, impact, urgency, and frustration ratings.
18. The **update\_impact\_urgency\_sentiment** task uses the **PSA: Update Impact, Urgency, Sentiment** action to apply the AI-determined values to the PSA ticket.
19. If any step fails during execution, the **failed** task uses the **noop** action to handle the error condition and route to error processing.
20. The **list\_errors\_in\_ticket** task uses the **noop** action to determine whether error information should be added to the ticket based on configuration settings.
21. If error reporting is enabled, the **update\_ticket** task uses the **PSA: Update Ticket** action to add failure details as an internal note to the ticket.
22. If error reporting is disabled, the **ticket\_error\_updating\_disabled** task uses the **noop** action to bypass ticket error updates.
23. The **END** task uses the **noop** action to compile all logging information and publishes the final automation log with status codes, errors, warnings, and execution details.

## Crate prerequisites

* Before unpacking the Crate, you'll need to have the integration for one of the following PSAs set up:
  * [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
  * [Datto PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
  * [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
  * [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)

&#x20;If you're using a PSA that isn't on this list, please let us know and we'll look at whether it has the ability to trigger an automation based on a ticket being created.

* You'll also need to have the one of the following AI integrations set up in Rewst before unpacking this Crate:
  * [OpenAI](../../configuration/integrations/integration-guides/openai/openai-integration-setup.md)&#x20;
  * [Anthropic](../../configuration/integrations/integration-guides/anthropic-integration.md)
* Remember, you can also set up an Azure instance of OpenAI, and use that with this Crate. If you want to use an Azure instance of OpenAI with this Crate, you'll need to follow the Azure OpenAI Integration Setup steps to have this completed before unpacking.

## Unpack the AI Ticket Sentiment Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `AI Ticket Sentiment Analysis`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-12-02 at 12.08.20 PM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**

<figure><img src="../../../.gitbook/assets/Screenshot 2025-12-02 at 12.33.53 PM.png" alt=""><figcaption></figcaption></figure>

5. Choose your desired PSA from the drop-down selector. This is especially important for customers using multiple PSAs.&#x20;
6. Choose either **OpenAI** or **Anthropic** as your AI integration.
7. Choose your detection category from the drop-down selector.
8. Choose the number threshold for impact, urgency, and sentiment of tickets.&#x20;
   1.  **Impact Threshold:**

       This is the threshold that you want to set for the impact of the ticket. If the impact is below this threshold, the ticket will be considered low impact. If the impact is above this threshold, the ticket will be considered high impact, and update the ticket accordingly.
   2.  **Urgency Threshold:**

       This is the threshold that you want to set for the urgency of the ticket. If the urgency is below this threshold, the ticket will be considered low urgency. If the urgency is above this threshold, the ticket will be considered high urgency, and update the ticket accordingly.
   3.  **Sentiment Threshold:**

       This is the threshold that you want to set for the sentiment of the ticket. If the sentiment is below this threshold, the ticket will be considered a positive sentiment. If the sentiment is above this threshold, the ticket will be considered negative sentiment, and update the ticket accordingly.
9. Enter the email address of the PSA member that the ticket will be assigned to for sentiment.
10. Choose the **AI Provider** that you wish to use from the drop-down selector.&#x20;
11. Choose the **AI Model** that you wish to use.
12. Choose if you would like to **Report errors in ticket when unable to utilize AI**.
13. Click **Continue**.
14. Triggers for all possible PSAs are included in this Crate. By default, they're disabled, and only the PSA indicated by your choice in the drop-down selector used in the previous step will be enabled. The trigger that will kick off the automation when a ticket is created is the one left enabled.&#x20;
15. Click **Unpack**.

### Use the AI Ticket Sentiment Crate

Create a ticket in your PSA with a typical description and summary. Set your impact, urgency, and sentiment to be above the threshold that you chose in the Crate's configuration. This will kick off the workflow's webhook trigger.&#x20;

<figure><img src="../../../.gitbook/assets/HaloPSANote (1).png" alt=""><figcaption></figcaption></figure>

### Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

These organization variables give you more control over the functionality of this workflow.

* `ORG.VARIABLES.ticket_sent_max_tokens` - Allows you to manually set the max tokens
* `ORG.VARIABLES.ai_model_ticket_sent` - Allows you to manually set the model

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
