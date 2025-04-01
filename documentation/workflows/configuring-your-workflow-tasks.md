# Task transitions

## **What are task transitions?**&#x20;

_Task transitions_ are the bridges that connect different tasks, ensuring that workflows move forward as designed. They're represented by the small rectangles found directly beneath each task. Depending on the criteria set, one task might branch out to multiple subsequent tasks. When you interact with these rectangles by clicking on them, a configuration menu appears. Note that this is a different menu from what is seen when you click on the task itself.

<figure><img src="../../.gitbook/assets/task_transition.png" alt=""><figcaption><p>A task transition, nested under a generic task</p></figcaption></figure>

## **Task transition configuration options**

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-05 at 6.03.10 PM.png" alt="" width="359"><figcaption></figcaption></figure>

* **Edit Transition**: Buttons beside the **Edit Transition** title give you options to either clone the current transition or remove it if it's no longer needed.
* **Custom Label**: An editable field allowing you to give a meaningful name to the transition, aiding clarity as your workflow grows.
* **Move Left/Right**: These are controls that allow you to rearrange the sequence in which transitions are evaluated and executed. Transitions are evaluated from left to right, so order them carefully.
* **Condition**: This criteria governs the task's progression based on the options defined below. Depending on the outcome of this task, this rule determines which path to follow next. Left to right, these are:
  * **Success**: if the task succeeds
  * **Failure**: if the task fails
  * **Always**: regardless of the outcome of the task
  * **Custom Condition**: set custom, with Jinja
* [**Data Aliases**](navigating-between-tasks-with-transitions.md): Clicking the **+** button lets you define an easy-to-use variable that stores the results of the task transition.

{% hint style="success" %}
In the advanced options in the workflow body, you can opt to either follow the first left to right transition condition that returns true, or to follow all transitions from the action.
{% endhint %}

## Transition modes

For information on how these work, see our documentation for [advanced workflow operations](advanced-workflow-operations.md#transition-modes).&#x20;

