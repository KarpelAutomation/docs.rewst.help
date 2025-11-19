# Document Rewst Form URLs (IT Glue/Hudu) Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Document Rewst Form URLs (IT Glue/Hudu) Crate do?

Our Document Rewst Form URLs (IT Glue/Hudu) Crate takes your Rewst form URLs and puts them into IT Glue or Hudu under each company, as a Flexible Asset for IT Glue users or Asset Layout for Hudu users.

* Give quick access to Rewst forms in your documentation platform
* Make retrieving forms easier for technicians by keeping them in a central space
* Allow forms only users to have easy access to forms

## Crate prerequisites

[IT Glue](../../configuration/integrations/integration-guides/it-glue-integration-setup.md) or [Hudu](../../configuration/integrations/integration-guides/hudu-integration-setup.md) must be integrated with Rewst prior to unpacking this Crate.

## Unpack the Document Rewst Form URLs (IT Glue/Hudu) Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for the `Document Rewst Form URLs` Crate.
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/image (156).png>)
4. Click **Unpack Crate**.
5.  Select your documentation platform from the drop-down selector.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-03-07 at 9.59.24 AM.png" alt=""><figcaption></figcaption></figure>
6. Click **Continue**.
7. Change the **Workflow name**, if desired.
8. Click **Unpack**.
9. Navigate to **Automation > Workflows**.
10. Search for `[ROC] Add Missing Forms to ITGlue/Hudu`.
11. Click into the workflow.
12. Select the Gear icon to view trigger details.\
    \
    ![](<../../../.gitbook/assets/image (15) (1).png>)
13. Set the trigger to **Enabled**.
14. Set the **Cron Schedule** as desired.\
    \
    ![](<../../../.gitbook/assets/image (16) (1).png>)
15. Click **Submit**.

{% hint style="info" %}
The workflow is designed to run at the MSP level organization. The workflow will automatically iterate through your Rewst child orgs and populate their specific form URLs in the documentation platform
{% endhint %}

### Test the Crate

1. Click **test** in the top right corner of the page.
2. Select your MSP organization and click **Test**.
3. Navigate to **Automation > Results** to view the workflow execution.
4.  Navigate to your relevant documentation tool's portal and ensure that the documentation is present.

    1. The new asset type created in Hudu will be called **Rewst Forms**.\
       ![](<../../../.gitbook/assets/Screenshot 2025-10-02 at 2.43.17 PM.png>)
    2. The new asset type created in IT Glue will be called **Rewst Forms**.\
       ![](<../../../.gitbook/assets/Screenshot 2025-10-02 at 4.06.47 PM.png>)



## Organization variables associated with this Crate

{% hint style="info" %}
For more on organization variables and how to use them, see our org variable documentation [here](https://docs.rewst.help/documentation/configuration/organization-variables). To review how to add and edit organization variables, see our documentation [here](../../configuration/organization-variables.md#edit-or-delete-existing-organization-variables).&#x20;

Organization variables not found in our standard organization variables documentation, such as the ones listed below, are typically system variables that are handled by integration mappings.

If you haven't done so already, we recommended that you run the [Configure Organization Variables Crate](https://docs.rewst.help/documentation/crates/existing-crate-documentation/configure-organization-variables), which will help you set org variables that are relevant to you and your customer's environments.
{% endhint %}

### Exclude forms from the Document Rewst Form URLs (IT Glue/Hudu) Crate with organization variables

An organization variable will automatically be created while unpacking the Crate if it doesn't already exist in your organization:

* For Hudu users, `hudu_form_excluded_forms`&#x20;
* For ITGlue users, `itg_form_excluded_forms`

These org variables are created as an empty list between two `[]` and will contain a list of trigger IDs. To use this feature, edit the org variable and insert the trigger IDs of any forms you wish to exclude within the brackets, separated by commas. For example: `[form_trigger_id_1, form_trigger_id_2]`. The related portion of the Crate's workflow will retrieve a list of all forms and find the ones that don't match the input. Forms in that list will be removed.\
&#x20;&#x20;

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
