# Workflow builder: How to set up a workflow

{% hint style="info" %}
Remember, the [Core](../actions-in-rewst/core-actions.md) actions category contains your base actions that apply for all integrations. The [Rewst](../actions-in-rewst/rewst-actions.md) actions category holds actions form the foundation of your interaction with the platform. The [workflows](../actions-in-rewst/workflows-actions.md) actions category contains any existing workflows in the workflow list for the related child organization. The other categories contain actions that apply to that particular brand of integration.
{% endhint %}

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-24 at 10.21.01 AM.png" alt=""><figcaption><p>A blank workflow builder canvas, as seen for a freshly created workflow</p></figcaption></figure>

The start screen of the Workflow Builder Canvas has three quick start tiles, which will disappear as soon as you drag any element onto the Canvas.

## The Workflow Builder toolbar <a href="#the-workflow-settings-toolbar" id="the-workflow-settings-toolbar"></a>

{% columns fullWidth="false" %}
{% column %}
### ![](<../../../.gitbook/assets/Screenshot 2026-03-17 at 2.00.37 PM.png>)  <a href="#the-workflow-settings-toolbar" id="the-workflow-settings-toolbar"></a>


{% endcolumn %}

{% column %}


Use the top left toolbar to open, view, and use the features of the workflow builder.
{% endcolumn %}
{% endcolumns %}

* Click <img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.00.41 PM.png" alt="" data-size="line"> to expand or collapse the general left side menu of the Rewst platform.
* Click <img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.00.45 PM.png" alt="" data-size="line"> to reveal the **Library**, where all your actions, triggers, subworkflows and favorites can be found. Read more about it in the [**Library**](workflow-builder-how-to-set-up-a-workflow.md#library) section of this document.
* Click <img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.00.49 PM.png" alt="" data-size="line"> or <img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.00.59 PM.png" alt="" data-size="line"> to undo or redo your last change.
* Click <img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.00.54 PM.png" alt="" data-size="line"> to open the **Settings** menu for your workflow. See more about this menu in the [**Settings**](workflow-builder-how-to-set-up-a-workflow.md#settings) section of this document.
* Click <img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.01.03 PM.png" alt="" data-size="line">to open the additional **Canvas** controls menu.&#x20;
  * Zoom in, out, or to fit.&#x20;
  * Enable compact auto layout to reduce spacing between nodes. Toggling the setting on doesn't immediately re-layout the canvas. The setting only takes effect the next time you run auto-layout. This preference carries across sessions and workflows.
  * &#x20;Choose from vertical or horizontal layout for your canvas.
  * Check the view on and off for **Snap to Grid**.
* Click <img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.01.10 PM.png" alt="" data-size="line">to **Show All Comments** or **Hide Comments**.
  * For seasoned Rewst users: Our feature previously called Notes has been renamed to Comments.&#x20;
  * Comments are a great way to jot down your thinking behind workflow aspects, and an essential step to building workflows for any team that has multiple employees editing workflows. They save in the workflow itself, and can be viewed by anyone who has permissions to edit that workflow. Adding notes is disabled for synced clone workflows.&#x20;

Center screen, the toolbar contains a drop-down selector for additional options for your workflow. This is also where you can toggle back to the legacy view of the Workflow Builder.

* Click **Rename** to change the name of your workflow.
* Click **Edit Workflow Attributes** to add a new tag or choose an existing tag from the drop-down **Tags** selector.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.38.20 PM.png" alt="" width="296"><figcaption></figcaption></figure>

* Click **Edit Workflow JSON** to open the JSON editor in the right of your screen.
* Click **Version History** to open a menu on the right side of your screen displaying the record of when the workflow was created and edited. You also have the option to revert back to a previous version of your workflow, or view previous versions to compare changes.
* Click **Execution History** to view the list of execution results for the workflow, including their success or failure status.&#x20;
* Click **Export** to [export a workflow](https://docs.rewst.help/documentation/automations/workflows#export-and-import-workflows).
*   Click **Clone** to create an exact copy of your workflow without changing the original.&#x20;

    The window that appears is the failsafe to confirm that you want to clone the workflow. In it, you can do the following:

    * Give your clone a different name from the original
    * Choose the organization where the workflow will be cloned to with the drop-down **Organization** selector
    * Choose to **Synchronize Changes** with the original workflow - any changes you make to the original workflow will be reflected in the clone if this is toggled on
* Click **Delete** to delete your workflow entirely.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-24 at 10.31.51 AM.png" alt=""><figcaption></figcaption></figure>

## Publish a workflow

In the top right corner of the Workflow Builder Canvas, you'll find the options to test and publish your workflow.

Click **Run** to test the workflow via an execution. This will open a new dialog where you can choose the organization for your test.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-05-21 at 1.06.52 PM.png" alt=""><figcaption></figcaption></figure>

Click **Deploy** to deploy the workflow fully. Before you deploy you'll be asked to confirm that you wish to make this decision.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-05-21 at 1.06.05 PM.png" alt=""><figcaption></figcaption></figure>

## Library

{% columns fullWidth="false" %}
{% column %}
<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.14.55 PM.png" alt=""><figcaption></figcaption></figure>
{% endcolumn %}

{% column %}
The **Library** menu contains three distinct tabs:

1. **Actions** holds a complete list all available actions and subworkflows. At the very bottom of the list is **+ Add Integrations**, which launches the option to add a new integration to Rewst. Note that this is intended to allow you to add an integration quickly and facilitate the completion of workflow design, not to replace the full integrations menu. Any integration added through the library that requires [organization mapping](../../integrations/#what-is-organization-mapping) will need to be mapped from its full integration page.\
   Integration actions are divided by categories, viewable after you click into the integration. If you search within an integration, results will be scoped to that integration only. This rule applies for custom integrations in addition to Rewst-native integrations.
2. **Flow Control** contains the option to add a new Trigger, as well as a list of all triggers already added to your workflow.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.15.03 PM.png" alt=""><figcaption></figcaption></figure>



3. **My Library** stores your bookmarked, favorite actions. Click the bookmark icon on any action to add it to the My Library list.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 2.15.10 PM.png" alt=""><figcaption></figcaption></figure>


{% endcolumn %}
{% endcolumns %}

At the very bottom of the menu you have the option to add a new custom integration.

1. Click **Add Integrations +**.
2. The dialog that appears contains many fields for information needed to set up the integration. Pull that relevant information from the partner app you wish to integrate.&#x20;
3. When finished,&#x20;

## Canvas view settings

{% columns %}
{% column %}
The canvas view menu is located on the left side of the Workflow Builder canvas. **+** and **-** zoom the view in or out. ![](<../../../.gitbook/assets/Screenshot 2026-03-20 at 1.21.54 PM.png>) snaps the view to fit the entire workflow into the center frame of your screen. ![](<../../../.gitbook/assets/Screenshot 2026-03-20 at 1.21.58 PM.png>)toggles the visualization interactivity of the workflow on or off. See more about this in the [#view-task-flow](workflow-builder-how-to-set-up-a-workflow.md#view-task-flow "mention") and [#view-trigger-flow](workflow-builder-how-to-set-up-a-workflow.md#view-trigger-flow "mention")sections of this document.
{% endcolumn %}

{% column %}
<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-20 at 1.19.12 PM.png" alt=""><figcaption></figcaption></figure>


{% endcolumn %}
{% endcolumns %}

Compact view

## Add transitions between actions

To add a transition, hover over your desired starting action. Note the circles on the right and bottom on the action. These represent the action’s outputs, and are where you can create transitions to following. The triangle on the top and left of the action are inputs into the action, and where you can connect a transition. Click on the circle under or to the right of the action, drag, and release on the top of the ending action where you would like the transition to conclude.&#x20;

<figure><img src="../../../.gitbook/assets/add transition.gif" alt=""><figcaption></figcaption></figure>

The diamond that appears between the two actions is the _transition indicator_. Click on it to open the transition settings menu.

{% columns fullWidth="false" %}
{% column %}
<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-18 at 3.18.17 PM.png" alt="" width="300"><figcaption></figcaption></figure>


{% endcolumn %}

{% column %}
\
From this menu you can:

* Optionally add a **Custom Transition Label.**
* Choose the **Condition** of your transition. - note the appearance and meaning of the condition statuses in the table below, the symbols of which will appear in your transition indicator once chosen.
* Add a data alias.

<figure><img src="../../../.gitbook/assets/condition statuses.gif" alt=""><figcaption></figcaption></figure>
{% endcolumn %}
{% endcolumns %}

| Transition indicator symbol | Label       | Meaning                                                               |
| --------------------------- | ----------- | --------------------------------------------------------------------- |
| ✓ - Check mark              | **Success** | The transition will only be followed if the preceding action succeeds |
| ✗ - X mark                  | **Failure** | The transition will only be followed if the preceding action fails    |
| ↻ - Circle/always           | **Always**  | The transition will be followed regardless of the action outcome      |
| { } - Braces/custom         | **Custom**  | The transition uses a custom Jinja condition                          |

## View action flow

View the relationship between actions via the animation depicted on their transitions. Note that the way the animation flows depicts the order of the actions in the workflow. You'll need to to run the workflow or pull up an execution histoy and select an execution for the animation to kick on. It automatically turns off when you return to the edit view in the Workflow Builder Canvas.

<figure><img src="../../../.gitbook/assets/task animation.gif" alt="" width="375"><figcaption></figcaption></figure>

## View trigger flow

Triggers appear directly on the Workflow Builder Canvas, and have an arrow to visually indicates which action the workflow will start executing when that trigger fires.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-18 at 12.23.09 PM.png" alt="" width="289"><figcaption></figcaption></figure>

## General settings

The **Settings** menu has distinct tabs, each with its own configuration options.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 3.25.42 PM.png" alt=""><figcaption></figcaption></figure>

* **General** provides a field to view and edit the **Workflow Name**, as well as the **Workflow Timeout** in seconds, the **Time Saved** in seconds, and a drop-down selector for the **Workflow Type** - either  Standard, Option Generator, or Stream Output. Here you can also choose to **Delete Workflow** or **Download Workflow as JSON** file.
* **Data Aliases** displays a list of all defined [data aliases](data-aliases.md).
* **Input** displays existing input configuration, as well as options to **Add Schema** or **+ Add Input**.
* **Output** displays existing output configuration, as well as options to **Add Schema** or **+ Add Output**.
* **Variables** displays existing variables, as well as an option to **+ Add Variable**.
* **Triggers** displays existing [triggers](../intro-to-triggers/), as well as an option to **+ Add Trigger**.
  * Click **+ Add Trigger** to reveal the **Trigger Settings** menu. Each of the tabs contains the following options. Remember to click **Save Trigger** at the bottom of the menu when finished making your selections.
    * In the **General** tab:
      * Here you can update the fields for **Trigger Name**, **Trigger Mode**, and **Trigger Type**.&#x20;
      * Under the **Mock Results** and **Workflow Input Parameters** menus, the **Query Conditions** fields allow for the entering of string values only.
      * Any previously set trigger variables will appear here in the **Trigger Variable** section.
    * In the **Overrides** tab:
      * **+ Integration Override** reveals a list of all integrations and allows you to specify which integration configurations should be used. Otherwise, the default integration configuration for the triggering organization will be used.&#x20;
      * **+ Add All** will add integration overrides for all installed integrations in the organization.
    * In the **Criteria** tab, set up your [trigger criteria](../intro-to-triggers/trigger-criteria.md).
    *   In the **Run For** tab, choose your [Activate Triggers to Run For](../intro-to-triggers/#activate-trigger-to-run-for) settings.


* **Edit JSON** provides three separate code editors, including one each for **Trigger Outputs** and **Action Parameters**.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-17 at 3.42.26 PM.png" alt="" width="375"><figcaption></figcaption></figure>

## Action settings

Click into your action to open the **Action Settings** menu, which contains four tabs.

**General** - This includes:

* **Task Name** - A user-editable field for the action's identifier
* **Description** - A user-fillable text box for additional action information
* **Output -** Specifies where the action's output gets stored in the task logs
* **Publish Result As** - A friendly name you assign for the action's results that you can use as an a context variable for calling it's content in future actions
* **Time Saved**: - This is for just the time saved by that action- see more about total workflow time savings in [this section](workflow-builder-how-to-set-up-a-workflow.md#add-time-saved-to-a-workflow) of the document
* **Edit Task JSON** - Opens the action's code editor

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-27 at 10.10.43 AM.png" alt=""><figcaption></figcaption></figure>

**Parameters** - Unique to each action, this tab houses options for defining the action's behavior during execution. Think of them like fill-in-the-blank options that make workflows adaptable.&#x20;

**Testing** - This tab provides the option to simulate the action's function with a user-defined result, useful for testing and debugging. Toggle **Mock this action** on or off. Click **Add Mock Result** to add additional guidelines for JSON content to be returned by this action to the **Mock Results** list.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-27 at 10.20.47 AM.png" alt=""><figcaption></figcaption></figure>

**Advanced** - Here you'll find settings for several advanced action properties. The use and purpose of each is more fully documented [here](https://docs.rewst.help/documentation/automations/workflows/advanced-workflow-operations-menu#integration-overrides).

* [**Integration Overrides**](advanced-workflow-operations-menu.md#integration-overrides)
* [**Task Transition Criteria**](advanced-workflow-operations-menu.md#task-transition-criteria-sensitivity)
* [**Run as Org**](advanced-workflow-operations-menu.md#run-as-org)
* [**With Items**](advanced-workflow-operations-menu.md#with-items)
* [**Items Concurrency**](advanced-workflow-operations-menu.md#items-concurrency)
* [**Task Timeout**](advanced-workflow-operations-menu.md#task-timeout)
* [**Security Features**](https://docs.rewst.help/documentation/jinja/jsonpath-for-data-redaction-in-rewst)
  * **Redacted Input Parameters**
  * **Redacted Output Parameters**

## Trigger settings

Click and drag **Trigger** under the Flow Control tab of the Library to add a new trigger to your Workflow Builder Canvas. This will reveal a new menu to the right with your **Trigger Settings** that contains four tabs.

**General** - Set your **Trigger Name**, choose the **Trigger Mode** and **Trigger Type**, and toggle your trigger to **Enabled** or **Disabled**. Under the **Trigger Parameters** menu, set your timezone, Cron Schedule, and [Critical Timing](../intro-to-triggers/#critical-timing). Under the **Trigger Variables** menu, any workflow variables set in the workflow settings will appear.

**Overrides** - Add [Integration Overrides](../intro-to-triggers/#integration-overrides) for the trigger.

**Criteria** - Add [trigger criteria](https://docs.rewst.help/documentation/automations/intro-to-triggers/trigger-criteria#save-trigger-criteria) to filter trigger events.

**Run For** - Choose which organization or organizations to activate the trigger to run for. Here you can also choose tags to select activation.

### Completion handlers: Inbound and outbound triggers

In the new Workflow Builder, the concept previously known as a completion handler is treated as triggers instead. Find these in the trigger menu under the **Trigger Mode** drop-down selector. Read more about how to use inbound and outbound triggers in our [triggers documentation](../intro-to-triggers/).&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-30 at 12.03.13 PM.png" alt="" width="242"><figcaption></figcaption></figure>

An **Inbound** selection will set the workflow to trigger by another workflow. An **Outbound** selection will trigger another workflow to run when this workflow completes.

## Test workflows

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-18 at 3.36.09 PM.png" alt=""><figcaption><p>In the dialog that appears after clicking <strong>Deploy</strong>, click <strong>Show Detailed Changes</strong> to expand the accordion and display a side-by-side comparison of your original workflow and all changes that would be published.</p></figcaption></figure>

Click **Run** to initiate your test, then click to confirm that you want to **Run Test** in the dialog that appears.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-18 at 4.35.53 PM.png" alt=""><figcaption></figcaption></figure>

After your test is complete, view the workflow execution results in the right side menu. Click on any of the events in the execution log to expand and view information. Click **View Results** to launch a new browser tab with the complete results, in the Rewst platform outside of the Workflow Builder. When satisfied with your workflow, then click **Deploy** and **Submit** to save your changes and implement them on all future runs.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-03-18 at 4.36.37 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Inbound and outbound trigger data is hard to fake for testing, as it's represented as `COMPLETED_WORKFLOW.` instead of `CTX.COMPLETED_WORKFLOW.` Rather than running an entire workflow multiple times to test just this one element, create a [noop action](https://docs.rewst.help/documentation/workflows/actions-in-rewst/core-actions#no-operation-noop) that sets the test data, and use it to trigger your inbound our outbound trigger.

In the noop, set all of the variables that will be used  in the On Success transition as data aliases.

It’s important that the names of the data aliases you create in the On Success transition of the noop match both:

* the names of the variables that will be used in your inbound or outbound trigger
* the names of the variables that will be used in the live parent workflow that your trigger is triggered by

Add static values that represent a good test case for ensuring that your related workflow functions the way you expect.
{% endhint %}

## Build a workflow

### Create the workflow

1. Click **Create**.&#x20;
2. Give your workflow a **Name**, and add any tags you would like via the **Tags** drop-down selector.
3. Click **Submit**. This will launch the Workflow Builder.

### Set up the trigger

{% hint style="success" %}
Recall that every workflow is kicked off by a trigger. Which trigger you choose will depend on the goals of your workflow. There's no right or wrong order to build your workflow as long as it contains all the correct parts at the time of publication. You could start with adding actions to your canvas first, then set up your trigger.

If your trigger is form, you'll need to create and set up that form first before pulling it into your workflow.
{% endhint %}

1. If you have not yet added any triggers, click **Add a Trigger > + Add Trigger** to add a new trigger.
2. If you have already added a trigger and want to add an additional trigger, click the yellow **Triggers** bar on the Workflow Builder Canvas **> + Add Trigger**. Note that if you have one trigger or many triggers, all will show up in this right side menu in a list, which is always accessible by clicking the yellow bar. The number of total triggers will appear in a counter box in the far right of the dragged yellow bar.
3. Name your trigger something simple but descriptive, and unique. Depending on your trigger, new **Trigger Parameters** will appear as a new section in the setup menu with additional selections to be made to set parameters for the trigger. For example, if your trigger is a [form](https://docs.rewst.help/documentation/forms), you would be asked to select the name of an existing form to use as the trigger.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-21 at 3.55.59 PM.png" alt=""><figcaption><p>Note the Flow Control tab on the left, and the trigger settings on the right.</p></figcaption></figure>

3. Fill out the **Trigger Settings** menu as follows:
   1. Enter a descriptive name into the **Trigger Name** field.
   2. Toggle the trigger to **Enabled** to use it in the workflow.
   3. Use the **Trigger Mode** drop-down selector to choose the mode for your trigger:
      1. **Integration**: The workflow is triggered by an integration with Rewst.
         1. **Inbound**: The workflow is triggered by another workflow.
         2. **Outbound**: The workflow triggers another workflow.
   4. Use the **Trigger Type** drop-down selector to chose the type from the list of all available triggers in your Rewst instance. Depending on your trigger, new **Trigger Parameters** will appear as a new section in the setup menu with additional selections to be made to set parameters for the trigger. For example, if your trigger is a [form](https://docs.rewst.help/documentation/forms), you would be asked to select the name of an existing form to use as the trigger.
4. If needed, add an [integration override](../intro-to-triggers/#create-a-trigger).\
   \
   ![](<../../../.gitbook/assets/Screenshot 2026-04-24 at 10.45.18 AM.png>)
5. Set your trigger criteria, if required for your workflow.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2026-04-24 at 10.46.13 AM.png>)
6. Think about which organizations you want the trigger to run for.
   1. **Selected Organization (Org Name)** will be toggled on by default. Toggle to off if desired.
   2. If you want the automation to work for your main org as well as all child organizations, toggle **All current and future managed organizations** to on.&#x20;
   3. If you want the automation to apply only for certain organizations, select them manually in the **Organizations** selector field.\
      \
      ![](<../../../.gitbook/assets/Screenshot 2026-04-24 at 10.47.30 AM.png>)
7. Click **Save Trigger** at the bottom of the menu to save the trigger.

{% hint style="info" %}
A workflow can be called by multiple forms through the use of triggers. All that is required is to open the workflow and create a new trigger with **Core - Form Submission** selected for the Trigger Type.
{% endhint %}

### Drag the action

1. Search for your desired action in the library. You can do this via the **Search** field or by scrolling down the library to your known integration and clicking its category to expand and view all its available actions.&#x20;
2. Click on the action, drag it, and drop it onto the Workflow Builder Canvas.
3. Repeat this process to add all needed actions to your workflow.

### Configure actions

1. Click on the placed action, which will open its settings in the right side menu.
2. Fill out all fields and tabs for your desired task setup.
3. Remember to add [transitions](https://docs.rewst.help/documentation/workflows/configuring-your-workflow-tasks/navigating-between-tasks-with-transitions) between your tasks.
4. Click **Run** **> Run Test** to see if your workflow executes as desired.&#x20;
5. Click **Deploy** to save your changes and push them to the desired effect.

### Add time saved to a workflow

One of the key metrics you can use to understand the value added by your automations is time saved. You can configure this in Rewst by identifying how long it takes to manually work through your process before automating it and adding it into your workflow.

{% hint style="info" %}
**Considerations for time saved**

When determining how much time to set for any given process, it's a good practice to consider not only how much time it may take you or your most experienced tech to go through that process manually, but also how much time it takes to fix any human errors that may happen during this process.
{% endhint %}

1. Click on the workflow that you want to configure to open it in the Workflow Builder.
2. Click <img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 4.45.41 PM.png" alt="" data-size="line"> to edit the workflow settings.
3. Enter the number of seconds it takes a human to complete the manual version of the process in the **Time Saved** field.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-27 at 10.26.06 AM.png" alt=""><figcaption></figcaption></figure>

### Add, edit, or delete workflow comments

{% hint style="info" %}
Rewst now also offers our [RoboRewsty](../../roborewsty.md#document-with-roborewsty) note taking feature, to automate your documentation. Choose to document manually, or with RoboRewsty. &#x20;
{% endhint %}

Comments are a great way to jot down your thinking behind workflow aspects, and an essential step to building workflows for any team that has multiple employees editing workflows. They save in the workflow itself, and can be viewed via the <img src="../../../.gitbook/assets/Screenshot 2026-04-27 at 10.28.11 AM.png" alt="" data-size="line"> button by anyone who has permissions to edit that workflow. These boxes provide a title and a markdown editor.

{% hint style="warning" %}
Adding comments is disabled for synced clone workflows.&#x20;
{% endhint %}

1. Right-click the canvas and select **Add Comments**. Alternatively, press and hold the **control** key to expose the menu.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2026-04-27 at 10.29.25 AM.png>)
2. Click and drag it to the desired location on the canvas.
3.  Click <img src="../../../.gitbook/assets/Screenshot 2026-04-27 at 10.30.09 AM.png" alt="" data-size="line"> to edit a comment's content in the right side menu. Click ⋮ to expose options to **Edit Markdown**, **Edit Attributes**, or **Delete**. <br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2026-04-27 at 10.30.04 AM.png" alt="" width="201"><figcaption></figcaption></figure>
4. To delete comments right from the comment on the Canvas, right-click the comment and click **Delete**_._

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-27 at 10.31.12 AM.png" alt="" width="322"><figcaption></figcaption></figure>

5. Comments may also be pinned to the canvas so that you can navigate without accidentally moving notes around. Click **Pin** to enable or disable pinning.

## Additional Workflow Builder features

### Select multiple elements on the Canvas

Select multiple workflow actions and comments simultaneously by drawing a selection box around them.

1. Hold shift and drag your mouse, or hold the middle-mouse button and drag your mouse.
2. Once you’ve selected multiple actions or comments, move them by dragging the selection box to the desired location.

Commonly used actions can be favorited to easily find and add actions to workflows. When favorited, actions can be found in the **favorites** section and added on the Workflow Builder Canvas by right-clicking.

### Clone and synchronize a workflow

Custom-designed workflows can be cloned to create an exact copy without changing your original.

1. Click <img src="../../../.gitbook/assets/Screenshot 2026-04-21 at 10.41.58 AM (1).png" alt="" data-size="line"> .
2. Click **Clone**.
3. The dialog that appears is the failsafe to confirm that you want to clone the workflow. In it, you can do the following:
   1. Give your clone a different name from the original
   2. Choose the organization where the workflow will be cloned to with the drop-down **Organization** selector
   3. Choose to **Synchronize Changes** with the original workflow - any changes you make to the original workflow will be reflected in the clone if this is toggled on
4.  Click **Clone**.<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2026-02-06 at 5.17.03 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Creating a clone of your workflow is a great way to make a siloed test environment for your custom workflow. Make upgrades, fixes, or updates to your original workflow with synchronized changes toggled off.
{% endhint %}

## Retrieve the name of a workflow

Run the command `{{ WORKFLOW.name }}` .

Similarly, if you're searching for the name as it relates to completion handlers, run the command\
`{{ COMPLETED_WORKFLOW.WORKFLOW.name }}` .

{% hint style="info" %}
Information for the **Advanced** tab of tasks and actions in a workflow can be found in our documentation for the [advanced workflow operations menu](advanced-workflow-operations-menu.md).
{% endhint %}

### Workflow wrappers <a href="#workflow-wrappers" id="workflow-wrappers"></a>

_Workflow wrapper_ is an informal term to describe a parent workflow that "wraps around" a subworkflow, where a primary workflow is used in a separate workflow as a [subworkflow](https://docs.rewst.help/documentation/automations/workflows#subworkflows). Whereas a completion handler only runs when a workflow completes, a workflow wrapper can run before or after completion. You apply this strategy when you want certain tasks to run before or after the tasks within a subworkflow, and want to visualize the process on one workflow canvas. For example, you might create a workflow wrapper to handle custom input from a Rewst form, prior to a Crate running. The visual below shows this strategy, running a few tasks before the Microsoft User Onboarding subworkflow.

![](<../../../.gitbook/assets/Screenshot 2026-06-10 at 1.18.43 PM.png>)<br>
