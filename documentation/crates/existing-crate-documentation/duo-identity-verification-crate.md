# Duo Identity Verification Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Duo Identity Verification Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Duo Identity Verification Crate enables Duo identity verification when a user submits a ticket.

### How the Crate works

* The Crate's workflow adds an internal note with a verification link when a ticket is created in your PSA.&#x20;
* When a technician clicks the link, a Duo request is sent to the user who submitted the ticket.&#x20;
* The user’s first and last name must match the user's name in Duo.
* The user will see the following in their duo request: `Verification is required for the ticket you submitted: "Ticket Title".`
* The ticket note will result in one of the following outcomes:
  * **Approved:** `"username" has verified this ticket.`
  * **Timed out:** A note states the request timed out and provides a new verification link.
  * **Denied:** `"username" has denied approval.` A new link is provided if needed.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which evaluates the incoming data to determine the PSA system being used.
2. If the organization uses Datto PSA and a contact ID is present, the workflow executes the **datto\_get\_contact** task using the **Get Contact v2** action to retrieve contact information from Datto PSA.
3. If the organization uses Freshdesk and a requester ID is present, the workflow executes the **freshdesk\_get\_contact** task using the **Get Contact** action to retrieve contact information from Freshdesk.
4. For other PSA systems or when no specific contact retrieval is needed, the workflow proceeds directly to the **set\_variables** task using the **noop** action to normalize and set ticket variables.
5. The **set\_variables** task processes incoming data differently based on whether it came from a GET request or a ticket webhook, extracting ticket ID, contact name, ticket summary, and company ID information.
6. The **input\_variable\_checks** task using the **noop** action validates that all required variables are present, including ticket ID, first name, last name, company ID, and ticket summary.
7. Upon successful validation, the **get\_org\_id** task uses the **List Organization Variables** action to find the appropriate Rewst organization ID based on the company ID and retrieve the Duo account ID.
8. The **list\_triggers** task uses the **List Triggers** action to find the Duo Identity Verification Webhook trigger and construct a webhook URL for future verification requests.
9. Depending on the PSA system and configuration, the workflow may execute the **update\_ticket** task using the **PSA: Update Ticket** action to add an internal note with the verification link to the ticket.
10. If ConnectWise PSA is being used with pod functionality enabled, the **rewst\_associate\_external\_object** task uses the **Associate External Object** action to link the ticket with the workflow execution.
11. The **initial\_pod\_request** task uses the **Create Pod Confirmation** action to display a verification button in the ConnectWise PSA pod interface and waits for user interaction.
12. When the verification button is clicked, the **list\_duo\_users** task uses the **List Users** action to retrieve all users from the Duo account.
13. The **duo\_pre\_checks** task using the **noop** action matches the ticket contact's first and last name against Duo users to find exactly one matching user.
14. If exactly one user is matched, the **duo\_send** task uses the **Send Duo Authentication** action to send a push notification to the user's device requesting verification for the specific ticket.
15. Based on the Duo response, the **update\_ticket\_duo\_response** task uses the **PSA: Update Ticket** action to add a note indicating whether the user approved, denied, or timed out on the verification request.
16. If the verification was not approved and pod functionality is enabled, the workflow may create another pod with the verification link for future attempts.
17. Any task failures throughout the workflow are caught by the **failure\_catch** task using the **noop** action, which routes to the end of the workflow.

## Crate prerequisites

Your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst. This Crate works with the following PSAs only:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md) - Pods are supported.
* [Datto PSA](../../automations/kits/datto-psa-integration-kit.md)
* [Halo PSA](../../automations/kits/halo-psa-integration-kit.md)
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)
* [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)

[Duo](../../configuration/integrations/integration-guides/duo-integration-setup.md) integration must successfully be set up with Rewst.

## Unpack the Duo Identity Verification Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Duo Identity Verification`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/Screenshot 2025-12-02 at 4.15.25 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Ensure that **Enabled** is toggled on for **Cron Job** under **Configure Triggers**. Note that you have the option under the accordion menu of the trigger to activate the Crate for all future organizations in addition to the current one. You may also set the [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
7. Click **Unpack**.

### Test the Crate

1. Create a ticket in your PSA. Ensure the contact associated with the ticket matches the first and last name of the user in Duo.
2. Once the ticket is created, it will add a note— or POD, if enabled— with a link that states, `Please click the following link to verify the identity of this ticket`.
3. Click the link to send a Duo request to the contact associated with the ticket. Note that this will only work if the first and last name match.
   1. If it is approved via Duo, a note will be created stating:\
      `The User has verified this ticket.`
   2. If you don't respond in time, a note will be created stating:\
      `The Duo authentication request for user {{CTX.user_id}} has timed out. To request another verfication from {{ CTX.user_id }} please click the following link`
   3. If you select deny, a note will be created stating:\
      `The user has denied approval.`\
      `To request another verfication from {{ CTX.user_id }} please click the following link`

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
