# Task transitions

## **What are task transitions?**

_Task transitions_ are the bridges that connect different action, ensuring that workflows move forward as designed. Each action has two circular nodules on its side and bottom.  Click on either and drag to the next action to set up the transition. Depending on the criteria set, one action might branch out to multiple subsequent actions.&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 5.08.03 PM.png" alt=""><figcaption><p>An action with no set transition - note the two circular <strong>Add Transition</strong> bubbles</p></figcaption></figure>

The diamond that appears between the two actions once the transition has been created is called the _transition indicator_. Click on it to open the transition settings in the right side menu.&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 4.49.13 PM.png" alt=""><figcaption><p>The transition indicator for a dragged action that has had its transition created</p></figcaption></figure>

## **Transition settings options**

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 5.13.26 PM.png" alt=""><figcaption></figcaption></figure>

* **Edit Transition**: Buttons beside the **Edit Transition** title give you options to either clone the current transition or remove it if it's no longer needed.
* **Custom Transition Label**: This is an editable field allowing you to give a meaningful name to the transition, aiding clarity as your workflow grows.
* **Condition**: This criteria governs the action's progression based on the options defined below. Depending on the outcome of this action, this rule determines which path to follow next. Left to right, these are:
  * **On Success**: Progress if the action succeeds.
  * **On Failure**: Progress if the action fails.
  * **Always**: Progress regardless of the outcome of the action.
  * **Custom Condition**: This is set custom, with Jinja.
* [**Data Aliases**](data-aliases.md): Click the **+ Add Data alias** button to define an easy-to-use variable that stores the results of the action transition.

{% hint style="success" %}
In the advanced options in the workflow body, you can opt to either follow the first left to right transition condition that returns true, or to follow all transitions from the action.
{% endhint %}

Right click on any transition indicator to open a submenu to **Duplicate Transition,** **Delete Transition**, or **Edit Transition Order**. Duplicate will recreate the exact transition and place it next to the original on the Workflow Builder Canvas. Edit Transition Order controls the sequence in which transitions are evaluated and executed. Transition order at any given time is indicated by numbers on the transition indicators. Learn more about this setting in our [Advanced Workflow Settings](../actions-in-rewst/) documentation.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-21 at 3.31.41 PM.png" alt=""><figcaption></figcaption></figure>



## Transition modes

Settings for transition modes exist in the **Advanced** tab of the workflow's settings. For information on how these work, see our documentation for [advanced workflow operations](advanced-workflow-operations-menu.md#transition-modes).&#x20;
