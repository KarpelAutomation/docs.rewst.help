# Use OpenAI to Suggest Responses to New Tickets Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Use OpenAI to Suggest Responses to New Tickets Crate do?

The workflow in this Crate automatically adds AI-generated troubleshooting advice as an internal note to new PSA tickets that contain only the initial problem description. This gives IT technicians immediate guidance on how to approach and resolve the reported issue, while ensuring the advice is security-focused and appropriate for technical staff rather than end users.

The workflow only acts on tickets with a single note to avoid interfering with tickets that already have ongoing conversations or resolutions.

### How the Crate works

1. The workflow starts and identifies which PSA system sent the trigger by checking the organization's default PSA setting.
2. It waits briefly to see if other automations will handle the ticket first, avoiding duplicate responses.
3. Based on the PSA type, it fetches ticket notes:
   * **ConnectWise PSA**: Lists service ticket notes
   * **Datto PSA**: Lists notes on ticket&#x20;
   * **Halo PSA**: Lists ticket actions and notes
   * **Kaseya BMS**: Uses ticket details directly
4. It then verifies that the ticket has exactly one note. If there are no notes or multiple notes, the workflow ends without action
5. If there's a single note, it sends the ticket content to OpenAI with:
   * System prompt, positioning AI as a helpful IT helpdesk mentor
   * The ticket note as the problem to solve
   * Instructions to provide advice to technicians and not end users
6. OpenAI generates a helpful response with markdown formatting, focusing on security-conscious advice.
7. The AI-generated response is added as an internal note to the original ticket.

## Crate prerequisites

Before unpacking this Crate, you'll need to successfully integrate one of the following [PSA](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations)s  with Rewst:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)

{% hint style="info" %}
If you would like this Crate to work with a type of PSA not listed here, let us know in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

You'll also need to have our [OpenAI integration ](../../configuration/integrations/integration-guides/openai/openai-integration-setup.md)successfully set up.

The [organization variable](../../configuration/organization-variables.md#what-is-an-organization-variable) `default_psa` must be set to match your PSA system.

## Unpack the Use OpenAI to Suggest Responses to New Tickets Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Use OpenAI to Suggest Responses to New Tickets`**.**\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-22 at 3.33.46 PM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Enter `OpenAI:` into the configuration field.
5. Click **Continue**.
6. Find the accordion menu that corresponds with your brand of PSA under the **Configure Triggers** menu. Click it to expand and view options.
7. Ensure that **Enabled** is toggled on for your desired PSA, and off for all others. You may also add [trigger criteria ](../../automations/intro-to-triggers/trigger-criteria.md)and integration overrides if you wish.
8. Click **Unpack**.

### Use the Crate

1. Create a dummy ticket in your PSA with an issue that you clearly know how to solve. The ticket should only have one note.
2. Wait for the webhook trigger in the workflow to trigger automatically.&#x20;
3. Check the ticket in your PSA after several minutes for the AI-generated internal note.
4. If you don't see the note:
   1. First confirm that your OpenAI and PSA integrations are successfully set up, and the required org variable is set.
   2. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform
   3. Search for `Use OpenAI to Suggest Responses to Tickets`.
   4. Click on the workflow to view it in the Workflow Builder.
   5. Click ![](<../../../.gitbook/assets/Screenshot 2025-09-22 at 3.55.54 PM.png>) to view the workflow results.
   6. If an execution is listed with failure, click **>** to view the execution summary.&#x20;

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
