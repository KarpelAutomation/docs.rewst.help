# Integrations

## What is an integration?

_Integrations_ are a core part of Rewst. Simply put, an integration is the successful linking of the Rewst platform and a separate tool, to allow the free back and forth flow of information between platform and tool. Integrations are achieved with a variety of setup steps that will differ depending on the type of tool—PSA versus RMM, for example—and brand of tool type.

## Why use integrations?

Once you’ve set up an integration, you can unpack Crates to achieve automations that depend on those integrated tools. More on Crates and how unpacking works can be found in our Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates).

## Custom integrations

If Rewst doesn’t have an integration for your particular tool, you have the option to build one custom. Any tool that has an API can be integrated with Rewst via custom integration. We recommend that new Rewst users start with stock integrations, and complete all training in Cluck University before attempting custom integration builds.

Our intro to custom integrations can be found [here](https://docs.rewst.help/documentation/integrations/custom-integrations). Information on how to set up custom integrations can be found [here](https://docs.rewst.help/documentation/integrations/custom-integrations/custom-integrations-v2).

## View integrations in Rewst

Access integrations that are both installed and available for installation in the Rewst platform by navigating to **Configuration > Integrations** in the left side menu.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-05 at 4.12.30 PM.png" alt=""><figcaption></figcaption></figure>

### View installed integrations

Uninstall any installed integration by clicking the ⋮ on its integration tile. You’ll be asked to confirm that you want to **Delete** the integration in a new dialogue. Click on any installed integration tile to view its configuration page.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-05 at 4.13.05 PM.png" alt=""><figcaption></figcaption></figure>

## Set up an integration

{% hint style="warning" %}
Clicking on any of the available integrations under the **Installed Integrations** section will automatically begin that installation.
{% endhint %}

Each of our integrations has a separate integration setup and configuration guide, organized by type of integrated tool in this documentation site under the **Documentation > Integrations > Individual integration documentation** section of the left side documentation menu.

In the Rewst platform, search for any of Rewst’s integrations in the **Find Integrations** search bar at the top right of the Integrations page.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-05 at 4.20.10 PM.png" alt=""><figcaption></figcaption></figure>

Click the **+New** button to reveal two options for how to set up a custom integration:

1. **New Integration**
2. **Add OpenAPI Integration**

Alternatively, you can kickoff the custom integration setup process by clicking **+ Add New Integration** further down the page in the **Get More Integrations** section.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-05 at 4.20.53 PM.png" alt=""><figcaption></figcaption></figure>

## Map your organizations to finish integrating

### What is organization mapping?

_Organization mapping_ is the process of connecting each Rewst integration with your child organizations, enabling automations that leverage that integration to work for your customers. When setting up your integrations, this is frequently the last step.

{% hint style="warning" %}
Organization mapping for Microsoft integrations is slightly different than the process outlined on this page. Refer to the video on mapping and consenting organizations for the Microsoft Cloud bundle.
{% endhint %}

### How to complete the organization mapping process

{% hint style="info" %}
Note that the mapping menu won't be visible during initial integration set up. It appears at the bottom of that integration's configuration page after you click **Save Configuration**.
{% endhint %}

The general steps to map each organization are as follows.

1. Navigate to **Configuration > Integrations** in the Rewst platform.
2. Select the integration that you want to map from your collection of already set up integrations.&#x20;
3. Scroll down the page to the **Organization Mapping** submenu. Here you'll see your **Organizations** listed in a table.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-21 at 10.48.43 AM.png" alt="An image of the organizational mapping sub menu inside an integration. It contains four columns across a page with customer information."><figcaption><p>An example of the Organization Mapping sub menu, in an installed integration's configuration page</p></figcaption></figure>

4. Click **Refresh Options** to pull customer accounts from your integration.&#x20;
   1. If the blank text box turns into a dropdown field, the sync was successful.
   2. If accounts are missing:&#x20;
      1. Check if the customer account exists in your integrated tool.
      2. Adjust any applied filters that might be excluding accounts.
5. Click **Suggest Values**. Rewst will try to match organization names automatically. This generates mappings between Rewst organizations and corresponding entities in the partner app.
6. **Refresh Options** will re-read the potential mapping options for both organizations and companies in the partner app.
7. Review the suggestions to ensure that organizations in Rewst and customer names in the integrated tool are aligned. If a match is missing, manually select the correct organization from the dropdown menu.
8. Double-check all mappings, especially if you have multiple pages of organizations. By default, only the first 10 organizations will be listed.
9. Click **Save Mappings** to finalize the connections.

## Request an integration

We’re constantly adding new integrations to Rewst. Vote for which upcoming integrations should take priority by creating a post with your thoughts or upvoting other existing suggestion posts [in our Canny.](https://rewst.canny.io/integrations)
