# Trigger criteria

A _trigger criteria_ is a set of conditions that determine whether a workflow should start. A condition can be a simple comparison of two values, a complex set of conditions, or even a Jinja-based query. Trigger criteria can resolve into the following possible statuses:

1. VALID - A valid trigger criteria means the triggered event satisfies all possible conditions and will start the workflow. A criteria is satisfied when all specified conditions are satisfied by logical means against the trigger context.
2. FILTERED - A filtered trigger criteria will not start the workflow and could be due to multiple reasons. The most common reason is one of the conditions is not satisfied by logical means by design and the system will filter out the event. Another reason could be due to a malformed condition that could not be parsed by the system. And finally, any malformed request initiating the trigger itself will also be filtered out.
3. UNDEFINED - A trigger criteria is undefined if the notification system is unable to determine the status of the trigger criteria. Please create a bug ticket if you encounter this status.

## Trigger Criteria Functions

<figure><img src="../../../.gitbook/assets/from-trigger-criteria-form.png" alt=""><figcaption></figcaption></figure>

1. Adds new trigger criteria.
2. Opens the trigger criteria test dialog.
3. This field is used to access the trigger context. A trigger context is a dictionary of key-value pairs that contain the data of the event that triggered the workflow. The accessor field is used to access the value of the key in the trigger context.
4. Opens a Monaco editor dialog to edit the field accessor.
5. The operator is used to compare the value of the trigger context with the value of the field.
6. Value of the field to compare with the value of the trigger context.
7. Removes trigger criteria.

<details>

<summary>Examples</summary>

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

The following trigger criteria will be valid:

<img src="../../../.gitbook/assets/examples-1.png" alt="" data-size="original">

* The field accessor uses dot notation to access the value in the trigger context
* If you are making use of the `In` or `Not In` operator, be sure to press the `Enter` key to convert the value into a list
* As of now, you cannot have identical field accessors in the same trigger criteria (exception in Jinja criteria)
* Under the hood, we make use of simple Python operators to compare the values of the trigger context and the field value. For more information, please refer to the [Python Operators](https://www.w3schools.com/python/python_operators.asp)
* Default conditions are `AND` conditions. If you want to use `OR` conditions, you can use the Jinja criteria. Please see the advanced examples below.

</details>

<details>

<summary>Advanced Examples</summary>

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

* Jinja evaulations do not require a field accessor, and the entire trigger context is available under the `CTX` variable.

</details>

## Trigger criteria insights

The test dialog aims to assist you in developing your trigger criteria, with incoming trigger events displayed on the left and the corresponding trigger criteria form on the right.

<figure><img src="../../../.gitbook/assets/tc-notification.png" alt=""><figcaption></figcaption></figure>

1. Start/Stop receiving trigger events. This does not disable the trigger itself. It only stops the UI from displaying additional trigger events from showing.
2. Click the value of the trigger context to generate trigger criteria. This will automatically map the field accessor and the selected value of the trigger context.

{% hint style="info" %}
**Incoming trigger event system behavior**

* You must enable the trigger in order to receive trigger events.
* You must save the trigger form in order for the trigger criteria to take effect.
* This logging system will show the latest events first on top.
* Each trigger type may have different trigger context data/formatting.
* A Filtered trigger event may show warnings if errors are found while processing the trigger event.
* All Valid trigger events should have a corresponding workflow execution.
* The system will approximately log the latest 10 events for 1 day. This may change in the future.
* There is no throttling on the logging system. This may change in the future.
{% endhint %}

{% hint style="success" %}
While having the Insights dialog open, you can press the **`F8`** key to save the trigger.
{% endhint %}
