# Document Rewst Form URLs (IT Glue/Hudu) Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Amend Mailbox Permissions Crate in our Crate Marketplace.
{% endhint %}

## What does the Document Rewst Form URLs (IT Glue/Hudu) Crate do?

Our Document Rewst Form URLs (IT Glue/Hudu) Crate takes your Rewst form URLs and puts them into IT Glue or Hudu under each company, as a Flexible Asset for IT Glue users or Asset Layout for Hudu users.

### Why use the Document Rewst Form URLs (IT Glue/Hudu) Crate?

* Gives quick access to Rewst forms in your documentation platform
* Makes retrieving forms easier for technicians by keeping them in a central space
* Allows forms only users to have easy access to forms

## Why use the Document Rewst Form URLs (IT Glue/Hudu) Crate?

[IT Glue](../../configuration/integrations/integration-guides/it-glue-integration-setup.md) or [Hudu](../../configuration/integrations/integration-guides/hudu-integration-setup.md) must be integrated with Rewst prior to unpacking this Crate.

## Unpack the Document Rewst Form URLs (IT Glue/Hudu) Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for the `Document Rewst Form URLs` Crate.
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/image (140).png>)
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

## Test the Crate

1. Click **test** in the top right corner of the page.
2. Select your MSP organization and click **Test**.
3. Navigate to **Automation > Results** to view the workflow execution.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

