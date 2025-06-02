# OpenAI Ticket Categorization Crate

{% hint style="info" %}
**Azure OpenAI instance**

Note that this crate works for both OpenAI and OpenAI with an Azure instance.\
In order to use the Azure instance, you will need to follow the [Azure OpenAI Integration Setup](../../configuration/integrations/integration-guides/openai/azure-openai-integration-setup.md) steps and follow the below steps.
{% endhint %}

### What does the OpenAI Ticket Categorization Crate do?

This Crate uses the OpenAI API to categorize tickets, using your built-in types, sub-types, etc. as the categories. Rather than your tech having to triage a ticket after the fact, the ticket will already be triaged almost immediately when it comes into the PSA.

* We identify the initial description/note on the ticket
* We identify the PSA that the ticket came from, and convert the JSON payload we got sent into standard variables (such as ticket title, description, etc.)
* We identify a list of your existing types, subtypes, and items (depending on the PSA)
* We send this data to OpenAI with a prompt, specifying the types and subtypes, etc. from your PSA. Note that this prompt is templatized, to allow configuration to your liking
* OpenAI then returns the category that it thinks the ticket falls into as a JSON object
* We then parse this JSON object and update the ticket with the category that OpenAI has returned
* We then update the ticket with a note, showing the category that OpenAI returned as well as the reasoning behind it

## Why use the OpenAI Ticket Categorization Crate?&#x20;

* **Internal Reporting** - Our experience at MSPs is that the majority of tickets are categorized incorrectly. This means that when you're trying to report on the types of tickets you're getting, you're not getting an accurate picture. This crate will help you get a more accurate picture of the types of tickets you're getting, and the types of tickets your techs are working on. This then allows both you and your techs to make better decisions - knowledge is power!
* **Automation Building** - One of the most common questions we get asked is "What do we automate?" - this crate will help you answer that question. By categorizing your tickets, you can then see which types of tickets are taking up the most time, and which types of tickets are taking up the most time for your techs. This then allows you to make better decisions about what to automate.
* **General Time Savings** - Whilst triaging tickets is a necessary evil, it's also a time-consuming one when you think about the number of tickets that come in. This crate will help you save time by using your own data to categorize tickets, rather than having to do it manually.

### Crate prerequisites

*   Before unpacking the Crate, you'll need to have the integration for one of the following PSAs set up:

    * ConnectWise Manage
    * Datto PSA
    * HaloPSA
    * Kaseya BMS

    If you're using a PSA that isn't on this list, please let us know. Our support team will look at whether it has the ability to trigger an automation based on a ticket being created.
* You'll also need to have the OpenAI integration set up in Rewst.
* Remember, you can also set up an Azure instance of OpenAI, and use that with this crate. If you want to use an Azure instance of OpenAI with this Crate, you'll need to follow the Azure OpenAI Integration Setup steps to have this completed before unpacking.

### Unpack the OpenAI Ticket Categorization Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `OpenAI Ticket Categorization`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-05-12 at 3.42.48 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate.**
5. Choose your desired PSA from the drop-down selector. This is especially important for customers using multiple PSAs.&#x20;
6. Choose the AI model that you wish to use from the drop-down selector.&#x20;
7. Choose if you would like to **Report errors in ticket when unable to utilize AI**.
8. Click **Continue**.
9. Triggers for all possible PSAs are included in this Crate. By default, they're disabled, and only the PSA indicated by your choice in the drop-down selector used in the previous step will be enabled.

<figure><img src="../../../.gitbook/assets/DisabledTriggers.png" alt=""><figcaption><p>Disable the unused triggers</p></figcaption></figure>

<figure><img src="../../../.gitbook/assets/Enabledtriggers.png" alt=""><figcaption><p>Enabled Trigger</p></figcaption></figure>

## Test the Crate

Create a ticket in your PSA with a typical description and summary.

<figure><img src="../../../.gitbook/assets/HaloPSANote.png" alt=""><figcaption></figcaption></figure>

## Useful organization variables: Optional

These organization variables give you more control over the functionality of this workflow.

* `ORG.VARIABLES.ticket_cat_max_tokens`
  * Allows you to manually set the max tokens
*   `ORG.VARIABLES.ai_model_ticket_cat`

    * Allows you to manually set the model



## Increase the success rate of categorization

* Creating more types, subtypes, and items in your PSA will give OpenAI more choices to choose from to better fit the response.
* Choosing a different model may improve your response. Note that different models have different price points. See more on OpenAI's model pricing [here](https://openai.com/api/pricing/).&#x20;

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
