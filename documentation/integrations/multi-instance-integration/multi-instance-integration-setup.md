# Multi-instance integration setup

Integration multitenancy enables MSPs to specify multiple configurations for integrations, provides a way to designate one as the "default" and expands integration overrides to support the additional configurations. It allows MSPs to add integration overrides as an advanced option at the workflow task level, allowing users to specify a config on a per-task basis.

### Setting up a Multi-Instance Integration

1. **Navigate** to the integration settings page for the integration requiring multiple configurations.
2. **Confirm** that the breadcrumb bar on the page shows a new dropdown with the configuration name.
3. **Select** "Add Configuration" from the dropdown.
   * A new configuration form will appear.
4. **Fill out** the configuration form with a second set of valid credentials.
5. **Save** the form.
   * An org variable options list will appear below the form, showing what configuration your organizations have been assigned to.

Organizations that are assigned to another configuration should be blocked from editing until you navigate to that configuration page. Ensure any existing workflows using the integration continue to run normally with the correct configuration.

![multitenancy-settings-page](https://user-images.githubusercontent.com/22626085/223552134-beb79f3c-4850-4826-acc3-cb24e5740ff2.gif)

### Triggering a Workflow with a Non-default Integration Configuration

A workflow trigger can be set up to use a secondary integration configuration. Setting up the integration override will cause all actions in the workflow to use the override configuration.

1. **Click** add trigger or click the trigger you have already set up from the workflow editor.
2. **Fill out** the [trigger](../../triggers/intro-to-triggers.md) form to create your trigger.
3. **Click** the ⊕ to add an override.
4. **Select** the integration you have set up with multiple configurations that you would like to override.
5. **Choose** the "Use Select Config" radio button to generate a dropdown with available configurations, "Use Name Search" to type in the name of the configuration to select the new configuration for this action, or "Use Org Mapping" to use the mapping defined on the integration settings page.
6. **Select** the fallback mode radio button to either use the default integration configuration when the override configuration is unavailable or fail the workflow when the override configuration is unavailable.
7. **Submit** the form.

![multitenancy-trigger-form](https://user-images.githubusercontent.com/22626085/223553923-558f8e2c-f73f-4a6d-995c-3bdfbaa3bb47.gif)

### Configuring an Action to use a Non-default Integration Configuration

Actions can be set on an action-by-action basis to use a non-default/secondary integration. If you have already set an override on the trigger for the workflow, the actions will use the same configuration as the trigger.

1. **Add** the action to a workflow.
2. **Click** the action to open the action panel.
3. **Scroll** to the Integration Overrides Section on the advanced tab of the panel.
4. **Click** the ⊕ to add an override.
5. **Choose** the "Use Select Config" radio button to generate a dropdown with available configurations, "Use Name Search" to type in the name of the configuration to select the new configuration for this action, or "Use Org Mapping" to use the mapping defined on the integration settings page.
6. **Select** the configuration from the dropdown or type in the configuration name depending on what radio button was chosen.
7. **Select** the fallback mode radio button to either use the default integration configuration when the override configuration is unavailable or fail the workflow when the override configuration is unavailable.

![multitenancy-task-config-form](https://user-images.githubusercontent.com/22626085/223554540-427c55e4-8d87-4576-980e-2cc1c853a7da.gif)

### Limitations and Future Enhancements to Multi-Instance Integrations

* Workflow-level and form-level integration overrides are not currently available without setting a trigger.
* Selecting the "Use Org Mapping" configuration instructs the override to utilize the org variable mappings defined on the relevant integration settings page to determine the pack config to use. This means that the organization must have a `pack_config_id` set.
  * If an org variable does not have the `pack_config_id` field set and the "Use Org Mapping" config mode is utilized for that organization then no pack config will be found, causing the workflow to revert to the designated fallback behavior. This can be resolved in the UI at the MSP level by going to the integration settings page and clicking the Save Mappings button.
  * When mapping organizations to a specific configuration in a workflow, The Rewst - Create Org Variable and Rewst - Bulk Upsert Org Variables actions can also accept an optional `pack_config_id`.

{% hint style="warning" %}
We do not currently support multitenancy for the following integrations:

* ImmyBot
* Microsoft CSP
* Microsoft EXO
* Microsoft Graph
* SQL Database
{% endhint %}
