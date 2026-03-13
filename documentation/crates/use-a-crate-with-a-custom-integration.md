# Use a Crate with a custom integration

{% hint style="info" %}
For more on custom integrations, read our introductory documentation [here](../integrations/custom-integrations/), and our guide to setting up custom integrations [here](../integrations/custom-integrations/custom-integrations-v2.md).&#x20;
{% endhint %}

If your PSA or RMM doesn't natively integrate with Rewst, or you want to use another tool from your stack with the platform, and you've set it up as a custom integration, you can still use Rewst Crates. Doing so will require you to [unsync the Crate](../../prebuilt-automations/crates/#synced-versus-unsynced-crates) or part of the Crate's workflow, which we consider to be an advanced skill in Rewst. We strongly recommend that you read through and acquaint yourself with all steps and considerations associated with this scenario before attempting it in Rewst.&#x20;

Crates are built by the Rewst team to work with the tools that natively integrate with the platform. With that in mind, you have four options for how you'd like to handle custom integrations in a Crate.

1. Unsync selective parts of your Crate, leaving some subworkflows synced to allow updates. This requires you to identify which tasks and subworkflows in the Crate relate to your custom integration to determine what to leave synced and what to unsync, through all levels of the parent workflow.&#x20;
2. Unsync the entire Crate, preventing anything in it from ever updating with Rewst's current Crate workflow again. This will guarantee that Rewst makes no changes to your version of the Crate, but will prevent you from receiving updates as the Rewst team pushes them out. You may be required to make updates and troubleshoot issues in future if something in the Crate stops working. This can be especially relevant if Rewst updates a task to reflect changes made in the partner app.
3. Clone your desired Crate, or just a subworkflow from the Crate, and use it as a starting place for building your own custom workflow that does whatever you want with your custom integration.&#x20;

## Example: Use the Microsoft: User Onboarding Crate with your custom-integrated RMM or PSA

Our Microsoft: User Onboarding Crate is one of the largest and most complicated Crates in the entire Crate Marketplace. It's also one of the most useful, automating a regular but time-intensive task common to many MSPs. The below example walks you through how to use this Crate with your custom setup, but the basic steps depicted are the same as they would be for any other Crate:

{% stepper %}
{% step %}
#### Ensure that all prerequisite integrations, native and custom, are successfully set up in Rewst.

Different Crates will have different prerequisite required integrations, which will be listed in their details page in Crate Marketplace.
{% endstep %}

{% step %}
#### Unpack the Crate in your Rewst instance.

Follow the steps in our individual Crate guides to successfully unpack the Crate. Editing of the Crate to work with your custom integrations happens after generic unpacking.
{% endstep %}

{% step %}
#### Choose which of the three Crate modification scenarios you wish to follow.&#x20;

If you're unsure which option is the best choice for you, contact your Automation Strategist for guidance.&#x20;
{% endstep %}

{% step %}
#### Clone, unsync, and edit as desired.&#x20;

For some Crates, this may involve unsyncing one or two subworkflows, while for other Crates this involves extensive unsyncing. It all depends on the contents of the Crate you wish to use. Note that if a workflow is unsynced at the parent level, that unsyncing does not carry down to all child subworkflows and tasks. Leaving any workflow in the chain synced can still allow updates from Rewst to flow into the hierarchy. More on syncing hierarchy of Crates can be found [here](../../prebuilt-automations/crates/#sync-or-unsync-subworkflows-in-a-crate). In particular, note the section with examples on how to sync or unsync subworkflows in a Crate.
{% endstep %}
{% endstepper %}

### Example steps

1. Set up the [Microsoft Cloud Integration Bundle](../integrations/integration-guides/microsoft-cloud-integration-bundle/).&#x20;
2. Follow instructions [here](existing-crate-documentation/microsoft-user-onboarding-crate-v2/) to unpack the Microsoft: User Onboarding Crate.&#x20;
3. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
4. Search for and open the `[REWST - PROC] Microsoft: User Onboarding` workflow.&#x20;
5. Use [RoboRewsty](../rewst-tools/roborewsty.md) to identify which tasks in the Crate are related to either the needed PSA or RMM— whichever tool you're using with custom integration in Rewst. Be sure to monitor the chat as RoboRewsty works to give approval as needed.
   1. Ask "Look through this workflow and all subworkflows in this workflow and give me a list of every task that involves an RMM integrated with Rewst." or,
   2. Ask "Look through this workflow and all subworkflows in this workflow and give me a list of every task that involves a PSA integrated with Rewst."
   3. Copy the returned list to a text file or other permanent location for easy access.&#x20;
6. For the purposes of this example, the custom-integrated tool is an RMM. Note RoboRewsty's response in the section of this document titled [#complete-list-of-rmm-related-tasks-in-the-microsoft-user-onboarding-workflow](use-a-crate-with-a-custom-integration.md#complete-list-of-rmm-related-tasks-in-the-microsoft-user-onboarding-workflow "mention"). Given this information, it makes the most sense to unsync all tasks in the workflow related to an RMM, but leave all other tasks synced. This is a Crate that Rewst updates frequently to match Microsoft's own updates.&#x20;
7. Manually click into each subworkflow and task indicated in RoboRewsty's list and [unsync](../../prebuilt-automations/crates/#sync-or-unsync-subworkflows-in-a-crate) it.&#x20;
8. Click **Publish** to save your changes to the Crate.&#x20;
9. Investigate the tasks and subworkflows that you unsynced in the Crate. You'll need to create a replacement for each relevant item that uses your custom integration. For example, since the Crate expects you to have just one RMM, you would add your created custom integration replacement for that RMM task, but leave the other tasks as-is in the Crate. See more on how to build subworkflows and use them in the Workflow Builder [here](../automations/workflows/#subworkflows).&#x20;
10. We recommend testing your updated workflow before publishing final changes.&#x20;

### Reference: Complete list of RMM-related tasks in the Microsoft User Onboarding workflow

{% hint style="info" %}
To find these tasks, you'll need to click to expand every subworkflow in the parent workflow, and search for the individual actions within those subworkflows.&#x20;
{% endhint %}

Here are all the tasks that involve RMM integrations:

#### **Subworkflow: \[REWST - TASK] Run Powershell via RMM** (ID: `0192d414-f975-7578-927e-ed231b500c76`)

This is the primary RMM abstraction workflow that routes PowerShell execution to the appropriate RMM based on configuration. It contains the following RMM-specific tasks:

| Task Name             | RMM Integration          | Description                                      |
| --------------------- | ------------------------ | ------------------------------------------------ |
| `automate_run_ps`     | **ConnectWise Automate** | Runs PowerShell scripts via ConnectWise Automate |
| `datto_rmm_run_ps`    | **Datto RMM**            | Runs PowerShell scripts via Datto RMM            |
| `ninjaone_run_ps`     | **NinjaOne**             | Runs PowerShell scripts via NinjaOne             |
| `control_run_ps`      | **ConnectWise Control**  | Runs PowerShell scripts via ConnectWise Control  |
| `immybot_run_ps`      | **ImmyBot**              | Runs PowerShell scripts via ImmyBot              |
| `kaseya_vsa_run_ps`   | **Kaseya VSA**           | Runs PowerShell scripts via Kaseya VSA           |
| `kaseya_vsa_x_run_ps` | **Kaseya VSA X**         | Runs PowerShell scripts via Kaseya VSA X         |
| `nable_run_ps`        | **N-able**               | Runs PowerShell scripts via N-able               |
| `superops_run_ps`     | **SuperOps**             | Runs PowerShell scripts via SuperOps             |
| `agent_smith_run_ps`  | **Agent Smith**          | Runs PowerShell scripts via Agent Smith          |
| `cw_asio_run_ps`      | **ConnectWise ASIO**     | Runs PowerShell scripts via ConnectWise ASIO     |

#### **Subworkflow: \[REWST - PROCESS] PSA: Update Ticket** (ID: `01932b4f-ac6f-7663-abe3-3244579c1bcd`)

| Task Name                 | RMM/PSA Integration    | Description                                     |
| ------------------------- | ---------------------- | ----------------------------------------------- |
| `ninja_one_update_ticket` | **NinjaOne** (PSA/RMM) | Updates tickets via NinjaOne's ticketing system |

#### **Tasks in Subworkflows that call the RMM PowerShell workflow**

The following tasks in various subworkflows call the **\[REWST - TASK] Run Powershell via RMM** workflow, which then routes to the appropriate RMM:

**\[REWST - TASK] User Onboarding: Create On Prem User (ID: `01946643-24dd-7121-bdf8-9f99fe9bac27`)**

* `powershell_copy_user` - Creates user by copying from template (uses RMM)
* `powershell_create_user` - Creates new AD user (uses RMM)
* `create_user_home_folder` - Creates home folder for user (uses RMM)
* `create_on_prem_exchange_mailbox` - Creates on-prem Exchange mailbox (uses RMM)

**\[REWST - TASK] Run AD Sync/Entra Cloud Sync (ID: `0194b772-5d96-783f-b821-71b6617462fe`)**

* `run_ad_sync` - Triggers AD sync to Azure (uses RMM)

