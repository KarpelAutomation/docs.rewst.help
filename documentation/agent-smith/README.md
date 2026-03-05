---
description: >-
  Rewst's lean, open-source command executor that fits right into your Rewst
  workflows.
icon: user-secret
---

# Agent Smith

## ![:agentrewsty:](https://cdn.discordapp.com/emojis/1184572742255779850.webp?size=40\&quality=lossless) Introducing Agent Smith

Built with [GoLang](https://go.dev/) and leveraging Microsoft Azure IoT Hub, Agent Smith is all about keeping things fast, simple, and within your control. Agent Smith steps in to fill any gaps in your ability to execute scripts and syncs smoothly within your workflows.

If your current RMM responds too slowly for your needs, lacks an integration API, or you haven't yet invested in a complete RMM solution, Agent Smith bridges the gap. Agent Smith provides essential RMM-like functionality, empowering you to build your ideal technology ecosystem with the software that best fits your specific processes and automation initiatives. If you're working in an environment where RMM-triggered tasks take 30–90+ seconds to queue, execute, and return results, Agent Smith can retrieve key system data in a fraction of that time.

{% hint style="info" %}
Agent Smith is best suited for MSPs with experience working in open source tools, time spent managing such tools on GitHub, and experience configuring Microsoft Azure.&#x20;
{% endhint %}

### Agent Smith features and benefits:

* Quick script execution overcomes traditional RMM task execution speed challenges.
* Available on [GitHub](https://github.com/rewstapp/agent-smith-go), Agent Smith is open source, fully manageable through your Azure Tenant and Rewst workflows, and works with Windows, MacOS, and Linux.
* Smaller environments can make use of Azure's free tier, or use a low-cost Standard tier.
* Simple device and service provisioning setup is done via Rewst Crates, suitable for domain controllers and endpoints.
* Ensure security and validity with automated builds, cryptographic signing, and SHA256 hashing.
* Agents wait for Rewst messages, fitting effortlessly into existing automations.
* Our [support team](https://docs.rewst.help/support-and-community/roc-support) will help you get up and automating.

### Architecture

* Agent Smith relies on the Microsoft [Azure IoT Hub](https://learn.microsoft.com/en-us/azure/iot-hub/iot-concepts-and-iot-hub) for the majority of the heavy lifting.
  * The setup process will automatically create a single IoT hub instance in your Azure environment. If you're servicing customers, there's no need to set up additional instances.
  * All agents will become registered devices in your IoT Hub, and their connection properties remain within that instance.
  * Agent installation sets the organization ID for the Agent to be registered with. Workflows can identify agents according to their Rewst organization.
* Agents will establish a connection to your IoT Hub instance for receiving messages triggered by Rewst workflows. These messages will contain IDs that refer to specific workflow executions that expect shell code to be executed.
  * Your IoT Hub will be established with its own hostname, such as `myiothub.azure-devices.net` .
  * The agents will communicate with the IoT Hub using the MQTT protocol `tcp/8883`.
* The results of shell code will be sent directly back to Rewst via webhook, HTTP POST, to the workflow executions for processing.
  * The URLs that the agents will be sending data to are ephemeral, single-use paths.
  * They will correspond to the "back-end application handling" hostnames listed in the [Security Page](https://docs.rewst.help/security/security-policy) in the Rewst docs.
* This combination of discrete one-way communication channels separates the message data, removing the requirement for the IoT Hub to have visibility to resulting data. The data is sent only direct to the workflow that requires it via a direct `POST` to an ephemeral URL.

### Requirements

* You'll need to obtain your own Microsoft Azure subscription, and integrate it to Rewst at your top-level organization via the [Microsoft Cloud Integration Bundle](../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/).&#x20;
* Follow the setup instructions for Agent Smith [here](https://docs.rewst.help/community-corner/agent-smith/agent-smith-configuration-overview)

{% hint style="info" %}
It's always a good idea to test your agent in a lab environment first before deploying broadly.&#x20;
{% endhint %}

## Agent Smith FAQs

* Am I allowed to customize Agent Smith?
  * Yes. Agent Smith is open-source. You're free to [fork and modify it](https://github.com/RewstApp/agent-smith-go).
* Will new features be added? Can you add Feature X?
  * Our focus for Agent Smith is on simplicity.&#x20;
  * Consider adding additional functionality by writing a PowerShell script and kicking it off with a workflow.
* Does Rewst provide Agent Smith support for older operating systems?
  * No, support for outdated OS is not available.
* I want to deploy agents to my endpoints in bulk. How should I prepare?
  * View the separate guide for how to do this [here](bulk-onboarding-with-agent-smith.md).

{% hint style="success" %}
Join the ⁠[#agent-smith](https://discord.com/channels/936789089703845988/1182467018084073524) channel in our Discord for more details and updates.
{% endhint %}
