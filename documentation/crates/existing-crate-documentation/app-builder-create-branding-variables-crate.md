# App Builder - Create Branding Variables Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Amend Mailbox Permissions Crate in our Crate Marketplace.

If you're new to App Builder, see our documentation [here](../../app-builder/).
{% endhint %}

## What does the App Builder - Create Branding Variables Crate do?

Our App Builder - Create Branding Variables Crate contains a form that enables users to update the style variables for any prebuilt app, such as the [Forms Portal, End User Portal, or Reporting Portal](../../app-builder/prebuilt-apps/). Apply consistent branding across all apps in just a few clicks, ensuring a professional look that matches either your own or your clients’ visual identity. The workflow in this Crate retrieves the current branding settings for the selected app and theme of dark or light, and displays them to the user. Users can then input new hex codes for their colors and upload logos if necessary. Upon submission, the Crate updates the relevant style templates and applies the new branding site-wide for the selected app.

* The Crate doesn't perform CSS modifications outside of predefined variables, such as specific layout changes or custom font adjustments.
* It doesn't apply changes automatically without user input. Manual form submission is required to update branding.
* It doesn't support highly complex custom CSS overrides, as this crate focuses on simplifying the branding process.

{% hint style="success" %}
This Crate also supports configuration at both the MSP and customer levels, allowing different branding for different user groups depending on who logs into the portal.
{% endhint %}

### Workflow breakdown

1. The workflow begins when triggered by a form submission that contains styling configuration data for an App Builder application.
2. The workflow starts at the **BEGIN** task using noop action which processes the incoming form data and filters through all context variables to identify styling-related values.
3. The system creates a list of variables to update by examining each context variable and identifying those that are strings starting with a hash symbol, indicating they are color values or CSS styling properties.
4. The workflow excludes system variables such as execution\_id, organization, originating\_execution\_id, rewst, sentry\_trace, ticket\_id, trigger\_instance, max\_retries, user, choose\_site, and choose\_theme from processing to avoid conflicts.
5. For each valid styling variable found, the system creates a new organization variable name by prefixing it with the chosen site identifier followed by an underscore and the original variable name.
6. The workflow also handles header logo configuration by checking if a header\_logo value is provided and creating an appropriately named organization variable for it.
7. The system compiles all identified styling variables into a structured list format that can be processed for bulk organization variable creation.
8. The workflow proceeds to the set\_org\_var\_dynamic task which uses **Bulk Upsert Organization Variables** action to create or update multiple organization variables simultaneously.
9. For each item in the populated list, the system creates an organization variable with the generated name and corresponding styling value, setting the category as general and enabling cascade functionality.
10. The bulk upsert operation processes each styling variable with a concurrency of one to ensure proper sequential handling of the organization variable updates.
11. Upon successful completion of all organization variable updates, the workflow concludes without additional processing or output generation.

## Unpack the App Builder - Create Branding Variables Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for the `Amend Mailbox Permissions` Crate.
3.  Click on the Crate tile to begin unpacking.\


    <img src="../../../.gitbook/assets/Screenshot 2025-09-24 at 3.17.05 PM.png" alt="" data-size="original">
4. Click **Continue**.
5. Click **Unpack**.

### Use the Crate

{% hint style="success" %}
Ensure that your hex codes and logos are consistent across your brand to provide a polished, professional look for your users and clients.
{% endhint %}

1. Navigate to **Automations** > **Forms** in the left side menu of your Rewst platform.
2. Search for `[App Builder] Set Branding Styles`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the form link for your desired organization. This will launch the form in a new browser tab.
5. Use the fields and selectors on the form to update your app's appearance as you wish.&#x20;
6. Click **Submit**. The changes will be live on your app as soon as the workflow is finished running.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
