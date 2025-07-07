# CrushBank integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the CrushBank integration do?

Our CrushBank integration enables the automation of ticket categorization and prioritization analysis. Use the CrushBank API within Rewst workflows to automate tasks such as analyzing ticket text for sentiment and prioritization and document enrichment.

## Set up the CrushBank integration

### Set up steps in CrushBank

1. Log in to your [CrushBank account](https://app.crushbank.com/)&#x20;
2. Navigate to the **Admin** tab.
3. Locate your Client ID and Client Secret in the Company Info section. Copy the values and store them somewhere secure. You'll need this information for further steps in Rewst.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-06-30 at 4.11.12 PM.png" alt="A view of the admin menu in the Crushbank portal: a grey screen with white text and fields,. The ones highlited are the Client ID field and the Client Secret field."><figcaption></figcaption></figure>



### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `CrushBank` in the integrations page.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-06-30 at 3.40.49 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from Crushbank into the relevant fields.
5. Click **Save Configuration**.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category            | Action                | Description                                                                |
| ------------------- | --------------------- | -------------------------------------------------------------------------- |
| **Analyze**         | Analyze               | Analyze text for categorization and prioritization using CrushBank's AI    |
| **Generic Request** | CrushBank API Request | Generic action for making authenticated requests against the CrushBank API |
