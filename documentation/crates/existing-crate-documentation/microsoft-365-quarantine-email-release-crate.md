# Microsoft 365 Quarantine Email Release Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Microsoft 365 Quarantine Email Release Crate do?

Our Microsoft 365 Quarantine Email Release Crate has a technician fill out a form where they select an organization, a ticket to update, and a individual or all users to list quarantine emails. They then select a quarantine message and can allow the sender or not and release the email to all or the individual.

## Crate prerequisites

The [Microsoft Cloud Integration Bundle](../../integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Microsoft 365 Quarantine Email Release Crate

1. Navigate to **Marketplace > Crates** in the left side menu of the Rewst platform.
2. Search for `Microsoft 365 Quarantine`.\
   \
   ![](<../../../.gitbook/assets/image (175).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter your estimated time saved into the **Time Saved (seconds)** field.
7. Click **Unpack**.

### Test the Crate

1. Navigate to **Automations > Workflows**.
2. Search for `M365 Quarantine Release`.&#x20;
3. Click on the workflow to open it in the Workflow Builder. Note that this workflow is triggered by a form submission.
4. Click on the trigger in the workflow to open its settings in the right side menu.
5. Click **Copy URL**.&#x20;
6. Copy the URL for the organization that you wish to use for your test.
7. Paste the URL into a new browser tab.
8. Fill out the form as follows:
   1. Choose the organization that you want to release an email from.
   2. Choose a ticket that you want updates to be posted to.
   3. Select if you want to search an individual mailbox or all users mailbox. If individual, select the user.
   4. Select the email to release.
   5. Choose to allow or deny future messages from the sender.
   6. Choose to release the email to all recipients, or only the selected user.
9. Click **Submit**.
10. Click ![](<../../../.gitbook/assets/Screenshot 2026-04-15 at 4.43.48 PM.png>) **> Execution History** to view the results of the workflow. If there are errors in the result record, the Crate is not working properly. <br>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
