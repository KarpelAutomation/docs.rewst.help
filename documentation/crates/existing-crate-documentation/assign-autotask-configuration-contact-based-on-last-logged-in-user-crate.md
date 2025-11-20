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

* The workflow retrieves the last logged-in username from a configuration item.
* It extracts the account name from that value, e.g., the portion after the `\` or just the raw value.
* It then queries Autotask for all active contacts associated with the company linked to the configuration, and compares the account name against the local part -before `@-`of each contact’s email address.
* If a 1:1 match is found, the Crate assigns that contact to the configuration using the Autotask API. If no match is found, the Crate takes no action, avoiding incorrect assignments.

### Workflow breakdown

1. The workflow begins at the **START** task which serves as the entry point and immediately transitions to retrieve configuration items from Datto Autotask PSA.
2. The **get\_configuration\_items** task makes a POST request to the Datto PSA API to query all configuration items for the specified company using the organization variable datto\_company\_id as a filter.
3. Upon successful retrieval of configuration items, the workflow publishes the results and creates a filtered list of check\_items containing only configuration items of type 1 with relevant details including item type, hostname, last user, contact ID, and configuration ID.
4. The **list\_contacts** task executes next, making a request to retrieve all contacts associated with the same company ID from Datto PSA using the **List Contacts by Search v2** action.
5. The **CALCULATE\_UPDATES** task processes the retrieved data by creating several key mappings and lists including a contact\_id\_to\_email mapping that converts contact IDs to lowercase email usernames, a contact\_email\_to\_id mapping for reverse lookups, a configurations\_needing\_update list identifying items that either have no assigned contact but have a last logged user or have a contact that doesn't match the current last logged user, and an updates\_to\_perform list containing the specific configuration ID and new contact ID pairs for items that need updating.
6. The **patch\_configuration\_items** task iterates through each item in the updates\_to\_perform list using the with\_items functionality and makes PATCH requests to the Datto PSA API to update each configuration item's **contactID** field with the appropriate contact based on the last logged in user.
7. The workflow concludes at the **END** task after all configuration items have been successfully updated, or transitions to the **ERROR** task if any step fails, which then also leads to the **END** task to ensure proper workflow completion.

## Crate prerequisites

Prior to unpacking and running this Crate, you'll need to have successfully integrated your [Datto Autotask PSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/).

## Unpack the Assign Autotask Configuration Contact Based on Last Logged In User Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Assign Autotask Configuration Contact Based on Last Logged In User` .\
   \
   ![](<../../../.gitbook/assets/image (136).png>)<br>
3. Click on the Crate tile to open its details page.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that you have the option under the **Always Pass** accordion menu to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
7. Click **Unpack**.

### Test the Crate

Ensure that the sample you're testing is a 1:1 match before running the test to see if the contact is properly assigned as expected. Then, check the negative result of the Crate with a sample you're certain is not a match, to see if an example that does not match does not get assigned.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
