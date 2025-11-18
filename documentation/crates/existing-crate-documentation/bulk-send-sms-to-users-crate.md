# Bulk Send SMS to Users Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find this Crate in our Crate Marketplace.
{% endhint %}

## What does the Bulk Send SMS to Users Crate do?

This Crate makes it easy to send custom SMS messages en-masse via Twilio by pulling mobile numbers directly from Microsoft 365 user information.

### How the Crate works

* Collects mobile numbers from Microsoft 365 user information
* Seamlessly sends SMS messages via Twilio's API, based on your predefined text set via form submission
* Allows for sending of messages to multiple recipients simultaneously
* Maintains a log of sent messages for auditing or tracking purposes via your workflow results

### Workflow breakdown

{% hint style="info" %}
The workflow requires two input parameters, both set by using the form unpacked with the Crate:

* **Client** for specifying the target organization
* **Message** for the SMS content to be sent to all users
{% endhint %}

1. The form is submitted.
2. The workflow begins with the **START** task which uses the **noop** action to initialize the workflow and publishes the Twilio SMS number from organization variables to the workflow context.
3. The workflow transitions to the **microsoft\_graph\_list\_users** task which executes the **List Users** action from the Microsoft Graph integration to retrieve up to 999 users from the specified client organization.
4. After successfully retrieving the user list, the workflow processes the data by filtering users who have mobile phone numbers and creates a clean list of phone numbers by removing any non-alphanumeric characters except plus signs using regex replacement.
5. The workflow then executes the **workflows\_roc\_twilio\_create\_message** task which uses the **\[ROC] Twilio - Create Message** action to send SMS messages to each phone number in the processed list.
6. The SMS sending task runs with `with items` functionality, iterating through each phone number in the list with a concurrency of 1, meaning messages are sent one at a time sequentially.
7. Each SMS message uses the Twilio SMS number from organization variables as the sender, the message content from the workflow input, and sends to each individual phone number from the filtered user list.
8. The workflow completes after all SMS messages have been successfully sent to all users with valid mobile phone numbers.

## Crate prerequisites

* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be successfully set up in Rewst.
* The [Twilio integration](../../configuration/integrations/integration-guides/twilio-integration-setup.md) must be successfully set up in Rewst.

## Unpack the Bulk Send SMS to Users Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Bulk Send SMS to Users`.
3. Click on the Crate tile to begin unpacking.\
   ![](<../../../.gitbook/assets/Screenshot 2025-11-18 at 11.19.01 AM.png>)\

4. Click **Continue**.
5. Note that you have the option under the **Form Submission** accordion mens to activate the Crate for all future organizations in addition to the current one.  You may also set activation to certain [tags](../../settings/tags-in-rewst.md), integration overrides, or [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md). Ensure that **Enabled** is toggled on.
6. Click **Unpack**.

### Use the form

{% hint style="info" %}
You can test this Crate's workflow with the **Test** button in the Workflow Builder. However, to have the text sent to yourself, you'll need to have an email address added to that client, where you have access to its inbox.
{% endhint %}

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for **\[ROC] Twilio - Send Mass SMS**.
3. Click on the form name.
4. Click **⋮ > Usages > View Direct URLs**.
5. Click on the URL for your desired organization.
6. Choose the applicable Client from the **Select the Client** drop-down selector.
7. **Enter the message you wish to send** in the field in a string, plain text format.&#x20;
8. Click **Submit**. This will immediately send your text.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-11-18 at 12.07.48 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
