---
description: >-
  Effortlessly create high-quality documentation for your workflow actions
  without getting caught up in details.
---

# Document with RoboRewsty

{% hint style="info" %}
RoboRewsty has expanded! As of October 2025, our RoboRewsty capabilities now help you with knowledge search and product education. See our general page on RoboRewsty [here](../../rewst-tools/roborewsty.md) to learn more.

RoboRewsty is your go-to tool for simplifying the creation of comprehensive documentation for your workflow tasks. It takes care of the process behind the scenes, freeing you to focus on building your workflow while ensuring that the documentation is handled seamlessly.
{% endhint %}

## How does RoboRewsty work?

RoboRewsty integrates with the workflow builder canvas. It takes your workflows' JSON objects, and sends them to a private OpenAI Azure instance. The result is a quickly presented, well structured documentation breakdown of all selected tasks in your workflow.&#x20;

{% hint style="warning" %}
RoboRewsty does not replace the existing note feature in the workflow builder. You can either add notes manually, or use RoboRewsty to help you do some of the heavy lifting.
{% endhint %}

## Use RoboRewsty

### Via workflow builder

1. Click <img src="../../../.gitbook/assets/Screenshot 2025-03-05 at 2.41.06 PM (1).png" alt="" data-size="line"> in the top toolbar of the workflow builder to start a note for the entire workflow. To add notes on specific elements, drag around an area on the canvas while holding down **ctrl + left click** , or **right click** and select **Add Note** within the workflow builder.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-26 at 12.17.52 PM.png>)\

2. Click **Generate Auto-Documentation** to generate documentation for the entire workflow.\
   ![](<../../../.gitbook/assets/Screenshot 2025-09-26 at 11.58.00 AM.png>)\

3. A waiting message will display while it runs on your workflow. This may take a moment, if your request holds a large number of tasks.\
   ![](<../../../.gitbook/assets/Screenshot 2025-09-26 at 11.58.15 AM.png>)
4. View the notes generated in your **Notes** menu. Sections will include:
   1. **What's Occurring: Task Overview:** Each documentation response begins with a clear and concise overview, providing users with a high-level understanding of the task's purpose and context.
   2. **Expected Outcome: Task's Expected Result:** Information about the expected outcome or result of the task or group of tasks is presented. This section helps users anticipate the outcomes when the workflow executes the associated tasks.
   3. **Special Considerations: Any Crucial Factors:** Special considerations or crucial factors related to the tasks are included. These details ensure that users have all the necessary information to understand the workflow path successfully.
   4. An accordion list of all included tasks

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-06 at 5.21.51 PM.png" alt=""><figcaption><p>A completed RoboRewsty note</p></figcaption></figure>

### Via publish workflow

<figure><img src="../../../.gitbook/assets/image (73).png" alt=""><figcaption></figcaption></figure>

RoboRewsty is also available to help when you publish a workflow. Click on the RoboRewst icon to generate a detailed change log, then **Submit**.
