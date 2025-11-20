# Migrate between Rewst instances

This guide provides a step-by-step process for migrating from one Rewst instance to another, including\
manual migration of organizations, workflows, integrations, templates, forms, and other elements.&#x20;

{% hint style="warning" %}
Migration of instances is an advanced process completed by Rewst customers and should not be attempted by new Rewst users.  [Reach out to Rewst Support ](./)to set up your new organization in a different region. Expect the entire migration process to take several weeks, or perhaps months if your first Rewst instance is especially large. Proper planning for migration should include ample time for dedicated testing.

Currently, there is no way to move custom integrations from one instance to another. When you set up your custom integration in your new instance, any imports containing custom integration actions will fail in the new instance. You'll need to redo all actions in the custom integration.
{% endhint %}

## What customers can expect after migration

When moving from an existing Rewst instance to a new instance, the following elements will change:

* Rewst outgoing IP addresses - review your outgoing IP address and hostnames by following guidance [here](https://docs.rewst.help/security/security-policy)
* MSP and customer organization ID
* Webhook URLs
* Trigger IDs

### What can and cannot be migrated

Note that the **Workaround** column explains the steps you can complete to manually migrate data that would otherwise fail and error during the standard Rewst import and export process. If there is no workaround listed, you must follow the manual instruction in the **Migration status** column to complete the migration step.

| Item                                               | Migration status                                                                          | Workaround                                                                                                                                      |
| -------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Custom workflows, including custom integrations V1 | Export from old Rewst instance includes scripts, templates, and forms                     | N/A                                                                                                                                             |
| Workflows with custom integrations V2              | Can't be directly imported                                                                | Yes: [#workflow-uses-custom-integration-actions](migrate-between-rewst-instances.md#workflow-uses-custom-integration-actions "mention")         |
| Custom forms                                       | Not included in the import unless linked to a workflow                                    | Yes: [#migrate-custom-forms-form-migration-workflow](migrate-between-rewst-instances.md#migrate-custom-forms-form-migration-workflow "mention") |
| Triggers, excluding webhook URLs                   | Preserved - automatically imports referenced forms                                        | Only if no custom integration overrides exist                                                                                                   |
| Triggers with integration overrides                | Will not be successfully imported                                                         | Yes: [#trigger-uses-custom-integration-overrides](migrate-between-rewst-instances.md#trigger-uses-custom-integration-overrides "mention")       |
| Crates                                             | Can be unpacked and re-synced in the new instance, but unsynced changes must be reapplied | Unsynced changes to Crate components must be reapplied                                                                                          |
| Unsynced Crate workflows                           | Must be identified and updated manually                                                   | Yes: Manual resync on each workflow, template, script, form, or app                                                                             |
| Integrations                                       | Must be manually reconnected in new instance                                              | N/A                                                                                                                                             |
| App Builder apps                                   | Export from old Rewst instance includes scripts, templates, and forms                     | N/A                                                                                                                                             |
| Users                                              | All users must be re-invited to the new instance                                          | No workaround exists                                                                                                                            |
| Workflow tags                                      | Tags must be recreated and will not be imported                                           | No workaround exists                                                                                                                            |
| Favorited actions                                  | These will not be imported, and actions must be re-favorited in the new instance          | No workaround exists                                                                                                                            |
| Organization variables                             | These must be recreated and will not be imported during migration                         | No workaround exists                                                                                                                            |
| PowerShell interpreter                             | This must be manually re-added to your new Rewst instance                                 | No workaround exists                                                                                                                            |
| Workflow results                                   | Historical results are not transferred to the new instance                                | No workaround exists                                                                                                                            |
| Roles and permissions                              | These must be manually recreated                                                          | No workaround exists                                                                                                                            |

### Workaround use cases

Click on any of the below workaround accordion menus to expand and view its contents.

<details>

<summary>Workflow uses custom integration actions</summary>

1. Open the workflow in the original Rewst instance.
2. Remove all actions tied to custom integrations.
3. Add a description note such as `Custom actions removed for migration`_._
4. Confirm that no triggers use custom integration overrides.
5. **Publish** and **export** the workflow.
6. In the new instance, import the workflow.
7. Back in the original instance, revert to the previous version to restore original logic.
8. In the new instance, **r**ecreate the removed custom actions using the reconfigured integrations.
9. Test the workflow in the new instance to ensure expected functionality.

</details>

<details>

<summary>Trigger uses custom integration overrides</summary>

1. Open the workflow’s triggers in the original instance.
2. Remove any custom integration overrides.
3. Save the updated triggers.
4. You may now safely export and import the workflow.

</details>

<details>

<summary>Migrate custom forms: Form migration workflow</summary>

If you’ve created custom forms used in Crates or custom workflows:

1. Create a new workflow titled `Form migration workflow` in the original instance.
2. Link all relevant custom forms to this workflow.
3. Export the workflow.
4. Import it in the new instance — this brings the forms across.
5. Manually relink the imported forms to your Crate workflows or triggers.

</details>

## Migration planning and preparation

Use the following like a checklist, and make sure that you have each item accounted for before attempting migration.

* Identify the organizations to be migrated for both primary and managed orgs.
* Decide on a cutoff time to disable triggers in the current instance before enabling them in the new instance.
* Export all organization variables for later resetting.
* Record custom integration usage, noting each workflow that uses custom integrations. Capture screenshots or export JSON for the integration if needed. Document each trigger using an integration override.

{% hint style="info" %}
Need help identifying custom integration workflows? Contact Rewst Support! They can provide you with a list containing:<br>

* All workflows that use custom integrations
* Whether the custom integration is linked in an action or a trigger
* The specific custom integration names and IDs
* Any Crate workflows that have been unsynced so you can check for modifications

You'll need this full list to properly prepare for your migration.
{% endhint %}

* Identify forms not linked to workflows. Optionally, to reduce manual prep, create a form migration workflow to collect and export them.
* If you use the Microsoft Cloud Integration Bundle, note your current bundle setup and permissions.
* Create a list of all users and custom roles.
* Record a list of all workflow tags.
* Record a list of all favorited actions.
* Document apps setup if using App Builder.

## Migration steps

Use the following like a checklist, and make sure that you complete each item as part of your migration.

* Reconfigure and reauthorize all integrations in your new instance.
* Re-invite users to Rewst.
* Import workflows.
* Re-link custom forms.
* Rebuild custom actions in applicable workflows.
* Recreate custom roles, tags, and permissions.
* Reapply unsynced Crate modifications.
* Reinstall and configure Microsoft Cloud Integration Bundle integrations, with new app registration if needed.

## Migration caveats

### Microsoft Cloud Integration Bundle

You must first uninstall the Microsoft Cloud Integration Bundle on your old instance before setting up the bundle on the new instance.

If you don't immediately have time for this uninstall and reinstall, you can complete the following steps to allow for the Bundle to work on both instances for a short length of time.

1. Navigate to the Microsoft Cloud Integration Bundle configuration page on the old instance.
2. Click **review steps** at the bottom.
3. Click **next** to navigate to **permissions.**
4. Click **Clear All.**
5. **Click Next**. Ensure that you go through the full permissions screen.&#x20;
6. Now, [install the Microsoft Cloud Integration Bundle](../../documentation/configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) in your new Rewst instance.
