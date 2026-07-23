---
hidden: true
noIndex: true
icon: gauge-max
---

# Rewst workflow Engine Next upgrade:  Beta guide

{% hint style="info" %}
Shhh, this page is a secret!

For betas within the Rewst product, our related documentation is link access-only. This means that you won't be able to find it in search or ask RoboRewsty questions about the content of this page. For questions, reach out in your dedicated support Discord channel.
{% endhint %}

## What is the Next Engine upgrade?

We’re upgrading the core engine that executes your workflows in Rewst. It's designed to make workflows faster, more reliable, and better able to handle complex and long-running automation. For you, nothing about how you build or manage workflows changes. The same Crates, actions, triggers, and integrations all work identically.

Right now, this upgrade is in beta. The old and new workflow engines are running side-by-side with a per-workflow toggle that you control to determine which engine to use. This allows you full control and immediate rollback to the old engine at any time if you encounter any issues.  Both engines use the same database.

### How much faster is the Next Engine?

This depends heavily on the workflow, but in testing we've seen everything from modest\
gains to order-of-magnitude improvements. Real examples from beta runs:

* 33 seconds → 14 seconds
* 2 minutes → 13 seconds
* \~28 minutes → under 2 minutes per sub-run
* 27 minutes → 5 minutes
* 9 minutes → 2 minutes

The larger and more complex the workflow, the more dramatic the improvement

## Your role as a beta user

Run your normal workflows and let us know if anything looks different from what you’d expect. If you see something unexpected, post it in the Beta Discord channel, or open a normal support ticket with the workflow execution ID. The engine is designed to drive every workflow to a completed state and to eliminate hung and stuck executions. If you do see something stuck in running for an unusually long time on Engine Next, please report it — reducing that to zero is an explicit goal of the beta. We also love hearing about your wins! Send us your before and after run times, too.&#x20;

{% hint style="info" %}
You’re joining a private Discord channel with other beta participants and Rewst team members. It’s the place to share findings, ask questions, and give us feedback. [Click here to activate your channel invite.](https://discord.gg/XW2nkvDPF)&#x20;
{% endhint %}

Start with workflows that are not ultra business-critical, and favor larger, more\
complex ones. Those are the best stress tests, and where you'll see the biggest wins. When you enable a workflow, compare its results and run time against previous runs and confirm nothing unexpected changed. Newly built workflows are also a good place to try Engine Next.

## **How it works**

#### How do you turn it on?

* Once your organization is enabled as a beta tester, you'll find the per-workflow toggle as a column in the workflow list view labeled **Engine Next**. The default off setting uses the old engine, and the on setting uses the new engine.&#x20;

<figure><img src="../.gitbook/assets/Screenshot 2026-07-23 at 3.45.37 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
The toggle value is cached, so it takes roughly 15 seconds to propagate before\
new runs of that workflow pick up the change.
{% endhint %}

* Once you're comfortable and ready to take on the changes, you can also flip an org-wide **Enable** setting under **Settings > Feature Preview** in the left side menu of your Rewst platfor&#x6D;**.**

<figure><img src="../.gitbook/assets/Screenshot 2026-07-23 at 3.46.41 PM.png" alt=""><figcaption></figcaption></figure>

* Once a workflow starts on an engine, it completes fully on that engine, including\
  all of its subworkflows. It will never switch back and forth mid-execution.

#### How do you know a workflow actually ran on Engine Next?

* At the top of the workflow results page, an **Engine Next** tag will show if the workflow execution used the new engine.&#x20;
* Execution history remains visible for 30 days, the same as today.&#x20;

#### If you rerun a previous execution, which engine does it use?

* Execution will follow whatever the toggle is currently set to. If Engine Next is on for that workflow, the rerun uses Engine Next, even if the original execution ran on the old engine.
* If you toggle off while a workflow is already running, that run finishes on whatever engine it started with. Your change applies to the next run.

#### How are subworkflows handled?

* Subworkflows automatically inherit the engine of the workflow that started them. On the execution and results page, you'll see an Engine Next chip near the workflow name and run time. If a run used the old engine, the chip won't be there.
* Once a workflow starts on an engine, it completes fully on that engine — including\
  all of its subworkflows. It will never switch back and forth mid-execution.
* If your subworkflow is shared by two parent workflows, the workflow execution follows whichever parent kicked off that particular run. The same shared sub workflow can run on the old engine when called by an old-engine parent and on Engine Next when called by an Engine Next parent. It doesn't propagate back up to change the parent.

#### Will Rewst deployments interrupt your running workflows?

* No. Engine Next pins each in-flight workflow to the engine version it started on.&#x20;
* When we deploy a new version, existing runs finish on their original version and only newly\
  started workflows use the new one, so rolling deploys don't break workflows that are\
  mid-flight, including long-running ones.

#### Can you turn it off if you go all-in and change your mind?

* If you enable Engine Next for your whole org and want to back out, turning it off\
  reverts to the per-workflow selections you had before. You won't lose your prior\
  configuration.

#### Why do in-progress results sometimes look a little different?

* Engine Next doesn't write to the database continuously the way the old engine did. Instead, it\
  records an initial in progress record when the run kicks off and then writes the full\
  results at the end of the run. While a run is in flight, live progress is streamed to the results page instead of being read from the database.&#x20;
* As a result you may notice minor in-flight display quirks. For example, a running subworkflow not appearing until it completes, or a subworkflow name showing where a task name used to. Several of these have already been fixed and more fixes are rolling out. The final saved result matches the old engine's view.

#### What happens if Engine Next, or the underlying infrastructure, goes down?

* Engine Next has robust fault tolerance built in. If there's a backend outage, the engine doesn't lose the workflows it's holding. They stay queued, and as soon as infrastructure is back online they resume right where they left off and run through to completion. You shouldn't need\
  to manually recover or rerun workflows that were caught in an outage.
* However, Engine Next is not shielded from every possible platform issue, and\
  it does not provide full tenant isolation. Because it dramatically reduces database\
  reads and writes and the locking and blocking that came with them, it's far more resilient than\
  the old engine and reduces the noisy neighbor class of problems.
