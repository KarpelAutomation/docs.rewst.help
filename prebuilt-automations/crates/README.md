---
description: >-
  Learn all about our prebuilt automations: where to find them, and how to set
  them up
---

# Crates in Rewst

## What is a Crate?

Essentially, a Crate is a prebuilt automation. A Rewst crate contains all the pieces that power the automation: workflows, triggers, and often forms. These are usually built and curated by our ROC team or from our community to facilitate easy deployment. Many of our Crates depend on your first setting up relevant integrations

## Why use Crates?

Prebuilt automations are made by the Rewst team. We've tested them and created them for optimal time savings, with your most common tooling and processes in mind. Starting out with Crates is the quickest way to start seeing benefit from Rewst.

## Find and use Crates in Rewst’s Crate Marketplace

Rewst's Crate Marketplace is the submenu where you'll find our ever-growing collection of Crates. Access it in the left side menu of the platform by navigating to **Crates > Crate Marketplace**.\


<figure><img src="../../.gitbook/assets/Screenshot 2025-02-04 at 10.57.46 AM.png" alt=""><figcaption></figcaption></figure>

In the Crate Marketplace screen, you can:

* **Search** for Crates
* **Filter** Crates by a variety of criteria
* Sort all Crates by **Alphabetical**, **Date Created**, **Maturity**, or **Popularity** order via the **Sort By** drop down menu

Click on the tile for your desired Crate to open up its **Crate Details** page, which breaks down the purpose, features, and setup requirements of the Crate.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-04 at 11.09.51 AM.png" alt=""><figcaption><p>An example Crate Details page, containing the description and information for the Rewst: User Onboarding Crate</p></figcaption></figure>

## Unpack a Crate

Begin to unpack a Crate by clicking the pink **Unpack Crate** button in the top right of that Crate’s Crate Details screen. Some Crates have unique settings that you set during the unpacking process. If your Crate is one of these, you’ll be prompted to follow the settings steps on your screen before unpacking begins.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-04 at 11.11.16 AM.png" alt=""><figcaption><p>An example of a setup prompt, from the unpacking process of the Rewst: User Onboarding Crate</p></figcaption></figure>



You might encounter a screen prompting you to enable or disable specific triggers. Make sure that you're only enabling the triggers that are relevant to you. Add any necessary customizations required by your business logic to avoid overwriting on Crate updates.

{% hint style="danger" %}
Generally, integration overrides will be enabled on triggers when unpacking a crate. As a best practice, keep the integration overrides on at this step.
{% endhint %}



Optionally rename your workflow, trigger and form names, and update your **Time Saved** in the **Crate Configuration** page before finally confirming that you want to **Unpack**.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-04 at 11.12.46 AM.png" alt=""><figcaption><p>The final Crate Configuration screen from the unpacking process of the Rewst: User Onboarding Crate</p></figcaption></figure>



Depending on the size of the Crate, unpacking may take a few minutes. Leave your browser window open without navigating away from your Rewst platform while the process completes.

{% hint style="warning" %}
After unpacking a Crate, always check its performance to ensure it's functioning as expected. Once done, you can test the Crate by completing a related task and watching for the Crate's success.
{% endhint %}

## Synced versus unsynced Crates

When you unpack a Crate, you’re creating synced clones of the Crate components for your own use. Crates are maintained and updated by the Rewst team. When something in the underlying technology changes, your Crate seamlessly keeps working, as long as it’s synced.

By default, all Crates are synced when you unpack them. However, you have the option to unsync a Crate after you unpack it. If you unsync a Crate, you’ll be responsible for updating it on your own, and won’t benefit from the automatic maintenance of synced Crates. Unsyncing a crate does allow you to customize the contents of that Crate, such as altered triggers or workflows, to better suit your particular business needs.

We recommend starting out with synced Crates only until you’ve completed all of your Rewst training in Cluck University.

## Crate state and maturity

Due to the nature of the Crate Marketplace, and the many integrations that we support, we often have various stages of Crate deployment. This helps us make sure that Crates are thoroughly tested both internally and by our willing customers. To make this process as transparent as possible, we've created a state system for Crates.&#x20;

You can determine a Crate's state by looking it up in Crate Marketplace and checking its color coded state label in the bottom right of that Crate tile. Similarly, the red number count on the bottom left corner of a Crate tile shows you the current count of fellow Rewsters that have unpacked and used the Crate. Click to expand and learn about each of our Crate states below.&#x20;

{% hint style="success" %}
Note that each Crate may differ in terms of requirements, setup time, and complexity.&#x20;

We try to provide an estimate of the setup time for each Crate, whenever possible, but info may not be readily available for Crates in earlier stages.
{% endhint %}

<details>

<summary>Egg: Pre-alpha release</summary>

This is the initial state of a Crate. It is the equivalent of a pre-alpha release. It is generally not recommended to use these Crates in production.\
![ An image of an example Crate in Crate Marketplace, with the Egg state shown in its bottom right corner via grey text](<../../.gitbook/assets/Screenshot 2025-01-13 at 3.46.15 PM.png>)

We will often create Crates in this state to show what is actively being worked on, and to get feedback from our clients to make sure that we're working on the right things.

</details>

<details>

<summary>Hatchling: Alpha release</summary>

This is the first stage of a Crate that is ready for testing, but still considered alpha. It's not recommended to use these Crates in production.

![ An image of an example Crate in Crate Marketplace, with the Nestling state shown in its bottom right corner via green text](<../../.gitbook/assets/Screenshot 2025-01-13 at 4.01.31 PM.png>)

This state will often be used when we are doing internal testing, or the Crate was made for a very specific purpose/requirement and is being tested directly with the requesting client.

</details>

<details>

<summary>Fledgling: Beta release</summary>

This is the second stage of a Crate that is ready for testing, and is the equivalent of a beta release.

![ An image of an example Crate in Crate Marketplace, with the Fledgling state shown in its bottom right corner via blue text](<../../.gitbook/assets/Screenshot 2025-01-13 at 3.49.46 PM.png>)

At this stage, it is recommended to use client discretion when using these Crates in production.

This state will often be used when we have moved on from internal testing and believe that the Crate is ready for wider testing, but still needs to be tested in a production environment rather than our sandbox environments.

The ROC team will support this Crate in this state.

</details>

<details>

<summary>Nestling: Release candidate</summary>

This is the third stage of a Crate that is ready for production, and is the equivalent of a release candidate.

![ An image of an example Crate in Crate Marketplace, with the Fledgling state shown in its bottom right corner via orange text](<../../.gitbook/assets/Screenshot 2025-01-13 at 4.00.12 PM.png>)

At this stage, it's still recommended to use discretion when using these Crates in production. However, they have gone through vigorous testing in various environments and are considered stable.

This state will often be used when we've moved on from a smaller range of clients testing the Crate, and are now ready to release it to a wider audience with potentially more complex environments.

The ROC team will support this Crate in this state.

</details>

<details>

<summary>Soaring: Full release</summary>

This is the final stage of a Crate that's ready for production, and is the equivalent of a full release.

![ An image of an example Crate in Crate Marketplace, with the Nestling state shown in its bottom right corner via pink text](<../../.gitbook/assets/Screenshot 2025-01-13 at 4.02.26 PM.png>)

At this stage, the Crate is considered stable and ready for production use.

The ROC team will support this Crate in this state.

</details>

<details>

<summary>Migrating: Updating to a new version</summary>

This is the state where a Crate has been updated to a new version, but the older version is still available for clients to use.

![ An image of an example Crate in Crate Marketplace, with the Nestling state shown in its bottom right corner via yellow text](<../../.gitbook/assets/Screenshot 2025-01-13 at 4.03.10 PM.png>)

This state will often be used when we have made a breaking change to a Crate, and we want to ensure that clients have time to migrate to the new version before we remove the old version.

The ROC team will support this Crate in this state.

</details>

## Request a Crate and vote for Crate ideas

We’re constantly adding new Crates to Crate Marketplace. Vote for which upcoming Crates should take priority by creating a post with your thoughts or upvoting other existing suggestion posts [in our Canny.](https://rewst.canny.io/crates)
