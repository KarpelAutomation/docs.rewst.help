# AI basics

If you're newer to AI, read through this document to get up and running with some of the terms you'll need to be familiar with to properly use Rewst. For more information on how our existing AI chat bot RoboRewsty works, see his documentation [here](../documentation/roborewsty.md).&#x20;

## What is AI? How is it different from automation?

_Automation_ follows predefined rules and specifically set instructions to perform repetitive tasks exactly the same way every time. _Artificial Intelligence_, or _AI_, is designed to learn from data, adapt to new information, and make decisions in unpredictable situations. _Generative AI_ produces content like text, images, or code from learned patterns but can't reason its way through a problem or initiate action on its own. Rewst is moving towards using both AI and automation together as a joint solution, which will offer MSPs the greatest possible benefits in agility and efficiency.

## What is an LLM?

An _LLM_, short for _Large Language Model_, is a type of AI designed to understand, process, and generate human language. It functions as a highly advanced autocomplete system, trained on vast amounts of data to predict and produce coherent, contextually relevant text.&#x20;

## What is an agent? How is it different from RoboRewsty?

An _AI agent_ is an autonomous software system that uses artificial intelligence to perceive its environment, make decisions, and take actions to achieve a specific goal. Unlike basic chatbots like RoboRewsty that only respond to prompts, agents can plan multi-step workflows, use external tools, and remember past interactions.&#x20;

* RoboRewsty is reactive. He answers specific questions or executes predefined commands, requiring continuous human direction.&#x20;
* The Rewst Agent is proactive. You give it an end goal and it will plan and execute the necessary actions on its own.

## What is Agentic AI?

_Agentic AI,_ related to agents, relies on LLMs to carry out tasks on behalf of users. Imagine that you need to reset a password and simply describe what you want in plain language. The AI agent can understand that goal, interpret the intent behind the request, develop a plan for achieving it, and call on the right tools to see it through— all without you the MSP manually involving yourself beyond your request.

This ability to process natural language, reason through problems, and make decisions in order to act independently is what sets agentic AI apart from other forms of AI and automation. Rather than waiting for human oversight at each step, AI agents can manage entire workflows, respond to changing conditions, and adapt to new tasks and information as they arise. Where basic AI automations follow predefined rules and stop there, agentic AI goes further by interpreting instructions and taking action based on real-time input.&#x20;

## What is a prompt?

A _prompt_ is an instruction, question, or input you give to an AI system to guide its response. It's the primary way humans communicate with AI tools and can be a simple sentence, a detailed paragraph, an image, or uploaded files. When you entered a question about your workflow into RoboRewsty, you were prompting him to guide his response. You'll make similar prompts to The Rewst Agent.

## How do I make good prompts?

The Rewst Agent needs quality instructions to know exactly what you want it to do and act intelligently on your behalf. Start with a solid objective, break complex instructions into step-by-step formatting, give any necessary background or constraints for what you are trying to achieve, and include specific examples to guide the output.&#x20;

For The Rewst Agent in particular, a successful prompt includes:

* Outcome, not just steps
  * "When a ticket closes, post a summary to Slack" tells more than "use the Slack node." It can pick the right nodes if it knows the goal.
* The trigger
  * What kicks this off: A manual run, a form submission, a schedule, or an event like a new email or new ticket?
* The systems involved
  * Name the actual integrations — ConnectWise, Microsoft Graph, HaloPSA, Slack, etc.
  * The Rewst Agent verifies what's actually installed on your organization before proposing anything. Naming them lets it check and respond to your prompt more quickly.
* Scope
  * Do you want one workflow, or a form and a workflow? Is your goal an app in App Builder? Include whether you want the creation run and tested after building, or just created.
* Information that's specific to external systems
  * This is where vague prompts cost the most time. The Rewst Agent is strict about not guessing external contracts.
  * Include the exact business subset, in your words —  "Only active agreements," "tickets in the triage queue," "users licensed for E3." It will map your phrasing to the real status values by checking the integration contract and sample data, but needs to know the intent.
  * Consider required record selections. If a mutation needs a company, board, queue, status, or member, indicate whether you want to (a) provide an ID/name, (b) have The Rewst Agent show you a picker, or (c) build a reusable form. It won't enumerate your records unless you ask.
  * Values it can't infer are things like a target ticket priority or a specific channel. If it's a closed choice, The Rewst Agent will either look up the valid options or ask you for the exact value.

#### Example prompt

> "When a new email hits our shared mailbox in Microsoft, create a ConnectWise ticket on the Service Board, and only if the sender is from an existing company. Build it and run a preview so I can check."

This gives The Rewst Agent a trigger, systems, outcome, a conditional, and how to verify. It contains enough to research and propose without a round of clarifying questions.

## What is an MCP?

The _Model Context Protocol (MCP)_ was open sourced by Anthropic in November 2024 to provide users and developers with an easy way to extend the capabilities of AI-powered apps by integrating them with data sources and applications. An _MCP server_ is a small program that acts like a bridge between an AI tool and another piece of software. It provides context for language models— like Claude or ChatGPT— to interact with resources, run tools, and do whatever else you can think of.&#x20;

Instead of having the model to guess how a tool works or what data would be needed, the MCP server presents information in a format the AI tool can understand and interact with.\
In Rewstʼs case, the MCP lets approved AI tools see and use specific Rewst workflows that you choose to expose. Think of it as a safe, controlled way for an AI tool to call your Rewst workflows.

Our MCP server can help you by:\
• Discovering eligible workflows using natural language\
• Running approved automations directly from supported AI tools\
• Retrieving workflow results and insights without logging into the platform\
• Using conversational AI to explore and understand how your workflows operate

