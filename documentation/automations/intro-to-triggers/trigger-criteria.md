# Trigger criteria

_Trigger criteria_ are a set of conditions that determine whether a workflow should start. A condition can be a simple comparison of two values, a complex set of conditions, or even a Jinja-based query. In simple terms, you're setting up the automation to only trigger when certain conditions are met or values are present.  This can be helpful to customize when you want a workflow to run. For example, rather than having it run for all incoming tickets, you would use trigger criteria to set a workflow to run for just tickets related to password reset requests.

The trigger criteria section of the trigger menu will only appear after you've chosen a trigger type that works with criteria. This includes [core webhook](./#core-webhook) triggers and any tool-specific trigger.

<figure><img src="../../../.gitbook/assets/trigger criteria menu.gif" alt="An animated image of the user choosing a trigger typed ConnectWise PSA. As the user clicks, a new section of the menu appears titled &#x27;Trigger Criteria.&#x27; The test is white on a dark blue screen."><figcaption><p>Scroll down to the bottom of the trigger menu once you've chosen your trigger type to see the trigger criteria submenu.</p></figcaption></figure>

## Trigger criteria submenu

<figure><img src="../../../.gitbook/assets/from-trigger-criteria-form.png" alt=""><figcaption></figcaption></figure>

1. Click <img src="../../../.gitbook/assets/Screenshot 2025-03-13 at 6.14.27 PM (3).png" alt="" data-size="line"> to add new trigger criteria. This will add a new row of fields under the **Trigger Criteria** submenu.
2. Click <img src="../../../.gitbook/assets/Screenshot 2025-07-01 at 2.31.37 PM.png" alt="" data-size="line"> to open the trigger criteria test dialog. This dialog allows you to use past events in your relevant tool to test out conditions for future events.  From this dialog, you can also add new trigger criteria. Note that the trigger must be set to **enabled** for this dialog to work. Learn more about this dialog in the [Trigger criteria test dialog](trigger-criteria.md#trigger-criteria-test-dialog) section of this document.
3. The **Key** field is used to access the trigger context. A trigger context is a dictionary of key-value pairs that contain the data of the event that triggered the workflow.&#x20;
4. Click <img src="../../../.gitbook/assets/Screenshot 2025-07-07 at 12.53.22 PM.png" alt="" data-size="line"> to open a Monaco editor dialog.
5. The **Operator** drop-down is used to compare the value of the Key field with the **Value** field. Click the arrow to open the drop-down list of all possible operators.&#x20;
   1. Equals
   2. Not Equals
   3. Contains
   4. Starts With
   5. Ends With
   6. Greater Than
   7. Less Than
   8. Exists
   9. Does Not Exist
   10. In - be sure to press the `Enter` key to convert the value into a list
   11. Not In - be sure to press the `Enter` key to convert the value into a list
   12. Jinja Evaluation
6. The **Value** field contains the text parameter of the **Key** field to compare with the value of the trigger context. Note that only string values are supported in this field. If you need to evaluate non-string values, you can use Jinja Evaluation to do so.&#x20;
7. Click <img src="../../../.gitbook/assets/Screenshot 2025-07-01 at 2.37.21 PM.png" alt="" data-size="line"> to remove the related trigger criteria.

## Trigger criteria test dialog&#x20;

The dialog is made up of two panels. The left panel shows all prior triggering events in a list, with the most recent events displayed at the top. You must enable the trigger to receive trigger events. The system will approximately log the latest 10 events for one day. There is no throttling on the logging system.&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2025-07-08 at 5.13.06 PM.png" alt=""><figcaption></figcaption></figure>

Click on the value of the trigger context for any of these events to generate and display its criteria in the right panel. This will automatically map the field accessor and the selected value of the trigger context. Note that the events in the left panel list have color coded headers at the top of each, with the color denoting a different status for that event. Each trigger type may have different trigger context data or formatting.

| Status                                                                                    | Meaning                                                                                                                                                                                                                                                                                                                                                   |
| ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| VALID  - Blue![](<../../../.gitbook/assets/Screenshot 2025-07-01 at 2.56.30 PM.png>)      | A valid trigger criteria means the triggered event satisfies all possible conditions and will start the workflow. A criteria is satisfied when all specified conditions are satisfied by logical means against the trigger context. All valid trigger events should have a corresponding workflow execution.                                              |
| FILTERED  - Yellow![](<../../../.gitbook/assets/Screenshot 2025-07-01 at 2.57.03 PM.png>) | A filtered trigger will not start the workflow, typically for one of the following reasons: a condition is logically unmet by design, a condition is malformed and unparseable, or the trigger request itself is malformed and rejected by the system. A filtered trigger event may show warnings if errors are found while processing the trigger event. |

{% hint style="warning" %}
If no criteria are set, anything will be considered a valid triggering event.
{% endhint %}

Alternatively, click **Add a Trigger Criteria** to create a new row for a new criteria underneath any existing criteria in the right panel.&#x20;

{% hint style="success" %}
You can’t set more than one condition on the same field. Rewst will adopt the first condition and destroy any future conditions without giving a warning message.&#x20;

Though you can only have one condition on specific field at a time, you can have as many conditions as you wish, as long as they are each on a different field.
{% endhint %}

## Trigger context examples

<details>

<summary>Basic example: Apple, orange, banana</summary>

In plain speak, we want to set the criteria to be that a fruit is an apple, where all possible fruits are apple, orange and banana. The price of the apple is $1.99.  The colors corresponding to each type of the fruits are red, orange, and yellow respectively.

Now let's look at it in Rewst. Given the following trigger context:

```javascript
{
    fruit: "apple",
    fruits: ["APPLE", "orange", "banana"],
    price: 1.99,
    types: {
        colors: ["red", "orange", "yellow"],
    }
}
```

The following trigger criteria will be valid, and match our statement:

<figure><img src="../../../.gitbook/assets/examples-1.png" alt=""><figcaption></figcaption></figure>

* For this example, note that while you could have each of the types of fruits with an operator of Equals and the value set to the entire text name of each fruit, using the alternative operators such as contains, Starts With and Ends With allow you to pull in more results for your criteria. If you only know that the domain you want to act as a trigger ends in co.uk, you could use an operator other than Equals, to pull in results that contain those few letters rather than requiring it to match an entire address' exact text.
* The field accessor uses dot notation to access the value in the trigger context: apple = fruits,0, orange = fruits.1, banana = fruits.2, etc.&#x20;
* If you are making use of the In or Not In operator, be sure to press the **Enter** key to convert the value into a list.

- You can't have identical field accessors in the same trigger criteria, with the exception of Jinja criteria.
- We make use of simple Python operators to compare the values of the trigger context and the field value. For more information, please refer to the [Python Operators](https://www.w3schools.com/python/python_operators.asp)
- Default conditions are And conditions. If you want to use Or conditions, you can use the Jinja criteria. Please see the advanced examples below.

</details>

<details>

<summary>Advanced example: Jinja evaluation</summary>

Given the following trigger context:

```javascript
{
    fruit: "apple",
    fruits: ["APPLE", "orange", "banana"],
    price: 1.99,
    types: {
        colors: ["red", "orange", "yellow"],
    }
}
```

The following Jinja evaluation will be valid:

```jinja2
{{ CTX.fruit == 'apple' or CTX.price < 2 }}
```

Jinja evaulations do not require a field accessor, and the entire trigger context is available under the CTX variable.

</details>

## Save trigger criteria

You'll need to save your updates for the trigger criteria to take effect. How you do this will depend on if you are adding criteria directly under the **Trigger Criteria** submenu or within the Trigger Criteria Test dialog.

Click **Submit** under the Trigger Criteria submenu to save your added or updated trigger criteria.&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2025-07-11 at 2.35.39 PM.png" alt=""><figcaption></figcaption></figure>

Click **Save** in the Trigger Criteria Test dialog to save and close the dialog.&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2025-07-11 at 2.36.53 PM.png" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="success" %}
While the Trigger Criteria Test dialog is open, you can press the **`F8`** key to save the trigger.
{% endhint %}
