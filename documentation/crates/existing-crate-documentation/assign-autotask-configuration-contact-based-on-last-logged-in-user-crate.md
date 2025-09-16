# Assign Autotask Configuration Contact Based on Last Logged In User Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Assign Autotask Configuration Contact Based on Last Logged In User Crate do?

This Crate is designed for environments where Datto RMM and Autotask are already connected via Rewst. It automatically assigns a Contact to a Configuration in Datto Autotask PSA based on the last logged-in user data populated by an RMM tool. It simplifies contact association for machines by leveraging username matching against known contact email prefixes, reducing manual labor and increasing accuracy.

Note that the parsing logic of this Crate is not configurable. The Crate assumes a standard domain\username or plain username format, and matches only against the prefix of contact email addresses. It does not assign contacts when there are zero matching contacts or the configuration is missing a mapped company or last user field. It doesn't create new contacts or users — only matches existing contacts — and doesn't log skipped or errored configurations.

### How the Crate works

{% hint style="info" %}
Typically, the Crate is triggered as a scheduled run across all relevant configurations, but it can also be run as part of a configuration audit job or workflow that includes enrichment, compliance checks, or cleanup actions.&#x20;
{% endhint %}

* Retrieves the last logged-in username from a configuration item - typically provided by an integrated RMM tool
* Extracts the account name from that value, e.g., the portion after the `\` or just the raw value
* Queries Autotask for all active contacts associated with the company linked to the configuration
* Compares the account name against the local part -before `@-`of each contact’s email address
* If a 1:1 match is found, the Crate assigns that contact to the configuration using the Autotask API
* If no match is found, the Crate takes no action, avoiding incorrect assignments

## Crate prerequisites

Prior to unpacking and running this Crate, you'll need to have successfully integrated your [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/).

## Unpack the Assign Autotask Configuration Contact Based on Last Logged In User Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Assign Autotask Configuration Contact Based on Last Logged In User` .\
   \
   ![](<../../../.gitbook/assets/image (120).png>)\

3. Click on the Crate tile to open its details page.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that you have the option under the **Always Pass** accordion menu to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), trigger criteria, or for integration overrides.
7. Click **Unpack**.

## Test the Crate

Ensure that the sample you're testing is a 1:1 match before running the test to see if the contact is properly assigned as expected. Then, check the negative result of the Crate with a sample you're certain is not a match, to see if an example that does not match does not get assigned.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
