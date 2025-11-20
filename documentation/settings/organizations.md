# Organizations

{% hint style="info" %}
Before editing anything in this section of Rewst, be sure to read up on our introductory documentation on organizations and organization variables [here](https://docs.rewst.help/documentation/organization-variables#what-is-an-organization).
{% endhint %}

### Manually create a new organization in Rewst

{% hint style="warning" %}
Remember, organizations are divided up into parent and child organizations. Every new customer you onboard into Rewst will need its own separate child org.
{% endhint %}

1. Navigate to **Settings >** **Organizations** in the left side menu of the Rewst platform.
2. Click **+ Create**.\
   ![A modal window titled “Create a New Organization” within a dark-themed user interface. The form includes several input fields:  A checkbox labeled “Enabled” (checked by default)  A required “Name” field marked with a red asterisk  “Org Slug” field  “Domain” field  “Microsoft Tenant ID” field  A dropdown labeled “Managing Organization ID” with the value “Real Fake Customer” preselected  At the bottom of the form are two buttons: a “Cancel” link and a pink “Submit” button. All input fields are styled with a dark background and light text.](<../../.gitbook/assets/Screenshot 2025-04-22 at 12.05.55 PM.png>)
3. Fill out the following fields in the **Create a New Organization** dialog that appears:
   1. **Name**: This is the display name for the organization - keep it short and recognizable, and avoid special characters
   2. **Org Slug**: This is auto-generated and becomes part of the URL and internal references, but you can edit it -use lowercase and dashes only
   3. **Domain**: Leave this field blank
   4. **Microsoft Tenant ID**: Don’t edit this field, but note that what happens to it will depend on your tooling:
      1. If you use Microsoft, Rewst’s integration will auto-populate this field when customers are linked
      2. If you don’t use Microsoft, this field will remain blank
   5. **Managing Organization ID**: This drop-down selector will auto-populate based off of your Rewst setup, and may just be one option to reflect your parent organization
4. Click Submit.

## Edit an organization

Once an organization is created, it will appear in the organizations list of this organizations menu, as well as the drop-down organizations selector in the top right of the Rewst platform.

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-23 at 2.59.26 PM.png" alt=""><figcaption><p>Click ⌄ to expand your organization selector</p></figcaption></figure>

&#x20;Click <img src="../../.gitbook/assets/Screenshot 2025-04-23 at 2.38.16 PM.png" alt="" data-size="line"> next to your desired organization in the organization list to open the fields of that organization’s record for editing. From this list view, you can also choose to add tags to your organization via the **Tags** drop-down selector. For more on tags, see our documentation [here](https://docs.rewst.help/documentation/settings/tags-in-rewst).

## Delete an organization

{% hint style="danger" %}
Once an organization is deleted, it can’t be brought back, even by Rewst support. Make sure that you intend to delete an organization permanently before proceeding with the following steps.
{% endhint %}

1. Check off the box next to the organization you wish to delete.
2.  Click **Delete Organization(s)** in the top right corner.\
    <br>

    <figure><img src="../../.gitbook/assets/Screenshot 2025-04-22 at 12.18.46 PM.png" alt=""><figcaption><p>Delete organizations will only appear once an org has been selected</p></figcaption></figure>
3. Confirm that you wish to delete the organization. Type `delete orgs` into the field.\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-04-22 at 12.20.45 PM.png>)
4. Click **Submit**.
5. A green confirmation message will appear once the deletion completes.\
   ![](<../../.gitbook/assets/Screenshot 2025-04-22 at 12.24.00 PM.png>)

## Rewst data retention

{% hint style="info" %}
For more on how to view workflow execution logs, see our workflow documentation [here](https://docs.rewst.help/documentation/workflows/workflow-builder-how-to-set-up-a-workflow).
{% endhint %}

Rewst retains workflow execution for a configurable number of days, up to 30 days maximum. Logs are expunged nightly according to the retention period. The default each account is set to at the time of creation is 21 days.

Access data retention settings in the Rewst platform by navigating to **Settings > Organizations**. Note that only users with the admin role will be able to update this setting.<br>

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-22 at 11.49.53 AM.png" alt=""><figcaption><p>The organizations list page</p></figcaption></figure>

Click <img src="../../.gitbook/assets/Screenshot 2025-04-23 at 2.38.16 PM.png" alt="" data-size="line"> next to each individual organization to edit the settings for that organization.

Settings for data retention are stored per organization. Setting a retention period preference at the parent organization level won’t create inherited permissions for all child organizations. Instead, if you want all organizations to have the same data retention period, use <img src="../../.gitbook/assets/Screenshot 2025-04-23 at 2.37.30 PM.png" alt="" data-size="line"> to edit all managed organizations at once.\
![A user interface screen titled “Set Retention Policy for All Managed Organizations.” It features a field labeled “Results Retention” marked with a red asterisk, indicating it’s a required input. Below is helper text: “Automatically purge workflow results older than the specified number of days.” A text box contains the number “30,” suggesting a retention period of 30 days. At the bottom right are two buttons: “Cancel” and a purple “Submit” button. The background is dark-themed.](<../../.gitbook/assets/Screenshot 2025-04-23 at 3.03.12 PM.png>)
