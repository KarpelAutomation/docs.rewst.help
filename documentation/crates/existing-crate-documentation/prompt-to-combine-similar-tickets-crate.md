# Prompt to Combine Similar Tickets Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Prompt to Combine Similar Tickets Crate do?

This Crate automatically detects potential duplicate tickets in ConnectWise PSA when new tickets are created. When a new ticket is created, the Crate's workflow searches for existing tickets with similar summaries from the same company within the last 2 weeks. If a match is found, it presents technicians with options via buttons in the ticket.

{% hint style="warning" %}
Install this Crate for the managing organization only.
{% endhint %}

There are two relationship types associated with this Crate.

**Child Relationship - uses /attachChildren API:** This creates a parent-child relationship where both tickets remain valid with their original numbers.

* Creates a bundled relationship while preserving both ticket numbers
* Both tickets remain independently accessible
* Can be undone by detaching the relationship
* Better aligns with your preference for bundling vs. merging

**Merge - uses /merge API:** This combines tickets where the merged ticket number becomes invalid.

* Permanently combines tickets into one
* The merged ticket number becomes invalid or inaccessible
* Can't be easily undone
* Requires edit permissions on Service Desk security role

## Crate prerequisites

You'll need to first successfully integrate ConnectWise PSA with Rewst before unpacking this Crate.

## Unpack the Prompt to Combine Similar Tickets Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Prompt to Combine Similar Tickets`.\
   \
   ![Card-style interface titled “Prompt to Combine Similar Tickets” with a description explaining that it triggers for ConnectWise ticket updates with a “New”-like status, intended only for the managing organization. Below the text is a dark button labeled “ConnectWise PSA” with its logo, and a light blue tag labeled “Operational Efficiency.” The background is dark blue.](<../../../.gitbook/assets/Screenshot 2025-08-07 at 4.25.45 PM.png>)\

3. Click on the Crate tile to open its details page.
4. Click **Unpack Crate**.
5.  This dialog allows you to choose the trigger variables-- merge, child, or merge and child, which is added by clicking both merge and child— via drop-down selector. Use the guidance given for each type at the top of this document to make your selection.\
    \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-08-08 at 9.21.48 AM.png" alt="Instructional interface displaying a message that when a new ticket is received, the system checks for similar ticket summaries and provides options to either ignore the duplicate or combine them. A dropdown menu labeled “merge and child” is expanded, showing selectable options “merge” and “child.” Below the instruction is a purple button labeled “Continue.” The background is dark, and the text is white with key terms highlighted in teal."><figcaption></figcaption></figure>
6. Click **Continue**.
7. Enter your time savings into the **Time Saved (seconds)** field.
8. Click **Unpack**.

## Test the Crate

Create a new ticket in ConnectWise PSA that you know is a duplicate of another existing ticket. If the Crate is working properly, you should see the new buttons for handling duplicates appear on the ticket.&#x20;

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
