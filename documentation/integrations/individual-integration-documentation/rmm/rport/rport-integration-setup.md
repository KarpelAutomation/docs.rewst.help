# RPort Integration Setup

### Documentation

_These instructions are subject to change **completely** as we build out support for RPort._

### Rewst RPort **EXPERIMENTAL** Support

[RPort](https://rport.io) is an Open Source Remote Access / Management application. It is similar to an RMM in that it provides remote inventory, remote scripting, and login, but does not have all of the features of MSP-oriented RMMs like PSA integration or advanced monitors. What it does provide is a lightweight way for Rewst to run commands on endpoints rapidly.

#### Installation Steps to Try out Rewst Support for RPort

**RPort**

* If you don't already have one, install and configure an RPort Server.
  * Follow [RPort's installation instructions](https://kb.rport.io/install-the-rport-server).
  * In our testing, a small Ubuntu 22.04 LTS server works very well.
  * RPort does not need direct communications with anything, everything happens over secure / HTTPS channels. A small cloud VPS will do.
* Create an administrative user account, and generate an API key for it. You can find this option under the 'More' menu
  * Save the username and API key to enter into Rewst.

**Rewst**

* We do not have a true _integration_ built for RPort, so we will do a configuration with Organizational Variables and a configuration Crate.
* Integration Variables: Go to Configuration -> Organizational Variables and add the following variables and values at your top (MSP) level:
  * Name: `use_rport` Value: `1`
  * Name: `rport_username` Value: `<the username you created above>`
  * Name: `rport_api_key` Value: `<the API key you generated above>`
  * Name: `rport_host` Value: `<the hostname of your RPort Server>`
* Crate: Go to the Rewst **Crate Marketplace** and you will find a crate named **Sync RPort Client Groups.**
  * Install this crate, and make sure to Enable it, but _only_ for your own Org, not any clients.
  * Run this manually (via the Test button) at least once and make sure it works.

#### Agent Installation

This part is a bit tricky and undefined. This will depend on whatever RMM capabilities you have now if you want to automate this. The simplest option we have found so far is to manually install the RPort Access Client as follows:

* In RPort, go to copy the Group Name of the managed client you will be deploying the agent for into your clipboard.
* Click the ⚙️ (More) icon and Client Access.
* Click ➕ ADD ACCESS. For the ID, give it the matching Client(Group) Name and Add.
* The next popup will provide the PowerShell commands to run on a Windows machine to get the agent installed.
* Pretty quickly, you will see the new agent show up in the UI.

If the agent you have installed is a Domain Controller, Rewst via RPort will automatically know that this is a usable DC for the agent, and be able to run Rewst-made automations that are intended for DCs.
