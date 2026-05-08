# Rewst's AI PSA Analyzer Crate: Coming soon

{% hint style="info" %}
This Crate is in its final stages of development and will soon be released into our Crate Marketplace.&#x20;
{% endhint %}

## What does Rewst's AI PSA Analyzer Crate do?

This Crate uses Rewst’s internal AI or your integrated Anthropic or OpenAI provider to analyze ticket data and recommend the most effective automations for your customers' needs. The workflow pulls filtered ticket data from a specific number of days. Using AI to evaluate that data, it identifies the most relevant existing Rewst Crates and recommends custom automations if needed. Runtime may vary depending on the PSA platform and ticket volume.

### Workflow breakdown

1. The workflow begins at the **START** task, which uses the **noop** action to evaluate the incoming input and route execution down one of three paths based on the first matching condition.
2. If the request method is GET, the **START** task transitions directly to the **END** task labeled "Webhook," which serves the previously generated HTML report without re-running the analysis.
3. If an AI provider and a valid days offset greater than zero are provided, the **START** task transitions along the "Form" path to the **list\_crates** task, publishing a calculated date\_n\_days\_ago value and setting the retry\_limit to zero.
4. If neither of the above conditions is met, the **START** task follows the "Failed" fallback transition to the **failure\_capture** task, logging an error that incorrect input data was supplied.
5. The **list\_crates** task uses the **Generic GraphQL Request** action to query the Rewst marketplace API for all available crates, retrieving their names, unpacking counts, and IDs.
6. On success, the **list\_crates** task publishes a sorted list of Rewst crates and a comma-separated string of crate names, then transitions to the **list\_tickets** task.
7. If the **list\_crates** task fails, it transitions to the **failure\_capture** task with an error log entry.
8. The **list\_tickets** task calls the **\[REWST - TASK] Get Ticket Data With Filters** sub-workflow action to retrieve up to 2000 ticket titles from the organization's PSA, filtered by the calculated date, ticket types, and ticket queues.
9. If the AI provider is set to "rewst" and tickets were returned, the **list\_tickets** task transitions along the "Rewst AI Provider" path to the **rewst\_ai\_response** task, publishing sanitized ticket data, the total ticket count, and an automation log entry.
10. If tickets were returned and the AI provider is not "rewst," the **list\_tickets** task transitions along the "Client AI Provider" path to the **get\_ai\_response** task, publishing the sanitized tickets, total count, a rendered prompt template, and an automation log entry.
11. If the **list\_tickets** task succeeds but returns no tickets, it follows the "Failed" fallback transition to the **failure\_capture** task with a log message indicating it failed to get ticket data.
12. If the **list\_tickets** task itself fails, it transitions to the **failure\_capture** task with a structured automation log entry.
13. The **rewst\_ai\_response** task uses the **HTTP Request** action to POST the ticket data and Rewst crate names to a Rewst-hosted AI endpoint, including the organization ID, organization name, and workflow name as headers, with a 300-second timeout.
14. If the **rewst\_ai\_response** task returns a valid output that does not contain "incorrect data," it transitions along the "Successful" path to the **update\_html\_template** task, publishing enriched crate suggestions that flag each suggestion as a Rewst Crate or Custom Crate, include marketplace links where applicable, and sort by ticket volume and Rewst-created status, along with a full HTML report template.
15. If the **rewst\_ai\_response** task times out, it transitions to the **failure\_capture** task with a log entry noting the timeout.
16. If the **rewst\_ai\_response** task returns a "Maximum request body size exceeded" error, it transitions to the **failure\_capture** task with a corresponding log entry.
17. If the **rewst\_ai\_response** task succeeds but does not match the specific success condition, it follows a general success fallback transition to the **update\_html\_template** task, publishing the raw output or a default failure message as the HTML template.
18. If the **rewst\_ai\_response** task fails outright, it transitions to the **failure\_capture** task.
19. The **get\_ai\_response** task calls the **\[REWST - TASK] Select AI Prompt Provider** sub-workflow action, passing the model, rendered prompt template, AI service, max tokens, AI provider, and a flag to expect JSON output.
20. On success, the **get\_ai\_response** task transitions to the **update\_html\_template** task, publishing enriched crate suggestions, backup crate suggestions, a full dark-themed HTML report template, and a structured automation log entry.
21. If the **get\_ai\_response** task fails, it transitions to the **failure\_capture** task with an automation log entry.
22. The **update\_html\_template** task uses the **\[Crate - Dev] Rewst: Upsert Template** action to save or replace the HTML report body into a template named "\[REWST - TEMPLATE] Internal Ticket Analysis HTML."
23. On success, the **update\_html\_template** task transitions to the **list\_triggers** task, publishing an automation log entry for the AI response step.
24. If the **update\_html\_template** task fails, it transitions to the **failure\_capture** task with an automation log entry.
25. The **list\_triggers** task uses the **List Triggers** action to retrieve all triggers associated with the current workflow so it can construct the webhook URL for the HTML report.
26. If an email address is present in the context, the **list\_triggers** task transitions along the "Email" path to the **core\_sendmail** task, publishing a dynamically constructed webhook URL that points to the correct Rewst engine region based on the app URL.
27. If no email address is present, the **list\_triggers** task transitions along the "No Email" path directly to the **END** task.
28. If the **list\_triggers** task fails, it transitions to the **failure\_capture** task with an error log entry.
29. The **core\_sendmail** task uses the **sendmail** action to send an email to the address in the context with the subject "Rewst Internal Ticket Analysis" and a custom HTML body containing a "View Analysis" button linking to the webhook URL.
30. On success, the **core\_sendmail** task transitions to the **END** task.
31. If the **core\_sendmail** task fails, it transitions to the **failure\_capture** task with an automation log entry.
32. The **failure\_capture** task is a **noop** action configured with a join of 1, meaning it waits for any single inbound transition before proceeding, and it always transitions to the **END** task.
33. The **END** task is a **noop** action configured with a join of 1 that serves as the single convergence point for all paths, where it compiles a final automation\_log by iterating over all context variables prefixed with "log\_," aggregating their status codes, errors, and warnings into a structured summary that is published as the workflow output.

## Crate prerequisites

* Before unpacking the Crate, you'll need to have the integration for one of the following PSAs set up:
  * [ConnectWise PSA](../../integrations/integration-guides/connectwise-integration-setup.md)
  * [Datto PSA](../../integrations/integration-guides/datto-psa-integration-setup/)
  * [HaloPSA](../../integrations/integration-guides/halo-integration-setup.md)
  * [Kaseya BMS](../../integrations/integration-guides/kaseya-bms-integration-setup.md)
  * [ServiceNow](../../integrations/integration-guides/servicenow-integration-setup.md)
  * [NinjaOne](../../integrations/integration-guides/ninjaone-integration-setup.md)
* If you want to use an AI tool outside of Rewst's own AI, you'll also need one of the following AI integrations set up in Rewst before unpacking this Crate:
  * [OpenAI](../../integrations/integration-guides/openai/openai-integration-setup.md)
  * [Anthropic](../../integrations/integration-guides/anthropic-integration.md)
* You can also use an Azure instance of OpenAI with this Crate. To do that, complete the Azure OpenAI Integration Setup before unpacking.

## Example ticket analysis report

<figure><img src="../../../.gitbook/assets/image (46).png" alt=""><figcaption></figcaption></figure>

## Unpack Rewst's AI PSA Analyzer Crate

1. Navigate to **Marketplace** → **Crates** in the left side menu of the Rewst platform.
2. Search for `Rewst's AI PSA Analyzer`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2026-05-08 at 11.42.10 AM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Set all triggers in the Crate to **Enabled**. If you skip this step, you won't be able to access the form unpacked with this Crate.
6. Click **Unpack**.

## Use Rewst's AI PSA Analyzer Crate

The Crate runs from a form submission.

1. Navigate to **Automations** **>** **Assets** **>** **Forms** in the left side menu of your Rewst platform.
2. Search for `[REWST]: Rewst's AI PSA Analyzer`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click the link for the organization you want the form to run on. This launches the form in a new tab.
5. Use the drop-down selector to select the AI provider. If you want to use your OpenAI or Anthropic providers, install those integrations before using the form.
6. Select the ticket queues or boards to filter by.
7. Select the ticket types, issue types, or categories to filter by in the selector that appears.
8. Enter the **Maximum age in days for selecting tickets**. This is limited to a maximum of 2000 sampled tickets.
9. Enter the recipient email address where you want the link to the report sent.
10. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-05-08 at 11.40.57 AM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
