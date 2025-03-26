# Adding a new client via Microsoft Cloud Solution Provider

{% hint style="success" %}
For a more streamlined process for adding new clients, check our [add-client-to-rewst-setup.md](../../prebuilt-automations/existing-crate-documentation/add-client-to-rewst-setup.md "mention") Crate installation page.
{% endhint %}



The first part of adding a client is to create them within Rewst itself. The easiest way to do this is to add them via the Microsoft CSP Integration.&#x20;

1. Navigate on the left navigation menu to **Configuration > Integrations > Microsoft CSP**_._ You'll see a list of your clients on the left, which you can filter using the column header options across the top.

<figure><img src="../../.gitbook/assets/csp-add-client.png" alt=""><figcaption></figcaption></figure>

2. Find the empty drop-down field under **Rewst Organization**. Enter a name. Note that this is the name of the organization within Rewst. We recommend you match this with the company in the PSA to make it more quickly identifiable.&#x20;
3. Click ![](<../../.gitbook/assets/Screenshot 2025-03-07 at 2.00.23 PM (1).png>) to the right of the drop-down.
4. Click **Submit**. The drop-down will auto-fill with the client you created.

## Step Two

The second step is matching the organization you created to the various companies in your other platforms, such as your PSA and RMM.

Navigate on the left navigation menu to **Configuration > Integrations** and click through each installed integration (shown at the top).

<figure><img src="../../.gitbook/assets/match-integration.png" alt=""><figcaption></figcaption></figure>

On the right-hand side, you will see an empty dropdown for the org you made. You can either:

1. Click **Suggest Matches**, which will attempt to fuzzy match the org name. Make any necessary changes.
2. Click **Save Mappings**.
3. Manually work through each empty drop-down and select the relevant company in the integration.&#x20;
4. Click **Save Mappings**.

Once you have done this for each integration, you can start building workflows for those clients. Note that there is however some additional work to do if you are adding clients to existing workflows or forms, such as the New User Onboarding workflow.

## Step Three (Recommended)

This is a recommended step for any new client and includes setting up organization variables for the client. You should be familiar with this process from your ROC member discussing it with you.

Navigate to **Forms > \[ROC] Rewst: Simple Organizational Variable Form for Child Accounts > Options Menu > Usages > View Direct URLs**.

Select the URL for the org you added.

Our recommended fields to fill in are:

1. Primary Identity Provider
2. Username Format
3. Preferred Domain Controller (only a required field if using Ninja right now)
4. Preferred ADConnect Server (required if using ADConnect)
