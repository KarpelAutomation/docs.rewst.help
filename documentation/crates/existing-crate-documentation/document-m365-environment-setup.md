# Document M365 environment setup

## Introduction

The "Document M365 Environment" crate is a handy automation tool designed to streamline the documentation of all related information to the Microsoft 365 environment. It records details such as total users, disabled, enabled, synced, licences etc as well as all members of privileged groups - ensuring that all changes are recorded as part of the version history.

The purpose of this crate is to automate the process of the M365 environment, auditing, reporting, and overall IT administration. The automation benefits include improved reporting accuracy, time-saving through automated documentation, and easy troubleshooting with readily available group information. Out of date documentation provided little benefit, so this ensures that automated documentation is constantly dynamically updated.

Before using this automation, ensure you have an existing Microsoft 365 account and your ITGlue or Hudu integration is set up.

## What does the automation do?

The automation fetches user details from the Microsoft 365 API and documents this information on your ITGlue or Hudu platform.

The benefits include:

* Automated documentation saving you considerable time.
* Enhanced internal reporting and auditing with systematically documented user information.
* Easy troubleshooting due to readily available user data.

## Compatibility

This automation is compatible with ITGlue and Hudu at the moment.

If your system or platform is not on this list, please let us know. We'll explore whether it can integrate with our crate.

## Automation steps

1. The automation fetches various details from integrations such as MS Graph.
2. The information is then updated, or creates a new flexible asset and uses a HTML table to insert the information in a nice-to-look-at way.

## Get started

**Step 1:** Ensure that you have the Microsoft Graph, Exchange Online and ITG or Hudu integrations set up and configured, which you can get to via the below links

[Microsoft Graph](https://app.rewst.io/integrations/microsoft_graph)

[ITGlue](https://app.rewst.io/integrations/it_glue)

[Hudu](https://app.rewst.io/integrations/hudu)

**Step 2:** Unpack the crate in the marketplace. Find the crate titled "Document M365 Groups V2". You can also [find the crate by clicking here](https://app.rewst.io/marketplace/crates/ad23cb3a-d4fb-4066-91d1-719ea95a6355)

## Feedback

Genuinely, if you like this crate and have followed these instructions to get it up and running, we'd love to hear from you! We're always looking for feedback on how we can improve our crates, so please [click me](mailto:roc@rewst.io) and let us know what you think! If you'd like to only say thanks, that's cool too! You can [click me instead](https://engine.rewst.io/webhooks/custom/trigger/db81c9a8-13f7-458a-9306-287054605844/c47fdd7f-4075-47a8-ba92-94e790e67c06?crate=Document365Environment) and we'll send an awesome gif to our internal slack channel! 😁
