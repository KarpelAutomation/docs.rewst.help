---
description: >-
  Rewst's lean, open-source command executor that fits right into your Rewst
  workflows.
icon: user-secret
---

# Agent Smith

## ![:agentrewsty:](https://cdn.discordapp.com/emojis/1184572742255779850.webp?size=40\&quality=lossless) Introducing Agent Smith

Built with [GoLang](https://go.dev/) and leveraging Microsoft Azure IoT Hub, Agent Smith is all about keeping things fast, simple, and within your control. Agent Smith steps in to fill any gaps in your ability to execute scripts and syncs smoothly within your workflows.

{% hint style="success" %}
Share feedback, and help us buff out any rough edges by [joining the early birds](https://app.rewst.io/form/018c63b6-e449-7bc7-8080-bd646bdc33eb).
{% endhint %}

### Agent Smith features and benefits:

* **Speedy Script Execution:** Overcomes traditional RMM task execution speed challenges.
* **Open Source Customization:** Available on GitHub, fully manageable through your Azure Tenant and Rewst workflows.
* **Free and Cost-Effective:** Operates potentially under Azure's free tier, depending on usage.
* **Easy Setup:** Simple device and service provisioning via Rewst Crates, suitable for domain controllers and endpoints.
* **Secure CI/CD:** Ensures security and validity with automated builds, cryptographic signing, and SHA256 hashing.
* **Seamless Integration:** Waits for JSON messages, fitting effortlessly into existing automations.

### Architecture

* Agent Smith relies on the Microsoft [Azure IoT Hub](https://learn.microsoft.com/en-us/azure/iot-hub/iot-concepts-and-iot-hub) for the majority of the heavy lifting.
  * The setup process will create an IoT hub instance in **your** top-level Azure environment.
  * All Agents will become registered devices in your top-level IoT Hub, and their connection properties remain within that instance.
  * Agent installation sets the organization id for the Agent to be registered with so that workflows can identify agents according to their Rewst organization.
* Agents will establish a connection to your IoT Hub instance for receiving messages triggered by Rewst workflows. These messages will contain IDs that refer to specific workflow executions that expect shell code to be executed.
  * Your IoT Hub will be established with its own hostname, such as `myiothub.azure-devices.net`
  * The Agents will communicate with the IoT Hub using the MQTT protocol (`tcp/8883`).
* The results of shell code will be sent directly back to Rewst via webhook (HTTP POST) to the workflow executions for processing.
  * The URLs that the agents will be sending data to are ephemeral, single-use paths.
  * They will correspond to the "back-end application handling" hostnames listed in the [Security Page](https://docs.rewst.help/security/security-policy) in the Rewst docs.
* This combination of discrete one-way communication channels separates the message data, removing the requirement for the IoT Hub to have visibility to resulting data. The data is sent only direct to the workflow that requires it via a direct `POST` to an ephemeral URL.

### Requirements

* You will need to obtain your own Microsoft Azure subscription, and integrate it to Rewst at your top-level organization. You can refer to our documentation [here](https://docs.rewst.help/documentation/integrations/cloud/microsoft-cloud-integration-bundle).
* Follow the setup instructions [here](https://docs.rewst.help/community-corner/agent-smith/agent-smith-configuration-overview)

{% hint style="info" %}
**Zero Cost, Zero Guarantees.** While we're confident Agent Smith won't cause any tech havoc, please ensure you'll be able to test in a lab environment first.
{% endhint %}

Remember, this is _your_ agent. Modify it, tweak it, make it yours. And if you're up for sharing, we'd love to include your expertise [in the repository](https://github.com/RewstApp/agent-smith-go)! Join the ⁠[#agent-smith](https://discord.com/channels/936789089703845988/1182467018084073524) channel on our Discord for more details and updates.

{% hint style="success" %}
Check out the [agent-smith-configuration-overview.md](agent-smith-configuration-overview.md "mention") page to set up and configure!
{% endhint %}
