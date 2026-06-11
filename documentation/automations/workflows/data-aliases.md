# Data aliases

{% hint style="info" %}
To understand this topic, you'll need to first complete Lesson 3 of the Cluck University course Automation Basics. This will introduce you to JSON and teach you how to both understand and use JSON in Rewst. If you haven't done your coursework yet, start there, then come back to this document.
{% endhint %}

## **What are Data aliases?**

A _data alias_ is a shortcut that extracts specific pieces of information from a JSON response and stores them in an easy-to-use _variable_. Instead of navigating the entire JSON structure every time, a data alias pulls out exactly what you need—like a user’s name or email—and makes it accessible throughout your workflow. Think of data aliases as custom labels you assign to specific data.

Recall that _the context_ is where all data generated, captured, or used in a workflow is stored. Think of it as a shared memory for a specific workflow. Data aliases are stored in the context, making them available for reuse at any step in your workflow without re-fetching the data.

For example, imagine that you've set up your Microsoft Graph integration. You send a request via API call to get info about a user. The response comes back to you in JSON format, which can be lengthy and time consuming to search through. A data alias would let you get all of the information, or pinpoint specific information like the user's name or email address, and store it in a simpler variable in the context for use.

Together, variables, data aliases, and the context make your workflows in Rewst more efficient, organized, and adaptable. These tools help you reuse workflows, reduce manual work, and customize data handling to fit any automation need.

### Data alias requirements

When adding a new data alias, you'll need the following:

* **Key**: The name you assign to specific data.
* **Value**: The actual data it corresponds to. The code editor button allows for the use of Jinja customization for intricate data or expressions.

### Data alias context example

If you set an alias such as `my_task_result -> {{ RESULT }}`, tasks can later refer to this data using `{{ CTX.my_task_result }}`.

You can also use a data alias to extract specific information and manipulate data. Expanding on our example from above, take the input from the Microsoft Graph get user action and extract the user's name and user principal name for ease of use.<br>

1. Drag the Microsoft Graph **Get User** action onto the Workflow Builder Canvas.
2. Click on the action, then its **Parameters** tab.
3. Add your user into the **User ID** field.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 4.58.31 PM.png" alt="" width="375"><figcaption></figcaption></figure>

4. Click the **General** tab.
5.  Set your context variable name under **Publish Result As.** The workflow action results will be stored as this value.<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 5.00.26 PM.png" alt="" width="375"><figcaption></figcaption></figure>
6. Open the Jinja editor and set up your data alias.
7.  Use the following Jinja to create a new dictionary object and set the `displayName` and `userPrincipalName` keys.<br>

    ```
    {{
    {
    "displayName": CTX.user_details.data.value.displayName,
    "userPrincipalName": CTX.user_details.data.value.userPrincipalName
    }
    }}
    ```
8. Run the workflow. Then, click **View Results**
9. Click **Load Context.**
10. Expand the context to see our data alias `filtered_user_details` now only showing the `displayName` and `userPrincipalName` .

    <figure><img src="../../../.gitbook/assets/image (70).png" alt=""><figcaption></figcaption></figure>

## Add a data alias to a workflow

Data aliases are added via transitions. See more about how to use [transitions in workflows here](task-transitions.md).

1. Click on the transition in your workflow in the Workflow Builder Canvas.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2026-04-20 at 4.49.13 PM.png>)
2. Click **+ Add Data Alias** in the right side menu.
3. Paste the key into the **key** field. Click ![](<../../../.gitbook/assets/Screenshot 2026-04-20 at 3.41.07 PM.png>) to open the Jinja editor and set up your data alias.
4. Click ![](<../../../.gitbook/assets/Screenshot 2026-04-20 at 4.53.10 PM.png>)to remove a data alias.
5. Click ![](<../../../.gitbook/assets/Screenshot 2026-04-20 at 4.53.40 PM.png>) and drag it as desired to move multiple data aliases up and down in the data alias list.

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 4.52.39 PM.png" alt=""><figcaption></figcaption></figure>

## Access data aliases in a workflow

1. Navigate to **Automations > Workflows**.
2. Search for your desired workflow.&#x20;
3.  Click **>** to the far right of that workflow to open its Workflow Builder Canvas. \
    <br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-03-06 at 4.39.51 PM.png" alt=""><figcaption></figcaption></figure>
4. Click <img src="../../../.gitbook/assets/Screenshot 2026-04-20 at 4.45.41 PM.png" alt="" data-size="line"> in the top navigation bar to open the **Settings** in the right side menu.
5. Click the **Data Aliases** tab. This will show a complete list of all existing data aliases for that workflow.
