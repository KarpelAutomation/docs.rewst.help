---
hidden: true
noIndex: true
---

# RoboRewsty

## What is RoboRewsty?

We’re embedding AI into RoboRewsty, our existing in-platform assistant, to give teams intelligent support across the entire automation build and management process. RoboRewsty understands your environment and can support you across the entire automation journey: building, troubleshooting, managing and documenting. Our goal with RoboRewsty is to extend the value Rewst already provides to MSP teams, by helping techs up-skill as they work, cutting down on manual effort, speeding up problem-solving, and making it easier to scale automation with less overhead and more impact. The introduction of AI in Rewst isn't meant to replace the need for builders or the need to learn how to use the platform.

If you're a Rewst user who has loved working with our existing RoboRewsty documentation capabilities in-app, you can still use it to help [document your workflows](../automations/workflows/document-with-roborewsty.md).&#x20;

## What can RoboRewsty help with?

Currently, you can ask it questions about the platform and get instant guidance from our documentation. It also understands your Rewst environment— your workflows, variables, and executions— so you can ask things like ‘Why did this workflow fail yesterday?’ and get tailored support while building and troubleshooting.

* Ask RoboRewsty questions about how to use platform features, setup, pre-built automations, and integrations. He'll return answers backed by our documentation, right where you’re working.&#x20;
  * “What triggers are available in Halo?”
  * “Where do I find workflow triggers?”
  * “How do I set up an integration with ConnectWise?”
  * “What trigger types are available for my automations?”
  * "Help me find this specific action. Explain in detail its parameters, requirements, and usage."
  * "List and search organization variables across categories."
* Ask RoboRewsty for help with troubleshooting workflows and understanding why something failed. Paste an error into the chat or ask why a run failed, and RoboRewsty will break it down, point to the issue, and suggest what to do next.
  * Navigate to Automations > Workflows > Your Desired Workflow > View Results. In the execution results, ask RoboRewsty for help with understanding results, both successes and failures.
* Use RoboRewsty as your personal Rewst navigator. Ask him about about your workflows, variables and integrations, and get answers specific to your individual Rewst environment.
  * “What integrations are available in my org?”&#x20;
  * "List recent executions of workflow \[name]."
* Get tailored support and guidance while building in Rewst. Whether you’re working with Jinja, action parameters, or workflow design, ask RoboRewsty for best practices and guidance while you build.

## What can't RoboRewsty help with?

RoboRewsty can't:

* Modify workflows, variables, or configurations - you'll need to do all of these manually in Rewst
* Access billing or account management information
* Provide general IT advice outside of Rewst functionality
* RoboRewsty can tell you how many tasks are in a workflow, but that number should not be used to predict task usage. The actual number of tasks executed in each workflow run may vary depending on workflow logic, conditions, skips, and subworkflows. For accurate task counts, check the Execution History for individual workflow runs and your [Dashboard.](../rewst-dashboard.md)

## How to ask better questions

If you're new to using AI assistants, here's one important takeaway: how you craft your question will determine the quality of your result.

1. Be specific. Instead of "How do I automate tickets?", ask "What ConnectWise PSA actions are available for creating tickets?"
2. Provide context. If asking about a specific workflow or execution, provide the ID or name so RoboRewsty can hone in on your particular scenario.
3. Ask follow-up questions. Think of it as a conversation where RoboRewsty can drill down into details once you help it identify the right resource.
4. Ask questions before building, not just after. RoboRewsty can help you find the right tools before as part of your design and planning process.

{% hint style="success" %}
In future releases of this Rewst feature, RoboRewsty will expand to be able to help with designing and building automations as a co-pilot for Jinja templating and prompt-based workflow building.
{% endhint %}

## How RoboRewsty works

RoboRewsty is built right into Rewst and powered by Anthropic’s Claude, hosted on Amazon Bedrock. If Claude isn't available, RoboRewsty automatically switches over to use OpenAI, also hosted on Bedrock, to maintain service availability. This is what allows RoboRewsty to understand what you’re asking, identify the context it needs to help, and generate a plain-language response.&#x20;

RoboRewsty can offer tailored support and guidance by pulling from two types of context:&#x20;

* Rewst documentation including Rewst Docs and Jinja2 references
* Users' environment context&#x20;

RoboRewsty can recognize where you are in the platform and use the details it needs from your environment to give you tailored support. RoboRewsty's ability to retrieve this environment context is powered by our implementation of the [_Model Context Protocol_ _(MCP)_](https://www.anthropic.com/news/model-context-protocol). MCP is a framework by Anthropic that gives Rewst a way to provide authenticated and controlled methods for Claude to request information from Rewst’s backend via our GraphQL API, if it needs environment context to answer a question, like “Why did this workflow fail?”

Claude can only choose to request from a strict menu of pre-approved queries that Rewst has written and locked down, like `get workflow run details` or `list org variables`. Rewst executes that query through our GraphQL API, and sends minimum context needed to Claude to create RoboRewsty’s response.

Note that Anthropic and OpenAI process these request in real time, but don’t store your data or use it to train their models. Your credentials are securely stored within the Rewst platform and can't be accessed by RoboRewsty.

<figure><img src="../../.gitbook/assets/RoboRewsty AI Simplified Diagram _ Mermaid Chart-2025-09-19-183620.png" alt="A flowchart with orange, purple, pink and teal boxes and arrows to denote a process. " width="375"><figcaption><p>The process for a RoboRewsty query</p></figcaption></figure>

### Complete list of what RoboRewsty has access to

<details>

<summary>Tools</summary>

* **searchWorkflowsByName:** Search for workflows by name with optional exact matching
* **getActionParameters:** Retrieves the parameters schema for a specific action
* **listCommonlyUsedIntegrationActions:** List most commonly used Integration Actions for an integration ID
* **searchPacksByNameOrRef:** Search for packs by name or reference with optional exact matching
* **getOrgHierarchy:** Get the organization hierarchy for the active organization
* **searchActionsByNameOrDescription:** Search for actions by name or description with optional exact matching
* **getJinjaFilterReference:** Jinja2 filters reference with docs and usage details
* **getWorkflowExecutionContext:** Retrieve context for a specific workflow execution
* **getUserInfo:** Information about the current authenticated user

</details>

<details>

<summary>Resources: List/Get items</summary>

* **Workflow:** listWorkflow, readWorkflow
* **Integration:** listIntegration, readIntegration
* **Organization:** listOrganization, readOrganization
* **OrgVariable:** listOrgVariable, readOrgVariable
* **Action:** listAction, readAction
* **WorkflowExecution:** listWorkflowExecution, readWorkflowExecution
* **TaskLog:** listTaskLog, readTaskLog
* **Trigger:** listTrigger, readTrigger

</details>

## Access RoboRewsty

Find RoboRewsty in the top right of your Rewst navigation bar in Rewst. Click <img src="../../.gitbook/assets/Screenshot 2025-09-16 at 11.52.01 AM.png" alt="" data-size="line">to open **Chat with RoboRewsty**.&#x20;

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-16 at 11.58.53 AM.png" alt="" width="563"><figcaption></figcaption></figure>

Type your question into the chat box and click <img src="../../.gitbook/assets/Screenshot 2025-09-16 at 12.00.33 PM.png" alt="" data-size="line"> to trigger the response.&#x20;

The navigation bar at the tip of the Chat with RoboRewsty dialog holds three options:

* <img src="../../.gitbook/assets/Screenshot 2025-09-16 at 12.02.56 PM.png" alt="" data-size="line"> **New chat** starts a new chat with RoboRewsty
* <img src="../../.gitbook/assets/Screenshot 2025-09-16 at 12.03.37 PM.png" alt="" data-size="line"> Conversation history opens up a new dialog to display your total record of all RoboRewsty chats, with a **Search conversations** bar at the top of the list
* <img src="../../.gitbook/assets/Screenshot 2025-09-16 at 12.04.58 PM.png" alt="" data-size="line"> **Open in new window** moves your RoboRewsty chat from the right side menu dialog to a totally new, separate window.

Depending on the nature of your question, it might take a moment for RoboRewsty to search all his available knowledge and return a response. You can tell that he''s still working by the animations on the screen.

<figure><img src="../../.gitbook/assets/Roborewsty gif.gif" alt=""><figcaption><p>An example of RoboRewsty's search for answers, in progress</p></figcaption></figure>

For workflows, click <img src="../../.gitbook/assets/Screenshot 2025-09-16 at 12.57.34 PM.png" alt="" data-size="line"> in the top Workflow Builder navigation bar to open RoboRewsty in the Workflow Builder. When the Chat with RoboRewsty dialog is open on the Workflow Builder, you can ask him questions directly about that workflow.

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-16 at 12.58.14 PM.png" alt="" width="375"><figcaption></figcaption></figure>

## Submit your feedback

RoboRewsty pulls from this documentation site to provide answers. The more content we add to our documentation, the more refined RoboRewsty's answers will be. If you're not satisfied with his response to a specific question, let us know so we can improve it! After each response, you'll have the option to give RoboRewsty’s answer a quick thumbs up 👍 or down👎. If you choose humbs down 👎, a **Tell us why** text box appears to collect more detailed feedback.
