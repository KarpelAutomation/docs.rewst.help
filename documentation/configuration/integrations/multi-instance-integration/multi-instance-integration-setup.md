# Multi-instance integration setup

## What is multiple instance integration?

Also known as muti-tenancy, _multiple instance integration_ refers to connecting **multiple, separate instances of a given app or system** to Rewst, where they're managed via one Rewst instance. Most MSPs manage multiple clients, each with their own environments. You can’t run one integration to Autotask and expect it to cover every client, because each client has its own instance.

Multi-instance integration enables you to designate one instance as the default, and expands integration overrides to support the additional configurations. This is done as an advanced option at the workflow task level, allowing you to specify a configuration on a per-task basis.

### Set up a multi-instance integration

1. Navigate to the integration settings page for the integration that requires multiple configurations.
2. Click the ![](<../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.11.03 AM.png>) drop-down in the top left of your screen.&#x20;
3.  Click **Add Configuration**. A new configuration form will appear.\
    <br>

    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.09.48 AM.png" alt=""><figcaption></figcaption></figure>
4. Enter descriptive title into the **Name** field of the **Add Configuration** dialog.&#x20;
5. Click **Submit.** This will create a new Configuration form to fill out on the center of your screen, as well as a new option for this configuration under the ![](<../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.11.03 AM.png>) drop-down selector. In future, you'll click in this list to determine which configuration you'd like to view at any given time.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.13.08 AM.png>)<br>
6. Fill out the configuration form with a second set of valid credentials.
7. Click **Save Configuration**. An org variable options list will appear below the form, showing what configuration your organizations have been assigned to.

{% hint style="warning" %}
Organizations that are assigned to another configuration should be blocked from editing until you navigate to that configuration page. Ensure any existing workflows using the integration continue to run normally with the correct configuration.
{% endhint %}



![multitenancy-settings-page](https://user-images.githubusercontent.com/22626085/223552134-beb79f3c-4850-4826-acc3-cb24e5740ff2.gif)

### Trigger a workflow with a non-default integration configuration

A workflow trigger can be set up to use a secondary integration configuration. Setting up the integration override will cause all actions in the workflow to use the override configuration.

1. Click **Add Trigger** or click the trigger you have already set up from the workflow editor.
2. Fill out the [trigger](../../../automations/intro-to-triggers/) form to create your trigger.
3. Click ⊕ to add an override.
4. Select the integration you have set up with multiple configurations that you would like to override.
5. Choose the **Use Select Config** radio button to generate a drop-down with available configurations, **Use** **Name Search** to type in the name of the configuration to select the new configuration for this action, or **Use Org Mapping** to use the mapping defined on the integration settings page.
6. Select the fallback mode radio button to either use the default integration configuration when the override configuration is unavailable, or fail the workflow when the override configuration is unavailable.
7. Click **Submit**.

![multitenancy-trigger-form](https://user-images.githubusercontent.com/22626085/223553923-558f8e2c-f73f-4a6d-995c-3bdfbaa3bb47.gif)

### Configure an action to use a non-default integration configuration

Actions can be set on an action-by-action basis to use a non-default or secondary integration. If you have already set an override on the trigger for the workflow, the actions will use the same configuration as the trigger.

1. Add the action to a workflow. Remember, once an action is on your workflow builder canvas, we call it a task.
2. Click on task to open the action panel.
3. Scroll to the **Integration Overrides** Section on the advanced tab of the panel.
4. Click the ⊕ to add an override.
5. Choose the **Use Select Config** radio button to generate a drop-down with available configurations, **Use Name Search** to type in the name of the configuration to select the new configuration for this action, or **Use Org Mapping** to use the mapping defined on the integration settings page.
6. Select the configuration from the drop-down or type in the configuration name depending on which radio button was chosen.
7. Select the fallback mode radio button to either use the default integration configuration when the override configuration is unavailable, or fail the workflow when the override configuration is unavailable.

![multitenancy-task-config-form](https://user-images.githubusercontent.com/22626085/223554540-427c55e4-8d87-4576-980e-2cc1c853a7da.gif)

### Limitations and future enhancements to multi-instance integrations

* Workflow-level and form-level integration overrides are not currently available without setting a trigger.
* Selecting the Use Org Mapping configuration instructs the override to utilize the org variable mappings defined on the relevant integration settings page to determine the pack config to use. This means that the organization must have a `pack_config_id` set.
  * If an org variable does not have the `pack_config_id` field set and the Use Org Mapping config mode is utilized for that organization then no pack config will be found, causing the workflow to revert to the designated fallback behavior. This can be resolved in the UI at the MSP level by going to the integration settings page and clicking the Save Mappings button.
  * When mapping organizations to a specific configuration in a workflow, The Rewst - Create Org Variable and Rewst - Bulk Upsert Org Variables actions can also accept an optional `pack_config_id`.

{% hint style="warning" %}
Currently, Rewst doesn't support multitenancy for the following integrations:

* ImmyBot
* Microsoft CSP
* Microsoft EXO
* Microsoft Graph
* SQL Database

For directions for how to handle multiple instances of these integrated apps, see our documentation [here](integrate-multiple-instances-of-the-same-integration.md).&#x20;
{% endhint %}
