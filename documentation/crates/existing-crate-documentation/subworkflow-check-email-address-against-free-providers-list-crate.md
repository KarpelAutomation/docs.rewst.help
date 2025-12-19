# Subworkflow: Check Email Address Against Free Providers List Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Subworkflow: Check Email Address Against Free Providers List Crate do?

Use this subworkflow in your workflows to determine if a provided email address is from a free provider.

### How the Crate works

{% hint style="info" %}
This Crate is a little different from most of our other Crates. It contains a subworkflow you can use in building your own workflows rather than a fully-executable workflow that achieves a goal right after unpacking.
{% endhint %}

The subworkflow downloads a list of free providers according to [HubSpot's knowledge base](https://knowledge.hubspot.com/forms/what-domains-are-blocked-when-using-the-forms-email-domains-to-block-feature) and checks the email address against that list.

Input: `email_address` - string email address to check

Output: `free_provider` - boolean of whether the email provided is from a free provider

### Workflow breakdown

1. The workflow begins when triggered with an email address input parameter that needs to be checked against a list of free email provider domains.
2. The **set\_domain** task executes first using the **noop** action to extract the domain portion from the provided email address by splitting on the @ symbol, taking the last part, and converting it to lowercase, then publishing this value as `email_domain` to the workflow context.
3. The **get\_list\_of\_free\_provider\_domains** task runs in parallel using the **HTTP Request** action to retrieve a CSV file containing free email provider domains from a HubSpot URL, then processes the response by splitting the data on newlines and trimming whitespace from each domain, publishing the resulting list as `free_domains` to the workflow context.
4. After both the **set\_domain** and **get\_list\_of\_free\_provider\_domains** tasks complete successfully, the **check\_list** task executes using the **noop** action to perform the actual comparison by checking if the extracted email domain exists within the list of free provider domains.
5. The **check\_list** task publishes a boolean result as `free_provider` to the workflow context, indicating whether the provided email address uses a free email provider domain or not.
6. The workflow completes by outputting the final result through the `free_provider` variable, which contains true if the email address uses a free provider domain or false if it uses a non-free domain.

## Unpack the Subworkflow: Check Email Address Against Free Providers List Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Sub-workflow: Check Email Address Against Free Providers List.`

    \
    ![](<../../../.gitbook/assets/Screenshot 2025-12-19 at 10.26.07 AM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter **Time Saved** under **Crate Configuration**.
7. Click **Unpack**.

## Use the subworkflow

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Click into the workflow where you would like to use the subworkflow, or create a new workflow.
3. Search in your actions list for `Check Email Address Against Free Providers List`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-12-19 at 10.23.53 AM.png>)
4. Click and drag the action to the Workflow Builder canvas.
5.  Enter the **email address** you would like to check into the relevant field of the task's configuration menu.

    ![](<../../../.gitbook/assets/Screenshot 2025-12-19 at 10.24.11 AM.png>)

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
