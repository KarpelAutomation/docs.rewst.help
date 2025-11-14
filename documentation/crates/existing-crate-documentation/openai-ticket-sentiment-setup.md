# OpenAI Ticket Sentiment Analysis Crate

{% hint style="info" %}
**Azure OpenAI instance**

Note that this Crate works for both OpenAI and OpenAI with an Azure instance.\
In order to use the Azure instance, you will need to follow the [Azure OpenAI Integration Setup](../../configuration/integrations/integration-guides/openai/azure-openai-integration-setup.md) steps and follow the below steps. \
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the OpenAI Ticket Sentiment Analysis Crate do?

The OpenAI Ticket Sentiment Analysis Crate streamlines support operations by using AI to assess and act on ticket sentiment, impact, urgency, and priority. As new tickets are created, it retrieves ticket details, analyzes severity, and updates relevant PSA fields automatically. High-sentiment tickets are escalated and assigned to designated team members, while a detailed internal note logs the results. Fully integrated with your PSA, this Crate ensures faster, smarter ticket handling.

## Crate prerequisites

* Before unpacking the Crate, you'll need to have the integration for one of the following PSAs set up:
  * [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
  * [Datto PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
  * [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
  * [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)

&#x20;      If you're using a PSA that isn't on this list, please let us know and we'll look at whether it has the    ability to trigger an automation based on a ticket being created.

* You'll also need to have the OpenAI integration set up in Rewst.

## Unpack the OpenAI Ticket Sentiment Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `OpenAI Ticket Sentiment`.\
   \
   ![](<../../../.gitbook/assets/image (166).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**

<figure><img src="../../../.gitbook/assets/Screenshot 2025-05-19 at 4.34.19 PM.png" alt=""><figcaption></figcaption></figure>

5. Choose your desired PSA from the drop-down selector. This is especially important for customers using multiple PSAs.&#x20;
6. Choose your detection category from the drop-down selector.
7. Choose the AI model that you wish to use from the drop-down selector. OpenAI returns all of the data in a JSON object, including an integer for Sentiment, Urgency, and Impact. We then use the options you specify below to determine whether the ticket should be updated or not.
   1.  **Impact Threshold:**

       This is the threshold that you want to set for the impact of the ticket. If the impact is below this threshold, the ticket will be considered low impact. If the impact is above this threshold, the ticket will be considered high impact, and update the ticket accordingly.
   2.  **Urgency Threshold:**

       This is the threshold that you want to set for the urgency of the ticket. If the urgency is below this threshold, the ticket will be considered low urgency. If the urgency is above this threshold, the ticket will be considered high urgency, and update the ticket accordingly.
   3.  **Sentiment Threshold:**

       This is the threshold that you want to set for the sentiment of the ticket. If the sentiment is below this threshold, the ticket will be considered a positive sentiment. If the sentiment is above this threshold, the ticket will be considered negative sentiment, and update the ticket accordingly.
8. Choose if you would like to **Report errors in ticket when unable to utilize AI**.
9. Click **Continue**.
10. Triggers for all possible PSAs are included in this Crate. By default, they're disabled, and only the PSA indicated by your choice in the drop-down selector used in the previous step will be enabled. The trigger that will kick off the automation when a ticket is created is the one left enabled.&#x20;
11. Click **Unpack**.



### Use the OpenAI Ticket Sentiment Crate

Create a ticket in your PSA with a typical description and summary.

<figure><img src="../../../.gitbook/assets/HaloPSANote (1).png" alt=""><figcaption></figcaption></figure>

### Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables).

Organization variables not found in our standard organization variables documentation, such as the ones listed below. are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

These Organization Variables give you more control over the functionality of this workflow.

* `ORG.VARIABLES.ticket_sent_max_tokens` - Allows you to manually set the max tokens
* `ORG.VARIABLES.ai_model_ticket_sent` - Allows you to manually set the model

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
