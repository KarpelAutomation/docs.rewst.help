---
description: >-
  Sometimes, technology throws a curveball at us...look out, it's Microsoft
  groups!
---

# Lesson 5: Managing workflow paths

## **What to Eggs-pect**

After completing this lesson, participants will be able to:

* Implement custom condition transitions in Task Transitions for dynamic decision-making in Workflows
* Configure "Follow First" to prioritize Task Transition conditions
* Create actions for Microsoft Exchange Online using Powershell commandlets

### **Prerequisite(s)**

In this lesson, we update the "Add or Remove User - Microsoft Group" workflow to incorporate Microsoft Exchange Online actions for updating group membership (and more!)

## Lesson Modules

To get started, select the first module. Each module includes a video and written guidance with resources, followed by navigation to go back/forward. To wrap up the lesson, visit [#next-steps](./#next-steps "mention").

1. [introduction-to-workflow-logic-microsoft-apis.md](introduction-to-workflow-logic-microsoft-apis.md "mention") (_3 Minutes_)
2. [getting-object-properties-for-microsoft-groups.md](getting-object-properties-for-microsoft-groups.md "mention") (_9 Minutes_)
3. [creating-a-microsoft-exchange-online-path-in-the-workflow.md](creating-a-microsoft-exchange-online-path-in-the-workflow.md "mention") (_6 Minutes_)

### Lesson Resources

{% hint style="info" %}
Check out these supplementary resources.

* [navigating-between-tasks-with-transitions.md](../../../documentation/workflows/configuring-your-workflow-tasks/navigating-between-tasks-with-transitions.md "mention")
* [#transition-modes](../../../documentation/workflows/configuring-your-workflow-tasks/advanced-workflow-operations.md#transition-modes "mention")
* [how-to-use-powershell-in-rewst.md](../../micro-courses/how-to-use-powershell-in-rewst.md "mention")(strongly encourage watching!)
* Microsoft Groups API: [Working with groups in Microsoft Graph](https://learn.microsoft.com/en-us/graph/api/resources/groups-overview?view=graph-rest-1.0\&tabs=http)
* Powershell 'Add' Commandlet: [Add-DistributionGroupMember](https://learn.microsoft.com/en-us/powershell/module/exchange/add-distributiongroupmember?view=exchange-ps)
* [boolean-logic-and-comparisons.md](../../clean-automation/boolean-logic-and-comparisons.md "mention")
* [advanced-automation-concepts.md](../../clean-automation/advanced-automation-concepts.md "mention")
{% endhint %}

## Next Steps

Complete the **Knowledge Check** below and remember to **Get Credit** for your learning.&#x20;

### What Did You Learn?

Take a quick quiz and get instant feedback!

{% embed url="https://www.surveymonkey.com/r/H9JFPQR" %}

### Get Credit

{% hint style="danger" %}
[Submit this form](https://app.rewst.io/form/4f233131-a105-496f-8904-3153af0a95ba) to get credit for completing this lesson offline.
{% endhint %}

### Keep On Cluckin'

We've expanded our workflow to accommodate all group types by adding logic to check the group type. This guides the workflow towards the appropriate action, whether it's Exchange Online or Microsoft Graph, ensuring the correct process is implemented for each group type.

In the next lesson, we'll explore error handling, how it works, and implement a method of error handling using feedback messages to highlight potential issues and bring awareness to any problems in the workflow.

<table data-card-size="large" data-column-title-hidden data-view="cards" data-full-width="false"><thead><tr><th align="center"></th><th align="center"></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td align="center">Go back a lesson:<br><a data-mention href="../creating-an-option-generator-workflow/">creating-an-option-generator-workflow</a></td><td align="center"></td><td></td></tr><tr><td align="center">Go to the next lesson:</td><td align="center"><a data-mention href="../implementing-error-handling-in-workflows/">implementing-error-handling-in-workflows</a></td><td></td></tr><tr><td align="center">Get help with this lesson in office hours!</td><td align="center"><a data-mention href="../../office-hours.md">office-hours.md</a></td><td></td></tr></tbody></table>
