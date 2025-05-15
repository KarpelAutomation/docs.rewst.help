# M365: Generate Org Chart Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the **M365: Generate Org Chart** Crate do?

Automatically generate an organizational chart from Microsoft 365 user data with the M365 Generate Org Chart Crate. Referencing the manager and job title fields, it produces an HTML diagram that helps visualize reporting relationships across the organization. This is particularly useful for HR, IT, and leadership teams managing structure or onboarding processes. The Crate uses a bundled HTML template to render the org chart. Basic customization, such as layout or styling, can be applied by editing this template.

* **Retrieve user directory data**: Fetch users from Microsoft Graph, including each user's job title and assigned manager.
* **Filter disconnected users**: If `include_isolated_users` is set to false, it excludes users without a manager or who are not a manager themselves, focusing the chart on connected hierarchies.
* **Generate org chart code**: Constructs a diagram using Mermaid.js syntax to represent organizational relationships visually.
* **Build HTML page**: Embeds the Mermaid.js org chart into an HTML template.
* **Send notification email**: Emails the user a link to access and view the generated org chart.

{% hint style="warning" %}
The generated chart reflects a snapshot in time and does not auto-update as org structure changes.
{% endhint %}

## Crate prerequisites

Before unpacking this Crate, you'll first need to set up the Microsoft Graph integration, via our [Microsoft Cloud Bundle](../../configuration/integrations/integration-guides/cloud/microsoft-cloud-integration-bundle/).

## Unpack the M365: Generate Org Chart Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `M365: Generate Org Chart`**.**\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-05-08 at 5.45.18 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that you have the option under the **Webhook** and **Form Submission** accordion menus to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](../../settings/tags-in-rewst.md).&#x20;
7. Click **Unpack Crate**.

## Use the M365: Generate Org Chart Crate

{% hint style="info" %}
The crate workflow is triggered by a form submission. Initiate the org chart generation by submitting a request through the form with the necessary inputs.
{% endhint %}

### Use the form

1. Navigate to **Automations > Forms**.
2.  Locate the form titled **Microsoft: Build Org Chart**.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-05-08 at 5.51.59 PM.png" alt=""><figcaption></figcaption></figure>
3. Click **⋮ > Usages**.
4. Click View Direct URLS.
5. Click on the link in the dialog that appears.
6. Fill out the form as desired.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-05-08 at 5.55.06 PM.png>)
7. Click **Submit**.
8. Check the email specified in your form submission for the receipt of the chart.

### Edit the email template

1. Navigate to **Automations > Templates**.
2. Search for `Org Chart HTML Template`**.**\
   ![](<../../../.gitbook/assets/Screenshot 2025-05-08 at 5.57.56 PM.png>)
3. Click **>** to open and edit the template.&#x20;

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
