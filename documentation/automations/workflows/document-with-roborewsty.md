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

1. Create a new note.&#x20;
2. Drag your note to encompass all actions in the workflow that you wish to document. This can be a subset of the workflow, or the entire workflow.
3. Click <img src="../../../.gitbook/assets/Screenshot 2025-03-05 at 2.41.06 PM (1).png" alt="" data-size="line"> in the top toolbar of the workflow builder.&#x20;
4. Hover over the **Notes** note name field to reveal the hidden options for notes.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-03-06 at 5.15.17 PM.png>)
5. Click <img src="../../../.gitbook/assets/Screenshot 2025-03-06 at 5.18.18 PM.png" alt="" data-size="line">. This will launch RoboRewsty. A waiting message will display while it runs on your workflow. This may take a moment, if your request holds a large number of tasks.
6. View the notes generated in your **Notes** menu. Sections will include:
   1. **What's Occurring: Task Overview:** Each documentation response begins with a clear and concise overview, providing users with a high-level understanding of the task's purpose and context.
   2. **Expected Outcome: Task's Expected Result:** Information about the expected outcome or result of the task or group of tasks is presented. This section helps users anticipate the outcomes when the workflow executes the associated tasks.
   3. **Special Considerations: Any Crucial Factors:** Special considerations or crucial factors related to the tasks are included. These details ensure that users have all the necessary information to understand the workflow path successfully.
   4. An accordion list of all included tasks

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-06 at 5.21.51 PM.png" alt=""><figcaption><p>A completed RoboRewsty note</p></figcaption></figure>

### Via publish workflow

<figure><img src="../../../.gitbook/assets/image (59) (2).png" alt=""><figcaption></figcaption></figure>

RoboRewsty is also available to help when you publish a workflow. Click on the RoboRewst icon to generate a detailed change log, then **Submit**.
