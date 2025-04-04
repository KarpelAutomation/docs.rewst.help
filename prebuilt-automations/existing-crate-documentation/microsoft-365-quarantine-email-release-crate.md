# Microsoft 365 Quarantine Email Release Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Microsoft 365 Quarantine Email Release Crate do?

Our Microsoft 365 Quarantine Email Release Crate has a technician fill out a form, they select an organization, a ticket to update, and a individual or all users to list quarantine emails. Then the technician selects a quarantine message and can allow the sender or not and release the email to all or the individual.

### Why use the Microsoft 365 Quarantine Email Release Crate?

This Crate enables form submission, allowing for automated email quarantine release with the ability to add senders to the allow list.

## Crate prerequisites

The Microsoft Exchange Integration must be set up before unpacking this Crate.&#x20;

## Unpack the Microsoft 365 Quarantine Email Release Crate

1. Navigate to **Crates > Crate Marketplace** in the Rewst platfor&#x6D;**.**
2. Search for `Microsoft 365 Quarantine`.\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-03-31 at 5.10.27 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.&#x20;
6.  Enter your estimated time saved into the **Time Saved (seconds)** field. \
    \


    <figure><img src="../../.gitbook/assets/Screenshot 2025-03-31 at 5.11.51 PM.png" alt=""><figcaption></figcaption></figure>
7. Click **Unpack**.&#x20;
8. Click **Done** when finished unpacking, if prompted.

## Test the Crate

1. Navigate to **Automations > Workflows**.
2.  Search for M365 Quarantine Release. Click on the workflow to open it in the workflow builder. Note that this workflow is triggered by a form submission.\
    \


    <figure><img src="../../.gitbook/assets/image (65).png" alt=""><figcaption></figcaption></figure>
3. Click <img src="../../.gitbook/assets/Screenshot 2025-02-21 at 11.20.06 AM.png" alt="" data-size="line"> to access the **Edit Trigger** page.
4.  Click ![](<../../.gitbook/assets/Screenshot 2025-03-31 at 5.16.58 PM.png>) under **Trigger Configuration** to copy the form's URL. \
    \


    <figure><img src="../../.gitbook/assets/image (66).png" alt=""><figcaption></figcaption></figure>
5. Paste the URL into a new browser tab.
6. Fill out the form as follows:
   1. Choose the organization that you want to release an email from.
   2. Choose a ticket that you want updates to be posted to.
   3. Select if you want to search an individual mailbox or all users mailbox. If individual, select the user.
   4. Select the email to release.
   5. Choose to allow or deny future messages from the sender.
   6. Choose to release the email to all recipients, or only the selected user.
7. Click **Submit**.
8.  Click <img src="../../.gitbook/assets/Screenshot 2025-03-05 at 2.40.07 PM (1).png" alt="" data-size="line"> to view the results of the workflow. If there are errors in the result record, the Crate is not working properly. \
    \


    <figure><img src="../../.gitbook/assets/image (64).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

