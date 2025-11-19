---
description: >-
  Learn all about our prebuilt automations: where to find them, and how to set
  them up
icon: box
---

# Crates

## What is a Crate?

Essentially, a Crate is a pre-built automation. A Rewst crate contains all the pieces that power the automation: workflows, triggers, and often forms. These are usually built and curated by our ROC team or from our community to facilitate easy deployment. Many of our Crates depend on your first setting up relevant integrations

## Why use Crates?

Prebuilt automations are made by the Rewst team. We've tested them and created them for optimal time savings, with your most common tooling and processes in mind. Starting out with Crates is the quickest way to start seeing benefit from Rewst.

{% hint style="success" %}
Note that each Crate may differ in terms of requirements, setup time, and complexity.&#x20;

We try to provide an estimate of the setup time for each Crate, whenever possible, but info may not be readily available for newly released Crates.
{% endhint %}

## Find and use Crates in Rewst’s Crate Marketplace

Rewst's Crate Marketplace is the submenu where you'll find our ever-growing collection of Crates. Access it in the left side menu of the platform by navigating to **Crates > Crate Marketplace**.

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-22 at 10.59.16 AM.png" alt=""><figcaption><p>The Crate Marketplace screen</p></figcaption></figure>

In the Crate Marketplace screen, you can:

* Search for Crates
* See a list of all Crates that you have unpacked in the <img src="../../.gitbook/assets/Screenshot 2025-04-22 at 11.09.11 AM.png" alt="" data-size="line"> tab
* View a list of New Crates in the <img src="../../.gitbook/assets/Screenshot 2025-04-22 at 11.08.46 AM.png" alt="" data-size="line"> tab, which have been released by Rewst in the last 30 days
* Sort all Crates by **Alphabetical** order, **Recently Added**, or **Most Popular**

![](<../../.gitbook/assets/Screenshot 2025-04-22 at 11.07.52 AM.png>)\
\
Each Crate has its own Crate tile in Crate Marketplace. The number on the bottom left corner of a Crate tile shows you the current count of fellow Rewsters that have unpacked and used the Crate.&#x20;

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-12 at 3.00.22 PM.png" alt=""><figcaption></figcaption></figure>

* Filter Crates by a variety of criteria, including:
  * Crate category
  * Rewst Recommendation
  * Integration
* Click <img src="../../.gitbook/assets/Screenshot 2025-04-22 at 11.03.34 AM.png" alt="" data-size="line"> to access a shortcut to Rewst's documentation site section for Crates.\


Click on the Crate tile for your desired Crate to open up its **Crate Details** page, which breaks down the purpose, features, and setup requirements of the Crate.  Note that there are two tabs to this page: **Overview**, and **What's Being Unpacked**.

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-11 at 11.24.30 AM.png" alt=""><figcaption></figcaption></figure>

In the center of the **Overview** tab of the Crate details page, you'll find links to instructions for unpacking and using the Crate on our documentation site, in addition to some brief instructions for what to expect during the unpacking process.&#x20;

In the right side menu, find the following information:

* Category of the Crate, via a rectangular, color-coded label
* Total number of times the Crate has been unpacked by Rewst users
* The workflow that will be unpacked with the Crate, and a clickable link to that workflow in Rewst
* Confirmation or alert messaging to let you know if your existing installed integrations meet the requirements for this Crate
* A list of the integrations required for the Crate to successfully work, with symbols next to each to let you know the status of those integrations
  * grey - not installed
  * orange - you've clicked on the integration tile to begin setup, but haven't entered in any configuration items
  * green - the integration is installed and configured, which means that configurations are saved, and your integration prerequisite for unpacking the Crate is complete

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-12 at 3.11.55 PM.png" alt=""><figcaption></figcaption></figure>

* If the Crate requires [organization variables](../../documentation/configuration/organization-variables.md#what-is-an-organization-variable), these required variables will be shown in a section at the bottom of the right side menu. Crates that don't require organization variables won't have this section.&#x20;

{% hint style="warning" %}
You have the option to unpack a Crate even if your required integrations or organization variables aren't set up. Rewst will ask you to check a box to acknowledge that the minimum requirements haven't been met, then let you click **Unpack Crate** without those requirements.&#x20;

Any integrations or org variables set up after unpacking the Crate should be registered by the Crate and work towards satisfying its requirements to work properly. Rewst recommends you set up integrations and org variables before unpacking Crates unless you have a specific reason to do otherwise.
{% endhint %}

In the **What's Being Unpacked** tab, view a total list of all components that will be unpacked as part of the Crate, broken down by type.

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-12 at 3.16.29 PM.png" alt=""><figcaption></figcaption></figure>

Once you've unpacked the Crate, this collection of components will turn into clickable links that take you directly to that item in Rewst. You'll also have the option to **Update Configuration** for the Crate in the right side menu.

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-12 at 3.20.19 PM.png" alt=""><figcaption></figcaption></figure>

## Unpack a Crate

Begin to unpack a Crate by clicking the pink **Unpack Crate** button in the top right of that Crate’s Crate Details screen. Some Crates have unique settings that you set during the unpacking process. If your Crate is one of these, you’ll be prompted to follow the steps on your screen before unpacking begins.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-04 at 11.11.16 AM.png" alt=""><figcaption><p>An example of a setup prompt, from the unpacking process of the Rewst: User Onboarding Crate</p></figcaption></figure>



You might encounter a screen prompting you to enable or disable specific triggers. Make sure that you're only enabling the triggers that are relevant to you. Add any necessary customizations required by your business logic to avoid overwriting on Crate updates.

{% hint style="danger" %}
Generally, integration overrides will be enabled on triggers when unpacking a Crate. As a best practice, keep the integration overrides on at this step.
{% endhint %}

Optionally rename your workflow, trigger and form names, and update your **Time Saved** in the **Crate Configuration** page before finally confirming that you want to **Unpack**.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-04 at 11.12.46 AM.png" alt=""><figcaption><p>The final Crate Configuration screen from the unpacking process of the Rewst: User Onboarding Crate</p></figcaption></figure>



Depending on the size of the Crate, unpacking may take a few minutes. Leave your browser window open without navigating away from your Rewst platform while the process completes. You'll see an animation on your screen while the Crate unpacks.

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-12 at 3.24.01 PM.png" alt=""><figcaption></figcaption></figure>

A confirmation dialog will appear when unpacking is complete.

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-12 at 3.20.09 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
After unpacking a Crate, always check its performance to ensure it's functioning as expected. Once done, you can test the Crate by completing a related task and watching for the Crate's success.
{% endhint %}

## Synced versus unsynced Crates

When you unpack a Crate, you’re creating synchronized clones of the Crate components for your own use. Crates are maintained and updated by the Rewst team. When something in the underlying technology changes, your Crate seamlessly keeps working, as long as it’s synced. This minimizes your overhead and ensures that you're always using the latest, most stable version.

By default, all Crates are synced when you unpack them. However, you have the option to unsync a Crate after you unpack it. If you unsync a Crate, you’ll be responsible for updating it on your own, and won’t benefit from the automatic maintenance of synced Crates. Unsyncing a Crate does allow you to customize the contents of that Crate, such as altered triggers or workflows, to better suit your particular business needs.

We recommend starting out with synced Crates only until you’ve completed all of your Rewst training in Cluck University.

### Why modify Crates?

Modifying a Crate allows you to:

* **Add functionality**: Insert steps before or after the main workflow to meet unique requirements.
* **Simplify**: Remove unnecessary actions from a crate.
* **Build upon the original design**: Use crates as a base for more complex automations.
* **Orchestrate**: Integrate crates as sub-workflows into broader workflows.
* **Adapt triggers/forms**: Customize user input experiences without affecting the core automation.

### How to tell if a workflow is synced and from a Crate

* The left-side panel shows no editable actions when you are viewing the workflow. Instead, it contains a message letting you know it's cloned and synchronized.
* A warning appears when testing the workflow: **This workflow is synchronized. No changes will be saved.**
* The **Is synchronized** box will be checked in the workflow settings menu. Additionally, view the status in the **Attributes** column of the main workflow list page. Synced workflows will be listed as **Clone (sync)**.

<figure><img src="../../.gitbook/assets/Screenshot 2025-05-21 at 5.47.05 PM.png" alt=""><figcaption></figcaption></figure>

<figure><img src="../../.gitbook/assets/Screenshot 2025-05-21 at 5.45.04 PM.png" alt=""><figcaption><p>The <strong>Is Synchronized</strong> box, in a synced workflow</p></figcaption></figure>

### Sync or unsync sub-workflows in a Crate

Unsyncing a top level workflow doesn't affect the subworkflows inside it. They remain synced unless you unsync them individually. However, if you unsync a subworkflow and leave the top level synced, future updates to the crate will overwrite your changes. To avoid this, also unsync the parent workflow.

{% hint style="info" %}
[Completion handlers](../../documentation/automations/workflows/completion-handlers-and-workflow-wrappers.md) are a great, useful way to keep Crates synced while expanding functionality.
{% endhint %}

## Request a Crate and vote for Crate ideas

We’re constantly adding new Crates to Crate Marketplace. Vote for which upcoming Crates should take priority by creating a post with your thoughts or upvoting other existing suggestion posts [in our Canny.](https://rewst.canny.io/crates)
