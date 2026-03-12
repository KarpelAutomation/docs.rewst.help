# Tags

## What are tags in Rewst?

_Tags_ let you earmark the automations that you care about most, for quick searching and access. Tags can be added by users with the [permission levels](https://docs.rewst.help/documentation/user-management/roles) of member, staff, and admin.

## Add tags to workflows

{% hint style="success" %}
The below directions will walk you through how to use tags for workflows, as an example. These same directions will work for how to add tags to forms, scripts, and templates, all found under Automations in the left side menu of Rewst. Once a tag is created, it can be applied to any automation type.
{% endhint %}

1. Navigate to **Automations** **>** **Workflows** in Rewst.
2. Click **⋮** to the right of your relevant workflow.
3.  Select **Edit Attributes**.\
    <br>

    <figure><img src="../../.gitbook/assets/Screenshot 2026-03-06 at 10.41.49 AM.png" alt=""><figcaption></figcaption></figure>
4. Open the **Tags** drop down in the **Edit Workflow Attributes** dialog to choose an existing tag from the list. Alternatively, begin typing in the drop down field and select the box to **Create tag**. This action will also add that new tag to your drop-down list for all future tag selections.\
   \
   ![](<../../.gitbook/assets/Screenshot 2026-03-06 at 10.43.44 AM.png>)
5. Click **Submit** when finished tagging. If successful, you’ll see a green **Workflow saved!** confirmation pop up at the top of your screen. Now, tags for that workflow will appear in the tag column of your workflows page.

<figure><img src="../../.gitbook/assets/Screenshot 2025-01-06 at 5.18.53 PM.png" alt="" width="336"><figcaption></figcaption></figure>

## Tag workflows in bulk

{% hint style="warning" %}
Bulk editing workflow tags will overwrite all previous tags currently set for those selected workflows.
{% endhint %}

1. Check the checkbox to the left of each desired workflow in your workflows page.
2.  Click <img src="../../.gitbook/assets/Screenshot 2026-03-06 at 10.48.51 AM.png" alt="" data-size="line"> .<br>

    <figure><img src="../../.gitbook/assets/Screenshot 2026-03-06 at 10.48.05 AM.png" alt=""><figcaption></figcaption></figure>
3. Follow steps as usual to edit or create new tags for your selected workflows. Note that if your multiple selections will result in overriding existing tags, the dialog will display a warning message.\
   ![](<../../.gitbook/assets/Screenshot 2026-03-06 at 10.48.58 AM.png>)
4. Click **Submit** when finished tagging. If successful, you’ll see a green Workflow saved! confirmation pop up at the top of your screen. Now, tags for that workflow will appear in the tag column of your workflows page.

## Filter by tag

1. Open the **Tags** drop-down menu under the header of your workflows page. Click **Include** to add one or more tags to filter criterial for your total tag list.\
   \
   ![](<../../.gitbook/assets/Screenshot 2026-03-06 at 10.45.16 AM.png>)
2. Your returned list will filter results to only display workflows tagged with your chosen tag.

## Color code tags

For quick visual reference of categories, tags can be color coded.

1. Navigate to **Settings > Tags** in the left side menu.
2. Here you can edit individual existing tags via the pencil icon, delete existing tags via the trashcan icon, or add new tags via the **+** sign to the top right of the **Manage Tags** screen.

<figure><img src="../../.gitbook/assets/Screenshot 2026-03-06 at 10.47.11 AM.png" alt=""><figcaption></figcaption></figure>

## Example use cases for tags

* Give better visual indicators for your long list of automations, not just text. For example, you could choose to make all Powershell workflows red.
* Tags can also be used to mark associations between pieces of a larger workflow. Consider a parent workflow which contains several child workflows and a form. Each piece of that parent workflow could be tagged with one tag. Then, you’d select that tag to isolate everything for just that one workflow, regardless of the pieces you used to create it.
* Try creating tags for the development status of a workflow: In Development, In Testing, In Production, etc. If your MSP has multiple builders on staff, different individuals will know not to edit or experiment on an In Production workflow, which could cause problems for their team.
